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
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4c2aef_type = type <{ [8 x i8] }>
%G__0x4c2b09_type = type <{ [8 x i8] }>
%G__0x4c2b23_type = type <{ [8 x i8] }>
%G__0x4c2b3d_type = type <{ [8 x i8] }>
%G__0x4c2b57_type = type <{ [8 x i8] }>
%G__0x4c2b75_type = type <{ [8 x i8] }>
%G__0x4c2b91_type = type <{ [8 x i8] }>
%G__0x4c2bae_type = type <{ [8 x i8] }>
%G__0x4c2bc8_type = type <{ [8 x i8] }>
%G__0x4c2be2_type = type <{ [8 x i8] }>
%G__0x4c2bf3_type = type <{ [8 x i8] }>
%G__0x4c2c08_type = type <{ [8 x i8] }>
%G__0x4c2c2f_type = type <{ [8 x i8] }>
%G__0x4c2c53_type = type <{ [8 x i8] }>
%G__0x4c2c75_type = type <{ [8 x i8] }>
%G__0x4c2c8d_type = type <{ [8 x i8] }>
%G__0x4c2caf_type = type <{ [8 x i8] }>
%G__0x4c2cd1_type = type <{ [8 x i8] }>
%G__0x4c2ce9_type = type <{ [8 x i8] }>
%G__0x4c2d02_type = type <{ [8 x i8] }>
%G__0x4c2d1b_type = type <{ [8 x i8] }>
%G__0x4c2d34_type = type <{ [8 x i8] }>
%G__0x4c2d50_type = type <{ [8 x i8] }>
%G__0x4c2d7c_type = type <{ [8 x i8] }>
%G__0x4c2d9d_type = type <{ [8 x i8] }>
%G__0x4c2dc1_type = type <{ [8 x i8] }>
%G__0x4c2dde_type = type <{ [8 x i8] }>
%G__0x4c2e03_type = type <{ [8 x i8] }>
%G__0x4c2e26_type = type <{ [8 x i8] }>
%G__0x6d1f9c_type = type <{ [8 x i8] }>
%G__0x6d1fc0_type = type <{ [8 x i8] }>
%G__0x6d4520_type = type <{ [8 x i8] }>
%G__0x6f6e20_type = type <{ [8 x i8] }>
%G__0x711780_type = type <{ [8 x i8] }>
%G__0x721ca0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G__0x4c2aef = global %G__0x4c2aef_type zeroinitializer
@G__0x4c2b09 = global %G__0x4c2b09_type zeroinitializer
@G__0x4c2b23 = global %G__0x4c2b23_type zeroinitializer
@G__0x4c2b3d = global %G__0x4c2b3d_type zeroinitializer
@G__0x4c2b57 = global %G__0x4c2b57_type zeroinitializer
@G__0x4c2b75 = global %G__0x4c2b75_type zeroinitializer
@G__0x4c2b91 = global %G__0x4c2b91_type zeroinitializer
@G__0x4c2bae = global %G__0x4c2bae_type zeroinitializer
@G__0x4c2bc8 = global %G__0x4c2bc8_type zeroinitializer
@G__0x4c2be2 = global %G__0x4c2be2_type zeroinitializer
@G__0x4c2bf3 = global %G__0x4c2bf3_type zeroinitializer
@G__0x4c2c08 = global %G__0x4c2c08_type zeroinitializer
@G__0x4c2c2f = global %G__0x4c2c2f_type zeroinitializer
@G__0x4c2c53 = global %G__0x4c2c53_type zeroinitializer
@G__0x4c2c75 = global %G__0x4c2c75_type zeroinitializer
@G__0x4c2c8d = global %G__0x4c2c8d_type zeroinitializer
@G__0x4c2caf = global %G__0x4c2caf_type zeroinitializer
@G__0x4c2cd1 = global %G__0x4c2cd1_type zeroinitializer
@G__0x4c2ce9 = global %G__0x4c2ce9_type zeroinitializer
@G__0x4c2d02 = global %G__0x4c2d02_type zeroinitializer
@G__0x4c2d1b = global %G__0x4c2d1b_type zeroinitializer
@G__0x4c2d34 = global %G__0x4c2d34_type zeroinitializer
@G__0x4c2d50 = global %G__0x4c2d50_type zeroinitializer
@G__0x4c2d7c = global %G__0x4c2d7c_type zeroinitializer
@G__0x4c2d9d = global %G__0x4c2d9d_type zeroinitializer
@G__0x4c2dc1 = global %G__0x4c2dc1_type zeroinitializer
@G__0x4c2dde = global %G__0x4c2dde_type zeroinitializer
@G__0x4c2e03 = global %G__0x4c2e03_type zeroinitializer
@G__0x4c2e26 = global %G__0x4c2e26_type zeroinitializer
@G__0x6d1f9c = global %G__0x6d1f9c_type zeroinitializer
@G__0x6d1fc0 = global %G__0x6d1fc0_type zeroinitializer
@G__0x6d4520 = global %G__0x6d4520_type zeroinitializer
@G__0x6f6e20 = global %G__0x6f6e20_type zeroinitializer
@G__0x711780 = global %G__0x711780_type zeroinitializer
@G__0x721ca0 = global %G__0x721ca0_type zeroinitializer

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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4acbc0.u_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_477580.IdentifyProfile(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_477e20.Scaling_List(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @GeneratePic_parameter_set_rbsp(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_478270 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_478270, %struct.Memory** %MEMORY
  %loadMem_478271 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_478271, %struct.Memory** %MEMORY
  %loadMem_478274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i17 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i17
  %36 = load i64, i64* %PC.i16
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i16
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i17, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_478274, %struct.Memory** %MEMORY
  %loadMem_478278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i984 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i983
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i983
  store i64 1, i64* %RAX.i984, align 8
  store %struct.Memory* %loadMem_478278, %struct.Memory** %MEMORY
  %loadMem_47827d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i1006 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RCX.i1007 = bitcast %union.anon* %83 to i64*
  %84 = load i32, i32* %EAX.i1006
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %PC.i1005
  %87 = add i64 %86, 2
  store i64 %87, i64* %PC.i1005
  %88 = and i64 %85, 4294967295
  store i64 %88, i64* %RCX.i1007, align 8
  store %struct.Memory* %loadMem_47827d, %struct.Memory** %MEMORY
  %loadMem_47827f = load %struct.Memory*, %struct.Memory** %MEMORY
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 33
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RAX.i1027 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %PC.i1026
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC.i1026
  store i64 120, i64* %RAX.i1027, align 8
  store %struct.Memory* %loadMem_47827f, %struct.Memory** %MEMORY
  %loadMem_478284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EAX.i1024 = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RDX.i1025 = bitcast %union.anon* %105 to i64*
  %106 = load i32, i32* %EAX.i1024
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC.i1023
  %109 = add i64 %108, 2
  store i64 %109, i64* %PC.i1023
  %110 = and i64 %107, 4294967295
  store i64 %110, i64* %RDX.i1025, align 8
  store %struct.Memory* %loadMem_478284, %struct.Memory** %MEMORY
  %loadMem_478286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 33
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %113 to i64*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RDI.i1021 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RBP.i1022 = bitcast %union.anon* %119 to i64*
  %120 = load i64, i64* %RBP.i1022
  %121 = sub i64 %120, 8
  %122 = load i64, i64* %RDI.i1021
  %123 = load i64, i64* %PC.i1020
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC.i1020
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125
  store %struct.Memory* %loadMem_478286, %struct.Memory** %MEMORY
  %loadMem_47828a = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RSI.i1018 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i1019 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i1019
  %136 = sub i64 %135, 16
  %137 = load i64, i64* %RSI.i1018
  %138 = load i64, i64* %PC.i1017
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC.i1017
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140
  store %struct.Memory* %loadMem_47828a, %struct.Memory** %MEMORY
  %loadMem_47828e = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i1016 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i1016
  %148 = sub i64 %147, 28
  %149 = load i64, i64* %PC.i1015
  %150 = add i64 %149, 7
  store i64 %150, i64* %PC.i1015
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151
  store %struct.Memory* %loadMem_47828e, %struct.Memory** %MEMORY
  %loadMem_478295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i1012 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RCX.i1013 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 11
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RDI.i1014 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RCX.i1013
  %162 = load i64, i64* %PC.i1012
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i1012
  store i64 %161, i64* %RDI.i1014, align 8
  store %struct.Memory* %loadMem_478295, %struct.Memory** %MEMORY
  %loadMem_478298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RDX.i1010 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RSI.i1011 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RDX.i1010
  %174 = load i64, i64* %PC.i1009
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i1009
  store i64 %173, i64* %RSI.i1011, align 8
  store %struct.Memory* %loadMem_478298, %struct.Memory** %MEMORY
  %loadMem1_47829b = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %PC.i1008
  %180 = add i64 %179, -487867
  %181 = load i64, i64* %PC.i1008
  %182 = add i64 %181, 5
  %183 = load i64, i64* %PC.i1008
  %184 = add i64 %183, 5
  store i64 %184, i64* %PC.i1008
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, -8
  %188 = inttoptr i64 %187 to i64*
  store i64 %182, i64* %188
  store i64 %187, i64* %185, align 8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %180, i64* %189, align 8
  store %struct.Memory* %loadMem1_47829b, %struct.Memory** %MEMORY
  %loadMem2_47829b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47829b = load i64, i64* %3
  %190 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_47829b)
  store %struct.Memory* %190, %struct.Memory** %MEMORY
  %loadMem_4782a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RAX.i1003 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RBP.i1004
  %201 = sub i64 %200, 24
  %202 = load i64, i64* %RAX.i1003
  %203 = load i64, i64* %PC.i1002
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC.i1002
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205
  store %struct.Memory* %loadMem_4782a0, %struct.Memory** %MEMORY
  %loadMem_4782a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RAX.i1001 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RAX.i1001
  %213 = load i64, i64* %PC.i1000
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC.i1000
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %215, align 1
  %216 = trunc i64 %212 to i32
  %217 = and i32 %216, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %223, align 1
  %224 = icmp eq i64 %212, 0
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %225, i8* %226, align 1
  %227 = lshr i64 %212, 63
  %228 = trunc i64 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %228, i8* %229, align 1
  %230 = lshr i64 %212, 63
  %231 = xor i64 %227, %230
  %232 = add i64 %231, %230
  %233 = icmp eq i64 %232, 2
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %234, i8* %235, align 1
  store %struct.Memory* %loadMem_4782a4, %struct.Memory** %MEMORY
  %loadMem_4782a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %PC.i999
  %240 = add i64 %239, 21
  %241 = load i64, i64* %PC.i999
  %242 = add i64 %241, 6
  %243 = load i64, i64* %PC.i999
  %244 = add i64 %243, 6
  store i64 %244, i64* %PC.i999
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %246 = load i8, i8* %245, align 1
  %247 = icmp eq i8 %246, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %BRANCH_TAKEN, align 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %250 = select i1 %247, i64 %240, i64 %242
  store i64 %250, i64* %249, align 8
  store %struct.Memory* %loadMem_4782a8, %struct.Memory** %MEMORY
  %loadBr_4782a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4782a8 = icmp eq i8 %loadBr_4782a8, 1
  br i1 %cmpBr_4782a8, label %block_.L_4782bd, label %block_4782ae

block_4782ae:                                     ; preds = %entry
  %loadMem_4782ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RDI.i998 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %PC.i997
  %258 = add i64 %257, 10
  store i64 %258, i64* %PC.i997
  store i64 ptrtoint (%G__0x4c2aef_type* @G__0x4c2aef to i64), i64* %RDI.i998, align 8
  store %struct.Memory* %loadMem_4782ae, %struct.Memory** %MEMORY
  %loadMem1_4782b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i996 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %PC.i996
  %263 = add i64 %262, -126664
  %264 = load i64, i64* %PC.i996
  %265 = add i64 %264, 5
  %266 = load i64, i64* %PC.i996
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i996
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %265, i64* %271
  store i64 %270, i64* %268, align 8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %272, align 8
  store %struct.Memory* %loadMem1_4782b8, %struct.Memory** %MEMORY
  %loadMem2_4782b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4782b8 = load i64, i64* %3
  %call2_4782b8 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4782b8, %struct.Memory* %loadMem2_4782b8)
  store %struct.Memory* %call2_4782b8, %struct.Memory** %MEMORY
  br label %block_.L_4782bd

block_.L_4782bd:                                  ; preds = %block_4782ae, %entry
  %loadMem_4782bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RAX.i995 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %PC.i994
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC.i994
  store i64 1, i64* %RAX.i995, align 8
  store %struct.Memory* %loadMem_4782bd, %struct.Memory** %MEMORY
  %loadMem_4782c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %EAX.i992 = bitcast %union.anon* %286 to i32*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 11
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RDI.i993 = bitcast %union.anon* %289 to i64*
  %290 = load i32, i32* %EAX.i992
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %PC.i991
  %293 = add i64 %292, 2
  store i64 %293, i64* %PC.i991
  %294 = and i64 %291, 4294967295
  store i64 %294, i64* %RDI.i993, align 8
  store %struct.Memory* %loadMem_4782c2, %struct.Memory** %MEMORY
  %loadMem_4782c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RAX.i990 = bitcast %union.anon* %300 to i64*
  %301 = load i64, i64* %PC.i989
  %302 = add i64 %301, 5
  store i64 %302, i64* %PC.i989
  store i64 48, i64* %RAX.i990, align 8
  store %struct.Memory* %loadMem_4782c4, %struct.Memory** %MEMORY
  %loadMem_4782c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %EAX.i987 = bitcast %union.anon* %308 to i32*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 9
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RSI.i988 = bitcast %union.anon* %311 to i64*
  %312 = load i32, i32* %EAX.i987
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC.i986
  %315 = add i64 %314, 2
  store i64 %315, i64* %PC.i986
  %316 = and i64 %313, 4294967295
  store i64 %316, i64* %RSI.i988, align 8
  store %struct.Memory* %loadMem_4782c9, %struct.Memory** %MEMORY
  %loadMem1_4782cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %PC.i985
  %321 = add i64 %320, -487915
  %322 = load i64, i64* %PC.i985
  %323 = add i64 %322, 5
  %324 = load i64, i64* %PC.i985
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC.i985
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %323, i64* %329
  store i64 %328, i64* %326, align 8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %321, i64* %330, align 8
  store %struct.Memory* %loadMem1_4782cb, %struct.Memory** %MEMORY
  %loadMem2_4782cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4782cb = load i64, i64* %3
  %331 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_4782cb)
  store %struct.Memory* %331, %struct.Memory** %MEMORY
  %loadMem_4782d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 9
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RSI.i981 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i982 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i982
  %342 = sub i64 %341, 24
  %343 = load i64, i64* %PC.i980
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i980
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %RSI.i981, align 8
  store %struct.Memory* %loadMem_4782d0, %struct.Memory** %MEMORY
  %loadMem_4782d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RAX.i978 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RSI.i979 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RSI.i979
  %357 = load i64, i64* %RAX.i978
  %358 = load i64, i64* %PC.i977
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC.i977
  %360 = inttoptr i64 %356 to i64*
  store i64 %357, i64* %360
  store %struct.Memory* %loadMem_4782d4, %struct.Memory** %MEMORY
  %loadMem_4782d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i976 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RAX.i976
  %368 = load i64, i64* %PC.i975
  %369 = add i64 %368, 4
  store i64 %369, i64* %PC.i975
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %370, align 1
  %371 = trunc i64 %367 to i32
  %372 = and i32 %371, 255
  %373 = call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %376, i8* %377, align 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %378, align 1
  %379 = icmp eq i64 %367, 0
  %380 = zext i1 %379 to i8
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %380, i8* %381, align 1
  %382 = lshr i64 %367, 63
  %383 = trunc i64 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %383, i8* %384, align 1
  %385 = lshr i64 %367, 63
  %386 = xor i64 %382, %385
  %387 = add i64 %386, %385
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1
  store %struct.Memory* %loadMem_4782d7, %struct.Memory** %MEMORY
  %loadMem_4782db = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %PC.i974
  %395 = add i64 %394, 21
  %396 = load i64, i64* %PC.i974
  %397 = add i64 %396, 6
  %398 = load i64, i64* %PC.i974
  %399 = add i64 %398, 6
  store i64 %399, i64* %PC.i974
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %401 = load i8, i8* %400, align 1
  %402 = icmp eq i8 %401, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %BRANCH_TAKEN, align 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %405 = select i1 %402, i64 %395, i64 %397
  store i64 %405, i64* %404, align 8
  store %struct.Memory* %loadMem_4782db, %struct.Memory** %MEMORY
  %loadBr_4782db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4782db = icmp eq i8 %loadBr_4782db, 1
  br i1 %cmpBr_4782db, label %block_.L_4782f0, label %block_4782e1

block_4782e1:                                     ; preds = %block_.L_4782bd
  %loadMem_4782e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 11
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RDI.i973 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i972
  %413 = add i64 %412, 10
  store i64 %413, i64* %PC.i972
  store i64 ptrtoint (%G__0x4c2b09_type* @G__0x4c2b09 to i64), i64* %RDI.i973, align 8
  store %struct.Memory* %loadMem_4782e1, %struct.Memory** %MEMORY
  %loadMem1_4782eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %PC.i971
  %418 = add i64 %417, -126715
  %419 = load i64, i64* %PC.i971
  %420 = add i64 %419, 5
  %421 = load i64, i64* %PC.i971
  %422 = add i64 %421, 5
  store i64 %422, i64* %PC.i971
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %420, i64* %426
  store i64 %425, i64* %423, align 8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %418, i64* %427, align 8
  store %struct.Memory* %loadMem1_4782eb, %struct.Memory** %MEMORY
  %loadMem2_4782eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4782eb = load i64, i64* %3
  %call2_4782eb = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4782eb, %struct.Memory* %loadMem2_4782eb)
  store %struct.Memory* %call2_4782eb, %struct.Memory** %MEMORY
  br label %block_.L_4782f0

block_.L_4782f0:                                  ; preds = %block_4782e1, %block_.L_4782bd
  %loadMem_4782f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 11
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RDI.i970 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %PC.i969
  %435 = add i64 %434, 10
  store i64 %435, i64* %PC.i969
  store i64 ptrtoint (%G__0x4c2b23_type* @G__0x4c2b23 to i64), i64* %RDI.i970, align 8
  store %struct.Memory* %loadMem_4782f0, %struct.Memory** %MEMORY
  %loadMem_4782fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i968
  %446 = sub i64 %445, 16
  %447 = load i64, i64* %PC.i966
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC.i966
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_4782fa, %struct.Memory** %MEMORY
  %loadMem_4782fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RCX.i964 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 15
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RBP.i965 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %RBP.i965
  %461 = sub i64 %460, 24
  %462 = load i64, i64* %PC.i963
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC.i963
  %464 = inttoptr i64 %461 to i64*
  %465 = load i64, i64* %464
  store i64 %465, i64* %RCX.i964, align 8
  store %struct.Memory* %loadMem_4782fe, %struct.Memory** %MEMORY
  %loadMem_478302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RCX.i962 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RCX.i962
  %473 = load i64, i64* %PC.i961
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC.i961
  %475 = inttoptr i64 %472 to i64*
  %476 = load i64, i64* %475
  store i64 %476, i64* %RCX.i962, align 8
  store %struct.Memory* %loadMem_478302, %struct.Memory** %MEMORY
  %loadMem_478305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RAX.i959 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RCX.i960 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RCX.i960
  %487 = add i64 %486, 32
  %488 = load i64, i64* %RAX.i959
  %489 = load i64, i64* %PC.i958
  %490 = add i64 %489, 4
  store i64 %490, i64* %PC.i958
  %491 = inttoptr i64 %487 to i64*
  store i64 %488, i64* %491
  store %struct.Memory* %loadMem_478305, %struct.Memory** %MEMORY
  %loadMem_478309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RAX.i956 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i957
  %502 = sub i64 %501, 24
  %503 = load i64, i64* %PC.i955
  %504 = add i64 %503, 4
  store i64 %504, i64* %PC.i955
  %505 = inttoptr i64 %502 to i64*
  %506 = load i64, i64* %505
  store i64 %506, i64* %RAX.i956, align 8
  store %struct.Memory* %loadMem_478309, %struct.Memory** %MEMORY
  %loadMem_47830d = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RAX.i954 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RAX.i954
  %514 = load i64, i64* %PC.i953
  %515 = add i64 %514, 3
  store i64 %515, i64* %PC.i953
  %516 = inttoptr i64 %513 to i64*
  %517 = load i64, i64* %516
  store i64 %517, i64* %RAX.i954, align 8
  store %struct.Memory* %loadMem_47830d, %struct.Memory** %MEMORY
  %loadMem_478310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i952 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RAX.i952
  %525 = add i64 %524, 4
  %526 = load i64, i64* %PC.i951
  %527 = add i64 %526, 7
  store i64 %527, i64* %PC.i951
  %528 = inttoptr i64 %525 to i32*
  store i32 8, i32* %528
  store %struct.Memory* %loadMem_478310, %struct.Memory** %MEMORY
  %loadMem_478317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %PC.i949
  %536 = add i64 %535, 8
  store i64 %536, i64* %PC.i949
  %537 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %537, i64* %RAX.i950, align 8
  store %struct.Memory* %loadMem_478317, %struct.Memory** %MEMORY
  %loadMem_47831f = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RAX.i947 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 7
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RDX.i948 = bitcast %union.anon* %546 to i64*
  %547 = load i64, i64* %RAX.i947
  %548 = add i64 %547, 72492
  %549 = load i64, i64* %PC.i946
  %550 = add i64 %549, 6
  store i64 %550, i64* %PC.i946
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551
  %553 = zext i32 %552 to i64
  store i64 %553, i64* %RDX.i948, align 8
  store %struct.Memory* %loadMem_47831f, %struct.Memory** %MEMORY
  %loadMem_478325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RAX.i944 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 15
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RBP.i945
  %564 = sub i64 %563, 8
  %565 = load i64, i64* %PC.i943
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC.i943
  %567 = inttoptr i64 %564 to i64*
  %568 = load i64, i64* %567
  store i64 %568, i64* %RAX.i944, align 8
  store %struct.Memory* %loadMem_478325, %struct.Memory** %MEMORY
  %loadMem_478329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 7
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %EDX.i941 = bitcast %union.anon* %574 to i32*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RAX.i942 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %RAX.i942
  %579 = add i64 %578, 56
  %580 = load i32, i32* %EDX.i941
  %581 = zext i32 %580 to i64
  %582 = load i64, i64* %PC.i940
  %583 = add i64 %582, 3
  store i64 %583, i64* %PC.i940
  %584 = inttoptr i64 %579 to i32*
  store i32 %580, i32* %584
  store %struct.Memory* %loadMem_478329, %struct.Memory** %MEMORY
  %loadMem_47832c = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 15
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RBP.i939
  %595 = sub i64 %594, 8
  %596 = load i64, i64* %PC.i937
  %597 = add i64 %596, 4
  store i64 %597, i64* %PC.i937
  %598 = inttoptr i64 %595 to i64*
  %599 = load i64, i64* %598
  store i64 %599, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_47832c, %struct.Memory** %MEMORY
  %loadMem_478330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RAX.i935 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 9
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RSI.i936 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RAX.i935
  %610 = add i64 %609, 4
  %611 = load i64, i64* %PC.i934
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC.i934
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RSI.i936, align 8
  store %struct.Memory* %loadMem_478330, %struct.Memory** %MEMORY
  %loadMem_478333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 7
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RDX.i932 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RBP.i933
  %626 = sub i64 %625, 24
  %627 = load i64, i64* %PC.i931
  %628 = add i64 %627, 4
  store i64 %628, i64* %PC.i931
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629
  store i64 %630, i64* %RDX.i932, align 8
  store %struct.Memory* %loadMem_478333, %struct.Memory** %MEMORY
  %loadMem1_478337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %PC.i930
  %635 = add i64 %634, 213865
  %636 = load i64, i64* %PC.i930
  %637 = add i64 %636, 5
  %638 = load i64, i64* %PC.i930
  %639 = add i64 %638, 5
  store i64 %639, i64* %PC.i930
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = add i64 %641, -8
  %643 = inttoptr i64 %642 to i64*
  store i64 %637, i64* %643
  store i64 %642, i64* %640, align 8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %635, i64* %644, align 8
  store %struct.Memory* %loadMem1_478337, %struct.Memory** %MEMORY
  %loadMem2_478337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478337 = load i64, i64* %3
  %call2_478337 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_478337, %struct.Memory* %loadMem2_478337)
  store %struct.Memory* %call2_478337, %struct.Memory** %MEMORY
  %loadMem_47833c = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 11
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RDI.i929 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %PC.i928
  %652 = add i64 %651, 10
  store i64 %652, i64* %PC.i928
  store i64 ptrtoint (%G__0x4c2b3d_type* @G__0x4c2b3d to i64), i64* %RDI.i929, align 8
  store %struct.Memory* %loadMem_47833c, %struct.Memory** %MEMORY
  %loadMem_478346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 1
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RAX.i926 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 15
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RAX.i926
  %663 = load i64, i64* %RBP.i927
  %664 = sub i64 %663, 28
  %665 = load i64, i64* %PC.i925
  %666 = add i64 %665, 3
  store i64 %666, i64* %PC.i925
  %667 = trunc i64 %662 to i32
  %668 = inttoptr i64 %664 to i32*
  %669 = load i32, i32* %668
  %670 = add i32 %669, %667
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RAX.i926, align 8
  %672 = icmp ult i32 %670, %667
  %673 = icmp ult i32 %670, %669
  %674 = or i1 %672, %673
  %675 = zext i1 %674 to i8
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %675, i8* %676, align 1
  %677 = and i32 %670, 255
  %678 = call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %681, i8* %682, align 1
  %683 = xor i32 %669, %667
  %684 = xor i32 %683, %670
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %687, i8* %688, align 1
  %689 = icmp eq i32 %670, 0
  %690 = zext i1 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %690, i8* %691, align 1
  %692 = lshr i32 %670, 31
  %693 = trunc i32 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %693, i8* %694, align 1
  %695 = lshr i32 %667, 31
  %696 = lshr i32 %669, 31
  %697 = xor i32 %692, %695
  %698 = xor i32 %692, %696
  %699 = add i32 %697, %698
  %700 = icmp eq i32 %699, 2
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %701, i8* %702, align 1
  store %struct.Memory* %loadMem_478346, %struct.Memory** %MEMORY
  %loadMem_478349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %EAX.i923 = bitcast %union.anon* %708 to i32*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 15
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RBP.i924 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %RBP.i924
  %713 = sub i64 %712, 28
  %714 = load i32, i32* %EAX.i923
  %715 = zext i32 %714 to i64
  %716 = load i64, i64* %PC.i922
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC.i922
  %718 = inttoptr i64 %713 to i32*
  store i32 %714, i32* %718
  store %struct.Memory* %loadMem_478349, %struct.Memory** %MEMORY
  %loadMem_47834c = load %struct.Memory*, %struct.Memory** %MEMORY
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 33
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 5
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %RCX.i920 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 15
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %727 to i64*
  %728 = load i64, i64* %RBP.i921
  %729 = sub i64 %728, 8
  %730 = load i64, i64* %PC.i919
  %731 = add i64 %730, 4
  store i64 %731, i64* %PC.i919
  %732 = inttoptr i64 %729 to i64*
  %733 = load i64, i64* %732
  store i64 %733, i64* %RCX.i920, align 8
  store %struct.Memory* %loadMem_47834c, %struct.Memory** %MEMORY
  %loadMem_478350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 5
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RCX.i917 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 9
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RSI.i918 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RCX.i917
  %744 = add i64 %743, 8
  %745 = load i64, i64* %PC.i916
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC.i916
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RSI.i918, align 8
  store %struct.Memory* %loadMem_478350, %struct.Memory** %MEMORY
  %loadMem_478353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 7
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 15
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RBP.i915
  %760 = sub i64 %759, 24
  %761 = load i64, i64* %PC.i913
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC.i913
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763
  store i64 %764, i64* %RDX.i914, align 8
  store %struct.Memory* %loadMem_478353, %struct.Memory** %MEMORY
  %loadMem1_478357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 33
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %PC.i912
  %769 = add i64 %768, 213833
  %770 = load i64, i64* %PC.i912
  %771 = add i64 %770, 5
  %772 = load i64, i64* %PC.i912
  %773 = add i64 %772, 5
  store i64 %773, i64* %PC.i912
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %775 = load i64, i64* %774, align 8
  %776 = add i64 %775, -8
  %777 = inttoptr i64 %776 to i64*
  store i64 %771, i64* %777
  store i64 %776, i64* %774, align 8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %769, i64* %778, align 8
  store %struct.Memory* %loadMem1_478357, %struct.Memory** %MEMORY
  %loadMem2_478357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478357 = load i64, i64* %3
  %call2_478357 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_478357, %struct.Memory* %loadMem2_478357)
  store %struct.Memory* %call2_478357, %struct.Memory** %MEMORY
  %loadMem_47835c = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 11
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RDI.i911 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %PC.i910
  %786 = add i64 %785, 10
  store i64 %786, i64* %PC.i910
  store i64 ptrtoint (%G__0x4c2b57_type* @G__0x4c2b57 to i64), i64* %RDI.i911, align 8
  store %struct.Memory* %loadMem_47835c, %struct.Memory** %MEMORY
  %loadMem_478366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RAX.i908 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 15
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RAX.i908
  %797 = load i64, i64* %RBP.i909
  %798 = sub i64 %797, 28
  %799 = load i64, i64* %PC.i907
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i907
  %801 = trunc i64 %796 to i32
  %802 = inttoptr i64 %798 to i32*
  %803 = load i32, i32* %802
  %804 = add i32 %803, %801
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RAX.i908, align 8
  %806 = icmp ult i32 %804, %801
  %807 = icmp ult i32 %804, %803
  %808 = or i1 %806, %807
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %809, i8* %810, align 1
  %811 = and i32 %804, 255
  %812 = call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %815, i8* %816, align 1
  %817 = xor i32 %803, %801
  %818 = xor i32 %817, %804
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %821, i8* %822, align 1
  %823 = icmp eq i32 %804, 0
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %824, i8* %825, align 1
  %826 = lshr i32 %804, 31
  %827 = trunc i32 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %827, i8* %828, align 1
  %829 = lshr i32 %801, 31
  %830 = lshr i32 %803, 31
  %831 = xor i32 %826, %829
  %832 = xor i32 %826, %830
  %833 = add i32 %831, %832
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %835, i8* %836, align 1
  store %struct.Memory* %loadMem_478366, %struct.Memory** %MEMORY
  %loadMem_478369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 1
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %EAX.i905 = bitcast %union.anon* %842 to i32*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 15
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %845 to i64*
  %846 = load i64, i64* %RBP.i906
  %847 = sub i64 %846, 28
  %848 = load i32, i32* %EAX.i905
  %849 = zext i32 %848 to i64
  %850 = load i64, i64* %PC.i904
  %851 = add i64 %850, 3
  store i64 %851, i64* %PC.i904
  %852 = inttoptr i64 %847 to i32*
  store i32 %848, i32* %852
  store %struct.Memory* %loadMem_478369, %struct.Memory** %MEMORY
  %loadMem_47836c = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 5
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RCX.i902 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 15
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %RBP.i903
  %863 = sub i64 %862, 8
  %864 = load i64, i64* %PC.i901
  %865 = add i64 %864, 4
  store i64 %865, i64* %PC.i901
  %866 = inttoptr i64 %863 to i64*
  %867 = load i64, i64* %866
  store i64 %867, i64* %RCX.i902, align 8
  store %struct.Memory* %loadMem_47836c, %struct.Memory** %MEMORY
  %loadMem_478370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 5
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RCX.i899 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 9
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RSI.i900 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %RCX.i899
  %878 = add i64 %877, 12
  %879 = load i64, i64* %PC.i898
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC.i898
  %881 = inttoptr i64 %878 to i32*
  %882 = load i32, i32* %881
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RSI.i900, align 8
  store %struct.Memory* %loadMem_478370, %struct.Memory** %MEMORY
  %loadMem_478373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 7
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RDX.i896 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i897 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i897
  %894 = sub i64 %893, 24
  %895 = load i64, i64* %PC.i895
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC.i895
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897
  store i64 %898, i64* %RDX.i896, align 8
  store %struct.Memory* %loadMem_478373, %struct.Memory** %MEMORY
  %loadMem1_478377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %PC.i894
  %903 = add i64 %902, 214921
  %904 = load i64, i64* %PC.i894
  %905 = add i64 %904, 5
  %906 = load i64, i64* %PC.i894
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC.i894
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = add i64 %909, -8
  %911 = inttoptr i64 %910 to i64*
  store i64 %905, i64* %911
  store i64 %910, i64* %908, align 8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %903, i64* %912, align 8
  store %struct.Memory* %loadMem1_478377, %struct.Memory** %MEMORY
  %loadMem2_478377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478377 = load i64, i64* %3
  %call2_478377 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_478377, %struct.Memory* %loadMem2_478377)
  store %struct.Memory* %call2_478377, %struct.Memory** %MEMORY
  %loadMem_47837c = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 11
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RDI.i893 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %PC.i892
  %920 = add i64 %919, 10
  store i64 %920, i64* %PC.i892
  store i64 ptrtoint (%G__0x4c2b75_type* @G__0x4c2b75 to i64), i64* %RDI.i893, align 8
  store %struct.Memory* %loadMem_47837c, %struct.Memory** %MEMORY
  %loadMem_478386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 15
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RAX.i890
  %931 = load i64, i64* %RBP.i891
  %932 = sub i64 %931, 28
  %933 = load i64, i64* %PC.i889
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC.i889
  %935 = trunc i64 %930 to i32
  %936 = inttoptr i64 %932 to i32*
  %937 = load i32, i32* %936
  %938 = add i32 %937, %935
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RAX.i890, align 8
  %940 = icmp ult i32 %938, %935
  %941 = icmp ult i32 %938, %937
  %942 = or i1 %940, %941
  %943 = zext i1 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %943, i8* %944, align 1
  %945 = and i32 %938, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1
  %951 = xor i32 %937, %935
  %952 = xor i32 %951, %938
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i32 %938, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i32 %938, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %935, 31
  %964 = lshr i32 %937, 31
  %965 = xor i32 %960, %963
  %966 = xor i32 %960, %964
  %967 = add i32 %965, %966
  %968 = icmp eq i32 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1
  store %struct.Memory* %loadMem_478386, %struct.Memory** %MEMORY
  %loadMem_478389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 1
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %EAX.i887 = bitcast %union.anon* %976 to i32*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i888
  %981 = sub i64 %980, 28
  %982 = load i32, i32* %EAX.i887
  %983 = zext i32 %982 to i64
  %984 = load i64, i64* %PC.i886
  %985 = add i64 %984, 3
  store i64 %985, i64* %PC.i886
  %986 = inttoptr i64 %981 to i32*
  store i32 %982, i32* %986
  store %struct.Memory* %loadMem_478389, %struct.Memory** %MEMORY
  %loadMem_47838c = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 5
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RCX.i884 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RBP.i885
  %997 = sub i64 %996, 8
  %998 = load i64, i64* %PC.i883
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC.i883
  %1000 = inttoptr i64 %997 to i64*
  %1001 = load i64, i64* %1000
  store i64 %1001, i64* %RCX.i884, align 8
  store %struct.Memory* %loadMem_47838c, %struct.Memory** %MEMORY
  %loadMem_478390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 5
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RCX.i881 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 9
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RSI.i882 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RCX.i881
  %1012 = add i64 %1011, 56
  %1013 = load i64, i64* %PC.i880
  %1014 = add i64 %1013, 3
  store i64 %1014, i64* %PC.i880
  %1015 = inttoptr i64 %1012 to i32*
  %1016 = load i32, i32* %1015
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RSI.i882, align 8
  store %struct.Memory* %loadMem_478390, %struct.Memory** %MEMORY
  %loadMem_478393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 7
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RDX.i878 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RBP.i879
  %1028 = sub i64 %1027, 24
  %1029 = load i64, i64* %PC.i877
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC.i877
  %1031 = inttoptr i64 %1028 to i64*
  %1032 = load i64, i64* %1031
  store i64 %1032, i64* %RDX.i878, align 8
  store %struct.Memory* %loadMem_478393, %struct.Memory** %MEMORY
  %loadMem1_478397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %PC.i876
  %1037 = add i64 %1036, 214889
  %1038 = load i64, i64* %PC.i876
  %1039 = add i64 %1038, 5
  %1040 = load i64, i64* %PC.i876
  %1041 = add i64 %1040, 5
  store i64 %1041, i64* %PC.i876
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1043 = load i64, i64* %1042, align 8
  %1044 = add i64 %1043, -8
  %1045 = inttoptr i64 %1044 to i64*
  store i64 %1039, i64* %1045
  store i64 %1044, i64* %1042, align 8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1037, i64* %1046, align 8
  store %struct.Memory* %loadMem1_478397, %struct.Memory** %MEMORY
  %loadMem2_478397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478397 = load i64, i64* %3
  %call2_478397 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_478397, %struct.Memory* %loadMem2_478397)
  store %struct.Memory* %call2_478397, %struct.Memory** %MEMORY
  %loadMem_47839c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 11
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RDI.i875 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %PC.i874
  %1054 = add i64 %1053, 10
  store i64 %1054, i64* %PC.i874
  store i64 ptrtoint (%G__0x4c2b91_type* @G__0x4c2b91 to i64), i64* %RDI.i875, align 8
  store %struct.Memory* %loadMem_47839c, %struct.Memory** %MEMORY
  %loadMem_4783a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 1
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 15
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RAX.i872
  %1065 = load i64, i64* %RBP.i873
  %1066 = sub i64 %1065, 28
  %1067 = load i64, i64* %PC.i871
  %1068 = add i64 %1067, 3
  store i64 %1068, i64* %PC.i871
  %1069 = trunc i64 %1064 to i32
  %1070 = inttoptr i64 %1066 to i32*
  %1071 = load i32, i32* %1070
  %1072 = add i32 %1071, %1069
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RAX.i872, align 8
  %1074 = icmp ult i32 %1072, %1069
  %1075 = icmp ult i32 %1072, %1071
  %1076 = or i1 %1074, %1075
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1077, i8* %1078, align 1
  %1079 = and i32 %1072, 255
  %1080 = call i32 @llvm.ctpop.i32(i32 %1079)
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = xor i8 %1082, 1
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1083, i8* %1084, align 1
  %1085 = xor i32 %1071, %1069
  %1086 = xor i32 %1085, %1072
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1089, i8* %1090, align 1
  %1091 = icmp eq i32 %1072, 0
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1092, i8* %1093, align 1
  %1094 = lshr i32 %1072, 31
  %1095 = trunc i32 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1095, i8* %1096, align 1
  %1097 = lshr i32 %1069, 31
  %1098 = lshr i32 %1071, 31
  %1099 = xor i32 %1094, %1097
  %1100 = xor i32 %1094, %1098
  %1101 = add i32 %1099, %1100
  %1102 = icmp eq i32 %1101, 2
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1103, i8* %1104, align 1
  store %struct.Memory* %loadMem_4783a6, %struct.Memory** %MEMORY
  %loadMem_4783a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 1
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %EAX.i869 = bitcast %union.anon* %1110 to i32*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 15
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RBP.i870
  %1115 = sub i64 %1114, 28
  %1116 = load i32, i32* %EAX.i869
  %1117 = zext i32 %1116 to i64
  %1118 = load i64, i64* %PC.i868
  %1119 = add i64 %1118, 3
  store i64 %1119, i64* %PC.i868
  %1120 = inttoptr i64 %1115 to i32*
  store i32 %1116, i32* %1120
  store %struct.Memory* %loadMem_4783a9, %struct.Memory** %MEMORY
  %loadMem_4783ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 5
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 15
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i867
  %1131 = sub i64 %1130, 8
  %1132 = load i64, i64* %PC.i865
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i865
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134
  store i64 %1135, i64* %RCX.i866, align 8
  store %struct.Memory* %loadMem_4783ac, %struct.Memory** %MEMORY
  %loadMem_4783b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 5
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 9
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RSI.i864 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RCX.i863
  %1146 = add i64 %1145, 60
  %1147 = load i64, i64* %PC.i862
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %PC.i862
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RSI.i864, align 8
  store %struct.Memory* %loadMem_4783b0, %struct.Memory** %MEMORY
  %loadMem_4783b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 7
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RDX.i860 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i861
  %1162 = sub i64 %1161, 24
  %1163 = load i64, i64* %PC.i859
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC.i859
  %1165 = inttoptr i64 %1162 to i64*
  %1166 = load i64, i64* %1165
  store i64 %1166, i64* %RDX.i860, align 8
  store %struct.Memory* %loadMem_4783b3, %struct.Memory** %MEMORY
  %loadMem1_4783b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %PC.i858
  %1171 = add i64 %1170, 213737
  %1172 = load i64, i64* %PC.i858
  %1173 = add i64 %1172, 5
  %1174 = load i64, i64* %PC.i858
  %1175 = add i64 %1174, 5
  store i64 %1175, i64* %PC.i858
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1177 = load i64, i64* %1176, align 8
  %1178 = add i64 %1177, -8
  %1179 = inttoptr i64 %1178 to i64*
  store i64 %1173, i64* %1179
  store i64 %1178, i64* %1176, align 8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1171, i64* %1180, align 8
  store %struct.Memory* %loadMem1_4783b7, %struct.Memory** %MEMORY
  %loadMem2_4783b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4783b7 = load i64, i64* %3
  %call2_4783b7 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4783b7, %struct.Memory* %loadMem2_4783b7)
  store %struct.Memory* %call2_4783b7, %struct.Memory** %MEMORY
  %loadMem_4783bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 1
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 15
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RAX.i856
  %1191 = load i64, i64* %RBP.i857
  %1192 = sub i64 %1191, 28
  %1193 = load i64, i64* %PC.i855
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %PC.i855
  %1195 = trunc i64 %1190 to i32
  %1196 = inttoptr i64 %1192 to i32*
  %1197 = load i32, i32* %1196
  %1198 = add i32 %1197, %1195
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RAX.i856, align 8
  %1200 = icmp ult i32 %1198, %1195
  %1201 = icmp ult i32 %1198, %1197
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1203, i8* %1204, align 1
  %1205 = and i32 %1198, 255
  %1206 = call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1209, i8* %1210, align 1
  %1211 = xor i32 %1197, %1195
  %1212 = xor i32 %1211, %1198
  %1213 = lshr i32 %1212, 4
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1215, i8* %1216, align 1
  %1217 = icmp eq i32 %1198, 0
  %1218 = zext i1 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1218, i8* %1219, align 1
  %1220 = lshr i32 %1198, 31
  %1221 = trunc i32 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i32 %1195, 31
  %1224 = lshr i32 %1197, 31
  %1225 = xor i32 %1220, %1223
  %1226 = xor i32 %1220, %1224
  %1227 = add i32 %1225, %1226
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1229, i8* %1230, align 1
  store %struct.Memory* %loadMem_4783bc, %struct.Memory** %MEMORY
  %loadMem_4783bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %EAX.i853 = bitcast %union.anon* %1236 to i32*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 15
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %RBP.i854
  %1241 = sub i64 %1240, 28
  %1242 = load i32, i32* %EAX.i853
  %1243 = zext i32 %1242 to i64
  %1244 = load i64, i64* %PC.i852
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i852
  %1246 = inttoptr i64 %1241 to i32*
  store i32 %1242, i32* %1246
  store %struct.Memory* %loadMem_4783bf, %struct.Memory** %MEMORY
  %loadMem_4783c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 5
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i851
  %1257 = sub i64 %1256, 8
  %1258 = load i64, i64* %PC.i849
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC.i849
  %1260 = inttoptr i64 %1257 to i64*
  %1261 = load i64, i64* %1260
  store i64 %1261, i64* %RCX.i850, align 8
  store %struct.Memory* %loadMem_4783c2, %struct.Memory** %MEMORY
  %loadMem_4783c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 5
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %RCX.i848
  %1269 = add i64 %1268, 60
  %1270 = load i64, i64* %PC.i847
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %PC.i847
  %1272 = inttoptr i64 %1269 to i32*
  %1273 = load i32, i32* %1272
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1274, align 1
  %1275 = and i32 %1273, 255
  %1276 = call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1279, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1281, align 1
  %1282 = icmp eq i32 %1273, 0
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1273, 31
  %1286 = trunc i32 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1286, i8* %1287, align 1
  %1288 = lshr i32 %1273, 31
  %1289 = xor i32 %1285, %1288
  %1290 = add i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1292, i8* %1293, align 1
  store %struct.Memory* %loadMem_4783c6, %struct.Memory** %MEMORY
  %loadMem_4783ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %PC.i846
  %1298 = add i64 %1297, 643
  %1299 = load i64, i64* %PC.i846
  %1300 = add i64 %1299, 6
  %1301 = load i64, i64* %PC.i846
  %1302 = add i64 %1301, 6
  store i64 %1302, i64* %PC.i846
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1304 = load i8, i8* %1303, align 1
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1306 = load i8, i8* %1305, align 1
  %1307 = or i8 %1306, %1304
  %1308 = icmp ne i8 %1307, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %BRANCH_TAKEN, align 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1311 = select i1 %1308, i64 %1298, i64 %1300
  store i64 %1311, i64* %1310, align 8
  store %struct.Memory* %loadMem_4783ca, %struct.Memory** %MEMORY
  %loadBr_4783ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4783ca = icmp eq i8 %loadBr_4783ca, 1
  br i1 %cmpBr_4783ca, label %block_.L_47864d, label %block_4783d0

block_4783d0:                                     ; preds = %block_.L_4782f0
  %loadMem_4783d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 11
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RDI.i845 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %PC.i844
  %1319 = add i64 %1318, 10
  store i64 %1319, i64* %PC.i844
  store i64 ptrtoint (%G__0x4c2bae_type* @G__0x4c2bae to i64), i64* %RDI.i845, align 8
  store %struct.Memory* %loadMem_4783d0, %struct.Memory** %MEMORY
  %loadMem_4783da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 1
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 15
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RBP.i843
  %1330 = sub i64 %1329, 8
  %1331 = load i64, i64* %PC.i841
  %1332 = add i64 %1331, 4
  store i64 %1332, i64* %PC.i841
  %1333 = inttoptr i64 %1330 to i64*
  %1334 = load i64, i64* %1333
  store i64 %1334, i64* %RAX.i842, align 8
  store %struct.Memory* %loadMem_4783da, %struct.Memory** %MEMORY
  %loadMem_4783de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 1
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 9
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RSI.i840 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %RAX.i839
  %1345 = add i64 %1344, 64
  %1346 = load i64, i64* %PC.i838
  %1347 = add i64 %1346, 3
  store i64 %1347, i64* %PC.i838
  %1348 = inttoptr i64 %1345 to i32*
  %1349 = load i32, i32* %1348
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RSI.i840, align 8
  store %struct.Memory* %loadMem_4783de, %struct.Memory** %MEMORY
  %loadMem_4783e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 7
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 15
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %RBP.i837
  %1361 = sub i64 %1360, 24
  %1362 = load i64, i64* %PC.i835
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC.i835
  %1364 = inttoptr i64 %1361 to i64*
  %1365 = load i64, i64* %1364
  store i64 %1365, i64* %RDX.i836, align 8
  store %struct.Memory* %loadMem_4783e1, %struct.Memory** %MEMORY
  %loadMem1_4783e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i834
  %1370 = add i64 %1369, 213691
  %1371 = load i64, i64* %PC.i834
  %1372 = add i64 %1371, 5
  %1373 = load i64, i64* %PC.i834
  %1374 = add i64 %1373, 5
  store i64 %1374, i64* %PC.i834
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1376 = load i64, i64* %1375, align 8
  %1377 = add i64 %1376, -8
  %1378 = inttoptr i64 %1377 to i64*
  store i64 %1372, i64* %1378
  store i64 %1377, i64* %1375, align 8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1370, i64* %1379, align 8
  store %struct.Memory* %loadMem1_4783e5, %struct.Memory** %MEMORY
  %loadMem2_4783e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4783e5 = load i64, i64* %3
  %call2_4783e5 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4783e5, %struct.Memory* %loadMem2_4783e5)
  store %struct.Memory* %call2_4783e5, %struct.Memory** %MEMORY
  %loadMem_4783ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i832 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 15
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RBP.i833 = bitcast %union.anon* %1388 to i64*
  %1389 = load i64, i64* %RAX.i832
  %1390 = load i64, i64* %RBP.i833
  %1391 = sub i64 %1390, 28
  %1392 = load i64, i64* %PC.i831
  %1393 = add i64 %1392, 3
  store i64 %1393, i64* %PC.i831
  %1394 = trunc i64 %1389 to i32
  %1395 = inttoptr i64 %1391 to i32*
  %1396 = load i32, i32* %1395
  %1397 = add i32 %1396, %1394
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RAX.i832, align 8
  %1399 = icmp ult i32 %1397, %1394
  %1400 = icmp ult i32 %1397, %1396
  %1401 = or i1 %1399, %1400
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1402, i8* %1403, align 1
  %1404 = and i32 %1397, 255
  %1405 = call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1408, i8* %1409, align 1
  %1410 = xor i32 %1396, %1394
  %1411 = xor i32 %1410, %1397
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1414, i8* %1415, align 1
  %1416 = icmp eq i32 %1397, 0
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1417, i8* %1418, align 1
  %1419 = lshr i32 %1397, 31
  %1420 = trunc i32 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1420, i8* %1421, align 1
  %1422 = lshr i32 %1394, 31
  %1423 = lshr i32 %1396, 31
  %1424 = xor i32 %1419, %1422
  %1425 = xor i32 %1419, %1423
  %1426 = add i32 %1424, %1425
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1428, i8* %1429, align 1
  store %struct.Memory* %loadMem_4783ea, %struct.Memory** %MEMORY
  %loadMem_4783ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 1
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %EAX.i829 = bitcast %union.anon* %1435 to i32*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 15
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %RBP.i830
  %1440 = sub i64 %1439, 28
  %1441 = load i32, i32* %EAX.i829
  %1442 = zext i32 %1441 to i64
  %1443 = load i64, i64* %PC.i828
  %1444 = add i64 %1443, 3
  store i64 %1444, i64* %PC.i828
  %1445 = inttoptr i64 %1440 to i32*
  store i32 %1441, i32* %1445
  store %struct.Memory* %loadMem_4783ed, %struct.Memory** %MEMORY
  %loadMem_4783f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 7
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RDX.i826 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 15
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RBP.i827
  %1456 = sub i64 %1455, 8
  %1457 = load i64, i64* %PC.i825
  %1458 = add i64 %1457, 4
  store i64 %1458, i64* %PC.i825
  %1459 = inttoptr i64 %1456 to i64*
  %1460 = load i64, i64* %1459
  store i64 %1460, i64* %RDX.i826, align 8
  store %struct.Memory* %loadMem_4783f0, %struct.Memory** %MEMORY
  %loadMem_4783f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 7
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RDX.i824 = bitcast %union.anon* %1466 to i64*
  %1467 = load i64, i64* %RDX.i824
  %1468 = add i64 %1467, 64
  %1469 = load i64, i64* %PC.i823
  %1470 = add i64 %1469, 4
  store i64 %1470, i64* %PC.i823
  %1471 = inttoptr i64 %1468 to i32*
  %1472 = load i32, i32* %1471
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1473, align 1
  %1474 = and i32 %1472, 255
  %1475 = call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1478, i8* %1479, align 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1480, align 1
  %1481 = icmp eq i32 %1472, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i32 %1472, 31
  %1485 = trunc i32 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1472, 31
  %1488 = xor i32 %1484, %1487
  %1489 = add i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1
  store %struct.Memory* %loadMem_4783f4, %struct.Memory** %MEMORY
  %loadMem_4783f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %PC.i822
  %1497 = add i64 %1496, 86
  %1498 = load i64, i64* %PC.i822
  %1499 = add i64 %1498, 6
  %1500 = load i64, i64* %PC.i822
  %1501 = add i64 %1500, 6
  store i64 %1501, i64* %PC.i822
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1503 = load i8, i8* %1502, align 1
  %1504 = icmp eq i8 %1503, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %BRANCH_TAKEN, align 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1507 = select i1 %1504, i64 %1497, i64 %1499
  store i64 %1507, i64* %1506, align 8
  store %struct.Memory* %loadMem_4783f8, %struct.Memory** %MEMORY
  %loadBr_4783f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4783f8 = icmp eq i8 %loadBr_4783f8, 1
  br i1 %cmpBr_4783f8, label %block_.L_47844e, label %block_4783fe

block_4783fe:                                     ; preds = %block_4783d0
  %loadMem_4783fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 15
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %RBP.i821
  %1515 = sub i64 %1514, 36
  %1516 = load i64, i64* %PC.i820
  %1517 = add i64 %1516, 7
  store i64 %1517, i64* %PC.i820
  %1518 = inttoptr i64 %1515 to i32*
  store i32 0, i32* %1518
  store %struct.Memory* %loadMem_4783fe, %struct.Memory** %MEMORY
  br label %block_.L_478405

block_.L_478405:                                  ; preds = %block_478415, %block_4783fe
  %loadMem_478405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RBP.i819
  %1529 = sub i64 %1528, 36
  %1530 = load i64, i64* %PC.i817
  %1531 = add i64 %1530, 3
  store i64 %1531, i64* %PC.i817
  %1532 = inttoptr i64 %1529 to i32*
  %1533 = load i32, i32* %1532
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RAX.i818, align 8
  store %struct.Memory* %loadMem_478405, %struct.Memory** %MEMORY
  %loadMem_478408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 5
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 15
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %RBP.i816
  %1545 = sub i64 %1544, 8
  %1546 = load i64, i64* %PC.i814
  %1547 = add i64 %1546, 4
  store i64 %1547, i64* %PC.i814
  %1548 = inttoptr i64 %1545 to i64*
  %1549 = load i64, i64* %1548
  store i64 %1549, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_478408, %struct.Memory** %MEMORY
  %loadMem_47840c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 1
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %EAX.i812 = bitcast %union.anon* %1555 to i32*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 5
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %1558 to i64*
  %1559 = load i32, i32* %EAX.i812
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %RCX.i813
  %1562 = add i64 %1561, 60
  %1563 = load i64, i64* %PC.i811
  %1564 = add i64 %1563, 3
  store i64 %1564, i64* %PC.i811
  %1565 = inttoptr i64 %1562 to i32*
  %1566 = load i32, i32* %1565
  %1567 = sub i32 %1559, %1566
  %1568 = icmp ult i32 %1559, %1566
  %1569 = zext i1 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1569, i8* %1570, align 1
  %1571 = and i32 %1567, 255
  %1572 = call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1575, i8* %1576, align 1
  %1577 = xor i32 %1566, %1559
  %1578 = xor i32 %1577, %1567
  %1579 = lshr i32 %1578, 4
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1581, i8* %1582, align 1
  %1583 = icmp eq i32 %1567, 0
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1584, i8* %1585, align 1
  %1586 = lshr i32 %1567, 31
  %1587 = trunc i32 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1587, i8* %1588, align 1
  %1589 = lshr i32 %1559, 31
  %1590 = lshr i32 %1566, 31
  %1591 = xor i32 %1590, %1589
  %1592 = xor i32 %1586, %1589
  %1593 = add i32 %1592, %1591
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1595, i8* %1596, align 1
  store %struct.Memory* %loadMem_47840c, %struct.Memory** %MEMORY
  %loadMem_47840f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %PC.i810
  %1601 = add i64 %1600, 58
  %1602 = load i64, i64* %PC.i810
  %1603 = add i64 %1602, 6
  %1604 = load i64, i64* %PC.i810
  %1605 = add i64 %1604, 6
  store i64 %1605, i64* %PC.i810
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1607 = load i8, i8* %1606, align 1
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1609 = load i8, i8* %1608, align 1
  %1610 = or i8 %1609, %1607
  %1611 = icmp eq i8 %1610, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %BRANCH_TAKEN, align 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1614 = select i1 %1611, i64 %1601, i64 %1603
  store i64 %1614, i64* %1613, align 8
  store %struct.Memory* %loadMem_47840f, %struct.Memory** %MEMORY
  %loadBr_47840f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47840f = icmp eq i8 %loadBr_47840f, 1
  br i1 %cmpBr_47840f, label %block_.L_478449, label %block_478415

block_478415:                                     ; preds = %block_.L_478405
  %loadMem_478415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 33
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 11
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RDI.i809 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %PC.i808
  %1622 = add i64 %1621, 10
  store i64 %1622, i64* %PC.i808
  store i64 ptrtoint (%G__0x4c2bc8_type* @G__0x4c2bc8 to i64), i64* %RDI.i809, align 8
  store %struct.Memory* %loadMem_478415, %struct.Memory** %MEMORY
  %loadMem_47841f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 1
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 15
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %RBP.i807
  %1633 = sub i64 %1632, 8
  %1634 = load i64, i64* %PC.i805
  %1635 = add i64 %1634, 4
  store i64 %1635, i64* %PC.i805
  %1636 = inttoptr i64 %1633 to i64*
  %1637 = load i64, i64* %1636
  store i64 %1637, i64* %RAX.i806, align 8
  store %struct.Memory* %loadMem_47841f, %struct.Memory** %MEMORY
  %loadMem_478423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 5
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RCX.i803 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 15
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RBP.i804
  %1648 = sub i64 %1647, 36
  %1649 = load i64, i64* %PC.i802
  %1650 = add i64 %1649, 3
  store i64 %1650, i64* %PC.i802
  %1651 = inttoptr i64 %1648 to i32*
  %1652 = load i32, i32* %1651
  %1653 = zext i32 %1652 to i64
  store i64 %1653, i64* %RCX.i803, align 8
  store %struct.Memory* %loadMem_478423, %struct.Memory** %MEMORY
  %loadMem_478426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 5
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %ECX.i800 = bitcast %union.anon* %1659 to i32*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 7
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RDX.i801 = bitcast %union.anon* %1662 to i64*
  %1663 = load i32, i32* %ECX.i800
  %1664 = zext i32 %1663 to i64
  %1665 = load i64, i64* %PC.i799
  %1666 = add i64 %1665, 2
  store i64 %1666, i64* %PC.i799
  %1667 = and i64 %1664, 4294967295
  store i64 %1667, i64* %RDX.i801, align 8
  store %struct.Memory* %loadMem_478426, %struct.Memory** %MEMORY
  %loadMem_478428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 1
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RAX.i796 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 7
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RDX.i797 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 9
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RSI.i798 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %RAX.i796
  %1681 = load i64, i64* %RDX.i797
  %1682 = mul i64 %1681, 4
  %1683 = add i64 %1680, 68
  %1684 = add i64 %1683, %1682
  %1685 = load i64, i64* %PC.i795
  %1686 = add i64 %1685, 4
  store i64 %1686, i64* %PC.i795
  %1687 = inttoptr i64 %1684 to i32*
  %1688 = load i32, i32* %1687
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RSI.i798, align 8
  store %struct.Memory* %loadMem_478428, %struct.Memory** %MEMORY
  %loadMem_47842c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 7
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RDX.i793 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 15
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RBP.i794
  %1700 = sub i64 %1699, 24
  %1701 = load i64, i64* %PC.i792
  %1702 = add i64 %1701, 4
  store i64 %1702, i64* %PC.i792
  %1703 = inttoptr i64 %1700 to i64*
  %1704 = load i64, i64* %1703
  store i64 %1704, i64* %RDX.i793, align 8
  store %struct.Memory* %loadMem_47842c, %struct.Memory** %MEMORY
  %loadMem1_478430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %PC.i791
  %1709 = add i64 %1708, 213616
  %1710 = load i64, i64* %PC.i791
  %1711 = add i64 %1710, 5
  %1712 = load i64, i64* %PC.i791
  %1713 = add i64 %1712, 5
  store i64 %1713, i64* %PC.i791
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1715 = load i64, i64* %1714, align 8
  %1716 = add i64 %1715, -8
  %1717 = inttoptr i64 %1716 to i64*
  store i64 %1711, i64* %1717
  store i64 %1716, i64* %1714, align 8
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1709, i64* %1718, align 8
  store %struct.Memory* %loadMem1_478430, %struct.Memory** %MEMORY
  %loadMem2_478430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478430 = load i64, i64* %3
  %call2_478430 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_478430, %struct.Memory* %loadMem2_478430)
  store %struct.Memory* %call2_478430, %struct.Memory** %MEMORY
  %loadMem_478435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 1
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 15
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RAX.i789
  %1729 = load i64, i64* %RBP.i790
  %1730 = sub i64 %1729, 28
  %1731 = load i64, i64* %PC.i788
  %1732 = add i64 %1731, 3
  store i64 %1732, i64* %PC.i788
  %1733 = trunc i64 %1728 to i32
  %1734 = inttoptr i64 %1730 to i32*
  %1735 = load i32, i32* %1734
  %1736 = add i32 %1735, %1733
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RAX.i789, align 8
  %1738 = icmp ult i32 %1736, %1733
  %1739 = icmp ult i32 %1736, %1735
  %1740 = or i1 %1738, %1739
  %1741 = zext i1 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1741, i8* %1742, align 1
  %1743 = and i32 %1736, 255
  %1744 = call i32 @llvm.ctpop.i32(i32 %1743)
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = xor i8 %1746, 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1747, i8* %1748, align 1
  %1749 = xor i32 %1735, %1733
  %1750 = xor i32 %1749, %1736
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1753, i8* %1754, align 1
  %1755 = icmp eq i32 %1736, 0
  %1756 = zext i1 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1756, i8* %1757, align 1
  %1758 = lshr i32 %1736, 31
  %1759 = trunc i32 %1758 to i8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1759, i8* %1760, align 1
  %1761 = lshr i32 %1733, 31
  %1762 = lshr i32 %1735, 31
  %1763 = xor i32 %1758, %1761
  %1764 = xor i32 %1758, %1762
  %1765 = add i32 %1763, %1764
  %1766 = icmp eq i32 %1765, 2
  %1767 = zext i1 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1767, i8* %1768, align 1
  store %struct.Memory* %loadMem_478435, %struct.Memory** %MEMORY
  %loadMem_478438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 1
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %EAX.i786 = bitcast %union.anon* %1774 to i32*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 15
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RBP.i787
  %1779 = sub i64 %1778, 28
  %1780 = load i32, i32* %EAX.i786
  %1781 = zext i32 %1780 to i64
  %1782 = load i64, i64* %PC.i785
  %1783 = add i64 %1782, 3
  store i64 %1783, i64* %PC.i785
  %1784 = inttoptr i64 %1779 to i32*
  store i32 %1780, i32* %1784
  store %struct.Memory* %loadMem_478438, %struct.Memory** %MEMORY
  %loadMem_47843b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 33
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 1
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 15
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RBP.i784
  %1795 = sub i64 %1794, 36
  %1796 = load i64, i64* %PC.i782
  %1797 = add i64 %1796, 3
  store i64 %1797, i64* %PC.i782
  %1798 = inttoptr i64 %1795 to i32*
  %1799 = load i32, i32* %1798
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RAX.i783, align 8
  store %struct.Memory* %loadMem_47843b, %struct.Memory** %MEMORY
  %loadMem_47843e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 33
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 1
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %1806 to i64*
  %1807 = load i64, i64* %RAX.i781
  %1808 = load i64, i64* %PC.i780
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC.i780
  %1810 = trunc i64 %1807 to i32
  %1811 = add i32 1, %1810
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %RAX.i781, align 8
  %1813 = icmp ult i32 %1811, %1810
  %1814 = icmp ult i32 %1811, 1
  %1815 = or i1 %1813, %1814
  %1816 = zext i1 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1816, i8* %1817, align 1
  %1818 = and i32 %1811, 255
  %1819 = call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1822, i8* %1823, align 1
  %1824 = xor i64 1, %1807
  %1825 = trunc i64 %1824 to i32
  %1826 = xor i32 %1825, %1811
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1829, i8* %1830, align 1
  %1831 = icmp eq i32 %1811, 0
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1832, i8* %1833, align 1
  %1834 = lshr i32 %1811, 31
  %1835 = trunc i32 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1835, i8* %1836, align 1
  %1837 = lshr i32 %1810, 31
  %1838 = xor i32 %1834, %1837
  %1839 = add i32 %1838, %1834
  %1840 = icmp eq i32 %1839, 2
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1841, i8* %1842, align 1
  store %struct.Memory* %loadMem_47843e, %struct.Memory** %MEMORY
  %loadMem_478441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 1
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %EAX.i778 = bitcast %union.anon* %1848 to i32*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 15
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %RBP.i779
  %1853 = sub i64 %1852, 36
  %1854 = load i32, i32* %EAX.i778
  %1855 = zext i32 %1854 to i64
  %1856 = load i64, i64* %PC.i777
  %1857 = add i64 %1856, 3
  store i64 %1857, i64* %PC.i777
  %1858 = inttoptr i64 %1853 to i32*
  store i32 %1854, i32* %1858
  store %struct.Memory* %loadMem_478441, %struct.Memory** %MEMORY
  %loadMem_478444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %PC.i776
  %1863 = add i64 %1862, -63
  %1864 = load i64, i64* %PC.i776
  %1865 = add i64 %1864, 5
  store i64 %1865, i64* %PC.i776
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1863, i64* %1866, align 8
  store %struct.Memory* %loadMem_478444, %struct.Memory** %MEMORY
  br label %block_.L_478405

block_.L_478449:                                  ; preds = %block_.L_478405
  %loadMem_478449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %PC.i775
  %1871 = add i64 %1870, 511
  %1872 = load i64, i64* %PC.i775
  %1873 = add i64 %1872, 5
  store i64 %1873, i64* %PC.i775
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1871, i64* %1874, align 8
  store %struct.Memory* %loadMem_478449, %struct.Memory** %MEMORY
  br label %block_.L_478648

block_.L_47844e:                                  ; preds = %block_4783d0
  %loadMem_47844e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 1
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 15
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %1883 to i64*
  %1884 = load i64, i64* %RBP.i774
  %1885 = sub i64 %1884, 8
  %1886 = load i64, i64* %PC.i772
  %1887 = add i64 %1886, 4
  store i64 %1887, i64* %PC.i772
  %1888 = inttoptr i64 %1885 to i64*
  %1889 = load i64, i64* %1888
  store i64 %1889, i64* %RAX.i773, align 8
  store %struct.Memory* %loadMem_47844e, %struct.Memory** %MEMORY
  %loadMem_478452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 1
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RAX.i771
  %1897 = add i64 %1896, 64
  %1898 = load i64, i64* %PC.i770
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %PC.i770
  %1900 = inttoptr i64 %1897 to i32*
  %1901 = load i32, i32* %1900
  %1902 = sub i32 %1901, 2
  %1903 = icmp ult i32 %1901, 2
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1904, i8* %1905, align 1
  %1906 = and i32 %1902, 255
  %1907 = call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1910, i8* %1911, align 1
  %1912 = xor i32 %1901, 2
  %1913 = xor i32 %1912, %1902
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1916, i8* %1917, align 1
  %1918 = icmp eq i32 %1902, 0
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1919, i8* %1920, align 1
  %1921 = lshr i32 %1902, 31
  %1922 = trunc i32 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1922, i8* %1923, align 1
  %1924 = lshr i32 %1901, 31
  %1925 = xor i32 %1921, %1924
  %1926 = add i32 %1925, %1924
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1928, i8* %1929, align 1
  store %struct.Memory* %loadMem_478452, %struct.Memory** %MEMORY
  %loadMem_478456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %PC.i769
  %1934 = add i64 %1933, 129
  %1935 = load i64, i64* %PC.i769
  %1936 = add i64 %1935, 6
  %1937 = load i64, i64* %PC.i769
  %1938 = add i64 %1937, 6
  store i64 %1938, i64* %PC.i769
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1940 = load i8, i8* %1939, align 1
  %1941 = icmp eq i8 %1940, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %BRANCH_TAKEN, align 1
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1944 = select i1 %1941, i64 %1934, i64 %1936
  store i64 %1944, i64* %1943, align 8
  store %struct.Memory* %loadMem_478456, %struct.Memory** %MEMORY
  %loadBr_478456 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478456 = icmp eq i8 %loadBr_478456, 1
  br i1 %cmpBr_478456, label %block_.L_4784d7, label %block_47845c

block_47845c:                                     ; preds = %block_.L_47844e
  %loadMem_47845c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 15
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %RBP.i768
  %1952 = sub i64 %1951, 36
  %1953 = load i64, i64* %PC.i767
  %1954 = add i64 %1953, 7
  store i64 %1954, i64* %PC.i767
  %1955 = inttoptr i64 %1952 to i32*
  store i32 0, i32* %1955
  store %struct.Memory* %loadMem_47845c, %struct.Memory** %MEMORY
  br label %block_.L_478463

block_.L_478463:                                  ; preds = %block_478473, %block_47845c
  %loadMem_478463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 1
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %1964 to i64*
  %1965 = load i64, i64* %RBP.i766
  %1966 = sub i64 %1965, 36
  %1967 = load i64, i64* %PC.i764
  %1968 = add i64 %1967, 3
  store i64 %1968, i64* %PC.i764
  %1969 = inttoptr i64 %1966 to i32*
  %1970 = load i32, i32* %1969
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i765, align 8
  store %struct.Memory* %loadMem_478463, %struct.Memory** %MEMORY
  %loadMem_478466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 5
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RCX.i762 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 15
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %1980 to i64*
  %1981 = load i64, i64* %RBP.i763
  %1982 = sub i64 %1981, 8
  %1983 = load i64, i64* %PC.i761
  %1984 = add i64 %1983, 4
  store i64 %1984, i64* %PC.i761
  %1985 = inttoptr i64 %1982 to i64*
  %1986 = load i64, i64* %1985
  store i64 %1986, i64* %RCX.i762, align 8
  store %struct.Memory* %loadMem_478466, %struct.Memory** %MEMORY
  %loadMem_47846a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %EAX.i759 = bitcast %union.anon* %1992 to i32*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 5
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RCX.i760 = bitcast %union.anon* %1995 to i64*
  %1996 = load i32, i32* %EAX.i759
  %1997 = zext i32 %1996 to i64
  %1998 = load i64, i64* %RCX.i760
  %1999 = add i64 %1998, 60
  %2000 = load i64, i64* %PC.i758
  %2001 = add i64 %2000, 3
  store i64 %2001, i64* %PC.i758
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = sub i32 %1996, %2003
  %2005 = icmp ult i32 %1996, %2003
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2006, i8* %2007, align 1
  %2008 = and i32 %2004, 255
  %2009 = call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2012, i8* %2013, align 1
  %2014 = xor i32 %2003, %1996
  %2015 = xor i32 %2014, %2004
  %2016 = lshr i32 %2015, 4
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2018, i8* %2019, align 1
  %2020 = icmp eq i32 %2004, 0
  %2021 = zext i1 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2021, i8* %2022, align 1
  %2023 = lshr i32 %2004, 31
  %2024 = trunc i32 %2023 to i8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2024, i8* %2025, align 1
  %2026 = lshr i32 %1996, 31
  %2027 = lshr i32 %2003, 31
  %2028 = xor i32 %2027, %2026
  %2029 = xor i32 %2023, %2026
  %2030 = add i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2032, i8* %2033, align 1
  store %struct.Memory* %loadMem_47846a, %struct.Memory** %MEMORY
  %loadMem_47846d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %PC.i757
  %2038 = add i64 %2037, 101
  %2039 = load i64, i64* %PC.i757
  %2040 = add i64 %2039, 6
  %2041 = load i64, i64* %PC.i757
  %2042 = add i64 %2041, 6
  store i64 %2042, i64* %PC.i757
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2044 = load i8, i8* %2043, align 1
  %2045 = icmp eq i8 %2044, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %BRANCH_TAKEN, align 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2048 = select i1 %2045, i64 %2038, i64 %2040
  store i64 %2048, i64* %2047, align 8
  store %struct.Memory* %loadMem_47846d, %struct.Memory** %MEMORY
  %loadBr_47846d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47846d = icmp eq i8 %loadBr_47846d, 1
  br i1 %cmpBr_47846d, label %block_.L_4784d2, label %block_478473

block_478473:                                     ; preds = %block_.L_478463
  %loadMem_478473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 11
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RDI.i756 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %PC.i755
  %2056 = add i64 %2055, 10
  store i64 %2056, i64* %PC.i755
  store i64 ptrtoint (%G__0x4c2be2_type* @G__0x4c2be2 to i64), i64* %RDI.i756, align 8
  store %struct.Memory* %loadMem_478473, %struct.Memory** %MEMORY
  %loadMem_47847d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i753 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i754
  %2067 = sub i64 %2066, 8
  %2068 = load i64, i64* %PC.i752
  %2069 = add i64 %2068, 4
  store i64 %2069, i64* %PC.i752
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070
  store i64 %2071, i64* %RAX.i753, align 8
  store %struct.Memory* %loadMem_47847d, %struct.Memory** %MEMORY
  %loadMem_478481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 5
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RBP.i751
  %2082 = sub i64 %2081, 36
  %2083 = load i64, i64* %PC.i749
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %PC.i749
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i750, align 8
  store %struct.Memory* %loadMem_478481, %struct.Memory** %MEMORY
  %loadMem_478484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 5
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %ECX.i747 = bitcast %union.anon* %2093 to i32*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 7
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RDX.i748 = bitcast %union.anon* %2096 to i64*
  %2097 = load i32, i32* %ECX.i747
  %2098 = zext i32 %2097 to i64
  %2099 = load i64, i64* %PC.i746
  %2100 = add i64 %2099, 2
  store i64 %2100, i64* %PC.i746
  %2101 = and i64 %2098, 4294967295
  store i64 %2101, i64* %RDX.i748, align 8
  store %struct.Memory* %loadMem_478484, %struct.Memory** %MEMORY
  %loadMem_478486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 1
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 7
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 9
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RSI.i745 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RAX.i743
  %2115 = load i64, i64* %RDX.i744
  %2116 = mul i64 %2115, 4
  %2117 = add i64 %2114, 100
  %2118 = add i64 %2117, %2116
  %2119 = load i64, i64* %PC.i742
  %2120 = add i64 %2119, 4
  store i64 %2120, i64* %PC.i742
  %2121 = inttoptr i64 %2118 to i32*
  %2122 = load i32, i32* %2121
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RSI.i745, align 8
  store %struct.Memory* %loadMem_478486, %struct.Memory** %MEMORY
  %loadMem_47848a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 7
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i741
  %2134 = sub i64 %2133, 24
  %2135 = load i64, i64* %PC.i739
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i739
  %2137 = inttoptr i64 %2134 to i64*
  %2138 = load i64, i64* %2137
  store i64 %2138, i64* %RDX.i740, align 8
  store %struct.Memory* %loadMem_47848a, %struct.Memory** %MEMORY
  %loadMem1_47848e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %PC.i738
  %2143 = add i64 %2142, 213522
  %2144 = load i64, i64* %PC.i738
  %2145 = add i64 %2144, 5
  %2146 = load i64, i64* %PC.i738
  %2147 = add i64 %2146, 5
  store i64 %2147, i64* %PC.i738
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2149 = load i64, i64* %2148, align 8
  %2150 = add i64 %2149, -8
  %2151 = inttoptr i64 %2150 to i64*
  store i64 %2145, i64* %2151
  store i64 %2150, i64* %2148, align 8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2143, i64* %2152, align 8
  store %struct.Memory* %loadMem1_47848e, %struct.Memory** %MEMORY
  %loadMem2_47848e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47848e = load i64, i64* %3
  %call2_47848e = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_47848e, %struct.Memory* %loadMem2_47848e)
  store %struct.Memory* %call2_47848e, %struct.Memory** %MEMORY
  %loadMem_478493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 11
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RDI.i737 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %PC.i736
  %2160 = add i64 %2159, 10
  store i64 %2160, i64* %PC.i736
  store i64 ptrtoint (%G__0x4c2bf3_type* @G__0x4c2bf3 to i64), i64* %RDI.i737, align 8
  store %struct.Memory* %loadMem_478493, %struct.Memory** %MEMORY
  %loadMem_47849d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 1
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 15
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RAX.i734
  %2171 = load i64, i64* %RBP.i735
  %2172 = sub i64 %2171, 28
  %2173 = load i64, i64* %PC.i733
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i733
  %2175 = trunc i64 %2170 to i32
  %2176 = inttoptr i64 %2172 to i32*
  %2177 = load i32, i32* %2176
  %2178 = add i32 %2177, %2175
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RAX.i734, align 8
  %2180 = icmp ult i32 %2178, %2175
  %2181 = icmp ult i32 %2178, %2177
  %2182 = or i1 %2180, %2181
  %2183 = zext i1 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2183, i8* %2184, align 1
  %2185 = and i32 %2178, 255
  %2186 = call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2189, i8* %2190, align 1
  %2191 = xor i32 %2177, %2175
  %2192 = xor i32 %2191, %2178
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2195, i8* %2196, align 1
  %2197 = icmp eq i32 %2178, 0
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2198, i8* %2199, align 1
  %2200 = lshr i32 %2178, 31
  %2201 = trunc i32 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2201, i8* %2202, align 1
  %2203 = lshr i32 %2175, 31
  %2204 = lshr i32 %2177, 31
  %2205 = xor i32 %2200, %2203
  %2206 = xor i32 %2200, %2204
  %2207 = add i32 %2205, %2206
  %2208 = icmp eq i32 %2207, 2
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2209, i8* %2210, align 1
  store %struct.Memory* %loadMem_47849d, %struct.Memory** %MEMORY
  %loadMem_4784a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 1
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %EAX.i731 = bitcast %union.anon* %2216 to i32*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 15
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %2219 to i64*
  %2220 = load i64, i64* %RBP.i732
  %2221 = sub i64 %2220, 28
  %2222 = load i32, i32* %EAX.i731
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %PC.i730
  %2225 = add i64 %2224, 3
  store i64 %2225, i64* %PC.i730
  %2226 = inttoptr i64 %2221 to i32*
  store i32 %2222, i32* %2226
  store %struct.Memory* %loadMem_4784a0, %struct.Memory** %MEMORY
  %loadMem_4784a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 7
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RDX.i728 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 15
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2235 to i64*
  %2236 = load i64, i64* %RBP.i729
  %2237 = sub i64 %2236, 8
  %2238 = load i64, i64* %PC.i727
  %2239 = add i64 %2238, 4
  store i64 %2239, i64* %PC.i727
  %2240 = inttoptr i64 %2237 to i64*
  %2241 = load i64, i64* %2240
  store i64 %2241, i64* %RDX.i728, align 8
  store %struct.Memory* %loadMem_4784a3, %struct.Memory** %MEMORY
  %loadMem_4784a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 1
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 15
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RBP.i726
  %2252 = sub i64 %2251, 36
  %2253 = load i64, i64* %PC.i724
  %2254 = add i64 %2253, 3
  store i64 %2254, i64* %PC.i724
  %2255 = inttoptr i64 %2252 to i32*
  %2256 = load i32, i32* %2255
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RAX.i725, align 8
  store %struct.Memory* %loadMem_4784a7, %struct.Memory** %MEMORY
  %loadMem_4784aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 1
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %EAX.i722 = bitcast %union.anon* %2263 to i32*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 17
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %R8D.i723 = bitcast %union.anon* %2266 to i32*
  %2267 = bitcast i32* %R8D.i723 to i64*
  %2268 = load i32, i32* %EAX.i722
  %2269 = zext i32 %2268 to i64
  %2270 = load i64, i64* %PC.i721
  %2271 = add i64 %2270, 3
  store i64 %2271, i64* %PC.i721
  %2272 = and i64 %2269, 4294967295
  store i64 %2272, i64* %2267, align 8
  store %struct.Memory* %loadMem_4784aa, %struct.Memory** %MEMORY
  %loadMem_4784ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 7
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 9
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RSI.i719 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 17
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %R8.i720 = bitcast %union.anon* %2284 to i64*
  %2285 = load i64, i64* %RDX.i718
  %2286 = load i64, i64* %R8.i720
  %2287 = mul i64 %2286, 4
  %2288 = add i64 %2285, 132
  %2289 = add i64 %2288, %2287
  %2290 = load i64, i64* %PC.i717
  %2291 = add i64 %2290, 8
  store i64 %2291, i64* %PC.i717
  %2292 = inttoptr i64 %2289 to i32*
  %2293 = load i32, i32* %2292
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RSI.i719, align 8
  store %struct.Memory* %loadMem_4784ad, %struct.Memory** %MEMORY
  %loadMem_4784b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 7
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RDX.i715 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %RBP.i716
  %2305 = sub i64 %2304, 24
  %2306 = load i64, i64* %PC.i714
  %2307 = add i64 %2306, 4
  store i64 %2307, i64* %PC.i714
  %2308 = inttoptr i64 %2305 to i64*
  %2309 = load i64, i64* %2308
  store i64 %2309, i64* %RDX.i715, align 8
  store %struct.Memory* %loadMem_4784b5, %struct.Memory** %MEMORY
  %loadMem1_4784b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %PC.i713
  %2314 = add i64 %2313, 213479
  %2315 = load i64, i64* %PC.i713
  %2316 = add i64 %2315, 5
  %2317 = load i64, i64* %PC.i713
  %2318 = add i64 %2317, 5
  store i64 %2318, i64* %PC.i713
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2320 = load i64, i64* %2319, align 8
  %2321 = add i64 %2320, -8
  %2322 = inttoptr i64 %2321 to i64*
  store i64 %2316, i64* %2322
  store i64 %2321, i64* %2319, align 8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2314, i64* %2323, align 8
  store %struct.Memory* %loadMem1_4784b9, %struct.Memory** %MEMORY
  %loadMem2_4784b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4784b9 = load i64, i64* %3
  %call2_4784b9 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4784b9, %struct.Memory* %loadMem2_4784b9)
  store %struct.Memory* %call2_4784b9, %struct.Memory** %MEMORY
  %loadMem_4784be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 1
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RAX.i711
  %2334 = load i64, i64* %RBP.i712
  %2335 = sub i64 %2334, 28
  %2336 = load i64, i64* %PC.i710
  %2337 = add i64 %2336, 3
  store i64 %2337, i64* %PC.i710
  %2338 = trunc i64 %2333 to i32
  %2339 = inttoptr i64 %2335 to i32*
  %2340 = load i32, i32* %2339
  %2341 = add i32 %2340, %2338
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RAX.i711, align 8
  %2343 = icmp ult i32 %2341, %2338
  %2344 = icmp ult i32 %2341, %2340
  %2345 = or i1 %2343, %2344
  %2346 = zext i1 %2345 to i8
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2346, i8* %2347, align 1
  %2348 = and i32 %2341, 255
  %2349 = call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2352, i8* %2353, align 1
  %2354 = xor i32 %2340, %2338
  %2355 = xor i32 %2354, %2341
  %2356 = lshr i32 %2355, 4
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2358, i8* %2359, align 1
  %2360 = icmp eq i32 %2341, 0
  %2361 = zext i1 %2360 to i8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2361, i8* %2362, align 1
  %2363 = lshr i32 %2341, 31
  %2364 = trunc i32 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2364, i8* %2365, align 1
  %2366 = lshr i32 %2338, 31
  %2367 = lshr i32 %2340, 31
  %2368 = xor i32 %2363, %2366
  %2369 = xor i32 %2363, %2367
  %2370 = add i32 %2368, %2369
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2372, i8* %2373, align 1
  store %struct.Memory* %loadMem_4784be, %struct.Memory** %MEMORY
  %loadMem_4784c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 1
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %EAX.i708 = bitcast %union.anon* %2379 to i32*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i709
  %2384 = sub i64 %2383, 28
  %2385 = load i32, i32* %EAX.i708
  %2386 = zext i32 %2385 to i64
  %2387 = load i64, i64* %PC.i707
  %2388 = add i64 %2387, 3
  store i64 %2388, i64* %PC.i707
  %2389 = inttoptr i64 %2384 to i32*
  store i32 %2385, i32* %2389
  store %struct.Memory* %loadMem_4784c1, %struct.Memory** %MEMORY
  %loadMem_4784c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 1
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 15
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %RBP.i706
  %2400 = sub i64 %2399, 36
  %2401 = load i64, i64* %PC.i704
  %2402 = add i64 %2401, 3
  store i64 %2402, i64* %PC.i704
  %2403 = inttoptr i64 %2400 to i32*
  %2404 = load i32, i32* %2403
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_4784c4, %struct.Memory** %MEMORY
  %loadMem_4784c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 1
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %RAX.i703
  %2413 = load i64, i64* %PC.i702
  %2414 = add i64 %2413, 3
  store i64 %2414, i64* %PC.i702
  %2415 = trunc i64 %2412 to i32
  %2416 = add i32 1, %2415
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RAX.i703, align 8
  %2418 = icmp ult i32 %2416, %2415
  %2419 = icmp ult i32 %2416, 1
  %2420 = or i1 %2418, %2419
  %2421 = zext i1 %2420 to i8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2421, i8* %2422, align 1
  %2423 = and i32 %2416, 255
  %2424 = call i32 @llvm.ctpop.i32(i32 %2423)
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = xor i8 %2426, 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2427, i8* %2428, align 1
  %2429 = xor i64 1, %2412
  %2430 = trunc i64 %2429 to i32
  %2431 = xor i32 %2430, %2416
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2434, i8* %2435, align 1
  %2436 = icmp eq i32 %2416, 0
  %2437 = zext i1 %2436 to i8
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2437, i8* %2438, align 1
  %2439 = lshr i32 %2416, 31
  %2440 = trunc i32 %2439 to i8
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2440, i8* %2441, align 1
  %2442 = lshr i32 %2415, 31
  %2443 = xor i32 %2439, %2442
  %2444 = add i32 %2443, %2439
  %2445 = icmp eq i32 %2444, 2
  %2446 = zext i1 %2445 to i8
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2446, i8* %2447, align 1
  store %struct.Memory* %loadMem_4784c7, %struct.Memory** %MEMORY
  %loadMem_4784ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 1
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %EAX.i700 = bitcast %union.anon* %2453 to i32*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 15
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %RBP.i701
  %2458 = sub i64 %2457, 36
  %2459 = load i32, i32* %EAX.i700
  %2460 = zext i32 %2459 to i64
  %2461 = load i64, i64* %PC.i699
  %2462 = add i64 %2461, 3
  store i64 %2462, i64* %PC.i699
  %2463 = inttoptr i64 %2458 to i32*
  store i32 %2459, i32* %2463
  store %struct.Memory* %loadMem_4784ca, %struct.Memory** %MEMORY
  %loadMem_4784cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %PC.i698
  %2468 = add i64 %2467, -106
  %2469 = load i64, i64* %PC.i698
  %2470 = add i64 %2469, 5
  store i64 %2470, i64* %PC.i698
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2468, i64* %2471, align 8
  store %struct.Memory* %loadMem_4784cd, %struct.Memory** %MEMORY
  br label %block_.L_478463

block_.L_4784d2:                                  ; preds = %block_.L_478463
  %loadMem_4784d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %PC.i697
  %2476 = add i64 %2475, 369
  %2477 = load i64, i64* %PC.i697
  %2478 = add i64 %2477, 5
  store i64 %2478, i64* %PC.i697
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2476, i64* %2479, align 8
  store %struct.Memory* %loadMem_4784d2, %struct.Memory** %MEMORY
  br label %block_.L_478643

block_.L_4784d7:                                  ; preds = %block_.L_47844e
  %loadMem_4784d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 1
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i696
  %2490 = sub i64 %2489, 8
  %2491 = load i64, i64* %PC.i694
  %2492 = add i64 %2491, 4
  store i64 %2492, i64* %PC.i694
  %2493 = inttoptr i64 %2490 to i64*
  %2494 = load i64, i64* %2493
  store i64 %2494, i64* %RAX.i695, align 8
  store %struct.Memory* %loadMem_4784d7, %struct.Memory** %MEMORY
  %loadMem_4784db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %RAX.i693
  %2502 = add i64 %2501, 64
  %2503 = load i64, i64* %PC.i692
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %PC.i692
  %2505 = inttoptr i64 %2502 to i32*
  %2506 = load i32, i32* %2505
  %2507 = sub i32 %2506, 3
  %2508 = icmp ult i32 %2506, 3
  %2509 = zext i1 %2508 to i8
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2509, i8* %2510, align 1
  %2511 = and i32 %2507, 255
  %2512 = call i32 @llvm.ctpop.i32(i32 %2511)
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = xor i8 %2514, 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2515, i8* %2516, align 1
  %2517 = xor i32 %2506, 3
  %2518 = xor i32 %2517, %2507
  %2519 = lshr i32 %2518, 4
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2521, i8* %2522, align 1
  %2523 = icmp eq i32 %2507, 0
  %2524 = zext i1 %2523 to i8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2524, i8* %2525, align 1
  %2526 = lshr i32 %2507, 31
  %2527 = trunc i32 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2527, i8* %2528, align 1
  %2529 = lshr i32 %2506, 31
  %2530 = xor i32 %2526, %2529
  %2531 = add i32 %2530, %2529
  %2532 = icmp eq i32 %2531, 2
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2533, i8* %2534, align 1
  store %struct.Memory* %loadMem_4784db, %struct.Memory** %MEMORY
  %loadMem_4784df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %PC.i691
  %2539 = add i64 %2538, 34
  %2540 = load i64, i64* %PC.i691
  %2541 = add i64 %2540, 6
  %2542 = load i64, i64* %PC.i691
  %2543 = add i64 %2542, 6
  store i64 %2543, i64* %PC.i691
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2545 = load i8, i8* %2544, align 1
  store i8 %2545, i8* %BRANCH_TAKEN, align 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2547 = icmp ne i8 %2545, 0
  %2548 = select i1 %2547, i64 %2539, i64 %2541
  store i64 %2548, i64* %2546, align 8
  store %struct.Memory* %loadMem_4784df, %struct.Memory** %MEMORY
  %loadBr_4784df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4784df = icmp eq i8 %loadBr_4784df, 1
  br i1 %cmpBr_4784df, label %block_.L_478501, label %block_4784e5

block_4784e5:                                     ; preds = %block_.L_4784d7
  %loadMem_4784e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 1
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 15
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RBP.i690
  %2559 = sub i64 %2558, 8
  %2560 = load i64, i64* %PC.i688
  %2561 = add i64 %2560, 4
  store i64 %2561, i64* %PC.i688
  %2562 = inttoptr i64 %2559 to i64*
  %2563 = load i64, i64* %2562
  store i64 %2563, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_4784e5, %struct.Memory** %MEMORY
  %loadMem_4784e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RAX.i687
  %2571 = add i64 %2570, 64
  %2572 = load i64, i64* %PC.i686
  %2573 = add i64 %2572, 4
  store i64 %2573, i64* %PC.i686
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574
  %2576 = sub i32 %2575, 4
  %2577 = icmp ult i32 %2575, 4
  %2578 = zext i1 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2578, i8* %2579, align 1
  %2580 = and i32 %2576, 255
  %2581 = call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2584, i8* %2585, align 1
  %2586 = xor i32 %2575, 4
  %2587 = xor i32 %2586, %2576
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2590, i8* %2591, align 1
  %2592 = icmp eq i32 %2576, 0
  %2593 = zext i1 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2593, i8* %2594, align 1
  %2595 = lshr i32 %2576, 31
  %2596 = trunc i32 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2596, i8* %2597, align 1
  %2598 = lshr i32 %2575, 31
  %2599 = xor i32 %2595, %2598
  %2600 = add i32 %2599, %2598
  %2601 = icmp eq i32 %2600, 2
  %2602 = zext i1 %2601 to i8
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2602, i8* %2603, align 1
  store %struct.Memory* %loadMem_4784e9, %struct.Memory** %MEMORY
  %loadMem_4784ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %PC.i685
  %2608 = add i64 %2607, 20
  %2609 = load i64, i64* %PC.i685
  %2610 = add i64 %2609, 6
  %2611 = load i64, i64* %PC.i685
  %2612 = add i64 %2611, 6
  store i64 %2612, i64* %PC.i685
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2614 = load i8, i8* %2613, align 1
  store i8 %2614, i8* %BRANCH_TAKEN, align 1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2616 = icmp ne i8 %2614, 0
  %2617 = select i1 %2616, i64 %2608, i64 %2610
  store i64 %2617, i64* %2615, align 8
  store %struct.Memory* %loadMem_4784ed, %struct.Memory** %MEMORY
  %loadBr_4784ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4784ed = icmp eq i8 %loadBr_4784ed, 1
  br i1 %cmpBr_4784ed, label %block_.L_478501, label %block_4784f3

block_4784f3:                                     ; preds = %block_4784e5
  %loadMem_4784f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 1
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i684
  %2628 = sub i64 %2627, 8
  %2629 = load i64, i64* %PC.i682
  %2630 = add i64 %2629, 4
  store i64 %2630, i64* %PC.i682
  %2631 = inttoptr i64 %2628 to i64*
  %2632 = load i64, i64* %2631
  store i64 %2632, i64* %RAX.i683, align 8
  store %struct.Memory* %loadMem_4784f3, %struct.Memory** %MEMORY
  %loadMem_4784f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 1
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %2638 to i64*
  %2639 = load i64, i64* %RAX.i681
  %2640 = add i64 %2639, 64
  %2641 = load i64, i64* %PC.i680
  %2642 = add i64 %2641, 4
  store i64 %2642, i64* %PC.i680
  %2643 = inttoptr i64 %2640 to i32*
  %2644 = load i32, i32* %2643
  %2645 = sub i32 %2644, 5
  %2646 = icmp ult i32 %2644, 5
  %2647 = zext i1 %2646 to i8
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2647, i8* %2648, align 1
  %2649 = and i32 %2645, 255
  %2650 = call i32 @llvm.ctpop.i32(i32 %2649)
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2653, i8* %2654, align 1
  %2655 = xor i32 %2644, 5
  %2656 = xor i32 %2655, %2645
  %2657 = lshr i32 %2656, 4
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2659, i8* %2660, align 1
  %2661 = icmp eq i32 %2645, 0
  %2662 = zext i1 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2662, i8* %2663, align 1
  %2664 = lshr i32 %2645, 31
  %2665 = trunc i32 %2664 to i8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2665, i8* %2666, align 1
  %2667 = lshr i32 %2644, 31
  %2668 = xor i32 %2664, %2667
  %2669 = add i32 %2668, %2667
  %2670 = icmp eq i32 %2669, 2
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2671, i8* %2672, align 1
  store %struct.Memory* %loadMem_4784f7, %struct.Memory** %MEMORY
  %loadMem_4784fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 33
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %PC.i679
  %2677 = add i64 %2676, 81
  %2678 = load i64, i64* %PC.i679
  %2679 = add i64 %2678, 6
  %2680 = load i64, i64* %PC.i679
  %2681 = add i64 %2680, 6
  store i64 %2681, i64* %PC.i679
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2683 = load i8, i8* %2682, align 1
  %2684 = icmp eq i8 %2683, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %BRANCH_TAKEN, align 1
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2687 = select i1 %2684, i64 %2677, i64 %2679
  store i64 %2687, i64* %2686, align 8
  store %struct.Memory* %loadMem_4784fb, %struct.Memory** %MEMORY
  %loadBr_4784fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4784fb = icmp eq i8 %loadBr_4784fb, 1
  br i1 %cmpBr_4784fb, label %block_.L_47854c, label %block_.L_478501

block_.L_478501:                                  ; preds = %block_4784f3, %block_4784e5, %block_.L_4784d7
  %loadMem_478501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 11
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RDI.i678 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %PC.i677
  %2695 = add i64 %2694, 10
  store i64 %2695, i64* %PC.i677
  store i64 ptrtoint (%G__0x4c2c08_type* @G__0x4c2c08 to i64), i64* %RDI.i678, align 8
  store %struct.Memory* %loadMem_478501, %struct.Memory** %MEMORY
  %loadMem_47850b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 1
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 15
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %RBP.i676
  %2706 = sub i64 %2705, 8
  %2707 = load i64, i64* %PC.i674
  %2708 = add i64 %2707, 4
  store i64 %2708, i64* %PC.i674
  %2709 = inttoptr i64 %2706 to i64*
  %2710 = load i64, i64* %2709
  store i64 %2710, i64* %RAX.i675, align 8
  store %struct.Memory* %loadMem_47850b, %struct.Memory** %MEMORY
  %loadMem_47850f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 1
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 9
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RSI.i673 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %RAX.i672
  %2721 = add i64 %2720, 164
  %2722 = load i64, i64* %PC.i671
  %2723 = add i64 %2722, 6
  store i64 %2723, i64* %PC.i671
  %2724 = inttoptr i64 %2721 to i32*
  %2725 = load i32, i32* %2724
  %2726 = zext i32 %2725 to i64
  store i64 %2726, i64* %RSI.i673, align 8
  store %struct.Memory* %loadMem_47850f, %struct.Memory** %MEMORY
  %loadMem_478515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 7
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RDX.i669 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 15
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2735 to i64*
  %2736 = load i64, i64* %RBP.i670
  %2737 = sub i64 %2736, 24
  %2738 = load i64, i64* %PC.i668
  %2739 = add i64 %2738, 4
  store i64 %2739, i64* %PC.i668
  %2740 = inttoptr i64 %2737 to i64*
  %2741 = load i64, i64* %2740
  store i64 %2741, i64* %RDX.i669, align 8
  store %struct.Memory* %loadMem_478515, %struct.Memory** %MEMORY
  %loadMem1_478519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %PC.i667
  %2746 = add i64 %2745, 214503
  %2747 = load i64, i64* %PC.i667
  %2748 = add i64 %2747, 5
  %2749 = load i64, i64* %PC.i667
  %2750 = add i64 %2749, 5
  store i64 %2750, i64* %PC.i667
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2752 = load i64, i64* %2751, align 8
  %2753 = add i64 %2752, -8
  %2754 = inttoptr i64 %2753 to i64*
  store i64 %2748, i64* %2754
  store i64 %2753, i64* %2751, align 8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2746, i64* %2755, align 8
  store %struct.Memory* %loadMem1_478519, %struct.Memory** %MEMORY
  %loadMem2_478519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478519 = load i64, i64* %3
  %call2_478519 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_478519, %struct.Memory* %loadMem2_478519)
  store %struct.Memory* %call2_478519, %struct.Memory** %MEMORY
  %loadMem_47851e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 11
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RDI.i666 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %PC.i665
  %2763 = add i64 %2762, 10
  store i64 %2763, i64* %PC.i665
  store i64 ptrtoint (%G__0x4c2c2f_type* @G__0x4c2c2f to i64), i64* %RDI.i666, align 8
  store %struct.Memory* %loadMem_47851e, %struct.Memory** %MEMORY
  %loadMem_478528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 1
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 15
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %RAX.i663
  %2774 = load i64, i64* %RBP.i664
  %2775 = sub i64 %2774, 28
  %2776 = load i64, i64* %PC.i662
  %2777 = add i64 %2776, 3
  store i64 %2777, i64* %PC.i662
  %2778 = trunc i64 %2773 to i32
  %2779 = inttoptr i64 %2775 to i32*
  %2780 = load i32, i32* %2779
  %2781 = add i32 %2780, %2778
  %2782 = zext i32 %2781 to i64
  store i64 %2782, i64* %RAX.i663, align 8
  %2783 = icmp ult i32 %2781, %2778
  %2784 = icmp ult i32 %2781, %2780
  %2785 = or i1 %2783, %2784
  %2786 = zext i1 %2785 to i8
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2786, i8* %2787, align 1
  %2788 = and i32 %2781, 255
  %2789 = call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2792, i8* %2793, align 1
  %2794 = xor i32 %2780, %2778
  %2795 = xor i32 %2794, %2781
  %2796 = lshr i32 %2795, 4
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2798, i8* %2799, align 1
  %2800 = icmp eq i32 %2781, 0
  %2801 = zext i1 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2801, i8* %2802, align 1
  %2803 = lshr i32 %2781, 31
  %2804 = trunc i32 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2804, i8* %2805, align 1
  %2806 = lshr i32 %2778, 31
  %2807 = lshr i32 %2780, 31
  %2808 = xor i32 %2803, %2806
  %2809 = xor i32 %2803, %2807
  %2810 = add i32 %2808, %2809
  %2811 = icmp eq i32 %2810, 2
  %2812 = zext i1 %2811 to i8
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2812, i8* %2813, align 1
  store %struct.Memory* %loadMem_478528, %struct.Memory** %MEMORY
  %loadMem_47852b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 33
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 1
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %EAX.i660 = bitcast %union.anon* %2819 to i32*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 15
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %2822 to i64*
  %2823 = load i64, i64* %RBP.i661
  %2824 = sub i64 %2823, 28
  %2825 = load i32, i32* %EAX.i660
  %2826 = zext i32 %2825 to i64
  %2827 = load i64, i64* %PC.i659
  %2828 = add i64 %2827, 3
  store i64 %2828, i64* %PC.i659
  %2829 = inttoptr i64 %2824 to i32*
  store i32 %2825, i32* %2829
  store %struct.Memory* %loadMem_47852b, %struct.Memory** %MEMORY
  %loadMem_47852e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 7
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 15
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %2838 to i64*
  %2839 = load i64, i64* %RBP.i658
  %2840 = sub i64 %2839, 8
  %2841 = load i64, i64* %PC.i656
  %2842 = add i64 %2841, 4
  store i64 %2842, i64* %PC.i656
  %2843 = inttoptr i64 %2840 to i64*
  %2844 = load i64, i64* %2843
  store i64 %2844, i64* %RDX.i657, align 8
  store %struct.Memory* %loadMem_47852e, %struct.Memory** %MEMORY
  %loadMem_478532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 7
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RDX.i654 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 9
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RSI.i655 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %RDX.i654
  %2855 = add i64 %2854, 168
  %2856 = load i64, i64* %PC.i653
  %2857 = add i64 %2856, 6
  store i64 %2857, i64* %PC.i653
  %2858 = inttoptr i64 %2855 to i32*
  %2859 = load i32, i32* %2858
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RSI.i655, align 8
  store %struct.Memory* %loadMem_478532, %struct.Memory** %MEMORY
  %loadMem_478538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 7
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RDX.i651 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i652
  %2871 = sub i64 %2870, 24
  %2872 = load i64, i64* %PC.i650
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %PC.i650
  %2874 = inttoptr i64 %2871 to i64*
  %2875 = load i64, i64* %2874
  store i64 %2875, i64* %RDX.i651, align 8
  store %struct.Memory* %loadMem_478538, %struct.Memory** %MEMORY
  %loadMem1_47853c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %PC.i649
  %2880 = add i64 %2879, 213348
  %2881 = load i64, i64* %PC.i649
  %2882 = add i64 %2881, 5
  %2883 = load i64, i64* %PC.i649
  %2884 = add i64 %2883, 5
  store i64 %2884, i64* %PC.i649
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2886 = load i64, i64* %2885, align 8
  %2887 = add i64 %2886, -8
  %2888 = inttoptr i64 %2887 to i64*
  store i64 %2882, i64* %2888
  store i64 %2887, i64* %2885, align 8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2880, i64* %2889, align 8
  store %struct.Memory* %loadMem1_47853c, %struct.Memory** %MEMORY
  %loadMem2_47853c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47853c = load i64, i64* %3
  %call2_47853c = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_47853c, %struct.Memory* %loadMem2_47853c)
  store %struct.Memory* %call2_47853c, %struct.Memory** %MEMORY
  %loadMem_478541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 1
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 15
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RAX.i647
  %2900 = load i64, i64* %RBP.i648
  %2901 = sub i64 %2900, 28
  %2902 = load i64, i64* %PC.i646
  %2903 = add i64 %2902, 3
  store i64 %2903, i64* %PC.i646
  %2904 = trunc i64 %2899 to i32
  %2905 = inttoptr i64 %2901 to i32*
  %2906 = load i32, i32* %2905
  %2907 = add i32 %2906, %2904
  %2908 = zext i32 %2907 to i64
  store i64 %2908, i64* %RAX.i647, align 8
  %2909 = icmp ult i32 %2907, %2904
  %2910 = icmp ult i32 %2907, %2906
  %2911 = or i1 %2909, %2910
  %2912 = zext i1 %2911 to i8
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2912, i8* %2913, align 1
  %2914 = and i32 %2907, 255
  %2915 = call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2918, i8* %2919, align 1
  %2920 = xor i32 %2906, %2904
  %2921 = xor i32 %2920, %2907
  %2922 = lshr i32 %2921, 4
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2924, i8* %2925, align 1
  %2926 = icmp eq i32 %2907, 0
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2927, i8* %2928, align 1
  %2929 = lshr i32 %2907, 31
  %2930 = trunc i32 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2930, i8* %2931, align 1
  %2932 = lshr i32 %2904, 31
  %2933 = lshr i32 %2906, 31
  %2934 = xor i32 %2929, %2932
  %2935 = xor i32 %2929, %2933
  %2936 = add i32 %2934, %2935
  %2937 = icmp eq i32 %2936, 2
  %2938 = zext i1 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2938, i8* %2939, align 1
  store %struct.Memory* %loadMem_478541, %struct.Memory** %MEMORY
  %loadMem_478544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 1
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %EAX.i644 = bitcast %union.anon* %2945 to i32*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 15
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %RBP.i645
  %2950 = sub i64 %2949, 28
  %2951 = load i32, i32* %EAX.i644
  %2952 = zext i32 %2951 to i64
  %2953 = load i64, i64* %PC.i643
  %2954 = add i64 %2953, 3
  store i64 %2954, i64* %PC.i643
  %2955 = inttoptr i64 %2950 to i32*
  store i32 %2951, i32* %2955
  store %struct.Memory* %loadMem_478544, %struct.Memory** %MEMORY
  %loadMem_478547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %PC.i642
  %2960 = add i64 %2959, 247
  %2961 = load i64, i64* %PC.i642
  %2962 = add i64 %2961, 5
  store i64 %2962, i64* %PC.i642
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2960, i64* %2963, align 8
  store %struct.Memory* %loadMem_478547, %struct.Memory** %MEMORY
  br label %block_.L_47863e

block_.L_47854c:                                  ; preds = %block_4784f3
  %loadMem_47854c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 1
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 15
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RBP.i641
  %2974 = sub i64 %2973, 8
  %2975 = load i64, i64* %PC.i639
  %2976 = add i64 %2975, 4
  store i64 %2976, i64* %PC.i639
  %2977 = inttoptr i64 %2974 to i64*
  %2978 = load i64, i64* %2977
  store i64 %2978, i64* %RAX.i640, align 8
  store %struct.Memory* %loadMem_47854c, %struct.Memory** %MEMORY
  %loadMem_478550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 1
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %2984 to i64*
  %2985 = load i64, i64* %RAX.i638
  %2986 = add i64 %2985, 64
  %2987 = load i64, i64* %PC.i637
  %2988 = add i64 %2987, 4
  store i64 %2988, i64* %PC.i637
  %2989 = inttoptr i64 %2986 to i32*
  %2990 = load i32, i32* %2989
  %2991 = sub i32 %2990, 6
  %2992 = icmp ult i32 %2990, 6
  %2993 = zext i1 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2993, i8* %2994, align 1
  %2995 = and i32 %2991, 255
  %2996 = call i32 @llvm.ctpop.i32(i32 %2995)
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  %2999 = xor i8 %2998, 1
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2999, i8* %3000, align 1
  %3001 = xor i32 %2990, 6
  %3002 = xor i32 %3001, %2991
  %3003 = lshr i32 %3002, 4
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3005, i8* %3006, align 1
  %3007 = icmp eq i32 %2991, 0
  %3008 = zext i1 %3007 to i8
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3008, i8* %3009, align 1
  %3010 = lshr i32 %2991, 31
  %3011 = trunc i32 %3010 to i8
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3011, i8* %3012, align 1
  %3013 = lshr i32 %2990, 31
  %3014 = xor i32 %3010, %3013
  %3015 = add i32 %3014, %3013
  %3016 = icmp eq i32 %3015, 2
  %3017 = zext i1 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3017, i8* %3018, align 1
  store %struct.Memory* %loadMem_478550, %struct.Memory** %MEMORY
  %loadMem_478554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %PC.i636
  %3023 = add i64 %3022, 229
  %3024 = load i64, i64* %PC.i636
  %3025 = add i64 %3024, 6
  %3026 = load i64, i64* %PC.i636
  %3027 = add i64 %3026, 6
  store i64 %3027, i64* %PC.i636
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3029 = load i8, i8* %3028, align 1
  %3030 = icmp eq i8 %3029, 0
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %BRANCH_TAKEN, align 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3033 = select i1 %3030, i64 %3023, i64 %3025
  store i64 %3033, i64* %3032, align 8
  store %struct.Memory* %loadMem_478554, %struct.Memory** %MEMORY
  %loadBr_478554 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478554 = icmp eq i8 %loadBr_478554, 1
  br i1 %cmpBr_478554, label %block_.L_478639, label %block_47855a

block_47855a:                                     ; preds = %block_.L_47854c
  %loadMem_47855a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 1
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 15
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %3042 to i64*
  %3043 = load i64, i64* %RBP.i635
  %3044 = sub i64 %3043, 8
  %3045 = load i64, i64* %PC.i633
  %3046 = add i64 %3045, 4
  store i64 %3046, i64* %PC.i633
  %3047 = inttoptr i64 %3044 to i64*
  %3048 = load i64, i64* %3047
  store i64 %3048, i64* %RAX.i634, align 8
  store %struct.Memory* %loadMem_47855a, %struct.Memory** %MEMORY
  %loadMem_47855e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 1
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RAX.i632
  %3056 = add i64 %3055, 60
  %3057 = load i64, i64* %PC.i631
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i631
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sub i32 %3060, 4
  %3062 = icmp ult i32 %3060, 4
  %3063 = zext i1 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3063, i8* %3064, align 1
  %3065 = and i32 %3061, 255
  %3066 = call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3069, i8* %3070, align 1
  %3071 = xor i32 %3060, 4
  %3072 = xor i32 %3071, %3061
  %3073 = lshr i32 %3072, 4
  %3074 = trunc i32 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3075, i8* %3076, align 1
  %3077 = icmp eq i32 %3061, 0
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3078, i8* %3079, align 1
  %3080 = lshr i32 %3061, 31
  %3081 = trunc i32 %3080 to i8
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3081, i8* %3082, align 1
  %3083 = lshr i32 %3060, 31
  %3084 = xor i32 %3080, %3083
  %3085 = add i32 %3084, %3083
  %3086 = icmp eq i32 %3085, 2
  %3087 = zext i1 %3086 to i8
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3087, i8* %3088, align 1
  store %struct.Memory* %loadMem_47855e, %struct.Memory** %MEMORY
  %loadMem_478562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %PC.i630
  %3093 = add i64 %3092, 18
  %3094 = load i64, i64* %PC.i630
  %3095 = add i64 %3094, 6
  %3096 = load i64, i64* %PC.i630
  %3097 = add i64 %3096, 6
  store i64 %3097, i64* %PC.i630
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3099 = load i8, i8* %3098, align 1
  store i8 %3099, i8* %BRANCH_TAKEN, align 1
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3101 = icmp ne i8 %3099, 0
  %3102 = select i1 %3101, i64 %3093, i64 %3095
  store i64 %3102, i64* %3100, align 8
  store %struct.Memory* %loadMem_478562, %struct.Memory** %MEMORY
  %loadBr_478562 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478562 = icmp eq i8 %loadBr_478562, 1
  br i1 %cmpBr_478562, label %block_.L_478574, label %block_478568

block_478568:                                     ; preds = %block_47855a
  %loadMem_478568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RBP.i629
  %3110 = sub i64 %3109, 40
  %3111 = load i64, i64* %PC.i628
  %3112 = add i64 %3111, 7
  store i64 %3112, i64* %PC.i628
  %3113 = inttoptr i64 %3110 to i32*
  store i32 3, i32* %3113
  store %struct.Memory* %loadMem_478568, %struct.Memory** %MEMORY
  %loadMem_47856f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %3116 to i64*
  %3117 = load i64, i64* %PC.i627
  %3118 = add i64 %3117, 74
  %3119 = load i64, i64* %PC.i627
  %3120 = add i64 %3119, 5
  store i64 %3120, i64* %PC.i627
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3118, i64* %3121, align 8
  store %struct.Memory* %loadMem_47856f, %struct.Memory** %MEMORY
  br label %block_.L_4785b9

block_.L_478574:                                  ; preds = %block_47855a
  %loadMem_478574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 1
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 15
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %RBP.i626
  %3132 = sub i64 %3131, 8
  %3133 = load i64, i64* %PC.i624
  %3134 = add i64 %3133, 4
  store i64 %3134, i64* %PC.i624
  %3135 = inttoptr i64 %3132 to i64*
  %3136 = load i64, i64* %3135
  store i64 %3136, i64* %RAX.i625, align 8
  store %struct.Memory* %loadMem_478574, %struct.Memory** %MEMORY
  %loadMem_478578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 1
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %RAX.i623
  %3144 = add i64 %3143, 60
  %3145 = load i64, i64* %PC.i622
  %3146 = add i64 %3145, 4
  store i64 %3146, i64* %PC.i622
  %3147 = inttoptr i64 %3144 to i32*
  %3148 = load i32, i32* %3147
  %3149 = sub i32 %3148, 2
  %3150 = icmp ult i32 %3148, 2
  %3151 = zext i1 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3151, i8* %3152, align 1
  %3153 = and i32 %3149, 255
  %3154 = call i32 @llvm.ctpop.i32(i32 %3153)
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3157, i8* %3158, align 1
  %3159 = xor i32 %3148, 2
  %3160 = xor i32 %3159, %3149
  %3161 = lshr i32 %3160, 4
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3163, i8* %3164, align 1
  %3165 = icmp eq i32 %3149, 0
  %3166 = zext i1 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3166, i8* %3167, align 1
  %3168 = lshr i32 %3149, 31
  %3169 = trunc i32 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3169, i8* %3170, align 1
  %3171 = lshr i32 %3148, 31
  %3172 = xor i32 %3168, %3171
  %3173 = add i32 %3172, %3171
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3175, i8* %3176, align 1
  store %struct.Memory* %loadMem_478578, %struct.Memory** %MEMORY
  %loadMem_47857c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %PC.i621
  %3181 = add i64 %3180, 18
  %3182 = load i64, i64* %PC.i621
  %3183 = add i64 %3182, 6
  %3184 = load i64, i64* %PC.i621
  %3185 = add i64 %3184, 6
  store i64 %3185, i64* %PC.i621
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3187 = load i8, i8* %3186, align 1
  store i8 %3187, i8* %BRANCH_TAKEN, align 1
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3189 = icmp ne i8 %3187, 0
  %3190 = select i1 %3189, i64 %3181, i64 %3183
  store i64 %3190, i64* %3188, align 8
  store %struct.Memory* %loadMem_47857c, %struct.Memory** %MEMORY
  %loadBr_47857c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47857c = icmp eq i8 %loadBr_47857c, 1
  br i1 %cmpBr_47857c, label %block_.L_47858e, label %block_478582

block_478582:                                     ; preds = %block_.L_478574
  %loadMem_478582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 15
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RBP.i620
  %3198 = sub i64 %3197, 40
  %3199 = load i64, i64* %PC.i619
  %3200 = add i64 %3199, 7
  store i64 %3200, i64* %PC.i619
  %3201 = inttoptr i64 %3198 to i32*
  store i32 2, i32* %3201
  store %struct.Memory* %loadMem_478582, %struct.Memory** %MEMORY
  %loadMem_478589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3204 to i64*
  %3205 = load i64, i64* %PC.i618
  %3206 = add i64 %3205, 43
  %3207 = load i64, i64* %PC.i618
  %3208 = add i64 %3207, 5
  store i64 %3208, i64* %PC.i618
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3206, i64* %3209, align 8
  store %struct.Memory* %loadMem_478589, %struct.Memory** %MEMORY
  br label %block_.L_4785b4

block_.L_47858e:                                  ; preds = %block_.L_478574
  %loadMem_47858e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 15
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %RBP.i617
  %3220 = sub i64 %3219, 8
  %3221 = load i64, i64* %PC.i615
  %3222 = add i64 %3221, 4
  store i64 %3222, i64* %PC.i615
  %3223 = inttoptr i64 %3220 to i64*
  %3224 = load i64, i64* %3223
  store i64 %3224, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_47858e, %struct.Memory** %MEMORY
  %loadMem_478592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 1
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RAX.i614
  %3232 = add i64 %3231, 60
  %3233 = load i64, i64* %PC.i613
  %3234 = add i64 %3233, 4
  store i64 %3234, i64* %PC.i613
  %3235 = inttoptr i64 %3232 to i32*
  %3236 = load i32, i32* %3235
  %3237 = sub i32 %3236, 1
  %3238 = icmp ult i32 %3236, 1
  %3239 = zext i1 %3238 to i8
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3239, i8* %3240, align 1
  %3241 = and i32 %3237, 255
  %3242 = call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3245, i8* %3246, align 1
  %3247 = xor i32 %3236, 1
  %3248 = xor i32 %3247, %3237
  %3249 = lshr i32 %3248, 4
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3251, i8* %3252, align 1
  %3253 = icmp eq i32 %3237, 0
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3254, i8* %3255, align 1
  %3256 = lshr i32 %3237, 31
  %3257 = trunc i32 %3256 to i8
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3257, i8* %3258, align 1
  %3259 = lshr i32 %3236, 31
  %3260 = xor i32 %3256, %3259
  %3261 = add i32 %3260, %3259
  %3262 = icmp eq i32 %3261, 2
  %3263 = zext i1 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3263, i8* %3264, align 1
  store %struct.Memory* %loadMem_478592, %struct.Memory** %MEMORY
  %loadMem_478596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 33
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %PC.i612
  %3269 = add i64 %3268, 18
  %3270 = load i64, i64* %PC.i612
  %3271 = add i64 %3270, 6
  %3272 = load i64, i64* %PC.i612
  %3273 = add i64 %3272, 6
  store i64 %3273, i64* %PC.i612
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3275 = load i8, i8* %3274, align 1
  store i8 %3275, i8* %BRANCH_TAKEN, align 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3277 = icmp ne i8 %3275, 0
  %3278 = select i1 %3277, i64 %3269, i64 %3271
  store i64 %3278, i64* %3276, align 8
  store %struct.Memory* %loadMem_478596, %struct.Memory** %MEMORY
  %loadBr_478596 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478596 = icmp eq i8 %loadBr_478596, 1
  br i1 %cmpBr_478596, label %block_.L_4785a8, label %block_47859c

block_47859c:                                     ; preds = %block_.L_47858e
  %loadMem_47859c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 15
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %3284 to i64*
  %3285 = load i64, i64* %RBP.i611
  %3286 = sub i64 %3285, 40
  %3287 = load i64, i64* %PC.i610
  %3288 = add i64 %3287, 7
  store i64 %3288, i64* %PC.i610
  %3289 = inttoptr i64 %3286 to i32*
  store i32 1, i32* %3289
  store %struct.Memory* %loadMem_47859c, %struct.Memory** %MEMORY
  %loadMem_4785a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %3292 to i64*
  %3293 = load i64, i64* %PC.i609
  %3294 = add i64 %3293, 12
  %3295 = load i64, i64* %PC.i609
  %3296 = add i64 %3295, 5
  store i64 %3296, i64* %PC.i609
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3294, i64* %3297, align 8
  store %struct.Memory* %loadMem_4785a3, %struct.Memory** %MEMORY
  br label %block_.L_4785af

block_.L_4785a8:                                  ; preds = %block_.L_47858e
  %loadMem_4785a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 15
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %RBP.i608
  %3305 = sub i64 %3304, 40
  %3306 = load i64, i64* %PC.i607
  %3307 = add i64 %3306, 7
  store i64 %3307, i64* %PC.i607
  %3308 = inttoptr i64 %3305 to i32*
  store i32 0, i32* %3308
  store %struct.Memory* %loadMem_4785a8, %struct.Memory** %MEMORY
  br label %block_.L_4785af

block_.L_4785af:                                  ; preds = %block_.L_4785a8, %block_47859c
  %loadMem_4785af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3311 to i64*
  %3312 = load i64, i64* %PC.i606
  %3313 = add i64 %3312, 5
  %3314 = load i64, i64* %PC.i606
  %3315 = add i64 %3314, 5
  store i64 %3315, i64* %PC.i606
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3313, i64* %3316, align 8
  store %struct.Memory* %loadMem_4785af, %struct.Memory** %MEMORY
  br label %block_.L_4785b4

block_.L_4785b4:                                  ; preds = %block_.L_4785af, %block_478582
  %loadMem_4785b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3319 to i64*
  %3320 = load i64, i64* %PC.i605
  %3321 = add i64 %3320, 5
  %3322 = load i64, i64* %PC.i605
  %3323 = add i64 %3322, 5
  store i64 %3323, i64* %PC.i605
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3321, i64* %3324, align 8
  store %struct.Memory* %loadMem_4785b4, %struct.Memory** %MEMORY
  br label %block_.L_4785b9

block_.L_4785b9:                                  ; preds = %block_.L_4785b4, %block_478568
  %loadMem_4785b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 11
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RDI.i604 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %PC.i603
  %3332 = add i64 %3331, 10
  store i64 %3332, i64* %PC.i603
  store i64 ptrtoint (%G__0x4c2c53_type* @G__0x4c2c53 to i64), i64* %RDI.i604, align 8
  store %struct.Memory* %loadMem_4785b9, %struct.Memory** %MEMORY
  %loadMem_4785c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 1
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 15
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RBP.i602
  %3343 = sub i64 %3342, 8
  %3344 = load i64, i64* %PC.i600
  %3345 = add i64 %3344, 4
  store i64 %3345, i64* %PC.i600
  %3346 = inttoptr i64 %3343 to i64*
  %3347 = load i64, i64* %3346
  store i64 %3347, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_4785c3, %struct.Memory** %MEMORY
  %loadMem_4785c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 1
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 9
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RSI.i599 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RAX.i598
  %3358 = add i64 %3357, 172
  %3359 = load i64, i64* %PC.i597
  %3360 = add i64 %3359, 6
  store i64 %3360, i64* %PC.i597
  %3361 = inttoptr i64 %3358 to i32*
  %3362 = load i32, i32* %3361
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RSI.i599, align 8
  store %struct.Memory* %loadMem_4785c7, %struct.Memory** %MEMORY
  %loadMem_4785cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 7
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RDX.i595 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 15
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %RBP.i596
  %3374 = sub i64 %3373, 24
  %3375 = load i64, i64* %PC.i594
  %3376 = add i64 %3375, 4
  store i64 %3376, i64* %PC.i594
  %3377 = inttoptr i64 %3374 to i64*
  %3378 = load i64, i64* %3377
  store i64 %3378, i64* %RDX.i595, align 8
  store %struct.Memory* %loadMem_4785cd, %struct.Memory** %MEMORY
  %loadMem1_4785d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %PC.i593
  %3383 = add i64 %3382, 213199
  %3384 = load i64, i64* %PC.i593
  %3385 = add i64 %3384, 5
  %3386 = load i64, i64* %PC.i593
  %3387 = add i64 %3386, 5
  store i64 %3387, i64* %PC.i593
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3389 = load i64, i64* %3388, align 8
  %3390 = add i64 %3389, -8
  %3391 = inttoptr i64 %3390 to i64*
  store i64 %3385, i64* %3391
  store i64 %3390, i64* %3388, align 8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3383, i64* %3392, align 8
  store %struct.Memory* %loadMem1_4785d1, %struct.Memory** %MEMORY
  %loadMem2_4785d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4785d1 = load i64, i64* %3
  %call2_4785d1 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_4785d1, %struct.Memory* %loadMem2_4785d1)
  store %struct.Memory* %call2_4785d1, %struct.Memory** %MEMORY
  %loadMem_4785d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 1
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 15
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RAX.i591
  %3403 = load i64, i64* %RBP.i592
  %3404 = sub i64 %3403, 28
  %3405 = load i64, i64* %PC.i590
  %3406 = add i64 %3405, 3
  store i64 %3406, i64* %PC.i590
  %3407 = trunc i64 %3402 to i32
  %3408 = inttoptr i64 %3404 to i32*
  %3409 = load i32, i32* %3408
  %3410 = add i32 %3409, %3407
  %3411 = zext i32 %3410 to i64
  store i64 %3411, i64* %RAX.i591, align 8
  %3412 = icmp ult i32 %3410, %3407
  %3413 = icmp ult i32 %3410, %3409
  %3414 = or i1 %3412, %3413
  %3415 = zext i1 %3414 to i8
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3415, i8* %3416, align 1
  %3417 = and i32 %3410, 255
  %3418 = call i32 @llvm.ctpop.i32(i32 %3417)
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = xor i8 %3420, 1
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3421, i8* %3422, align 1
  %3423 = xor i32 %3409, %3407
  %3424 = xor i32 %3423, %3410
  %3425 = lshr i32 %3424, 4
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3427, i8* %3428, align 1
  %3429 = icmp eq i32 %3410, 0
  %3430 = zext i1 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3430, i8* %3431, align 1
  %3432 = lshr i32 %3410, 31
  %3433 = trunc i32 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3433, i8* %3434, align 1
  %3435 = lshr i32 %3407, 31
  %3436 = lshr i32 %3409, 31
  %3437 = xor i32 %3432, %3435
  %3438 = xor i32 %3432, %3436
  %3439 = add i32 %3437, %3438
  %3440 = icmp eq i32 %3439, 2
  %3441 = zext i1 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3441, i8* %3442, align 1
  store %struct.Memory* %loadMem_4785d6, %struct.Memory** %MEMORY
  %loadMem_4785d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %EAX.i588 = bitcast %union.anon* %3448 to i32*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i589
  %3453 = sub i64 %3452, 28
  %3454 = load i32, i32* %EAX.i588
  %3455 = zext i32 %3454 to i64
  %3456 = load i64, i64* %PC.i587
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i587
  %3458 = inttoptr i64 %3453 to i32*
  store i32 %3454, i32* %3458
  store %struct.Memory* %loadMem_4785d9, %struct.Memory** %MEMORY
  %loadMem_4785dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3464 to i64*
  %3465 = load i64, i64* %RBP.i586
  %3466 = sub i64 %3465, 36
  %3467 = load i64, i64* %PC.i585
  %3468 = add i64 %3467, 7
  store i64 %3468, i64* %PC.i585
  %3469 = inttoptr i64 %3466 to i32*
  store i32 0, i32* %3469
  store %struct.Memory* %loadMem_4785dc, %struct.Memory** %MEMORY
  br label %block_.L_4785e3

block_.L_4785e3:                                  ; preds = %block_4785f6, %block_.L_4785b9
  %loadMem_4785e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 1
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 15
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %RBP.i584
  %3480 = sub i64 %3479, 36
  %3481 = load i64, i64* %PC.i582
  %3482 = add i64 %3481, 3
  store i64 %3482, i64* %PC.i582
  %3483 = inttoptr i64 %3480 to i32*
  %3484 = load i32, i32* %3483
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_4785e3, %struct.Memory** %MEMORY
  %loadMem_4785e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 33
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 5
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 15
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %RBP.i581
  %3496 = sub i64 %3495, 8
  %3497 = load i64, i64* %PC.i579
  %3498 = add i64 %3497, 4
  store i64 %3498, i64* %PC.i579
  %3499 = inttoptr i64 %3496 to i64*
  %3500 = load i64, i64* %3499
  store i64 %3500, i64* %RCX.i580, align 8
  store %struct.Memory* %loadMem_4785e6, %struct.Memory** %MEMORY
  %loadMem_4785ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 1
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %3506 to i32*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 5
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %3509 to i64*
  %3510 = load i32, i32* %EAX.i577
  %3511 = zext i32 %3510 to i64
  %3512 = load i64, i64* %RCX.i578
  %3513 = add i64 %3512, 172
  %3514 = load i64, i64* %PC.i576
  %3515 = add i64 %3514, 6
  store i64 %3515, i64* %PC.i576
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516
  %3518 = sub i32 %3510, %3517
  %3519 = icmp ult i32 %3510, %3517
  %3520 = zext i1 %3519 to i8
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3520, i8* %3521, align 1
  %3522 = and i32 %3518, 255
  %3523 = call i32 @llvm.ctpop.i32(i32 %3522)
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = xor i8 %3525, 1
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3526, i8* %3527, align 1
  %3528 = xor i32 %3517, %3510
  %3529 = xor i32 %3528, %3518
  %3530 = lshr i32 %3529, 4
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3532, i8* %3533, align 1
  %3534 = icmp eq i32 %3518, 0
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3535, i8* %3536, align 1
  %3537 = lshr i32 %3518, 31
  %3538 = trunc i32 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3538, i8* %3539, align 1
  %3540 = lshr i32 %3510, 31
  %3541 = lshr i32 %3517, 31
  %3542 = xor i32 %3541, %3540
  %3543 = xor i32 %3537, %3540
  %3544 = add i32 %3543, %3542
  %3545 = icmp eq i32 %3544, 2
  %3546 = zext i1 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3546, i8* %3547, align 1
  store %struct.Memory* %loadMem_4785ea, %struct.Memory** %MEMORY
  %loadMem_4785f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3550 to i64*
  %3551 = load i64, i64* %PC.i575
  %3552 = add i64 %3551, 68
  %3553 = load i64, i64* %PC.i575
  %3554 = add i64 %3553, 6
  %3555 = load i64, i64* %PC.i575
  %3556 = add i64 %3555, 6
  store i64 %3556, i64* %PC.i575
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3558 = load i8, i8* %3557, align 1
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3560 = load i8, i8* %3559, align 1
  %3561 = or i8 %3560, %3558
  %3562 = icmp eq i8 %3561, 0
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %BRANCH_TAKEN, align 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3565 = select i1 %3562, i64 %3552, i64 %3554
  store i64 %3565, i64* %3564, align 8
  store %struct.Memory* %loadMem_4785f0, %struct.Memory** %MEMORY
  %loadBr_4785f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4785f0 = icmp eq i8 %loadBr_4785f0, 1
  br i1 %cmpBr_4785f0, label %block_.L_478634, label %block_4785f6

block_4785f6:                                     ; preds = %block_.L_4785e3
  %loadMem_4785f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 9
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %PC.i573
  %3573 = add i64 %3572, 10
  store i64 %3573, i64* %PC.i573
  store i64 ptrtoint (%G__0x4c2c75_type* @G__0x4c2c75 to i64), i64* %RSI.i574, align 8
  store %struct.Memory* %loadMem_4785f6, %struct.Memory** %MEMORY
  %loadMem_478600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 11
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RDI.i571 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RBP.i572
  %3584 = sub i64 %3583, 40
  %3585 = load i64, i64* %PC.i570
  %3586 = add i64 %3585, 3
  store i64 %3586, i64* %PC.i570
  %3587 = inttoptr i64 %3584 to i32*
  %3588 = load i32, i32* %3587
  %3589 = zext i32 %3588 to i64
  store i64 %3589, i64* %RDI.i571, align 8
  store %struct.Memory* %loadMem_478600, %struct.Memory** %MEMORY
  %loadMem_478603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i569
  %3600 = sub i64 %3599, 8
  %3601 = load i64, i64* %PC.i567
  %3602 = add i64 %3601, 4
  store i64 %3602, i64* %PC.i567
  %3603 = inttoptr i64 %3600 to i64*
  %3604 = load i64, i64* %3603
  store i64 %3604, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_478603, %struct.Memory** %MEMORY
  %loadMem_478607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3607 to i64*
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 1
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %3610 to i64*
  %3611 = load i64, i64* %RAX.i566
  %3612 = add i64 %3611, 176
  %3613 = load i64, i64* %PC.i565
  %3614 = add i64 %3613, 7
  store i64 %3614, i64* %PC.i565
  %3615 = inttoptr i64 %3612 to i64*
  %3616 = load i64, i64* %3615
  store i64 %3616, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_478607, %struct.Memory** %MEMORY
  %loadMem_47860e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 33
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 5
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 15
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RBP.i564
  %3627 = sub i64 %3626, 36
  %3628 = load i64, i64* %PC.i562
  %3629 = add i64 %3628, 3
  store i64 %3629, i64* %PC.i562
  %3630 = inttoptr i64 %3627 to i32*
  %3631 = load i32, i32* %3630
  %3632 = zext i32 %3631 to i64
  store i64 %3632, i64* %RCX.i563, align 8
  store %struct.Memory* %loadMem_47860e, %struct.Memory** %MEMORY
  %loadMem_478611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 5
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %ECX.i560 = bitcast %union.anon* %3638 to i32*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 7
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %3641 to i64*
  %3642 = load i32, i32* %ECX.i560
  %3643 = zext i32 %3642 to i64
  %3644 = load i64, i64* %PC.i559
  %3645 = add i64 %3644, 2
  store i64 %3645, i64* %PC.i559
  %3646 = and i64 %3643, 4294967295
  store i64 %3646, i64* %RDX.i561, align 8
  store %struct.Memory* %loadMem_478611, %struct.Memory** %MEMORY
  %loadMem_478613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 1
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 7
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RAX.i557
  %3657 = load i64, i64* %RDX.i558
  %3658 = add i64 %3657, %3656
  %3659 = load i64, i64* %PC.i556
  %3660 = add i64 %3659, 4
  store i64 %3660, i64* %PC.i556
  %3661 = inttoptr i64 %3658 to i8*
  %3662 = load i8, i8* %3661
  %3663 = zext i8 %3662 to i64
  store i64 %3663, i64* %RDX.i558, align 8
  store %struct.Memory* %loadMem_478613, %struct.Memory** %MEMORY
  %loadMem_478617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 5
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 15
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RBP.i555
  %3674 = sub i64 %3673, 24
  %3675 = load i64, i64* %PC.i553
  %3676 = add i64 %3675, 4
  store i64 %3676, i64* %PC.i553
  %3677 = inttoptr i64 %3674 to i64*
  %3678 = load i64, i64* %3677
  store i64 %3678, i64* %RCX.i554, align 8
  store %struct.Memory* %loadMem_478617, %struct.Memory** %MEMORY
  %loadMem1_47861b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %PC.i552
  %3683 = add i64 %3682, 214437
  %3684 = load i64, i64* %PC.i552
  %3685 = add i64 %3684, 5
  %3686 = load i64, i64* %PC.i552
  %3687 = add i64 %3686, 5
  store i64 %3687, i64* %PC.i552
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3689 = load i64, i64* %3688, align 8
  %3690 = add i64 %3689, -8
  %3691 = inttoptr i64 %3690 to i64*
  store i64 %3685, i64* %3691
  store i64 %3690, i64* %3688, align 8
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3683, i64* %3692, align 8
  store %struct.Memory* %loadMem1_47861b, %struct.Memory** %MEMORY
  %loadMem2_47861b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47861b = load i64, i64* %3
  %call2_47861b = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64 %loadPC_47861b, %struct.Memory* %loadMem2_47861b)
  store %struct.Memory* %call2_47861b, %struct.Memory** %MEMORY
  %loadMem_478620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 1
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 15
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %RAX.i550
  %3703 = load i64, i64* %RBP.i551
  %3704 = sub i64 %3703, 28
  %3705 = load i64, i64* %PC.i549
  %3706 = add i64 %3705, 3
  store i64 %3706, i64* %PC.i549
  %3707 = trunc i64 %3702 to i32
  %3708 = inttoptr i64 %3704 to i32*
  %3709 = load i32, i32* %3708
  %3710 = add i32 %3709, %3707
  %3711 = zext i32 %3710 to i64
  store i64 %3711, i64* %RAX.i550, align 8
  %3712 = icmp ult i32 %3710, %3707
  %3713 = icmp ult i32 %3710, %3709
  %3714 = or i1 %3712, %3713
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3715, i8* %3716, align 1
  %3717 = and i32 %3710, 255
  %3718 = call i32 @llvm.ctpop.i32(i32 %3717)
  %3719 = trunc i32 %3718 to i8
  %3720 = and i8 %3719, 1
  %3721 = xor i8 %3720, 1
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3721, i8* %3722, align 1
  %3723 = xor i32 %3709, %3707
  %3724 = xor i32 %3723, %3710
  %3725 = lshr i32 %3724, 4
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3727, i8* %3728, align 1
  %3729 = icmp eq i32 %3710, 0
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3730, i8* %3731, align 1
  %3732 = lshr i32 %3710, 31
  %3733 = trunc i32 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3733, i8* %3734, align 1
  %3735 = lshr i32 %3707, 31
  %3736 = lshr i32 %3709, 31
  %3737 = xor i32 %3732, %3735
  %3738 = xor i32 %3732, %3736
  %3739 = add i32 %3737, %3738
  %3740 = icmp eq i32 %3739, 2
  %3741 = zext i1 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3741, i8* %3742, align 1
  store %struct.Memory* %loadMem_478620, %struct.Memory** %MEMORY
  %loadMem_478623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %3748 to i32*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 15
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RBP.i548
  %3753 = sub i64 %3752, 28
  %3754 = load i32, i32* %EAX.i547
  %3755 = zext i32 %3754 to i64
  %3756 = load i64, i64* %PC.i546
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %PC.i546
  %3758 = inttoptr i64 %3753 to i32*
  store i32 %3754, i32* %3758
  store %struct.Memory* %loadMem_478623, %struct.Memory** %MEMORY
  %loadMem_478626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 1
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 15
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %RBP.i545
  %3769 = sub i64 %3768, 36
  %3770 = load i64, i64* %PC.i543
  %3771 = add i64 %3770, 3
  store i64 %3771, i64* %PC.i543
  %3772 = inttoptr i64 %3769 to i32*
  %3773 = load i32, i32* %3772
  %3774 = zext i32 %3773 to i64
  store i64 %3774, i64* %RAX.i544, align 8
  store %struct.Memory* %loadMem_478626, %struct.Memory** %MEMORY
  %loadMem_478629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 1
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %RAX.i542
  %3782 = load i64, i64* %PC.i541
  %3783 = add i64 %3782, 3
  store i64 %3783, i64* %PC.i541
  %3784 = trunc i64 %3781 to i32
  %3785 = add i32 1, %3784
  %3786 = zext i32 %3785 to i64
  store i64 %3786, i64* %RAX.i542, align 8
  %3787 = icmp ult i32 %3785, %3784
  %3788 = icmp ult i32 %3785, 1
  %3789 = or i1 %3787, %3788
  %3790 = zext i1 %3789 to i8
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3790, i8* %3791, align 1
  %3792 = and i32 %3785, 255
  %3793 = call i32 @llvm.ctpop.i32(i32 %3792)
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  %3796 = xor i8 %3795, 1
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3796, i8* %3797, align 1
  %3798 = xor i64 1, %3781
  %3799 = trunc i64 %3798 to i32
  %3800 = xor i32 %3799, %3785
  %3801 = lshr i32 %3800, 4
  %3802 = trunc i32 %3801 to i8
  %3803 = and i8 %3802, 1
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3803, i8* %3804, align 1
  %3805 = icmp eq i32 %3785, 0
  %3806 = zext i1 %3805 to i8
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3806, i8* %3807, align 1
  %3808 = lshr i32 %3785, 31
  %3809 = trunc i32 %3808 to i8
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3809, i8* %3810, align 1
  %3811 = lshr i32 %3784, 31
  %3812 = xor i32 %3808, %3811
  %3813 = add i32 %3812, %3808
  %3814 = icmp eq i32 %3813, 2
  %3815 = zext i1 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3815, i8* %3816, align 1
  store %struct.Memory* %loadMem_478629, %struct.Memory** %MEMORY
  %loadMem_47862c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 1
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %EAX.i539 = bitcast %union.anon* %3822 to i32*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 15
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RBP.i540
  %3827 = sub i64 %3826, 36
  %3828 = load i32, i32* %EAX.i539
  %3829 = zext i32 %3828 to i64
  %3830 = load i64, i64* %PC.i538
  %3831 = add i64 %3830, 3
  store i64 %3831, i64* %PC.i538
  %3832 = inttoptr i64 %3827 to i32*
  store i32 %3828, i32* %3832
  store %struct.Memory* %loadMem_47862c, %struct.Memory** %MEMORY
  %loadMem_47862f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %PC.i537
  %3837 = add i64 %3836, -76
  %3838 = load i64, i64* %PC.i537
  %3839 = add i64 %3838, 5
  store i64 %3839, i64* %PC.i537
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3837, i64* %3840, align 8
  store %struct.Memory* %loadMem_47862f, %struct.Memory** %MEMORY
  br label %block_.L_4785e3

block_.L_478634:                                  ; preds = %block_.L_4785e3
  %loadMem_478634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %PC.i536
  %3845 = add i64 %3844, 5
  %3846 = load i64, i64* %PC.i536
  %3847 = add i64 %3846, 5
  store i64 %3847, i64* %PC.i536
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3845, i64* %3848, align 8
  store %struct.Memory* %loadMem_478634, %struct.Memory** %MEMORY
  br label %block_.L_478639

block_.L_478639:                                  ; preds = %block_.L_478634, %block_.L_47854c
  %loadMem_478639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %PC.i535
  %3853 = add i64 %3852, 5
  %3854 = load i64, i64* %PC.i535
  %3855 = add i64 %3854, 5
  store i64 %3855, i64* %PC.i535
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3853, i64* %3856, align 8
  store %struct.Memory* %loadMem_478639, %struct.Memory** %MEMORY
  br label %block_.L_47863e

block_.L_47863e:                                  ; preds = %block_.L_478639, %block_.L_478501
  %loadMem_47863e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 33
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %PC.i534
  %3861 = add i64 %3860, 5
  %3862 = load i64, i64* %PC.i534
  %3863 = add i64 %3862, 5
  store i64 %3863, i64* %PC.i534
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3861, i64* %3864, align 8
  store %struct.Memory* %loadMem_47863e, %struct.Memory** %MEMORY
  br label %block_.L_478643

block_.L_478643:                                  ; preds = %block_.L_47863e, %block_.L_4784d2
  %loadMem_478643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3867 to i64*
  %3868 = load i64, i64* %PC.i533
  %3869 = add i64 %3868, 5
  %3870 = load i64, i64* %PC.i533
  %3871 = add i64 %3870, 5
  store i64 %3871, i64* %PC.i533
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3869, i64* %3872, align 8
  store %struct.Memory* %loadMem_478643, %struct.Memory** %MEMORY
  br label %block_.L_478648

block_.L_478648:                                  ; preds = %block_.L_478643, %block_.L_478449
  %loadMem_478648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 33
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3875 to i64*
  %3876 = load i64, i64* %PC.i532
  %3877 = add i64 %3876, 5
  %3878 = load i64, i64* %PC.i532
  %3879 = add i64 %3878, 5
  store i64 %3879, i64* %PC.i532
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3877, i64* %3880, align 8
  store %struct.Memory* %loadMem_478648, %struct.Memory** %MEMORY
  br label %block_.L_47864d

block_.L_47864d:                                  ; preds = %block_.L_478648, %block_.L_4782f0
  %loadMem_47864d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 11
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RDI.i531 = bitcast %union.anon* %3886 to i64*
  %3887 = load i64, i64* %PC.i530
  %3888 = add i64 %3887, 10
  store i64 %3888, i64* %PC.i530
  store i64 ptrtoint (%G__0x4c2c8d_type* @G__0x4c2c8d to i64), i64* %RDI.i531, align 8
  store %struct.Memory* %loadMem_47864d, %struct.Memory** %MEMORY
  %loadMem_478657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 1
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 15
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RBP.i529
  %3899 = sub i64 %3898, 8
  %3900 = load i64, i64* %PC.i527
  %3901 = add i64 %3900, 4
  store i64 %3901, i64* %PC.i527
  %3902 = inttoptr i64 %3899 to i64*
  %3903 = load i64, i64* %3902
  store i64 %3903, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_478657, %struct.Memory** %MEMORY
  %loadMem_47865b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 1
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 9
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RSI.i526 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RAX.i525
  %3914 = add i64 %3913, 184
  %3915 = load i64, i64* %PC.i524
  %3916 = add i64 %3915, 6
  store i64 %3916, i64* %PC.i524
  %3917 = inttoptr i64 %3914 to i32*
  %3918 = load i32, i32* %3917
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RSI.i526, align 8
  store %struct.Memory* %loadMem_47865b, %struct.Memory** %MEMORY
  %loadMem_478661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 7
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 15
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %RBP.i523
  %3930 = sub i64 %3929, 24
  %3931 = load i64, i64* %PC.i521
  %3932 = add i64 %3931, 4
  store i64 %3932, i64* %PC.i521
  %3933 = inttoptr i64 %3930 to i64*
  %3934 = load i64, i64* %3933
  store i64 %3934, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_478661, %struct.Memory** %MEMORY
  %loadMem1_478665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3937 to i64*
  %3938 = load i64, i64* %PC.i520
  %3939 = add i64 %3938, 213051
  %3940 = load i64, i64* %PC.i520
  %3941 = add i64 %3940, 5
  %3942 = load i64, i64* %PC.i520
  %3943 = add i64 %3942, 5
  store i64 %3943, i64* %PC.i520
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3945 = load i64, i64* %3944, align 8
  %3946 = add i64 %3945, -8
  %3947 = inttoptr i64 %3946 to i64*
  store i64 %3941, i64* %3947
  store i64 %3946, i64* %3944, align 8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3939, i64* %3948, align 8
  store %struct.Memory* %loadMem1_478665, %struct.Memory** %MEMORY
  %loadMem2_478665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478665 = load i64, i64* %3
  %call2_478665 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_478665, %struct.Memory* %loadMem2_478665)
  store %struct.Memory* %call2_478665, %struct.Memory** %MEMORY
  %loadMem_47866a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 33
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 11
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RDI.i519 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %PC.i518
  %3956 = add i64 %3955, 10
  store i64 %3956, i64* %PC.i518
  store i64 ptrtoint (%G__0x4c2caf_type* @G__0x4c2caf to i64), i64* %RDI.i519, align 8
  store %struct.Memory* %loadMem_47866a, %struct.Memory** %MEMORY
  %loadMem_478674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 33
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 1
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 15
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %3965 to i64*
  %3966 = load i64, i64* %RAX.i516
  %3967 = load i64, i64* %RBP.i517
  %3968 = sub i64 %3967, 28
  %3969 = load i64, i64* %PC.i515
  %3970 = add i64 %3969, 3
  store i64 %3970, i64* %PC.i515
  %3971 = trunc i64 %3966 to i32
  %3972 = inttoptr i64 %3968 to i32*
  %3973 = load i32, i32* %3972
  %3974 = add i32 %3973, %3971
  %3975 = zext i32 %3974 to i64
  store i64 %3975, i64* %RAX.i516, align 8
  %3976 = icmp ult i32 %3974, %3971
  %3977 = icmp ult i32 %3974, %3973
  %3978 = or i1 %3976, %3977
  %3979 = zext i1 %3978 to i8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3979, i8* %3980, align 1
  %3981 = and i32 %3974, 255
  %3982 = call i32 @llvm.ctpop.i32(i32 %3981)
  %3983 = trunc i32 %3982 to i8
  %3984 = and i8 %3983, 1
  %3985 = xor i8 %3984, 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3985, i8* %3986, align 1
  %3987 = xor i32 %3973, %3971
  %3988 = xor i32 %3987, %3974
  %3989 = lshr i32 %3988, 4
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3991, i8* %3992, align 1
  %3993 = icmp eq i32 %3974, 0
  %3994 = zext i1 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3994, i8* %3995, align 1
  %3996 = lshr i32 %3974, 31
  %3997 = trunc i32 %3996 to i8
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3997, i8* %3998, align 1
  %3999 = lshr i32 %3971, 31
  %4000 = lshr i32 %3973, 31
  %4001 = xor i32 %3996, %3999
  %4002 = xor i32 %3996, %4000
  %4003 = add i32 %4001, %4002
  %4004 = icmp eq i32 %4003, 2
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4005, i8* %4006, align 1
  store %struct.Memory* %loadMem_478674, %struct.Memory** %MEMORY
  %loadMem_478677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 1
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %EAX.i513 = bitcast %union.anon* %4012 to i32*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 15
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %RBP.i514
  %4017 = sub i64 %4016, 28
  %4018 = load i32, i32* %EAX.i513
  %4019 = zext i32 %4018 to i64
  %4020 = load i64, i64* %PC.i512
  %4021 = add i64 %4020, 3
  store i64 %4021, i64* %PC.i512
  %4022 = inttoptr i64 %4017 to i32*
  store i32 %4018, i32* %4022
  store %struct.Memory* %loadMem_478677, %struct.Memory** %MEMORY
  %loadMem_47867a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 33
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 7
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 15
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %4031 to i64*
  %4032 = load i64, i64* %RBP.i511
  %4033 = sub i64 %4032, 8
  %4034 = load i64, i64* %PC.i509
  %4035 = add i64 %4034, 4
  store i64 %4035, i64* %PC.i509
  %4036 = inttoptr i64 %4033 to i64*
  %4037 = load i64, i64* %4036
  store i64 %4037, i64* %RDX.i510, align 8
  store %struct.Memory* %loadMem_47867a, %struct.Memory** %MEMORY
  %loadMem_47867e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 7
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RDX.i507 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 9
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RSI.i508 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %RDX.i507
  %4048 = add i64 %4047, 188
  %4049 = load i64, i64* %PC.i506
  %4050 = add i64 %4049, 6
  store i64 %4050, i64* %PC.i506
  %4051 = inttoptr i64 %4048 to i32*
  %4052 = load i32, i32* %4051
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RSI.i508, align 8
  store %struct.Memory* %loadMem_47867e, %struct.Memory** %MEMORY
  %loadMem_478684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 7
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i505
  %4064 = sub i64 %4063, 24
  %4065 = load i64, i64* %PC.i503
  %4066 = add i64 %4065, 4
  store i64 %4066, i64* %PC.i503
  %4067 = inttoptr i64 %4064 to i64*
  %4068 = load i64, i64* %4067
  store i64 %4068, i64* %RDX.i504, align 8
  store %struct.Memory* %loadMem_478684, %struct.Memory** %MEMORY
  %loadMem1_478688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %PC.i502
  %4073 = add i64 %4072, 213016
  %4074 = load i64, i64* %PC.i502
  %4075 = add i64 %4074, 5
  %4076 = load i64, i64* %PC.i502
  %4077 = add i64 %4076, 5
  store i64 %4077, i64* %PC.i502
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4079 = load i64, i64* %4078, align 8
  %4080 = add i64 %4079, -8
  %4081 = inttoptr i64 %4080 to i64*
  store i64 %4075, i64* %4081
  store i64 %4080, i64* %4078, align 8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4073, i64* %4082, align 8
  store %struct.Memory* %loadMem1_478688, %struct.Memory** %MEMORY
  %loadMem2_478688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478688 = load i64, i64* %3
  %call2_478688 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_478688, %struct.Memory* %loadMem2_478688)
  store %struct.Memory* %call2_478688, %struct.Memory** %MEMORY
  %loadMem_47868d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4085 to i64*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 11
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RDI.i501 = bitcast %union.anon* %4088 to i64*
  %4089 = load i64, i64* %PC.i500
  %4090 = add i64 %4089, 10
  store i64 %4090, i64* %PC.i500
  store i64 ptrtoint (%G__0x4c2cd1_type* @G__0x4c2cd1 to i64), i64* %RDI.i501, align 8
  store %struct.Memory* %loadMem_47868d, %struct.Memory** %MEMORY
  %loadMem_478697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 1
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 15
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %4099 to i64*
  %4100 = load i64, i64* %RAX.i498
  %4101 = load i64, i64* %RBP.i499
  %4102 = sub i64 %4101, 28
  %4103 = load i64, i64* %PC.i497
  %4104 = add i64 %4103, 3
  store i64 %4104, i64* %PC.i497
  %4105 = trunc i64 %4100 to i32
  %4106 = inttoptr i64 %4102 to i32*
  %4107 = load i32, i32* %4106
  %4108 = add i32 %4107, %4105
  %4109 = zext i32 %4108 to i64
  store i64 %4109, i64* %RAX.i498, align 8
  %4110 = icmp ult i32 %4108, %4105
  %4111 = icmp ult i32 %4108, %4107
  %4112 = or i1 %4110, %4111
  %4113 = zext i1 %4112 to i8
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4113, i8* %4114, align 1
  %4115 = and i32 %4108, 255
  %4116 = call i32 @llvm.ctpop.i32(i32 %4115)
  %4117 = trunc i32 %4116 to i8
  %4118 = and i8 %4117, 1
  %4119 = xor i8 %4118, 1
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4119, i8* %4120, align 1
  %4121 = xor i32 %4107, %4105
  %4122 = xor i32 %4121, %4108
  %4123 = lshr i32 %4122, 4
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4125, i8* %4126, align 1
  %4127 = icmp eq i32 %4108, 0
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4128, i8* %4129, align 1
  %4130 = lshr i32 %4108, 31
  %4131 = trunc i32 %4130 to i8
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4131, i8* %4132, align 1
  %4133 = lshr i32 %4105, 31
  %4134 = lshr i32 %4107, 31
  %4135 = xor i32 %4130, %4133
  %4136 = xor i32 %4130, %4134
  %4137 = add i32 %4135, %4136
  %4138 = icmp eq i32 %4137, 2
  %4139 = zext i1 %4138 to i8
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4139, i8* %4140, align 1
  store %struct.Memory* %loadMem_478697, %struct.Memory** %MEMORY
  %loadMem_47869a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 1
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %4146 to i32*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 15
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %RBP.i496
  %4151 = sub i64 %4150, 28
  %4152 = load i32, i32* %EAX.i495
  %4153 = zext i32 %4152 to i64
  %4154 = load i64, i64* %PC.i494
  %4155 = add i64 %4154, 3
  store i64 %4155, i64* %PC.i494
  %4156 = inttoptr i64 %4151 to i32*
  store i32 %4152, i32* %4156
  store %struct.Memory* %loadMem_47869a, %struct.Memory** %MEMORY
  %loadMem_47869d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 33
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4159 to i64*
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 7
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 15
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %4165 to i64*
  %4166 = load i64, i64* %RBP.i493
  %4167 = sub i64 %4166, 8
  %4168 = load i64, i64* %PC.i491
  %4169 = add i64 %4168, 4
  store i64 %4169, i64* %PC.i491
  %4170 = inttoptr i64 %4167 to i64*
  %4171 = load i64, i64* %4170
  store i64 %4171, i64* %RDX.i492, align 8
  store %struct.Memory* %loadMem_47869d, %struct.Memory** %MEMORY
  %loadMem_4786a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 33
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4174 to i64*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 7
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 9
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RSI.i490 = bitcast %union.anon* %4180 to i64*
  %4181 = load i64, i64* %RDX.i489
  %4182 = add i64 %4181, 192
  %4183 = load i64, i64* %PC.i488
  %4184 = add i64 %4183, 6
  store i64 %4184, i64* %PC.i488
  %4185 = inttoptr i64 %4182 to i32*
  %4186 = load i32, i32* %4185
  %4187 = zext i32 %4186 to i64
  store i64 %4187, i64* %RSI.i490, align 8
  store %struct.Memory* %loadMem_4786a1, %struct.Memory** %MEMORY
  %loadMem_4786a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 33
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4190 to i64*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 7
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 15
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %4196 to i64*
  %4197 = load i64, i64* %RBP.i487
  %4198 = sub i64 %4197, 24
  %4199 = load i64, i64* %PC.i485
  %4200 = add i64 %4199, 4
  store i64 %4200, i64* %PC.i485
  %4201 = inttoptr i64 %4198 to i64*
  %4202 = load i64, i64* %4201
  store i64 %4202, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_4786a7, %struct.Memory** %MEMORY
  %loadMem1_4786ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 33
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4205 to i64*
  %4206 = load i64, i64* %PC.i484
  %4207 = add i64 %4206, 214101
  %4208 = load i64, i64* %PC.i484
  %4209 = add i64 %4208, 5
  %4210 = load i64, i64* %PC.i484
  %4211 = add i64 %4210, 5
  store i64 %4211, i64* %PC.i484
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4213 = load i64, i64* %4212, align 8
  %4214 = add i64 %4213, -8
  %4215 = inttoptr i64 %4214 to i64*
  store i64 %4209, i64* %4215
  store i64 %4214, i64* %4212, align 8
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4207, i64* %4216, align 8
  store %struct.Memory* %loadMem1_4786ab, %struct.Memory** %MEMORY
  %loadMem2_4786ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4786ab = load i64, i64* %3
  %call2_4786ab = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_4786ab, %struct.Memory* %loadMem2_4786ab)
  store %struct.Memory* %call2_4786ab, %struct.Memory** %MEMORY
  %loadMem_4786b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 11
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RDI.i483 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %PC.i482
  %4224 = add i64 %4223, 5
  store i64 %4224, i64* %PC.i482
  store i64 2, i64* %RDI.i483, align 8
  store %struct.Memory* %loadMem_4786b0, %struct.Memory** %MEMORY
  %loadMem_4786b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 33
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 9
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RSI.i481 = bitcast %union.anon* %4230 to i64*
  %4231 = load i64, i64* %PC.i480
  %4232 = add i64 %4231, 10
  store i64 %4232, i64* %PC.i480
  store i64 ptrtoint (%G__0x4c2ce9_type* @G__0x4c2ce9 to i64), i64* %RSI.i481, align 8
  store %struct.Memory* %loadMem_4786b5, %struct.Memory** %MEMORY
  %loadMem_4786bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 33
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 1
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 15
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %4241 to i64*
  %4242 = load i64, i64* %RAX.i478
  %4243 = load i64, i64* %RBP.i479
  %4244 = sub i64 %4243, 28
  %4245 = load i64, i64* %PC.i477
  %4246 = add i64 %4245, 3
  store i64 %4246, i64* %PC.i477
  %4247 = trunc i64 %4242 to i32
  %4248 = inttoptr i64 %4244 to i32*
  %4249 = load i32, i32* %4248
  %4250 = add i32 %4249, %4247
  %4251 = zext i32 %4250 to i64
  store i64 %4251, i64* %RAX.i478, align 8
  %4252 = icmp ult i32 %4250, %4247
  %4253 = icmp ult i32 %4250, %4249
  %4254 = or i1 %4252, %4253
  %4255 = zext i1 %4254 to i8
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4255, i8* %4256, align 1
  %4257 = and i32 %4250, 255
  %4258 = call i32 @llvm.ctpop.i32(i32 %4257)
  %4259 = trunc i32 %4258 to i8
  %4260 = and i8 %4259, 1
  %4261 = xor i8 %4260, 1
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4261, i8* %4262, align 1
  %4263 = xor i32 %4249, %4247
  %4264 = xor i32 %4263, %4250
  %4265 = lshr i32 %4264, 4
  %4266 = trunc i32 %4265 to i8
  %4267 = and i8 %4266, 1
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4267, i8* %4268, align 1
  %4269 = icmp eq i32 %4250, 0
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4270, i8* %4271, align 1
  %4272 = lshr i32 %4250, 31
  %4273 = trunc i32 %4272 to i8
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4273, i8* %4274, align 1
  %4275 = lshr i32 %4247, 31
  %4276 = lshr i32 %4249, 31
  %4277 = xor i32 %4272, %4275
  %4278 = xor i32 %4272, %4276
  %4279 = add i32 %4277, %4278
  %4280 = icmp eq i32 %4279, 2
  %4281 = zext i1 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4281, i8* %4282, align 1
  store %struct.Memory* %loadMem_4786bf, %struct.Memory** %MEMORY
  %loadMem_4786c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 33
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4285 to i64*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 1
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %EAX.i475 = bitcast %union.anon* %4288 to i32*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 15
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %4291 to i64*
  %4292 = load i64, i64* %RBP.i476
  %4293 = sub i64 %4292, 28
  %4294 = load i32, i32* %EAX.i475
  %4295 = zext i32 %4294 to i64
  %4296 = load i64, i64* %PC.i474
  %4297 = add i64 %4296, 3
  store i64 %4297, i64* %PC.i474
  %4298 = inttoptr i64 %4293 to i32*
  store i32 %4294, i32* %4298
  store %struct.Memory* %loadMem_4786c2, %struct.Memory** %MEMORY
  %loadMem_4786c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 33
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 7
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RDX.i472 = bitcast %union.anon* %4304 to i64*
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 15
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %4307 to i64*
  %4308 = load i64, i64* %RBP.i473
  %4309 = sub i64 %4308, 8
  %4310 = load i64, i64* %PC.i471
  %4311 = add i64 %4310, 4
  store i64 %4311, i64* %PC.i471
  %4312 = inttoptr i64 %4309 to i64*
  %4313 = load i64, i64* %4312
  store i64 %4313, i64* %RDX.i472, align 8
  store %struct.Memory* %loadMem_4786c5, %struct.Memory** %MEMORY
  %loadMem_4786c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 7
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %4319 to i64*
  %4320 = load i64, i64* %RDX.i470
  %4321 = add i64 %4320, 196
  %4322 = load i64, i64* %PC.i469
  %4323 = add i64 %4322, 6
  store i64 %4323, i64* %PC.i469
  %4324 = inttoptr i64 %4321 to i32*
  %4325 = load i32, i32* %4324
  %4326 = zext i32 %4325 to i64
  store i64 %4326, i64* %RDX.i470, align 8
  store %struct.Memory* %loadMem_4786c9, %struct.Memory** %MEMORY
  %loadMem_4786cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 5
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 15
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RBP.i468
  %4337 = sub i64 %4336, 24
  %4338 = load i64, i64* %PC.i466
  %4339 = add i64 %4338, 4
  store i64 %4339, i64* %PC.i466
  %4340 = inttoptr i64 %4337 to i64*
  %4341 = load i64, i64* %4340
  store i64 %4341, i64* %RCX.i467, align 8
  store %struct.Memory* %loadMem_4786cf, %struct.Memory** %MEMORY
  %loadMem1_4786d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 33
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4344 to i64*
  %4345 = load i64, i64* %PC.i465
  %4346 = add i64 %4345, 214253
  %4347 = load i64, i64* %PC.i465
  %4348 = add i64 %4347, 5
  %4349 = load i64, i64* %PC.i465
  %4350 = add i64 %4349, 5
  store i64 %4350, i64* %PC.i465
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4352 = load i64, i64* %4351, align 8
  %4353 = add i64 %4352, -8
  %4354 = inttoptr i64 %4353 to i64*
  store i64 %4348, i64* %4354
  store i64 %4353, i64* %4351, align 8
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4346, i64* %4355, align 8
  store %struct.Memory* %loadMem1_4786d3, %struct.Memory** %MEMORY
  %loadMem2_4786d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4786d3 = load i64, i64* %3
  %call2_4786d3 = call %struct.Memory* @sub_4acbc0.u_v(%struct.State* %0, i64 %loadPC_4786d3, %struct.Memory* %loadMem2_4786d3)
  store %struct.Memory* %call2_4786d3, %struct.Memory** %MEMORY
  %loadMem_4786d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 33
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 11
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RDI.i464 = bitcast %union.anon* %4361 to i64*
  %4362 = load i64, i64* %PC.i463
  %4363 = add i64 %4362, 10
  store i64 %4363, i64* %PC.i463
  store i64 ptrtoint (%G__0x4c2d02_type* @G__0x4c2d02 to i64), i64* %RDI.i464, align 8
  store %struct.Memory* %loadMem_4786d8, %struct.Memory** %MEMORY
  %loadMem_4786e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 33
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 1
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %4369 to i64*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 15
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %4372 to i64*
  %4373 = load i64, i64* %RAX.i461
  %4374 = load i64, i64* %RBP.i462
  %4375 = sub i64 %4374, 28
  %4376 = load i64, i64* %PC.i460
  %4377 = add i64 %4376, 3
  store i64 %4377, i64* %PC.i460
  %4378 = trunc i64 %4373 to i32
  %4379 = inttoptr i64 %4375 to i32*
  %4380 = load i32, i32* %4379
  %4381 = add i32 %4380, %4378
  %4382 = zext i32 %4381 to i64
  store i64 %4382, i64* %RAX.i461, align 8
  %4383 = icmp ult i32 %4381, %4378
  %4384 = icmp ult i32 %4381, %4380
  %4385 = or i1 %4383, %4384
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4386, i8* %4387, align 1
  %4388 = and i32 %4381, 255
  %4389 = call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4392, i8* %4393, align 1
  %4394 = xor i32 %4380, %4378
  %4395 = xor i32 %4394, %4381
  %4396 = lshr i32 %4395, 4
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4398, i8* %4399, align 1
  %4400 = icmp eq i32 %4381, 0
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i32 %4381, 31
  %4404 = trunc i32 %4403 to i8
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4404, i8* %4405, align 1
  %4406 = lshr i32 %4378, 31
  %4407 = lshr i32 %4380, 31
  %4408 = xor i32 %4403, %4406
  %4409 = xor i32 %4403, %4407
  %4410 = add i32 %4408, %4409
  %4411 = icmp eq i32 %4410, 2
  %4412 = zext i1 %4411 to i8
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4412, i8* %4413, align 1
  store %struct.Memory* %loadMem_4786e2, %struct.Memory** %MEMORY
  %loadMem_4786e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 1
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %4419 to i32*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 15
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i459
  %4424 = sub i64 %4423, 28
  %4425 = load i32, i32* %EAX.i458
  %4426 = zext i32 %4425 to i64
  %4427 = load i64, i64* %PC.i457
  %4428 = add i64 %4427, 3
  store i64 %4428, i64* %PC.i457
  %4429 = inttoptr i64 %4424 to i32*
  store i32 %4425, i32* %4429
  store %struct.Memory* %loadMem_4786e5, %struct.Memory** %MEMORY
  %loadMem_4786e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 15
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %RBP.i456
  %4440 = sub i64 %4439, 8
  %4441 = load i64, i64* %PC.i454
  %4442 = add i64 %4441, 4
  store i64 %4442, i64* %PC.i454
  %4443 = inttoptr i64 %4440 to i64*
  %4444 = load i64, i64* %4443
  store i64 %4444, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_4786e8, %struct.Memory** %MEMORY
  %loadMem_4786ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 5
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 9
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %RCX.i452
  %4455 = add i64 %4454, 200
  %4456 = load i64, i64* %PC.i451
  %4457 = add i64 %4456, 6
  store i64 %4457, i64* %PC.i451
  %4458 = inttoptr i64 %4455 to i32*
  %4459 = load i32, i32* %4458
  %4460 = zext i32 %4459 to i64
  store i64 %4460, i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_4786ec, %struct.Memory** %MEMORY
  %loadMem_4786f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 7
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 15
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %RBP.i450
  %4471 = sub i64 %4470, 24
  %4472 = load i64, i64* %PC.i448
  %4473 = add i64 %4472, 4
  store i64 %4473, i64* %PC.i448
  %4474 = inttoptr i64 %4471 to i64*
  %4475 = load i64, i64* %4474
  store i64 %4475, i64* %RDX.i449, align 8
  store %struct.Memory* %loadMem_4786f2, %struct.Memory** %MEMORY
  %loadMem1_4786f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 33
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %PC.i447
  %4480 = add i64 %4479, 213706
  %4481 = load i64, i64* %PC.i447
  %4482 = add i64 %4481, 5
  %4483 = load i64, i64* %PC.i447
  %4484 = add i64 %4483, 5
  store i64 %4484, i64* %PC.i447
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4486 = load i64, i64* %4485, align 8
  %4487 = add i64 %4486, -8
  %4488 = inttoptr i64 %4487 to i64*
  store i64 %4482, i64* %4488
  store i64 %4487, i64* %4485, align 8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4480, i64* %4489, align 8
  store %struct.Memory* %loadMem1_4786f6, %struct.Memory** %MEMORY
  %loadMem2_4786f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4786f6 = load i64, i64* %3
  %call2_4786f6 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_4786f6, %struct.Memory* %loadMem2_4786f6)
  store %struct.Memory* %call2_4786f6, %struct.Memory** %MEMORY
  %loadMem_4786fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 11
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RDI.i446 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %PC.i445
  %4497 = add i64 %4496, 10
  store i64 %4497, i64* %PC.i445
  store i64 ptrtoint (%G__0x4c2d1b_type* @G__0x4c2d1b to i64), i64* %RDI.i446, align 8
  store %struct.Memory* %loadMem_4786fb, %struct.Memory** %MEMORY
  %loadMem_478705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 1
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %4503 to i64*
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 15
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4506 to i64*
  %4507 = load i64, i64* %RAX.i443
  %4508 = load i64, i64* %RBP.i444
  %4509 = sub i64 %4508, 28
  %4510 = load i64, i64* %PC.i442
  %4511 = add i64 %4510, 3
  store i64 %4511, i64* %PC.i442
  %4512 = trunc i64 %4507 to i32
  %4513 = inttoptr i64 %4509 to i32*
  %4514 = load i32, i32* %4513
  %4515 = add i32 %4514, %4512
  %4516 = zext i32 %4515 to i64
  store i64 %4516, i64* %RAX.i443, align 8
  %4517 = icmp ult i32 %4515, %4512
  %4518 = icmp ult i32 %4515, %4514
  %4519 = or i1 %4517, %4518
  %4520 = zext i1 %4519 to i8
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4520, i8* %4521, align 1
  %4522 = and i32 %4515, 255
  %4523 = call i32 @llvm.ctpop.i32(i32 %4522)
  %4524 = trunc i32 %4523 to i8
  %4525 = and i8 %4524, 1
  %4526 = xor i8 %4525, 1
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4526, i8* %4527, align 1
  %4528 = xor i32 %4514, %4512
  %4529 = xor i32 %4528, %4515
  %4530 = lshr i32 %4529, 4
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4532, i8* %4533, align 1
  %4534 = icmp eq i32 %4515, 0
  %4535 = zext i1 %4534 to i8
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4535, i8* %4536, align 1
  %4537 = lshr i32 %4515, 31
  %4538 = trunc i32 %4537 to i8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4538, i8* %4539, align 1
  %4540 = lshr i32 %4512, 31
  %4541 = lshr i32 %4514, 31
  %4542 = xor i32 %4537, %4540
  %4543 = xor i32 %4537, %4541
  %4544 = add i32 %4542, %4543
  %4545 = icmp eq i32 %4544, 2
  %4546 = zext i1 %4545 to i8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4546, i8* %4547, align 1
  store %struct.Memory* %loadMem_478705, %struct.Memory** %MEMORY
  %loadMem_478708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 1
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %4553 to i32*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 15
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %RBP.i441
  %4558 = sub i64 %4557, 28
  %4559 = load i32, i32* %EAX.i440
  %4560 = zext i32 %4559 to i64
  %4561 = load i64, i64* %PC.i439
  %4562 = add i64 %4561, 3
  store i64 %4562, i64* %PC.i439
  %4563 = inttoptr i64 %4558 to i32*
  store i32 %4559, i32* %4563
  store %struct.Memory* %loadMem_478708, %struct.Memory** %MEMORY
  %loadMem_47870b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 33
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4566 to i64*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 5
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 15
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4572 to i64*
  %4573 = load i64, i64* %RBP.i438
  %4574 = sub i64 %4573, 8
  %4575 = load i64, i64* %PC.i436
  %4576 = add i64 %4575, 4
  store i64 %4576, i64* %PC.i436
  %4577 = inttoptr i64 %4574 to i64*
  %4578 = load i64, i64* %4577
  store i64 %4578, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_47870b, %struct.Memory** %MEMORY
  %loadMem_47870f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 33
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4581 to i64*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 5
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %4584 to i64*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 9
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %RSI.i435 = bitcast %union.anon* %4587 to i64*
  %4588 = load i64, i64* %RCX.i434
  %4589 = add i64 %4588, 204
  %4590 = load i64, i64* %PC.i433
  %4591 = add i64 %4590, 6
  store i64 %4591, i64* %PC.i433
  %4592 = inttoptr i64 %4589 to i32*
  %4593 = load i32, i32* %4592
  %4594 = zext i32 %4593 to i64
  store i64 %4594, i64* %RSI.i435, align 8
  store %struct.Memory* %loadMem_47870f, %struct.Memory** %MEMORY
  %loadMem_478715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 7
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 15
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %4603 to i64*
  %4604 = load i64, i64* %RBP.i432
  %4605 = sub i64 %4604, 24
  %4606 = load i64, i64* %PC.i430
  %4607 = add i64 %4606, 4
  store i64 %4607, i64* %PC.i430
  %4608 = inttoptr i64 %4605 to i64*
  %4609 = load i64, i64* %4608
  store i64 %4609, i64* %RDX.i431, align 8
  store %struct.Memory* %loadMem_478715, %struct.Memory** %MEMORY
  %loadMem1_478719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 33
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %PC.i429
  %4614 = add i64 %4613, 213671
  %4615 = load i64, i64* %PC.i429
  %4616 = add i64 %4615, 5
  %4617 = load i64, i64* %PC.i429
  %4618 = add i64 %4617, 5
  store i64 %4618, i64* %PC.i429
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4620 = load i64, i64* %4619, align 8
  %4621 = add i64 %4620, -8
  %4622 = inttoptr i64 %4621 to i64*
  store i64 %4616, i64* %4622
  store i64 %4621, i64* %4619, align 8
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4614, i64* %4623, align 8
  store %struct.Memory* %loadMem1_478719, %struct.Memory** %MEMORY
  %loadMem2_478719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478719 = load i64, i64* %3
  %call2_478719 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_478719, %struct.Memory* %loadMem2_478719)
  store %struct.Memory* %call2_478719, %struct.Memory** %MEMORY
  %loadMem_47871e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 33
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4626 to i64*
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 1
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 15
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4632 to i64*
  %4633 = load i64, i64* %RAX.i427
  %4634 = load i64, i64* %RBP.i428
  %4635 = sub i64 %4634, 28
  %4636 = load i64, i64* %PC.i426
  %4637 = add i64 %4636, 3
  store i64 %4637, i64* %PC.i426
  %4638 = trunc i64 %4633 to i32
  %4639 = inttoptr i64 %4635 to i32*
  %4640 = load i32, i32* %4639
  %4641 = add i32 %4640, %4638
  %4642 = zext i32 %4641 to i64
  store i64 %4642, i64* %RAX.i427, align 8
  %4643 = icmp ult i32 %4641, %4638
  %4644 = icmp ult i32 %4641, %4640
  %4645 = or i1 %4643, %4644
  %4646 = zext i1 %4645 to i8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4646, i8* %4647, align 1
  %4648 = and i32 %4641, 255
  %4649 = call i32 @llvm.ctpop.i32(i32 %4648)
  %4650 = trunc i32 %4649 to i8
  %4651 = and i8 %4650, 1
  %4652 = xor i8 %4651, 1
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4652, i8* %4653, align 1
  %4654 = xor i32 %4640, %4638
  %4655 = xor i32 %4654, %4641
  %4656 = lshr i32 %4655, 4
  %4657 = trunc i32 %4656 to i8
  %4658 = and i8 %4657, 1
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4658, i8* %4659, align 1
  %4660 = icmp eq i32 %4641, 0
  %4661 = zext i1 %4660 to i8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4661, i8* %4662, align 1
  %4663 = lshr i32 %4641, 31
  %4664 = trunc i32 %4663 to i8
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4664, i8* %4665, align 1
  %4666 = lshr i32 %4638, 31
  %4667 = lshr i32 %4640, 31
  %4668 = xor i32 %4663, %4666
  %4669 = xor i32 %4663, %4667
  %4670 = add i32 %4668, %4669
  %4671 = icmp eq i32 %4670, 2
  %4672 = zext i1 %4671 to i8
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4672, i8* %4673, align 1
  store %struct.Memory* %loadMem_47871e, %struct.Memory** %MEMORY
  %loadMem_478721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 1
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %EAX.i424 = bitcast %union.anon* %4679 to i32*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 15
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %4682 to i64*
  %4683 = load i64, i64* %RBP.i425
  %4684 = sub i64 %4683, 28
  %4685 = load i32, i32* %EAX.i424
  %4686 = zext i32 %4685 to i64
  %4687 = load i64, i64* %PC.i423
  %4688 = add i64 %4687, 3
  store i64 %4688, i64* %PC.i423
  %4689 = inttoptr i64 %4684 to i32*
  store i32 %4685, i32* %4689
  store %struct.Memory* %loadMem_478721, %struct.Memory** %MEMORY
  %loadMem1_478724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4692 to i64*
  %4693 = load i64, i64* %PC.i422
  %4694 = add i64 %4693, -4516
  %4695 = load i64, i64* %PC.i422
  %4696 = add i64 %4695, 5
  %4697 = load i64, i64* %PC.i422
  %4698 = add i64 %4697, 5
  store i64 %4698, i64* %PC.i422
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4700 = load i64, i64* %4699, align 8
  %4701 = add i64 %4700, -8
  %4702 = inttoptr i64 %4701 to i64*
  store i64 %4696, i64* %4702
  store i64 %4701, i64* %4699, align 8
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4694, i64* %4703, align 8
  store %struct.Memory* %loadMem1_478724, %struct.Memory** %MEMORY
  %loadMem2_478724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478724 = load i64, i64* %3
  %call2_478724 = call %struct.Memory* @sub_477580.IdentifyProfile(%struct.State* %0, i64 %loadPC_478724, %struct.Memory* %loadMem2_478724)
  store %struct.Memory* %call2_478724, %struct.Memory** %MEMORY
  %loadMem_478729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 33
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 1
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %4709 to i32*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 15
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %4712 to i64*
  %4713 = load i64, i64* %RBP.i421
  %4714 = sub i64 %4713, 44
  %4715 = load i32, i32* %EAX.i420
  %4716 = zext i32 %4715 to i64
  %4717 = load i64, i64* %PC.i419
  %4718 = add i64 %4717, 3
  store i64 %4718, i64* %PC.i419
  %4719 = inttoptr i64 %4714 to i32*
  store i32 %4715, i32* %4719
  store %struct.Memory* %loadMem_478729, %struct.Memory** %MEMORY
  %loadMem_47872c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 33
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 15
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %4725 to i64*
  %4726 = load i64, i64* %RBP.i418
  %4727 = sub i64 %4726, 44
  %4728 = load i64, i64* %PC.i417
  %4729 = add i64 %4728, 4
  store i64 %4729, i64* %PC.i417
  %4730 = inttoptr i64 %4727 to i32*
  %4731 = load i32, i32* %4730
  %4732 = sub i32 %4731, 100
  %4733 = icmp ult i32 %4731, 100
  %4734 = zext i1 %4733 to i8
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4734, i8* %4735, align 1
  %4736 = and i32 %4732, 255
  %4737 = call i32 @llvm.ctpop.i32(i32 %4736)
  %4738 = trunc i32 %4737 to i8
  %4739 = and i8 %4738, 1
  %4740 = xor i8 %4739, 1
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4740, i8* %4741, align 1
  %4742 = xor i32 %4731, 100
  %4743 = xor i32 %4742, %4732
  %4744 = lshr i32 %4743, 4
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4746, i8* %4747, align 1
  %4748 = icmp eq i32 %4732, 0
  %4749 = zext i1 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4749, i8* %4750, align 1
  %4751 = lshr i32 %4732, 31
  %4752 = trunc i32 %4751 to i8
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4752, i8* %4753, align 1
  %4754 = lshr i32 %4731, 31
  %4755 = xor i32 %4751, %4754
  %4756 = add i32 %4755, %4754
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4758, i8* %4759, align 1
  store %struct.Memory* %loadMem_47872c, %struct.Memory** %MEMORY
  %loadMem_478730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 33
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4762 to i64*
  %4763 = load i64, i64* %PC.i416
  %4764 = add i64 %4763, 39
  %4765 = load i64, i64* %PC.i416
  %4766 = add i64 %4765, 6
  %4767 = load i64, i64* %PC.i416
  %4768 = add i64 %4767, 6
  store i64 %4768, i64* %PC.i416
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4770 = load i8, i8* %4769, align 1
  store i8 %4770, i8* %BRANCH_TAKEN, align 1
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4772 = icmp ne i8 %4770, 0
  %4773 = select i1 %4772, i64 %4764, i64 %4766
  store i64 %4773, i64* %4771, align 8
  store %struct.Memory* %loadMem_478730, %struct.Memory** %MEMORY
  %loadBr_478730 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478730 = icmp eq i8 %loadBr_478730, 1
  br i1 %cmpBr_478730, label %block_.L_478757, label %block_478736

block_478736:                                     ; preds = %block_.L_47864d
  %loadMem_478736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 15
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RBP.i415
  %4781 = sub i64 %4780, 44
  %4782 = load i64, i64* %PC.i414
  %4783 = add i64 %4782, 4
  store i64 %4783, i64* %PC.i414
  %4784 = inttoptr i64 %4781 to i32*
  %4785 = load i32, i32* %4784
  %4786 = sub i32 %4785, 110
  %4787 = icmp ult i32 %4785, 110
  %4788 = zext i1 %4787 to i8
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4788, i8* %4789, align 1
  %4790 = and i32 %4786, 255
  %4791 = call i32 @llvm.ctpop.i32(i32 %4790)
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = xor i8 %4793, 1
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4794, i8* %4795, align 1
  %4796 = xor i32 %4785, 110
  %4797 = xor i32 %4796, %4786
  %4798 = lshr i32 %4797, 4
  %4799 = trunc i32 %4798 to i8
  %4800 = and i8 %4799, 1
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4800, i8* %4801, align 1
  %4802 = icmp eq i32 %4786, 0
  %4803 = zext i1 %4802 to i8
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4803, i8* %4804, align 1
  %4805 = lshr i32 %4786, 31
  %4806 = trunc i32 %4805 to i8
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4806, i8* %4807, align 1
  %4808 = lshr i32 %4785, 31
  %4809 = xor i32 %4805, %4808
  %4810 = add i32 %4809, %4808
  %4811 = icmp eq i32 %4810, 2
  %4812 = zext i1 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4812, i8* %4813, align 1
  store %struct.Memory* %loadMem_478736, %struct.Memory** %MEMORY
  %loadMem_47873a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 33
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %PC.i413
  %4818 = add i64 %4817, 29
  %4819 = load i64, i64* %PC.i413
  %4820 = add i64 %4819, 6
  %4821 = load i64, i64* %PC.i413
  %4822 = add i64 %4821, 6
  store i64 %4822, i64* %PC.i413
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4824 = load i8, i8* %4823, align 1
  store i8 %4824, i8* %BRANCH_TAKEN, align 1
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4826 = icmp ne i8 %4824, 0
  %4827 = select i1 %4826, i64 %4818, i64 %4820
  store i64 %4827, i64* %4825, align 8
  store %struct.Memory* %loadMem_47873a, %struct.Memory** %MEMORY
  %loadBr_47873a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47873a = icmp eq i8 %loadBr_47873a, 1
  br i1 %cmpBr_47873a, label %block_.L_478757, label %block_478740

block_478740:                                     ; preds = %block_478736
  %loadMem_478740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 15
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %4833 to i64*
  %4834 = load i64, i64* %RBP.i412
  %4835 = sub i64 %4834, 44
  %4836 = load i64, i64* %PC.i411
  %4837 = add i64 %4836, 4
  store i64 %4837, i64* %PC.i411
  %4838 = inttoptr i64 %4835 to i32*
  %4839 = load i32, i32* %4838
  %4840 = sub i32 %4839, 122
  %4841 = icmp ult i32 %4839, 122
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4842, i8* %4843, align 1
  %4844 = and i32 %4840, 255
  %4845 = call i32 @llvm.ctpop.i32(i32 %4844)
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4848, i8* %4849, align 1
  %4850 = xor i32 %4839, 122
  %4851 = xor i32 %4850, %4840
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4854, i8* %4855, align 1
  %4856 = icmp eq i32 %4840, 0
  %4857 = zext i1 %4856 to i8
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4857, i8* %4858, align 1
  %4859 = lshr i32 %4840, 31
  %4860 = trunc i32 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4860, i8* %4861, align 1
  %4862 = lshr i32 %4839, 31
  %4863 = xor i32 %4859, %4862
  %4864 = add i32 %4863, %4862
  %4865 = icmp eq i32 %4864, 2
  %4866 = zext i1 %4865 to i8
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4866, i8* %4867, align 1
  store %struct.Memory* %loadMem_478740, %struct.Memory** %MEMORY
  %loadMem_478744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 33
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4870 to i64*
  %4871 = load i64, i64* %PC.i410
  %4872 = add i64 %4871, 19
  %4873 = load i64, i64* %PC.i410
  %4874 = add i64 %4873, 6
  %4875 = load i64, i64* %PC.i410
  %4876 = add i64 %4875, 6
  store i64 %4876, i64* %PC.i410
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4878 = load i8, i8* %4877, align 1
  store i8 %4878, i8* %BRANCH_TAKEN, align 1
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4880 = icmp ne i8 %4878, 0
  %4881 = select i1 %4880, i64 %4872, i64 %4874
  store i64 %4881, i64* %4879, align 8
  store %struct.Memory* %loadMem_478744, %struct.Memory** %MEMORY
  %loadBr_478744 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478744 = icmp eq i8 %loadBr_478744, 1
  br i1 %cmpBr_478744, label %block_.L_478757, label %block_47874a

block_47874a:                                     ; preds = %block_478740
  %loadMem_47874a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 33
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 15
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4887 to i64*
  %4888 = load i64, i64* %RBP.i409
  %4889 = sub i64 %4888, 44
  %4890 = load i64, i64* %PC.i408
  %4891 = add i64 %4890, 7
  store i64 %4891, i64* %PC.i408
  %4892 = inttoptr i64 %4889 to i32*
  %4893 = load i32, i32* %4892
  %4894 = sub i32 %4893, 144
  %4895 = icmp ult i32 %4893, 144
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4896, i8* %4897, align 1
  %4898 = and i32 %4894, 255
  %4899 = call i32 @llvm.ctpop.i32(i32 %4898)
  %4900 = trunc i32 %4899 to i8
  %4901 = and i8 %4900, 1
  %4902 = xor i8 %4901, 1
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4902, i8* %4903, align 1
  %4904 = xor i32 %4893, 144
  %4905 = xor i32 %4904, %4894
  %4906 = lshr i32 %4905, 4
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4908, i8* %4909, align 1
  %4910 = icmp eq i32 %4894, 0
  %4911 = zext i1 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4911, i8* %4912, align 1
  %4913 = lshr i32 %4894, 31
  %4914 = trunc i32 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4914, i8* %4915, align 1
  %4916 = lshr i32 %4893, 31
  %4917 = xor i32 %4913, %4916
  %4918 = add i32 %4917, %4916
  %4919 = icmp eq i32 %4918, 2
  %4920 = zext i1 %4919 to i8
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4920, i8* %4921, align 1
  store %struct.Memory* %loadMem_47874a, %struct.Memory** %MEMORY
  %loadMem_478751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %PC.i407
  %4926 = add i64 %4925, 46
  %4927 = load i64, i64* %PC.i407
  %4928 = add i64 %4927, 6
  %4929 = load i64, i64* %PC.i407
  %4930 = add i64 %4929, 6
  store i64 %4930, i64* %PC.i407
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4932 = load i8, i8* %4931, align 1
  %4933 = icmp eq i8 %4932, 0
  %4934 = zext i1 %4933 to i8
  store i8 %4934, i8* %BRANCH_TAKEN, align 1
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4936 = select i1 %4933, i64 %4926, i64 %4928
  store i64 %4936, i64* %4935, align 8
  store %struct.Memory* %loadMem_478751, %struct.Memory** %MEMORY
  %loadBr_478751 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478751 = icmp eq i8 %loadBr_478751, 1
  br i1 %cmpBr_478751, label %block_.L_47877f, label %block_.L_478757

block_.L_478757:                                  ; preds = %block_47874a, %block_478740, %block_478736, %block_.L_47864d
  %loadMem_478757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 33
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 11
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RDI.i406 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %PC.i405
  %4944 = add i64 %4943, 10
  store i64 %4944, i64* %PC.i405
  store i64 ptrtoint (%G__0x4c2d34_type* @G__0x4c2d34 to i64), i64* %RDI.i406, align 8
  store %struct.Memory* %loadMem_478757, %struct.Memory** %MEMORY
  %loadMem_478761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 33
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4947 to i64*
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 1
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 15
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %4953 to i64*
  %4954 = load i64, i64* %RBP.i404
  %4955 = sub i64 %4954, 8
  %4956 = load i64, i64* %PC.i402
  %4957 = add i64 %4956, 4
  store i64 %4957, i64* %PC.i402
  %4958 = inttoptr i64 %4955 to i64*
  %4959 = load i64, i64* %4958
  store i64 %4959, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_478761, %struct.Memory** %MEMORY
  %loadMem_478765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 33
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 1
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 9
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RSI.i401 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %RAX.i400
  %4970 = add i64 %4969, 212
  %4971 = load i64, i64* %PC.i399
  %4972 = add i64 %4971, 6
  store i64 %4972, i64* %PC.i399
  %4973 = inttoptr i64 %4970 to i32*
  %4974 = load i32, i32* %4973
  %4975 = zext i32 %4974 to i64
  store i64 %4975, i64* %RSI.i401, align 8
  store %struct.Memory* %loadMem_478765, %struct.Memory** %MEMORY
  %loadMem_47876b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 33
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 7
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 15
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %4984 to i64*
  %4985 = load i64, i64* %RBP.i398
  %4986 = sub i64 %4985, 24
  %4987 = load i64, i64* %PC.i396
  %4988 = add i64 %4987, 4
  store i64 %4988, i64* %PC.i396
  %4989 = inttoptr i64 %4986 to i64*
  %4990 = load i64, i64* %4989
  store i64 %4990, i64* %RDX.i397, align 8
  store %struct.Memory* %loadMem_47876b, %struct.Memory** %MEMORY
  %loadMem1_47876f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4993 to i64*
  %4994 = load i64, i64* %PC.i395
  %4995 = add i64 %4994, 213585
  %4996 = load i64, i64* %PC.i395
  %4997 = add i64 %4996, 5
  %4998 = load i64, i64* %PC.i395
  %4999 = add i64 %4998, 5
  store i64 %4999, i64* %PC.i395
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5001 = load i64, i64* %5000, align 8
  %5002 = add i64 %5001, -8
  %5003 = inttoptr i64 %5002 to i64*
  store i64 %4997, i64* %5003
  store i64 %5002, i64* %5000, align 8
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4995, i64* %5004, align 8
  store %struct.Memory* %loadMem1_47876f, %struct.Memory** %MEMORY
  %loadMem2_47876f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47876f = load i64, i64* %3
  %call2_47876f = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_47876f, %struct.Memory* %loadMem2_47876f)
  store %struct.Memory* %call2_47876f, %struct.Memory** %MEMORY
  %loadMem_478774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 33
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 1
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 15
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %5013 to i64*
  %5014 = load i64, i64* %RAX.i393
  %5015 = load i64, i64* %RBP.i394
  %5016 = sub i64 %5015, 28
  %5017 = load i64, i64* %PC.i392
  %5018 = add i64 %5017, 3
  store i64 %5018, i64* %PC.i392
  %5019 = trunc i64 %5014 to i32
  %5020 = inttoptr i64 %5016 to i32*
  %5021 = load i32, i32* %5020
  %5022 = add i32 %5021, %5019
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RAX.i393, align 8
  %5024 = icmp ult i32 %5022, %5019
  %5025 = icmp ult i32 %5022, %5021
  %5026 = or i1 %5024, %5025
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5027, i8* %5028, align 1
  %5029 = and i32 %5022, 255
  %5030 = call i32 @llvm.ctpop.i32(i32 %5029)
  %5031 = trunc i32 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = xor i8 %5032, 1
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5033, i8* %5034, align 1
  %5035 = xor i32 %5021, %5019
  %5036 = xor i32 %5035, %5022
  %5037 = lshr i32 %5036, 4
  %5038 = trunc i32 %5037 to i8
  %5039 = and i8 %5038, 1
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5039, i8* %5040, align 1
  %5041 = icmp eq i32 %5022, 0
  %5042 = zext i1 %5041 to i8
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5042, i8* %5043, align 1
  %5044 = lshr i32 %5022, 31
  %5045 = trunc i32 %5044 to i8
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5045, i8* %5046, align 1
  %5047 = lshr i32 %5019, 31
  %5048 = lshr i32 %5021, 31
  %5049 = xor i32 %5044, %5047
  %5050 = xor i32 %5044, %5048
  %5051 = add i32 %5049, %5050
  %5052 = icmp eq i32 %5051, 2
  %5053 = zext i1 %5052 to i8
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5053, i8* %5054, align 1
  store %struct.Memory* %loadMem_478774, %struct.Memory** %MEMORY
  %loadMem_478777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 1
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %5060 to i32*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 15
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %RBP.i391
  %5065 = sub i64 %5064, 28
  %5066 = load i32, i32* %EAX.i390
  %5067 = zext i32 %5066 to i64
  %5068 = load i64, i64* %PC.i389
  %5069 = add i64 %5068, 3
  store i64 %5069, i64* %PC.i389
  %5070 = inttoptr i64 %5065 to i32*
  store i32 %5066, i32* %5070
  store %struct.Memory* %loadMem_478777, %struct.Memory** %MEMORY
  %loadMem_47877a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %5073 to i64*
  %5074 = load i64, i64* %PC.i388
  %5075 = add i64 %5074, 40
  %5076 = load i64, i64* %PC.i388
  %5077 = add i64 %5076, 5
  store i64 %5077, i64* %PC.i388
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5075, i64* %5078, align 8
  store %struct.Memory* %loadMem_47877a, %struct.Memory** %MEMORY
  br label %block_.L_4787a2

block_.L_47877f:                                  ; preds = %block_47874a
  %loadMem_47877f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 33
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5081 to i64*
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 11
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %RDI.i387 = bitcast %union.anon* %5084 to i64*
  %5085 = load i64, i64* %PC.i386
  %5086 = add i64 %5085, 10
  store i64 %5086, i64* %PC.i386
  store i64 ptrtoint (%G__0x4c2d34_type* @G__0x4c2d34 to i64), i64* %RDI.i387, align 8
  store %struct.Memory* %loadMem_47877f, %struct.Memory** %MEMORY
  %loadMem_478789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 1
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 15
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RBP.i385
  %5097 = sub i64 %5096, 8
  %5098 = load i64, i64* %PC.i383
  %5099 = add i64 %5098, 4
  store i64 %5099, i64* %PC.i383
  %5100 = inttoptr i64 %5097 to i64*
  %5101 = load i64, i64* %5100
  store i64 %5101, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_478789, %struct.Memory** %MEMORY
  %loadMem_47878d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 33
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 1
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 9
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RSI.i382 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %RAX.i381
  %5112 = add i64 %5111, 208
  %5113 = load i64, i64* %PC.i380
  %5114 = add i64 %5113, 6
  store i64 %5114, i64* %PC.i380
  %5115 = inttoptr i64 %5112 to i32*
  %5116 = load i32, i32* %5115
  %5117 = zext i32 %5116 to i64
  store i64 %5117, i64* %RSI.i382, align 8
  store %struct.Memory* %loadMem_47878d, %struct.Memory** %MEMORY
  %loadMem_478793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 7
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %5123 to i64*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RBP.i379
  %5128 = sub i64 %5127, 24
  %5129 = load i64, i64* %PC.i377
  %5130 = add i64 %5129, 4
  store i64 %5130, i64* %PC.i377
  %5131 = inttoptr i64 %5128 to i64*
  %5132 = load i64, i64* %5131
  store i64 %5132, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_478793, %struct.Memory** %MEMORY
  %loadMem1_478797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 33
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %PC.i376
  %5137 = add i64 %5136, 213545
  %5138 = load i64, i64* %PC.i376
  %5139 = add i64 %5138, 5
  %5140 = load i64, i64* %PC.i376
  %5141 = add i64 %5140, 5
  store i64 %5141, i64* %PC.i376
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5143 = load i64, i64* %5142, align 8
  %5144 = add i64 %5143, -8
  %5145 = inttoptr i64 %5144 to i64*
  store i64 %5139, i64* %5145
  store i64 %5144, i64* %5142, align 8
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5137, i64* %5146, align 8
  store %struct.Memory* %loadMem1_478797, %struct.Memory** %MEMORY
  %loadMem2_478797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478797 = load i64, i64* %3
  %call2_478797 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_478797, %struct.Memory* %loadMem2_478797)
  store %struct.Memory* %call2_478797, %struct.Memory** %MEMORY
  %loadMem_47879c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 33
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 1
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 15
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %5155 to i64*
  %5156 = load i64, i64* %RAX.i374
  %5157 = load i64, i64* %RBP.i375
  %5158 = sub i64 %5157, 28
  %5159 = load i64, i64* %PC.i373
  %5160 = add i64 %5159, 3
  store i64 %5160, i64* %PC.i373
  %5161 = trunc i64 %5156 to i32
  %5162 = inttoptr i64 %5158 to i32*
  %5163 = load i32, i32* %5162
  %5164 = add i32 %5163, %5161
  %5165 = zext i32 %5164 to i64
  store i64 %5165, i64* %RAX.i374, align 8
  %5166 = icmp ult i32 %5164, %5161
  %5167 = icmp ult i32 %5164, %5163
  %5168 = or i1 %5166, %5167
  %5169 = zext i1 %5168 to i8
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5169, i8* %5170, align 1
  %5171 = and i32 %5164, 255
  %5172 = call i32 @llvm.ctpop.i32(i32 %5171)
  %5173 = trunc i32 %5172 to i8
  %5174 = and i8 %5173, 1
  %5175 = xor i8 %5174, 1
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5175, i8* %5176, align 1
  %5177 = xor i32 %5163, %5161
  %5178 = xor i32 %5177, %5164
  %5179 = lshr i32 %5178, 4
  %5180 = trunc i32 %5179 to i8
  %5181 = and i8 %5180, 1
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5181, i8* %5182, align 1
  %5183 = icmp eq i32 %5164, 0
  %5184 = zext i1 %5183 to i8
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5184, i8* %5185, align 1
  %5186 = lshr i32 %5164, 31
  %5187 = trunc i32 %5186 to i8
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5187, i8* %5188, align 1
  %5189 = lshr i32 %5161, 31
  %5190 = lshr i32 %5163, 31
  %5191 = xor i32 %5186, %5189
  %5192 = xor i32 %5186, %5190
  %5193 = add i32 %5191, %5192
  %5194 = icmp eq i32 %5193, 2
  %5195 = zext i1 %5194 to i8
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5195, i8* %5196, align 1
  store %struct.Memory* %loadMem_47879c, %struct.Memory** %MEMORY
  %loadMem_47879f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 1
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %5202 to i32*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 15
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5205 to i64*
  %5206 = load i64, i64* %RBP.i372
  %5207 = sub i64 %5206, 28
  %5208 = load i32, i32* %EAX.i371
  %5209 = zext i32 %5208 to i64
  %5210 = load i64, i64* %PC.i370
  %5211 = add i64 %5210, 3
  store i64 %5211, i64* %PC.i370
  %5212 = inttoptr i64 %5207 to i32*
  store i32 %5208, i32* %5212
  store %struct.Memory* %loadMem_47879f, %struct.Memory** %MEMORY
  br label %block_.L_4787a2

block_.L_4787a2:                                  ; preds = %block_.L_47877f, %block_.L_478757
  %loadMem_4787a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 33
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5215 to i64*
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 11
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %RDI.i369 = bitcast %union.anon* %5218 to i64*
  %5219 = load i64, i64* %PC.i368
  %5220 = add i64 %5219, 10
  store i64 %5220, i64* %PC.i368
  store i64 ptrtoint (%G__0x4c2d50_type* @G__0x4c2d50 to i64), i64* %RDI.i369, align 8
  store %struct.Memory* %loadMem_4787a2, %struct.Memory** %MEMORY
  %loadMem_4787ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 33
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5223 to i64*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 1
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 15
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %5229 to i64*
  %5230 = load i64, i64* %RBP.i367
  %5231 = sub i64 %5230, 8
  %5232 = load i64, i64* %PC.i365
  %5233 = add i64 %5232, 4
  store i64 %5233, i64* %PC.i365
  %5234 = inttoptr i64 %5231 to i64*
  %5235 = load i64, i64* %5234
  store i64 %5235, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_4787ac, %struct.Memory** %MEMORY
  %loadMem_4787b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 33
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5238 to i64*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 1
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 9
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %5244 to i64*
  %5245 = load i64, i64* %RAX.i363
  %5246 = add i64 %5245, 220
  %5247 = load i64, i64* %PC.i362
  %5248 = add i64 %5247, 6
  store i64 %5248, i64* %PC.i362
  %5249 = inttoptr i64 %5246 to i32*
  %5250 = load i32, i32* %5249
  %5251 = zext i32 %5250 to i64
  store i64 %5251, i64* %RSI.i364, align 8
  store %struct.Memory* %loadMem_4787b0, %struct.Memory** %MEMORY
  %loadMem_4787b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 33
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 7
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 15
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RBP.i361
  %5262 = sub i64 %5261, 24
  %5263 = load i64, i64* %PC.i359
  %5264 = add i64 %5263, 4
  store i64 %5264, i64* %PC.i359
  %5265 = inttoptr i64 %5262 to i64*
  %5266 = load i64, i64* %5265
  store i64 %5266, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_4787b6, %struct.Memory** %MEMORY
  %loadMem1_4787ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5269 to i64*
  %5270 = load i64, i64* %PC.i358
  %5271 = add i64 %5270, 213830
  %5272 = load i64, i64* %PC.i358
  %5273 = add i64 %5272, 5
  %5274 = load i64, i64* %PC.i358
  %5275 = add i64 %5274, 5
  store i64 %5275, i64* %PC.i358
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5277 = load i64, i64* %5276, align 8
  %5278 = add i64 %5277, -8
  %5279 = inttoptr i64 %5278 to i64*
  store i64 %5273, i64* %5279
  store i64 %5278, i64* %5276, align 8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5271, i64* %5280, align 8
  store %struct.Memory* %loadMem1_4787ba, %struct.Memory** %MEMORY
  %loadMem2_4787ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4787ba = load i64, i64* %3
  %call2_4787ba = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_4787ba, %struct.Memory* %loadMem2_4787ba)
  store %struct.Memory* %call2_4787ba, %struct.Memory** %MEMORY
  %loadMem_4787bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 33
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 11
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %RDI.i357 = bitcast %union.anon* %5286 to i64*
  %5287 = load i64, i64* %PC.i356
  %5288 = add i64 %5287, 10
  store i64 %5288, i64* %PC.i356
  store i64 ptrtoint (%G__0x4c2d7c_type* @G__0x4c2d7c to i64), i64* %RDI.i357, align 8
  store %struct.Memory* %loadMem_4787bf, %struct.Memory** %MEMORY
  %loadMem_4787c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 1
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %5294 to i64*
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 15
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5297 to i64*
  %5298 = load i64, i64* %RAX.i354
  %5299 = load i64, i64* %RBP.i355
  %5300 = sub i64 %5299, 28
  %5301 = load i64, i64* %PC.i353
  %5302 = add i64 %5301, 3
  store i64 %5302, i64* %PC.i353
  %5303 = trunc i64 %5298 to i32
  %5304 = inttoptr i64 %5300 to i32*
  %5305 = load i32, i32* %5304
  %5306 = add i32 %5305, %5303
  %5307 = zext i32 %5306 to i64
  store i64 %5307, i64* %RAX.i354, align 8
  %5308 = icmp ult i32 %5306, %5303
  %5309 = icmp ult i32 %5306, %5305
  %5310 = or i1 %5308, %5309
  %5311 = zext i1 %5310 to i8
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5311, i8* %5312, align 1
  %5313 = and i32 %5306, 255
  %5314 = call i32 @llvm.ctpop.i32(i32 %5313)
  %5315 = trunc i32 %5314 to i8
  %5316 = and i8 %5315, 1
  %5317 = xor i8 %5316, 1
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5317, i8* %5318, align 1
  %5319 = xor i32 %5305, %5303
  %5320 = xor i32 %5319, %5306
  %5321 = lshr i32 %5320, 4
  %5322 = trunc i32 %5321 to i8
  %5323 = and i8 %5322, 1
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5323, i8* %5324, align 1
  %5325 = icmp eq i32 %5306, 0
  %5326 = zext i1 %5325 to i8
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5326, i8* %5327, align 1
  %5328 = lshr i32 %5306, 31
  %5329 = trunc i32 %5328 to i8
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5329, i8* %5330, align 1
  %5331 = lshr i32 %5303, 31
  %5332 = lshr i32 %5305, 31
  %5333 = xor i32 %5328, %5331
  %5334 = xor i32 %5328, %5332
  %5335 = add i32 %5333, %5334
  %5336 = icmp eq i32 %5335, 2
  %5337 = zext i1 %5336 to i8
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5337, i8* %5338, align 1
  store %struct.Memory* %loadMem_4787c9, %struct.Memory** %MEMORY
  %loadMem_4787cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 33
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5341 to i64*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 1
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %5344 to i32*
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 15
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %5347 to i64*
  %5348 = load i64, i64* %RBP.i352
  %5349 = sub i64 %5348, 28
  %5350 = load i32, i32* %EAX.i351
  %5351 = zext i32 %5350 to i64
  %5352 = load i64, i64* %PC.i350
  %5353 = add i64 %5352, 3
  store i64 %5353, i64* %PC.i350
  %5354 = inttoptr i64 %5349 to i32*
  store i32 %5350, i32* %5354
  store %struct.Memory* %loadMem_4787cc, %struct.Memory** %MEMORY
  %loadMem_4787cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 7
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %5360 to i64*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 15
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5363 to i64*
  %5364 = load i64, i64* %RBP.i349
  %5365 = sub i64 %5364, 8
  %5366 = load i64, i64* %PC.i347
  %5367 = add i64 %5366, 4
  store i64 %5367, i64* %PC.i347
  %5368 = inttoptr i64 %5365 to i64*
  %5369 = load i64, i64* %5368
  store i64 %5369, i64* %RDX.i348, align 8
  store %struct.Memory* %loadMem_4787cf, %struct.Memory** %MEMORY
  %loadMem_4787d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 33
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5372 to i64*
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 7
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %RDX.i345 = bitcast %union.anon* %5375 to i64*
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 9
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %5378 to i64*
  %5379 = load i64, i64* %RDX.i345
  %5380 = add i64 %5379, 224
  %5381 = load i64, i64* %PC.i344
  %5382 = add i64 %5381, 6
  store i64 %5382, i64* %PC.i344
  %5383 = inttoptr i64 %5380 to i32*
  %5384 = load i32, i32* %5383
  %5385 = zext i32 %5384 to i64
  store i64 %5385, i64* %RSI.i346, align 8
  store %struct.Memory* %loadMem_4787d3, %struct.Memory** %MEMORY
  %loadMem_4787d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 33
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5388 to i64*
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 7
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %5391 to i64*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 15
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %5394 to i64*
  %5395 = load i64, i64* %RBP.i343
  %5396 = sub i64 %5395, 24
  %5397 = load i64, i64* %PC.i341
  %5398 = add i64 %5397, 4
  store i64 %5398, i64* %PC.i341
  %5399 = inttoptr i64 %5396 to i64*
  %5400 = load i64, i64* %5399
  store i64 %5400, i64* %RDX.i342, align 8
  store %struct.Memory* %loadMem_4787d9, %struct.Memory** %MEMORY
  %loadMem1_4787dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 33
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %PC.i340
  %5405 = add i64 %5404, 213795
  %5406 = load i64, i64* %PC.i340
  %5407 = add i64 %5406, 5
  %5408 = load i64, i64* %PC.i340
  %5409 = add i64 %5408, 5
  store i64 %5409, i64* %PC.i340
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5411 = load i64, i64* %5410, align 8
  %5412 = add i64 %5411, -8
  %5413 = inttoptr i64 %5412 to i64*
  store i64 %5407, i64* %5413
  store i64 %5412, i64* %5410, align 8
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5405, i64* %5414, align 8
  store %struct.Memory* %loadMem1_4787dd, %struct.Memory** %MEMORY
  %loadMem2_4787dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4787dd = load i64, i64* %3
  %call2_4787dd = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_4787dd, %struct.Memory* %loadMem2_4787dd)
  store %struct.Memory* %call2_4787dd, %struct.Memory** %MEMORY
  %loadMem_4787e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 11
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RDI.i339 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %PC.i338
  %5422 = add i64 %5421, 10
  store i64 %5422, i64* %PC.i338
  store i64 ptrtoint (%G__0x4c2d9d_type* @G__0x4c2d9d to i64), i64* %RDI.i339, align 8
  store %struct.Memory* %loadMem_4787e2, %struct.Memory** %MEMORY
  %loadMem_4787ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 1
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %5428 to i64*
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 15
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %5431 to i64*
  %5432 = load i64, i64* %RAX.i336
  %5433 = load i64, i64* %RBP.i337
  %5434 = sub i64 %5433, 28
  %5435 = load i64, i64* %PC.i335
  %5436 = add i64 %5435, 3
  store i64 %5436, i64* %PC.i335
  %5437 = trunc i64 %5432 to i32
  %5438 = inttoptr i64 %5434 to i32*
  %5439 = load i32, i32* %5438
  %5440 = add i32 %5439, %5437
  %5441 = zext i32 %5440 to i64
  store i64 %5441, i64* %RAX.i336, align 8
  %5442 = icmp ult i32 %5440, %5437
  %5443 = icmp ult i32 %5440, %5439
  %5444 = or i1 %5442, %5443
  %5445 = zext i1 %5444 to i8
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5445, i8* %5446, align 1
  %5447 = and i32 %5440, 255
  %5448 = call i32 @llvm.ctpop.i32(i32 %5447)
  %5449 = trunc i32 %5448 to i8
  %5450 = and i8 %5449, 1
  %5451 = xor i8 %5450, 1
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5451, i8* %5452, align 1
  %5453 = xor i32 %5439, %5437
  %5454 = xor i32 %5453, %5440
  %5455 = lshr i32 %5454, 4
  %5456 = trunc i32 %5455 to i8
  %5457 = and i8 %5456, 1
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5457, i8* %5458, align 1
  %5459 = icmp eq i32 %5440, 0
  %5460 = zext i1 %5459 to i8
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5460, i8* %5461, align 1
  %5462 = lshr i32 %5440, 31
  %5463 = trunc i32 %5462 to i8
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5463, i8* %5464, align 1
  %5465 = lshr i32 %5437, 31
  %5466 = lshr i32 %5439, 31
  %5467 = xor i32 %5462, %5465
  %5468 = xor i32 %5462, %5466
  %5469 = add i32 %5467, %5468
  %5470 = icmp eq i32 %5469, 2
  %5471 = zext i1 %5470 to i8
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5471, i8* %5472, align 1
  store %struct.Memory* %loadMem_4787ec, %struct.Memory** %MEMORY
  %loadMem_4787ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 33
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5475 to i64*
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 1
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %5478 to i32*
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 15
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %5481 to i64*
  %5482 = load i64, i64* %RBP.i334
  %5483 = sub i64 %5482, 28
  %5484 = load i32, i32* %EAX.i333
  %5485 = zext i32 %5484 to i64
  %5486 = load i64, i64* %PC.i332
  %5487 = add i64 %5486, 3
  store i64 %5487, i64* %PC.i332
  %5488 = inttoptr i64 %5483 to i32*
  store i32 %5484, i32* %5488
  store %struct.Memory* %loadMem_4787ef, %struct.Memory** %MEMORY
  %loadMem_4787f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 33
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5491 to i64*
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 7
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 15
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %5497 to i64*
  %5498 = load i64, i64* %RBP.i331
  %5499 = sub i64 %5498, 8
  %5500 = load i64, i64* %PC.i329
  %5501 = add i64 %5500, 4
  store i64 %5501, i64* %PC.i329
  %5502 = inttoptr i64 %5499 to i64*
  %5503 = load i64, i64* %5502
  store i64 %5503, i64* %RDX.i330, align 8
  store %struct.Memory* %loadMem_4787f2, %struct.Memory** %MEMORY
  %loadMem_4787f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 7
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %5509 to i64*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 9
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %RSI.i328 = bitcast %union.anon* %5512 to i64*
  %5513 = load i64, i64* %RDX.i327
  %5514 = add i64 %5513, 228
  %5515 = load i64, i64* %PC.i326
  %5516 = add i64 %5515, 6
  store i64 %5516, i64* %PC.i326
  %5517 = inttoptr i64 %5514 to i32*
  %5518 = load i32, i32* %5517
  %5519 = zext i32 %5518 to i64
  store i64 %5519, i64* %RSI.i328, align 8
  store %struct.Memory* %loadMem_4787f6, %struct.Memory** %MEMORY
  %loadMem_4787fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 7
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %5525 to i64*
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 15
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5528 to i64*
  %5529 = load i64, i64* %RBP.i325
  %5530 = sub i64 %5529, 24
  %5531 = load i64, i64* %PC.i323
  %5532 = add i64 %5531, 4
  store i64 %5532, i64* %PC.i323
  %5533 = inttoptr i64 %5530 to i64*
  %5534 = load i64, i64* %5533
  store i64 %5534, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_4787fc, %struct.Memory** %MEMORY
  %loadMem1_478800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 33
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5537 to i64*
  %5538 = load i64, i64* %PC.i322
  %5539 = add i64 %5538, 213760
  %5540 = load i64, i64* %PC.i322
  %5541 = add i64 %5540, 5
  %5542 = load i64, i64* %PC.i322
  %5543 = add i64 %5542, 5
  store i64 %5543, i64* %PC.i322
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5545 = load i64, i64* %5544, align 8
  %5546 = add i64 %5545, -8
  %5547 = inttoptr i64 %5546 to i64*
  store i64 %5541, i64* %5547
  store i64 %5546, i64* %5544, align 8
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5539, i64* %5548, align 8
  store %struct.Memory* %loadMem1_478800, %struct.Memory** %MEMORY
  %loadMem2_478800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478800 = load i64, i64* %3
  %call2_478800 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_478800, %struct.Memory* %loadMem2_478800)
  store %struct.Memory* %call2_478800, %struct.Memory** %MEMORY
  %loadMem_478805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 33
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 1
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 15
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %RAX.i320
  %5559 = load i64, i64* %RBP.i321
  %5560 = sub i64 %5559, 28
  %5561 = load i64, i64* %PC.i319
  %5562 = add i64 %5561, 3
  store i64 %5562, i64* %PC.i319
  %5563 = trunc i64 %5558 to i32
  %5564 = inttoptr i64 %5560 to i32*
  %5565 = load i32, i32* %5564
  %5566 = add i32 %5565, %5563
  %5567 = zext i32 %5566 to i64
  store i64 %5567, i64* %RAX.i320, align 8
  %5568 = icmp ult i32 %5566, %5563
  %5569 = icmp ult i32 %5566, %5565
  %5570 = or i1 %5568, %5569
  %5571 = zext i1 %5570 to i8
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5571, i8* %5572, align 1
  %5573 = and i32 %5566, 255
  %5574 = call i32 @llvm.ctpop.i32(i32 %5573)
  %5575 = trunc i32 %5574 to i8
  %5576 = and i8 %5575, 1
  %5577 = xor i8 %5576, 1
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5577, i8* %5578, align 1
  %5579 = xor i32 %5565, %5563
  %5580 = xor i32 %5579, %5566
  %5581 = lshr i32 %5580, 4
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5583, i8* %5584, align 1
  %5585 = icmp eq i32 %5566, 0
  %5586 = zext i1 %5585 to i8
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5586, i8* %5587, align 1
  %5588 = lshr i32 %5566, 31
  %5589 = trunc i32 %5588 to i8
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5589, i8* %5590, align 1
  %5591 = lshr i32 %5563, 31
  %5592 = lshr i32 %5565, 31
  %5593 = xor i32 %5588, %5591
  %5594 = xor i32 %5588, %5592
  %5595 = add i32 %5593, %5594
  %5596 = icmp eq i32 %5595, 2
  %5597 = zext i1 %5596 to i8
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5597, i8* %5598, align 1
  store %struct.Memory* %loadMem_478805, %struct.Memory** %MEMORY
  %loadMem_478808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 33
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5601 to i64*
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 1
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %5604 to i32*
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 15
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %5607 to i64*
  %5608 = load i64, i64* %RBP.i318
  %5609 = sub i64 %5608, 28
  %5610 = load i32, i32* %EAX.i317
  %5611 = zext i32 %5610 to i64
  %5612 = load i64, i64* %PC.i316
  %5613 = add i64 %5612, 3
  store i64 %5613, i64* %PC.i316
  %5614 = inttoptr i64 %5609 to i32*
  store i32 %5610, i32* %5614
  store %struct.Memory* %loadMem_478808, %struct.Memory** %MEMORY
  %loadMem_47880b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 33
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5617 to i64*
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 15
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %RBP.i315
  %5622 = sub i64 %5621, 44
  %5623 = load i64, i64* %PC.i314
  %5624 = add i64 %5623, 4
  store i64 %5624, i64* %PC.i314
  %5625 = inttoptr i64 %5622 to i32*
  %5626 = load i32, i32* %5625
  %5627 = sub i32 %5626, 100
  %5628 = icmp ult i32 %5626, 100
  %5629 = zext i1 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5629, i8* %5630, align 1
  %5631 = and i32 %5627, 255
  %5632 = call i32 @llvm.ctpop.i32(i32 %5631)
  %5633 = trunc i32 %5632 to i8
  %5634 = and i8 %5633, 1
  %5635 = xor i8 %5634, 1
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5635, i8* %5636, align 1
  %5637 = xor i32 %5626, 100
  %5638 = xor i32 %5637, %5627
  %5639 = lshr i32 %5638, 4
  %5640 = trunc i32 %5639 to i8
  %5641 = and i8 %5640, 1
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5641, i8* %5642, align 1
  %5643 = icmp eq i32 %5627, 0
  %5644 = zext i1 %5643 to i8
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5644, i8* %5645, align 1
  %5646 = lshr i32 %5627, 31
  %5647 = trunc i32 %5646 to i8
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5647, i8* %5648, align 1
  %5649 = lshr i32 %5626, 31
  %5650 = xor i32 %5646, %5649
  %5651 = add i32 %5650, %5649
  %5652 = icmp eq i32 %5651, 2
  %5653 = zext i1 %5652 to i8
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5653, i8* %5654, align 1
  store %struct.Memory* %loadMem_47880b, %struct.Memory** %MEMORY
  %loadMem_47880f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %PC.i313
  %5659 = add i64 %5658, 39
  %5660 = load i64, i64* %PC.i313
  %5661 = add i64 %5660, 6
  %5662 = load i64, i64* %PC.i313
  %5663 = add i64 %5662, 6
  store i64 %5663, i64* %PC.i313
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5665 = load i8, i8* %5664, align 1
  store i8 %5665, i8* %BRANCH_TAKEN, align 1
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5667 = icmp ne i8 %5665, 0
  %5668 = select i1 %5667, i64 %5659, i64 %5661
  store i64 %5668, i64* %5666, align 8
  store %struct.Memory* %loadMem_47880f, %struct.Memory** %MEMORY
  %loadBr_47880f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47880f = icmp eq i8 %loadBr_47880f, 1
  br i1 %cmpBr_47880f, label %block_.L_478836, label %block_478815

block_478815:                                     ; preds = %block_.L_4787a2
  %loadMem_478815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 33
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5671 to i64*
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 15
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %5674 to i64*
  %5675 = load i64, i64* %RBP.i312
  %5676 = sub i64 %5675, 44
  %5677 = load i64, i64* %PC.i311
  %5678 = add i64 %5677, 4
  store i64 %5678, i64* %PC.i311
  %5679 = inttoptr i64 %5676 to i32*
  %5680 = load i32, i32* %5679
  %5681 = sub i32 %5680, 110
  %5682 = icmp ult i32 %5680, 110
  %5683 = zext i1 %5682 to i8
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5683, i8* %5684, align 1
  %5685 = and i32 %5681, 255
  %5686 = call i32 @llvm.ctpop.i32(i32 %5685)
  %5687 = trunc i32 %5686 to i8
  %5688 = and i8 %5687, 1
  %5689 = xor i8 %5688, 1
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5689, i8* %5690, align 1
  %5691 = xor i32 %5680, 110
  %5692 = xor i32 %5691, %5681
  %5693 = lshr i32 %5692, 4
  %5694 = trunc i32 %5693 to i8
  %5695 = and i8 %5694, 1
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5695, i8* %5696, align 1
  %5697 = icmp eq i32 %5681, 0
  %5698 = zext i1 %5697 to i8
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5698, i8* %5699, align 1
  %5700 = lshr i32 %5681, 31
  %5701 = trunc i32 %5700 to i8
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5701, i8* %5702, align 1
  %5703 = lshr i32 %5680, 31
  %5704 = xor i32 %5700, %5703
  %5705 = add i32 %5704, %5703
  %5706 = icmp eq i32 %5705, 2
  %5707 = zext i1 %5706 to i8
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5707, i8* %5708, align 1
  store %struct.Memory* %loadMem_478815, %struct.Memory** %MEMORY
  %loadMem_478819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 33
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5711 to i64*
  %5712 = load i64, i64* %PC.i310
  %5713 = add i64 %5712, 29
  %5714 = load i64, i64* %PC.i310
  %5715 = add i64 %5714, 6
  %5716 = load i64, i64* %PC.i310
  %5717 = add i64 %5716, 6
  store i64 %5717, i64* %PC.i310
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5719 = load i8, i8* %5718, align 1
  store i8 %5719, i8* %BRANCH_TAKEN, align 1
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5721 = icmp ne i8 %5719, 0
  %5722 = select i1 %5721, i64 %5713, i64 %5715
  store i64 %5722, i64* %5720, align 8
  store %struct.Memory* %loadMem_478819, %struct.Memory** %MEMORY
  %loadBr_478819 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478819 = icmp eq i8 %loadBr_478819, 1
  br i1 %cmpBr_478819, label %block_.L_478836, label %block_47881f

block_47881f:                                     ; preds = %block_478815
  %loadMem_47881f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 33
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5725 to i64*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 15
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %RBP.i309
  %5730 = sub i64 %5729, 44
  %5731 = load i64, i64* %PC.i308
  %5732 = add i64 %5731, 4
  store i64 %5732, i64* %PC.i308
  %5733 = inttoptr i64 %5730 to i32*
  %5734 = load i32, i32* %5733
  %5735 = sub i32 %5734, 122
  %5736 = icmp ult i32 %5734, 122
  %5737 = zext i1 %5736 to i8
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5737, i8* %5738, align 1
  %5739 = and i32 %5735, 255
  %5740 = call i32 @llvm.ctpop.i32(i32 %5739)
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = xor i8 %5742, 1
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5743, i8* %5744, align 1
  %5745 = xor i32 %5734, 122
  %5746 = xor i32 %5745, %5735
  %5747 = lshr i32 %5746, 4
  %5748 = trunc i32 %5747 to i8
  %5749 = and i8 %5748, 1
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5749, i8* %5750, align 1
  %5751 = icmp eq i32 %5735, 0
  %5752 = zext i1 %5751 to i8
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5752, i8* %5753, align 1
  %5754 = lshr i32 %5735, 31
  %5755 = trunc i32 %5754 to i8
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5755, i8* %5756, align 1
  %5757 = lshr i32 %5734, 31
  %5758 = xor i32 %5754, %5757
  %5759 = add i32 %5758, %5757
  %5760 = icmp eq i32 %5759, 2
  %5761 = zext i1 %5760 to i8
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5761, i8* %5762, align 1
  store %struct.Memory* %loadMem_47881f, %struct.Memory** %MEMORY
  %loadMem_478823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5765 to i64*
  %5766 = load i64, i64* %PC.i307
  %5767 = add i64 %5766, 19
  %5768 = load i64, i64* %PC.i307
  %5769 = add i64 %5768, 6
  %5770 = load i64, i64* %PC.i307
  %5771 = add i64 %5770, 6
  store i64 %5771, i64* %PC.i307
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5773 = load i8, i8* %5772, align 1
  store i8 %5773, i8* %BRANCH_TAKEN, align 1
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5775 = icmp ne i8 %5773, 0
  %5776 = select i1 %5775, i64 %5767, i64 %5769
  store i64 %5776, i64* %5774, align 8
  store %struct.Memory* %loadMem_478823, %struct.Memory** %MEMORY
  %loadBr_478823 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478823 = icmp eq i8 %loadBr_478823, 1
  br i1 %cmpBr_478823, label %block_.L_478836, label %block_478829

block_478829:                                     ; preds = %block_47881f
  %loadMem_478829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 33
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5779 to i64*
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 15
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %5782 to i64*
  %5783 = load i64, i64* %RBP.i306
  %5784 = sub i64 %5783, 44
  %5785 = load i64, i64* %PC.i305
  %5786 = add i64 %5785, 7
  store i64 %5786, i64* %PC.i305
  %5787 = inttoptr i64 %5784 to i32*
  %5788 = load i32, i32* %5787
  %5789 = sub i32 %5788, 144
  %5790 = icmp ult i32 %5788, 144
  %5791 = zext i1 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5791, i8* %5792, align 1
  %5793 = and i32 %5789, 255
  %5794 = call i32 @llvm.ctpop.i32(i32 %5793)
  %5795 = trunc i32 %5794 to i8
  %5796 = and i8 %5795, 1
  %5797 = xor i8 %5796, 1
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5797, i8* %5798, align 1
  %5799 = xor i32 %5788, 144
  %5800 = xor i32 %5799, %5789
  %5801 = lshr i32 %5800, 4
  %5802 = trunc i32 %5801 to i8
  %5803 = and i8 %5802, 1
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5803, i8* %5804, align 1
  %5805 = icmp eq i32 %5789, 0
  %5806 = zext i1 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5806, i8* %5807, align 1
  %5808 = lshr i32 %5789, 31
  %5809 = trunc i32 %5808 to i8
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5809, i8* %5810, align 1
  %5811 = lshr i32 %5788, 31
  %5812 = xor i32 %5808, %5811
  %5813 = add i32 %5812, %5811
  %5814 = icmp eq i32 %5813, 2
  %5815 = zext i1 %5814 to i8
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5815, i8* %5816, align 1
  store %struct.Memory* %loadMem_478829, %struct.Memory** %MEMORY
  %loadMem_478830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 33
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5819 to i64*
  %5820 = load i64, i64* %PC.i304
  %5821 = add i64 %5820, 463
  %5822 = load i64, i64* %PC.i304
  %5823 = add i64 %5822, 6
  %5824 = load i64, i64* %PC.i304
  %5825 = add i64 %5824, 6
  store i64 %5825, i64* %PC.i304
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5827 = load i8, i8* %5826, align 1
  %5828 = icmp eq i8 %5827, 0
  %5829 = zext i1 %5828 to i8
  store i8 %5829, i8* %BRANCH_TAKEN, align 1
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5831 = select i1 %5828, i64 %5821, i64 %5823
  store i64 %5831, i64* %5830, align 8
  store %struct.Memory* %loadMem_478830, %struct.Memory** %MEMORY
  %loadBr_478830 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478830 = icmp eq i8 %loadBr_478830, 1
  br i1 %cmpBr_478830, label %block_.L_4789ff, label %block_.L_478836

block_.L_478836:                                  ; preds = %block_478829, %block_47881f, %block_478815, %block_.L_4787a2
  %loadMem_478836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5834 to i64*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 11
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %5837 to i64*
  %5838 = load i64, i64* %PC.i302
  %5839 = add i64 %5838, 10
  store i64 %5839, i64* %PC.i302
  store i64 ptrtoint (%G__0x4c2dc1_type* @G__0x4c2dc1 to i64), i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_478836, %struct.Memory** %MEMORY
  %loadMem_478840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 33
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 1
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 15
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5848 to i64*
  %5849 = load i64, i64* %RBP.i301
  %5850 = sub i64 %5849, 8
  %5851 = load i64, i64* %PC.i299
  %5852 = add i64 %5851, 4
  store i64 %5852, i64* %PC.i299
  %5853 = inttoptr i64 %5850 to i64*
  %5854 = load i64, i64* %5853
  store i64 %5854, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_478840, %struct.Memory** %MEMORY
  %loadMem_478844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 33
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5857 to i64*
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 1
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %5860 to i64*
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 9
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %RSI.i298 = bitcast %union.anon* %5863 to i64*
  %5864 = load i64, i64* %RAX.i297
  %5865 = add i64 %5864, 16
  %5866 = load i64, i64* %PC.i296
  %5867 = add i64 %5866, 3
  store i64 %5867, i64* %PC.i296
  %5868 = inttoptr i64 %5865 to i32*
  %5869 = load i32, i32* %5868
  %5870 = zext i32 %5869 to i64
  store i64 %5870, i64* %RSI.i298, align 8
  store %struct.Memory* %loadMem_478844, %struct.Memory** %MEMORY
  %loadMem_478847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 7
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RDX.i294 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RBP.i295
  %5881 = sub i64 %5880, 24
  %5882 = load i64, i64* %PC.i293
  %5883 = add i64 %5882, 4
  store i64 %5883, i64* %PC.i293
  %5884 = inttoptr i64 %5881 to i64*
  %5885 = load i64, i64* %5884
  store i64 %5885, i64* %RDX.i294, align 8
  store %struct.Memory* %loadMem_478847, %struct.Memory** %MEMORY
  %loadMem1_47884b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 33
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5888 to i64*
  %5889 = load i64, i64* %PC.i292
  %5890 = add i64 %5889, 213685
  %5891 = load i64, i64* %PC.i292
  %5892 = add i64 %5891, 5
  %5893 = load i64, i64* %PC.i292
  %5894 = add i64 %5893, 5
  store i64 %5894, i64* %PC.i292
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5896 = load i64, i64* %5895, align 8
  %5897 = add i64 %5896, -8
  %5898 = inttoptr i64 %5897 to i64*
  store i64 %5892, i64* %5898
  store i64 %5897, i64* %5895, align 8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5890, i64* %5899, align 8
  store %struct.Memory* %loadMem1_47884b, %struct.Memory** %MEMORY
  %loadMem2_47884b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47884b = load i64, i64* %3
  %call2_47884b = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_47884b, %struct.Memory* %loadMem2_47884b)
  store %struct.Memory* %call2_47884b, %struct.Memory** %MEMORY
  %loadMem_478850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 33
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5902 to i64*
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 11
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %RDI.i291 = bitcast %union.anon* %5905 to i64*
  %5906 = load i64, i64* %PC.i290
  %5907 = add i64 %5906, 10
  store i64 %5907, i64* %PC.i290
  store i64 ptrtoint (%G__0x4c2dde_type* @G__0x4c2dde to i64), i64* %RDI.i291, align 8
  store %struct.Memory* %loadMem_478850, %struct.Memory** %MEMORY
  %loadMem_47885a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 33
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 1
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 15
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %5916 to i64*
  %5917 = load i64, i64* %RAX.i288
  %5918 = load i64, i64* %RBP.i289
  %5919 = sub i64 %5918, 28
  %5920 = load i64, i64* %PC.i287
  %5921 = add i64 %5920, 3
  store i64 %5921, i64* %PC.i287
  %5922 = trunc i64 %5917 to i32
  %5923 = inttoptr i64 %5919 to i32*
  %5924 = load i32, i32* %5923
  %5925 = add i32 %5924, %5922
  %5926 = zext i32 %5925 to i64
  store i64 %5926, i64* %RAX.i288, align 8
  %5927 = icmp ult i32 %5925, %5922
  %5928 = icmp ult i32 %5925, %5924
  %5929 = or i1 %5927, %5928
  %5930 = zext i1 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5930, i8* %5931, align 1
  %5932 = and i32 %5925, 255
  %5933 = call i32 @llvm.ctpop.i32(i32 %5932)
  %5934 = trunc i32 %5933 to i8
  %5935 = and i8 %5934, 1
  %5936 = xor i8 %5935, 1
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5936, i8* %5937, align 1
  %5938 = xor i32 %5924, %5922
  %5939 = xor i32 %5938, %5925
  %5940 = lshr i32 %5939, 4
  %5941 = trunc i32 %5940 to i8
  %5942 = and i8 %5941, 1
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5942, i8* %5943, align 1
  %5944 = icmp eq i32 %5925, 0
  %5945 = zext i1 %5944 to i8
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5945, i8* %5946, align 1
  %5947 = lshr i32 %5925, 31
  %5948 = trunc i32 %5947 to i8
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5948, i8* %5949, align 1
  %5950 = lshr i32 %5922, 31
  %5951 = lshr i32 %5924, 31
  %5952 = xor i32 %5947, %5950
  %5953 = xor i32 %5947, %5951
  %5954 = add i32 %5952, %5953
  %5955 = icmp eq i32 %5954, 2
  %5956 = zext i1 %5955 to i8
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5956, i8* %5957, align 1
  store %struct.Memory* %loadMem_47885a, %struct.Memory** %MEMORY
  %loadMem_47885d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 33
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5960 to i64*
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 1
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %5963 to i32*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 15
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %5966 to i64*
  %5967 = load i64, i64* %RBP.i286
  %5968 = sub i64 %5967, 28
  %5969 = load i32, i32* %EAX.i285
  %5970 = zext i32 %5969 to i64
  %5971 = load i64, i64* %PC.i284
  %5972 = add i64 %5971, 3
  store i64 %5972, i64* %PC.i284
  %5973 = inttoptr i64 %5968 to i32*
  store i32 %5969, i32* %5973
  store %struct.Memory* %loadMem_47885d, %struct.Memory** %MEMORY
  %loadMem_478860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 33
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5976 to i64*
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 7
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %5979 to i64*
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5981 = getelementptr inbounds %struct.GPR, %struct.GPR* %5980, i32 0, i32 15
  %5982 = getelementptr inbounds %struct.Reg, %struct.Reg* %5981, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5982 to i64*
  %5983 = load i64, i64* %RBP.i283
  %5984 = sub i64 %5983, 8
  %5985 = load i64, i64* %PC.i281
  %5986 = add i64 %5985, 4
  store i64 %5986, i64* %PC.i281
  %5987 = inttoptr i64 %5984 to i64*
  %5988 = load i64, i64* %5987
  store i64 %5988, i64* %RDX.i282, align 8
  store %struct.Memory* %loadMem_478860, %struct.Memory** %MEMORY
  %loadMem_478864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 33
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 7
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %5994 to i64*
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 9
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %RSI.i280 = bitcast %union.anon* %5997 to i64*
  %5998 = load i64, i64* %RDX.i279
  %5999 = add i64 %5998, 20
  %6000 = load i64, i64* %PC.i278
  %6001 = add i64 %6000, 3
  store i64 %6001, i64* %PC.i278
  %6002 = inttoptr i64 %5999 to i32*
  %6003 = load i32, i32* %6002
  %6004 = zext i32 %6003 to i64
  store i64 %6004, i64* %RSI.i280, align 8
  store %struct.Memory* %loadMem_478864, %struct.Memory** %MEMORY
  %loadMem_478867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 33
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %6007 to i64*
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 7
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %6010 to i64*
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 15
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %6013 to i64*
  %6014 = load i64, i64* %RBP.i277
  %6015 = sub i64 %6014, 24
  %6016 = load i64, i64* %PC.i275
  %6017 = add i64 %6016, 4
  store i64 %6017, i64* %PC.i275
  %6018 = inttoptr i64 %6015 to i64*
  %6019 = load i64, i64* %6018
  store i64 %6019, i64* %RDX.i276, align 8
  store %struct.Memory* %loadMem_478867, %struct.Memory** %MEMORY
  %loadMem1_47886b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 33
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6022 to i64*
  %6023 = load i64, i64* %PC.i274
  %6024 = add i64 %6023, 213653
  %6025 = load i64, i64* %PC.i274
  %6026 = add i64 %6025, 5
  %6027 = load i64, i64* %PC.i274
  %6028 = add i64 %6027, 5
  store i64 %6028, i64* %PC.i274
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6030 = load i64, i64* %6029, align 8
  %6031 = add i64 %6030, -8
  %6032 = inttoptr i64 %6031 to i64*
  store i64 %6026, i64* %6032
  store i64 %6031, i64* %6029, align 8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6024, i64* %6033, align 8
  store %struct.Memory* %loadMem1_47886b, %struct.Memory** %MEMORY
  %loadMem2_47886b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47886b = load i64, i64* %3
  %call2_47886b = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_47886b, %struct.Memory* %loadMem2_47886b)
  store %struct.Memory* %call2_47886b, %struct.Memory** %MEMORY
  %loadMem_478870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 33
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 1
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 15
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %6042 to i64*
  %6043 = load i64, i64* %RAX.i272
  %6044 = load i64, i64* %RBP.i273
  %6045 = sub i64 %6044, 28
  %6046 = load i64, i64* %PC.i271
  %6047 = add i64 %6046, 3
  store i64 %6047, i64* %PC.i271
  %6048 = trunc i64 %6043 to i32
  %6049 = inttoptr i64 %6045 to i32*
  %6050 = load i32, i32* %6049
  %6051 = add i32 %6050, %6048
  %6052 = zext i32 %6051 to i64
  store i64 %6052, i64* %RAX.i272, align 8
  %6053 = icmp ult i32 %6051, %6048
  %6054 = icmp ult i32 %6051, %6050
  %6055 = or i1 %6053, %6054
  %6056 = zext i1 %6055 to i8
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6056, i8* %6057, align 1
  %6058 = and i32 %6051, 255
  %6059 = call i32 @llvm.ctpop.i32(i32 %6058)
  %6060 = trunc i32 %6059 to i8
  %6061 = and i8 %6060, 1
  %6062 = xor i8 %6061, 1
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6062, i8* %6063, align 1
  %6064 = xor i32 %6050, %6048
  %6065 = xor i32 %6064, %6051
  %6066 = lshr i32 %6065, 4
  %6067 = trunc i32 %6066 to i8
  %6068 = and i8 %6067, 1
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6068, i8* %6069, align 1
  %6070 = icmp eq i32 %6051, 0
  %6071 = zext i1 %6070 to i8
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6071, i8* %6072, align 1
  %6073 = lshr i32 %6051, 31
  %6074 = trunc i32 %6073 to i8
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6074, i8* %6075, align 1
  %6076 = lshr i32 %6048, 31
  %6077 = lshr i32 %6050, 31
  %6078 = xor i32 %6073, %6076
  %6079 = xor i32 %6073, %6077
  %6080 = add i32 %6078, %6079
  %6081 = icmp eq i32 %6080, 2
  %6082 = zext i1 %6081 to i8
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6082, i8* %6083, align 1
  store %struct.Memory* %loadMem_478870, %struct.Memory** %MEMORY
  %loadMem_478873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6086 to i64*
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 1
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %6089 to i32*
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 15
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %6092 to i64*
  %6093 = load i64, i64* %RBP.i270
  %6094 = sub i64 %6093, 28
  %6095 = load i32, i32* %EAX.i269
  %6096 = zext i32 %6095 to i64
  %6097 = load i64, i64* %PC.i268
  %6098 = add i64 %6097, 3
  store i64 %6098, i64* %PC.i268
  %6099 = inttoptr i64 %6094 to i32*
  store i32 %6095, i32* %6099
  store %struct.Memory* %loadMem_478873, %struct.Memory** %MEMORY
  %loadMem_478876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 33
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6102 to i64*
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6104 = getelementptr inbounds %struct.GPR, %struct.GPR* %6103, i32 0, i32 7
  %6105 = getelementptr inbounds %struct.Reg, %struct.Reg* %6104, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %6105 to i64*
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 15
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %6108 to i64*
  %6109 = load i64, i64* %RBP.i267
  %6110 = sub i64 %6109, 8
  %6111 = load i64, i64* %PC.i265
  %6112 = add i64 %6111, 4
  store i64 %6112, i64* %PC.i265
  %6113 = inttoptr i64 %6110 to i64*
  %6114 = load i64, i64* %6113
  store i64 %6114, i64* %RDX.i266, align 8
  store %struct.Memory* %loadMem_478876, %struct.Memory** %MEMORY
  %loadMem_47887a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 33
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6117 to i64*
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 7
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %6120 to i64*
  %6121 = load i64, i64* %RDX.i264
  %6122 = add i64 %6121, 20
  %6123 = load i64, i64* %PC.i263
  %6124 = add i64 %6123, 4
  store i64 %6124, i64* %PC.i263
  %6125 = inttoptr i64 %6122 to i32*
  %6126 = load i32, i32* %6125
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6127, align 1
  %6128 = and i32 %6126, 255
  %6129 = call i32 @llvm.ctpop.i32(i32 %6128)
  %6130 = trunc i32 %6129 to i8
  %6131 = and i8 %6130, 1
  %6132 = xor i8 %6131, 1
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6132, i8* %6133, align 1
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6134, align 1
  %6135 = icmp eq i32 %6126, 0
  %6136 = zext i1 %6135 to i8
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6136, i8* %6137, align 1
  %6138 = lshr i32 %6126, 31
  %6139 = trunc i32 %6138 to i8
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6139, i8* %6140, align 1
  %6141 = lshr i32 %6126, 31
  %6142 = xor i32 %6138, %6141
  %6143 = add i32 %6142, %6141
  %6144 = icmp eq i32 %6143, 2
  %6145 = zext i1 %6144 to i8
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6145, i8* %6146, align 1
  store %struct.Memory* %loadMem_47887a, %struct.Memory** %MEMORY
  %loadMem_47887e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 33
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %6149 to i64*
  %6150 = load i64, i64* %PC.i262
  %6151 = add i64 %6150, 350
  %6152 = load i64, i64* %PC.i262
  %6153 = add i64 %6152, 6
  %6154 = load i64, i64* %PC.i262
  %6155 = add i64 %6154, 6
  store i64 %6155, i64* %PC.i262
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6157 = load i8, i8* %6156, align 1
  store i8 %6157, i8* %BRANCH_TAKEN, align 1
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6159 = icmp ne i8 %6157, 0
  %6160 = select i1 %6159, i64 %6151, i64 %6153
  store i64 %6160, i64* %6158, align 8
  store %struct.Memory* %loadMem_47887e, %struct.Memory** %MEMORY
  %loadBr_47887e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47887e = icmp eq i8 %loadBr_47887e, 1
  br i1 %cmpBr_47887e, label %block_.L_4789dc, label %block_478884

block_478884:                                     ; preds = %block_.L_478836
  %loadMem_478884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 33
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6163 to i64*
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 15
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %6166 to i64*
  %6167 = load i64, i64* %RBP.i261
  %6168 = sub i64 %6167, 36
  %6169 = load i64, i64* %PC.i260
  %6170 = add i64 %6169, 7
  store i64 %6170, i64* %PC.i260
  %6171 = inttoptr i64 %6168 to i32*
  store i32 0, i32* %6171
  store %struct.Memory* %loadMem_478884, %struct.Memory** %MEMORY
  br label %block_.L_47888b

block_.L_47888b:                                  ; preds = %block_.L_4789c9, %block_478884
  %loadMem_47888b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 33
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6174 to i64*
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6176 = getelementptr inbounds %struct.GPR, %struct.GPR* %6175, i32 0, i32 1
  %6177 = getelementptr inbounds %struct.Reg, %struct.Reg* %6176, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %6177 to i64*
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 15
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %6180 to i64*
  %6181 = load i64, i64* %RBP.i259
  %6182 = sub i64 %6181, 36
  %6183 = load i64, i64* %PC.i257
  %6184 = add i64 %6183, 3
  store i64 %6184, i64* %PC.i257
  %6185 = inttoptr i64 %6182 to i32*
  %6186 = load i32, i32* %6185
  %6187 = zext i32 %6186 to i64
  store i64 %6187, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_47888b, %struct.Memory** %MEMORY
  %loadMem_47888e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 33
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 5
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 15
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %RBP.i256
  %6198 = sub i64 %6197, 8
  %6199 = load i64, i64* %PC.i254
  %6200 = add i64 %6199, 4
  store i64 %6200, i64* %PC.i254
  %6201 = inttoptr i64 %6198 to i64*
  %6202 = load i64, i64* %6201
  store i64 %6202, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_47888e, %struct.Memory** %MEMORY
  %loadMem_478892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 33
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6205 to i64*
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 5
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %6208 to i64*
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 7
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %6211 to i64*
  %6212 = load i64, i64* %RCX.i252
  %6213 = add i64 %6212, 16
  %6214 = load i64, i64* %PC.i251
  %6215 = add i64 %6214, 3
  store i64 %6215, i64* %PC.i251
  %6216 = inttoptr i64 %6213 to i32*
  %6217 = load i32, i32* %6216
  %6218 = zext i32 %6217 to i64
  store i64 %6218, i64* %RDX.i253, align 8
  store %struct.Memory* %loadMem_478892, %struct.Memory** %MEMORY
  %loadMem_478895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 7
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %6224 to i64*
  %6225 = load i64, i64* %RDX.i250
  %6226 = load i64, i64* %PC.i249
  %6227 = add i64 %6226, 2
  store i64 %6227, i64* %PC.i249
  %6228 = trunc i64 %6225 to i32
  %6229 = shl i32 %6228, 1
  %6230 = icmp slt i32 %6228, 0
  %6231 = icmp slt i32 %6229, 0
  %6232 = xor i1 %6230, %6231
  %6233 = zext i32 %6229 to i64
  store i64 %6233, i64* %RDX.i250, align 8
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6235 = zext i1 %6230 to i8
  store i8 %6235, i8* %6234, align 1
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6237 = and i32 %6229, 254
  %6238 = call i32 @llvm.ctpop.i32(i32 %6237)
  %6239 = trunc i32 %6238 to i8
  %6240 = and i8 %6239, 1
  %6241 = xor i8 %6240, 1
  store i8 %6241, i8* %6236, align 1
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6242, align 1
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6244 = icmp eq i32 %6229, 0
  %6245 = zext i1 %6244 to i8
  store i8 %6245, i8* %6243, align 1
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6247 = lshr i32 %6229, 31
  %6248 = trunc i32 %6247 to i8
  store i8 %6248, i8* %6246, align 1
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6250 = zext i1 %6232 to i8
  store i8 %6250, i8* %6249, align 1
  store %struct.Memory* %loadMem_478895, %struct.Memory** %MEMORY
  %loadMem_478898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 33
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6253 to i64*
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 7
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %6256 to i64*
  %6257 = load i64, i64* %RDX.i248
  %6258 = load i64, i64* %PC.i247
  %6259 = add i64 %6258, 3
  store i64 %6259, i64* %PC.i247
  %6260 = trunc i64 %6257 to i32
  %6261 = add i32 6, %6260
  %6262 = zext i32 %6261 to i64
  store i64 %6262, i64* %RDX.i248, align 8
  %6263 = icmp ult i32 %6261, %6260
  %6264 = icmp ult i32 %6261, 6
  %6265 = or i1 %6263, %6264
  %6266 = zext i1 %6265 to i8
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6266, i8* %6267, align 1
  %6268 = and i32 %6261, 255
  %6269 = call i32 @llvm.ctpop.i32(i32 %6268)
  %6270 = trunc i32 %6269 to i8
  %6271 = and i8 %6270, 1
  %6272 = xor i8 %6271, 1
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6272, i8* %6273, align 1
  %6274 = xor i64 6, %6257
  %6275 = trunc i64 %6274 to i32
  %6276 = xor i32 %6275, %6261
  %6277 = lshr i32 %6276, 4
  %6278 = trunc i32 %6277 to i8
  %6279 = and i8 %6278, 1
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6279, i8* %6280, align 1
  %6281 = icmp eq i32 %6261, 0
  %6282 = zext i1 %6281 to i8
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6282, i8* %6283, align 1
  %6284 = lshr i32 %6261, 31
  %6285 = trunc i32 %6284 to i8
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6285, i8* %6286, align 1
  %6287 = lshr i32 %6260, 31
  %6288 = xor i32 %6284, %6287
  %6289 = add i32 %6288, %6284
  %6290 = icmp eq i32 %6289, 2
  %6291 = zext i1 %6290 to i8
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6291, i8* %6292, align 1
  store %struct.Memory* %loadMem_478898, %struct.Memory** %MEMORY
  %loadMem_47889b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 33
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6295 to i64*
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 1
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %EAX.i246 = bitcast %union.anon* %6298 to i32*
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 7
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6301 to i32*
  %6302 = load i32, i32* %EAX.i246
  %6303 = zext i32 %6302 to i64
  %6304 = load i32, i32* %EDX.i
  %6305 = zext i32 %6304 to i64
  %6306 = load i64, i64* %PC.i245
  %6307 = add i64 %6306, 2
  store i64 %6307, i64* %PC.i245
  %6308 = sub i32 %6302, %6304
  %6309 = icmp ult i32 %6302, %6304
  %6310 = zext i1 %6309 to i8
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6310, i8* %6311, align 1
  %6312 = and i32 %6308, 255
  %6313 = call i32 @llvm.ctpop.i32(i32 %6312)
  %6314 = trunc i32 %6313 to i8
  %6315 = and i8 %6314, 1
  %6316 = xor i8 %6315, 1
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6316, i8* %6317, align 1
  %6318 = xor i64 %6305, %6303
  %6319 = trunc i64 %6318 to i32
  %6320 = xor i32 %6319, %6308
  %6321 = lshr i32 %6320, 4
  %6322 = trunc i32 %6321 to i8
  %6323 = and i8 %6322, 1
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6323, i8* %6324, align 1
  %6325 = icmp eq i32 %6308, 0
  %6326 = zext i1 %6325 to i8
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6326, i8* %6327, align 1
  %6328 = lshr i32 %6308, 31
  %6329 = trunc i32 %6328 to i8
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6329, i8* %6330, align 1
  %6331 = lshr i32 %6302, 31
  %6332 = lshr i32 %6304, 31
  %6333 = xor i32 %6332, %6331
  %6334 = xor i32 %6328, %6331
  %6335 = add i32 %6334, %6333
  %6336 = icmp eq i32 %6335, 2
  %6337 = zext i1 %6336 to i8
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6337, i8* %6338, align 1
  store %struct.Memory* %loadMem_47889b, %struct.Memory** %MEMORY
  %loadMem_47889d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6340 = getelementptr inbounds %struct.GPR, %struct.GPR* %6339, i32 0, i32 33
  %6341 = getelementptr inbounds %struct.Reg, %struct.Reg* %6340, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6341 to i64*
  %6342 = load i64, i64* %PC.i244
  %6343 = add i64 %6342, 314
  %6344 = load i64, i64* %PC.i244
  %6345 = add i64 %6344, 6
  %6346 = load i64, i64* %PC.i244
  %6347 = add i64 %6346, 6
  store i64 %6347, i64* %PC.i244
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6349 = load i8, i8* %6348, align 1
  %6350 = icmp eq i8 %6349, 0
  %6351 = zext i1 %6350 to i8
  store i8 %6351, i8* %BRANCH_TAKEN, align 1
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6353 = select i1 %6350, i64 %6343, i64 %6345
  store i64 %6353, i64* %6352, align 8
  store %struct.Memory* %loadMem_47889d, %struct.Memory** %MEMORY
  %loadBr_47889d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47889d = icmp eq i8 %loadBr_47889d, 1
  br i1 %cmpBr_47889d, label %block_.L_4789d7, label %block_4788a3

block_4788a3:                                     ; preds = %block_.L_47888b
  %loadMem_4788a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 33
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6356 to i64*
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 11
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %RDI.i243 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %PC.i242
  %6361 = add i64 %6360, 10
  store i64 %6361, i64* %PC.i242
  store i64 ptrtoint (%G__0x4c2e03_type* @G__0x4c2e03 to i64), i64* %RDI.i243, align 8
  store %struct.Memory* %loadMem_4788a3, %struct.Memory** %MEMORY
  %loadMem_4788ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 33
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6364 to i64*
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 1
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 15
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %RBP.i241
  %6372 = sub i64 %6371, 8
  %6373 = load i64, i64* %PC.i239
  %6374 = add i64 %6373, 4
  store i64 %6374, i64* %PC.i239
  %6375 = inttoptr i64 %6372 to i64*
  %6376 = load i64, i64* %6375
  store i64 %6376, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_4788ad, %struct.Memory** %MEMORY
  %loadMem_4788b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 33
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 5
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 15
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %6385 to i64*
  %6386 = load i64, i64* %RBP.i238
  %6387 = sub i64 %6386, 36
  %6388 = load i64, i64* %PC.i236
  %6389 = add i64 %6388, 3
  store i64 %6389, i64* %PC.i236
  %6390 = inttoptr i64 %6387 to i32*
  %6391 = load i32, i32* %6390
  %6392 = zext i32 %6391 to i64
  store i64 %6392, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_4788b1, %struct.Memory** %MEMORY
  %loadMem_4788b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 33
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %6395 to i64*
  %6396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6397 = getelementptr inbounds %struct.GPR, %struct.GPR* %6396, i32 0, i32 5
  %6398 = getelementptr inbounds %struct.Reg, %struct.Reg* %6397, i32 0, i32 0
  %ECX.i234 = bitcast %union.anon* %6398 to i32*
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 7
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %6401 to i64*
  %6402 = load i32, i32* %ECX.i234
  %6403 = zext i32 %6402 to i64
  %6404 = load i64, i64* %PC.i233
  %6405 = add i64 %6404, 2
  store i64 %6405, i64* %PC.i233
  %6406 = and i64 %6403, 4294967295
  store i64 %6406, i64* %RDX.i235, align 8
  store %struct.Memory* %loadMem_4788b4, %struct.Memory** %MEMORY
  %loadMem_4788b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6408 = getelementptr inbounds %struct.GPR, %struct.GPR* %6407, i32 0, i32 33
  %6409 = getelementptr inbounds %struct.Reg, %struct.Reg* %6408, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6409 to i64*
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6411 = getelementptr inbounds %struct.GPR, %struct.GPR* %6410, i32 0, i32 1
  %6412 = getelementptr inbounds %struct.Reg, %struct.Reg* %6411, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %6412 to i64*
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 7
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %6415 to i64*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 9
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %RSI.i232 = bitcast %union.anon* %6418 to i64*
  %6419 = load i64, i64* %RAX.i230
  %6420 = load i64, i64* %RDX.i231
  %6421 = mul i64 %6420, 4
  %6422 = add i64 %6419, 24
  %6423 = add i64 %6422, %6421
  %6424 = load i64, i64* %PC.i229
  %6425 = add i64 %6424, 4
  store i64 %6425, i64* %PC.i229
  %6426 = inttoptr i64 %6423 to i32*
  %6427 = load i32, i32* %6426
  %6428 = zext i32 %6427 to i64
  store i64 %6428, i64* %RSI.i232, align 8
  store %struct.Memory* %loadMem_4788b6, %struct.Memory** %MEMORY
  %loadMem_4788ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 33
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6431 to i64*
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 7
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %6434 to i64*
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6436 = getelementptr inbounds %struct.GPR, %struct.GPR* %6435, i32 0, i32 15
  %6437 = getelementptr inbounds %struct.Reg, %struct.Reg* %6436, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %6437 to i64*
  %6438 = load i64, i64* %RBP.i228
  %6439 = sub i64 %6438, 24
  %6440 = load i64, i64* %PC.i226
  %6441 = add i64 %6440, 4
  store i64 %6441, i64* %PC.i226
  %6442 = inttoptr i64 %6439 to i64*
  %6443 = load i64, i64* %6442
  store i64 %6443, i64* %RDX.i227, align 8
  store %struct.Memory* %loadMem_4788ba, %struct.Memory** %MEMORY
  %loadMem1_4788be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 33
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6446 to i64*
  %6447 = load i64, i64* %PC.i225
  %6448 = add i64 %6447, 213570
  %6449 = load i64, i64* %PC.i225
  %6450 = add i64 %6449, 5
  %6451 = load i64, i64* %PC.i225
  %6452 = add i64 %6451, 5
  store i64 %6452, i64* %PC.i225
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6454 = load i64, i64* %6453, align 8
  %6455 = add i64 %6454, -8
  %6456 = inttoptr i64 %6455 to i64*
  store i64 %6450, i64* %6456
  store i64 %6455, i64* %6453, align 8
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6448, i64* %6457, align 8
  store %struct.Memory* %loadMem1_4788be, %struct.Memory** %MEMORY
  %loadMem2_4788be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4788be = load i64, i64* %3
  %call2_4788be = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_4788be, %struct.Memory* %loadMem2_4788be)
  store %struct.Memory* %call2_4788be, %struct.Memory** %MEMORY
  %loadMem_4788c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 33
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6460 to i64*
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 1
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %6463 to i64*
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 15
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %6466 to i64*
  %6467 = load i64, i64* %RAX.i223
  %6468 = load i64, i64* %RBP.i224
  %6469 = sub i64 %6468, 28
  %6470 = load i64, i64* %PC.i222
  %6471 = add i64 %6470, 3
  store i64 %6471, i64* %PC.i222
  %6472 = trunc i64 %6467 to i32
  %6473 = inttoptr i64 %6469 to i32*
  %6474 = load i32, i32* %6473
  %6475 = add i32 %6474, %6472
  %6476 = zext i32 %6475 to i64
  store i64 %6476, i64* %RAX.i223, align 8
  %6477 = icmp ult i32 %6475, %6472
  %6478 = icmp ult i32 %6475, %6474
  %6479 = or i1 %6477, %6478
  %6480 = zext i1 %6479 to i8
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6480, i8* %6481, align 1
  %6482 = and i32 %6475, 255
  %6483 = call i32 @llvm.ctpop.i32(i32 %6482)
  %6484 = trunc i32 %6483 to i8
  %6485 = and i8 %6484, 1
  %6486 = xor i8 %6485, 1
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6486, i8* %6487, align 1
  %6488 = xor i32 %6474, %6472
  %6489 = xor i32 %6488, %6475
  %6490 = lshr i32 %6489, 4
  %6491 = trunc i32 %6490 to i8
  %6492 = and i8 %6491, 1
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6492, i8* %6493, align 1
  %6494 = icmp eq i32 %6475, 0
  %6495 = zext i1 %6494 to i8
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6495, i8* %6496, align 1
  %6497 = lshr i32 %6475, 31
  %6498 = trunc i32 %6497 to i8
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6498, i8* %6499, align 1
  %6500 = lshr i32 %6472, 31
  %6501 = lshr i32 %6474, 31
  %6502 = xor i32 %6497, %6500
  %6503 = xor i32 %6497, %6501
  %6504 = add i32 %6502, %6503
  %6505 = icmp eq i32 %6504, 2
  %6506 = zext i1 %6505 to i8
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6506, i8* %6507, align 1
  store %struct.Memory* %loadMem_4788c3, %struct.Memory** %MEMORY
  %loadMem_4788c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 33
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6510 to i64*
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 1
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %6513 to i32*
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 15
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %6516 to i64*
  %6517 = load i64, i64* %RBP.i221
  %6518 = sub i64 %6517, 28
  %6519 = load i32, i32* %EAX.i220
  %6520 = zext i32 %6519 to i64
  %6521 = load i64, i64* %PC.i219
  %6522 = add i64 %6521, 3
  store i64 %6522, i64* %PC.i219
  %6523 = inttoptr i64 %6518 to i32*
  store i32 %6519, i32* %6523
  store %struct.Memory* %loadMem_4788c6, %struct.Memory** %MEMORY
  %loadMem_4788c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 7
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %6529 to i64*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 15
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %6532 to i64*
  %6533 = load i64, i64* %RBP.i218
  %6534 = sub i64 %6533, 8
  %6535 = load i64, i64* %PC.i216
  %6536 = add i64 %6535, 4
  store i64 %6536, i64* %PC.i216
  %6537 = inttoptr i64 %6534 to i64*
  %6538 = load i64, i64* %6537
  store i64 %6538, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_4788c9, %struct.Memory** %MEMORY
  %loadMem_4788cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 33
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6541 to i64*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 1
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %6544 to i64*
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6546 = getelementptr inbounds %struct.GPR, %struct.GPR* %6545, i32 0, i32 15
  %6547 = getelementptr inbounds %struct.Reg, %struct.Reg* %6546, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %6547 to i64*
  %6548 = load i64, i64* %RBP.i215
  %6549 = sub i64 %6548, 36
  %6550 = load i64, i64* %PC.i213
  %6551 = add i64 %6550, 3
  store i64 %6551, i64* %PC.i213
  %6552 = inttoptr i64 %6549 to i32*
  %6553 = load i32, i32* %6552
  %6554 = zext i32 %6553 to i64
  store i64 %6554, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_4788cd, %struct.Memory** %MEMORY
  %loadMem_4788d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6556 = getelementptr inbounds %struct.GPR, %struct.GPR* %6555, i32 0, i32 33
  %6557 = getelementptr inbounds %struct.Reg, %struct.Reg* %6556, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6557 to i64*
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 1
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %EAX.i211 = bitcast %union.anon* %6560 to i32*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 11
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %6563 to i64*
  %6564 = load i32, i32* %EAX.i211
  %6565 = zext i32 %6564 to i64
  %6566 = load i64, i64* %PC.i210
  %6567 = add i64 %6566, 2
  store i64 %6567, i64* %PC.i210
  %6568 = and i64 %6565, 4294967295
  store i64 %6568, i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_4788d0, %struct.Memory** %MEMORY
  %loadMem_4788d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 33
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 7
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %6574 to i64*
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 11
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %RDI.i209 = bitcast %union.anon* %6577 to i64*
  %6578 = load i64, i64* %RDX.i208
  %6579 = load i64, i64* %RDI.i209
  %6580 = mul i64 %6579, 4
  %6581 = add i64 %6578, 24
  %6582 = add i64 %6581, %6580
  %6583 = load i64, i64* %PC.i207
  %6584 = add i64 %6583, 5
  store i64 %6584, i64* %PC.i207
  %6585 = inttoptr i64 %6582 to i32*
  %6586 = load i32, i32* %6585
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6587, align 1
  %6588 = and i32 %6586, 255
  %6589 = call i32 @llvm.ctpop.i32(i32 %6588)
  %6590 = trunc i32 %6589 to i8
  %6591 = and i8 %6590, 1
  %6592 = xor i8 %6591, 1
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6592, i8* %6593, align 1
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6594, align 1
  %6595 = icmp eq i32 %6586, 0
  %6596 = zext i1 %6595 to i8
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6596, i8* %6597, align 1
  %6598 = lshr i32 %6586, 31
  %6599 = trunc i32 %6598 to i8
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6599, i8* %6600, align 1
  %6601 = lshr i32 %6586, 31
  %6602 = xor i32 %6598, %6601
  %6603 = add i32 %6602, %6601
  %6604 = icmp eq i32 %6603, 2
  %6605 = zext i1 %6604 to i8
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6605, i8* %6606, align 1
  store %struct.Memory* %loadMem_4788d2, %struct.Memory** %MEMORY
  %loadMem_4788d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 33
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6609 to i64*
  %6610 = load i64, i64* %PC.i206
  %6611 = add i64 %6610, 237
  %6612 = load i64, i64* %PC.i206
  %6613 = add i64 %6612, 6
  %6614 = load i64, i64* %PC.i206
  %6615 = add i64 %6614, 6
  store i64 %6615, i64* %PC.i206
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6617 = load i8, i8* %6616, align 1
  store i8 %6617, i8* %BRANCH_TAKEN, align 1
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6619 = icmp ne i8 %6617, 0
  %6620 = select i1 %6619, i64 %6611, i64 %6613
  store i64 %6620, i64* %6618, align 8
  store %struct.Memory* %loadMem_4788d7, %struct.Memory** %MEMORY
  %loadBr_4788d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4788d7 = icmp eq i8 %loadBr_4788d7, 1
  br i1 %cmpBr_4788d7, label %block_.L_4789c4, label %block_4788dd

block_4788dd:                                     ; preds = %block_4788a3
  %loadMem_4788dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 33
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6623 to i64*
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 15
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %6626 to i64*
  %6627 = load i64, i64* %RBP.i205
  %6628 = sub i64 %6627, 36
  %6629 = load i64, i64* %PC.i204
  %6630 = add i64 %6629, 4
  store i64 %6630, i64* %PC.i204
  %6631 = inttoptr i64 %6628 to i32*
  %6632 = load i32, i32* %6631
  %6633 = sub i32 %6632, 6
  %6634 = icmp ult i32 %6632, 6
  %6635 = zext i1 %6634 to i8
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6635, i8* %6636, align 1
  %6637 = and i32 %6633, 255
  %6638 = call i32 @llvm.ctpop.i32(i32 %6637)
  %6639 = trunc i32 %6638 to i8
  %6640 = and i8 %6639, 1
  %6641 = xor i8 %6640, 1
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6641, i8* %6642, align 1
  %6643 = xor i32 %6632, 6
  %6644 = xor i32 %6643, %6633
  %6645 = lshr i32 %6644, 4
  %6646 = trunc i32 %6645 to i8
  %6647 = and i8 %6646, 1
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6647, i8* %6648, align 1
  %6649 = icmp eq i32 %6633, 0
  %6650 = zext i1 %6649 to i8
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6650, i8* %6651, align 1
  %6652 = lshr i32 %6633, 31
  %6653 = trunc i32 %6652 to i8
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6653, i8* %6654, align 1
  %6655 = lshr i32 %6632, 31
  %6656 = xor i32 %6652, %6655
  %6657 = add i32 %6656, %6655
  %6658 = icmp eq i32 %6657, 2
  %6659 = zext i1 %6658 to i8
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6659, i8* %6660, align 1
  store %struct.Memory* %loadMem_4788dd, %struct.Memory** %MEMORY
  %loadMem_4788e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %PC.i203
  %6665 = add i64 %6664, 109
  %6666 = load i64, i64* %PC.i203
  %6667 = add i64 %6666, 6
  %6668 = load i64, i64* %PC.i203
  %6669 = add i64 %6668, 6
  store i64 %6669, i64* %PC.i203
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6671 = load i8, i8* %6670, align 1
  %6672 = icmp eq i8 %6671, 0
  %6673 = zext i1 %6672 to i8
  store i8 %6673, i8* %BRANCH_TAKEN, align 1
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6675 = select i1 %6672, i64 %6665, i64 %6667
  store i64 %6675, i64* %6674, align 8
  store %struct.Memory* %loadMem_4788e1, %struct.Memory** %MEMORY
  %loadBr_4788e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4788e1 = icmp eq i8 %loadBr_4788e1, 1
  br i1 %cmpBr_4788e1, label %block_.L_47894e, label %block_4788e7

block_4788e7:                                     ; preds = %block_4788dd
  %loadMem_4788e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 33
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6678 to i64*
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6680 = getelementptr inbounds %struct.GPR, %struct.GPR* %6679, i32 0, i32 7
  %6681 = getelementptr inbounds %struct.Reg, %struct.Reg* %6680, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %6681 to i64*
  %6682 = load i64, i64* %PC.i201
  %6683 = add i64 %6682, 5
  store i64 %6683, i64* %PC.i201
  store i64 16, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_4788e7, %struct.Memory** %MEMORY
  %loadMem_4788ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 33
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6686 to i64*
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 1
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %6689 to i64*
  %6690 = load i64, i64* %PC.i199
  %6691 = add i64 %6690, 10
  store i64 %6691, i64* %PC.i199
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_4788ec, %struct.Memory** %MEMORY
  %loadMem_4788f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 33
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %6694 to i64*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 5
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %6697 to i64*
  %6698 = load i64, i64* %PC.i197
  %6699 = add i64 %6698, 10
  store i64 %6699, i64* %PC.i197
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_4788f6, %struct.Memory** %MEMORY
  %loadMem_478900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 9
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RSI.i196 = bitcast %union.anon* %6705 to i64*
  %6706 = load i64, i64* %PC.i195
  %6707 = add i64 %6706, 10
  store i64 %6707, i64* %PC.i195
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI.i196, align 8
  store %struct.Memory* %loadMem_478900, %struct.Memory** %MEMORY
  %loadMem_47890a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 11
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RDI.i193 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 15
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RBP.i194
  %6718 = sub i64 %6717, 36
  %6719 = load i64, i64* %PC.i192
  %6720 = add i64 %6719, 3
  store i64 %6720, i64* %PC.i192
  %6721 = inttoptr i64 %6718 to i32*
  %6722 = load i32, i32* %6721
  %6723 = zext i32 %6722 to i64
  store i64 %6723, i64* %RDI.i193, align 8
  store %struct.Memory* %loadMem_47890a, %struct.Memory** %MEMORY
  %loadMem_47890d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 11
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %EDI.i190 = bitcast %union.anon* %6729 to i32*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 17
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %R8D.i191 = bitcast %union.anon* %6732 to i32*
  %6733 = bitcast i32* %R8D.i191 to i64*
  %6734 = load i32, i32* %EDI.i190
  %6735 = zext i32 %6734 to i64
  %6736 = load i64, i64* %PC.i189
  %6737 = add i64 %6736, 3
  store i64 %6737, i64* %PC.i189
  %6738 = and i64 %6735, 4294967295
  store i64 %6738, i64* %6733, align 8
  store %struct.Memory* %loadMem_47890d, %struct.Memory** %MEMORY
  %loadMem_478910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 17
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %R8.i188 = bitcast %union.anon* %6744 to i64*
  %6745 = load i64, i64* %R8.i188
  %6746 = load i64, i64* %PC.i187
  %6747 = add i64 %6746, 4
  store i64 %6747, i64* %PC.i187
  %6748 = shl i64 %6745, 4
  %6749 = icmp slt i64 %6748, 0
  %6750 = shl i64 %6748, 1
  store i64 %6750, i64* %R8.i188, align 8
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6752 = zext i1 %6749 to i8
  store i8 %6752, i8* %6751, align 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6754 = trunc i64 %6750 to i32
  %6755 = and i32 %6754, 254
  %6756 = call i32 @llvm.ctpop.i32(i32 %6755)
  %6757 = trunc i32 %6756 to i8
  %6758 = and i8 %6757, 1
  %6759 = xor i8 %6758, 1
  store i8 %6759, i8* %6753, align 1
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6760, align 1
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6762 = icmp eq i64 %6750, 0
  %6763 = zext i1 %6762 to i8
  store i8 %6763, i8* %6761, align 1
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6765 = lshr i64 %6750, 63
  %6766 = trunc i64 %6765 to i8
  store i8 %6766, i8* %6764, align 1
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6767, align 1
  store %struct.Memory* %loadMem_478910, %struct.Memory** %MEMORY
  %loadMem_478914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6769 = getelementptr inbounds %struct.GPR, %struct.GPR* %6768, i32 0, i32 33
  %6770 = getelementptr inbounds %struct.Reg, %struct.Reg* %6769, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6770 to i64*
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6772 = getelementptr inbounds %struct.GPR, %struct.GPR* %6771, i32 0, i32 9
  %6773 = getelementptr inbounds %struct.Reg, %struct.Reg* %6772, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %6773 to i64*
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6775 = getelementptr inbounds %struct.GPR, %struct.GPR* %6774, i32 0, i32 17
  %6776 = getelementptr inbounds %struct.Reg, %struct.Reg* %6775, i32 0, i32 0
  %R8.i186 = bitcast %union.anon* %6776 to i64*
  %6777 = load i64, i64* %RSI.i185
  %6778 = load i64, i64* %R8.i186
  %6779 = load i64, i64* %PC.i184
  %6780 = add i64 %6779, 3
  store i64 %6780, i64* %PC.i184
  %6781 = add i64 %6778, %6777
  store i64 %6781, i64* %RSI.i185, align 8
  %6782 = icmp ult i64 %6781, %6777
  %6783 = icmp ult i64 %6781, %6778
  %6784 = or i1 %6782, %6783
  %6785 = zext i1 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6785, i8* %6786, align 1
  %6787 = trunc i64 %6781 to i32
  %6788 = and i32 %6787, 255
  %6789 = call i32 @llvm.ctpop.i32(i32 %6788)
  %6790 = trunc i32 %6789 to i8
  %6791 = and i8 %6790, 1
  %6792 = xor i8 %6791, 1
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6792, i8* %6793, align 1
  %6794 = xor i64 %6778, %6777
  %6795 = xor i64 %6794, %6781
  %6796 = lshr i64 %6795, 4
  %6797 = trunc i64 %6796 to i8
  %6798 = and i8 %6797, 1
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6798, i8* %6799, align 1
  %6800 = icmp eq i64 %6781, 0
  %6801 = zext i1 %6800 to i8
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6801, i8* %6802, align 1
  %6803 = lshr i64 %6781, 63
  %6804 = trunc i64 %6803 to i8
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6804, i8* %6805, align 1
  %6806 = lshr i64 %6777, 63
  %6807 = lshr i64 %6778, 63
  %6808 = xor i64 %6803, %6806
  %6809 = xor i64 %6803, %6807
  %6810 = add i64 %6808, %6809
  %6811 = icmp eq i64 %6810, 2
  %6812 = zext i1 %6811 to i8
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6812, i8* %6813, align 1
  store %struct.Memory* %loadMem_478914, %struct.Memory** %MEMORY
  %loadMem_478917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 33
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6816 to i64*
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 11
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %RDI.i182 = bitcast %union.anon* %6819 to i64*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 15
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %RBP.i183
  %6824 = sub i64 %6823, 36
  %6825 = load i64, i64* %PC.i181
  %6826 = add i64 %6825, 3
  store i64 %6826, i64* %PC.i181
  %6827 = inttoptr i64 %6824 to i32*
  %6828 = load i32, i32* %6827
  %6829 = zext i32 %6828 to i64
  store i64 %6829, i64* %RDI.i182, align 8
  store %struct.Memory* %loadMem_478917, %struct.Memory** %MEMORY
  %loadMem_47891a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 33
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 11
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %EDI.i179 = bitcast %union.anon* %6835 to i32*
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6837 = getelementptr inbounds %struct.GPR, %struct.GPR* %6836, i32 0, i32 17
  %6838 = getelementptr inbounds %struct.Reg, %struct.Reg* %6837, i32 0, i32 0
  %R8D.i180 = bitcast %union.anon* %6838 to i32*
  %6839 = bitcast i32* %R8D.i180 to i64*
  %6840 = load i32, i32* %EDI.i179
  %6841 = zext i32 %6840 to i64
  %6842 = load i64, i64* %PC.i178
  %6843 = add i64 %6842, 3
  store i64 %6843, i64* %PC.i178
  %6844 = and i64 %6841, 4294967295
  store i64 %6844, i64* %6839, align 8
  store %struct.Memory* %loadMem_47891a, %struct.Memory** %MEMORY
  %loadMem_47891d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 33
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6847 to i64*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 17
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %R8.i177 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %R8.i177
  %6852 = load i64, i64* %PC.i176
  %6853 = add i64 %6852, 4
  store i64 %6853, i64* %PC.i176
  %6854 = shl i64 %6851, 4
  %6855 = icmp slt i64 %6854, 0
  %6856 = shl i64 %6854, 1
  store i64 %6856, i64* %R8.i177, align 8
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6858 = zext i1 %6855 to i8
  store i8 %6858, i8* %6857, align 1
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6860 = trunc i64 %6856 to i32
  %6861 = and i32 %6860, 254
  %6862 = call i32 @llvm.ctpop.i32(i32 %6861)
  %6863 = trunc i32 %6862 to i8
  %6864 = and i8 %6863, 1
  %6865 = xor i8 %6864, 1
  store i8 %6865, i8* %6859, align 1
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6866, align 1
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6868 = icmp eq i64 %6856, 0
  %6869 = zext i1 %6868 to i8
  store i8 %6869, i8* %6867, align 1
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6871 = lshr i64 %6856, 63
  %6872 = trunc i64 %6871 to i8
  store i8 %6872, i8* %6870, align 1
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6873, align 1
  store %struct.Memory* %loadMem_47891d, %struct.Memory** %MEMORY
  %loadMem_478921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 33
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6876 to i64*
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 5
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %6879 to i64*
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 17
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %R8.i175 = bitcast %union.anon* %6882 to i64*
  %6883 = load i64, i64* %RCX.i174
  %6884 = load i64, i64* %R8.i175
  %6885 = load i64, i64* %PC.i173
  %6886 = add i64 %6885, 3
  store i64 %6886, i64* %PC.i173
  %6887 = add i64 %6884, %6883
  store i64 %6887, i64* %RCX.i174, align 8
  %6888 = icmp ult i64 %6887, %6883
  %6889 = icmp ult i64 %6887, %6884
  %6890 = or i1 %6888, %6889
  %6891 = zext i1 %6890 to i8
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6891, i8* %6892, align 1
  %6893 = trunc i64 %6887 to i32
  %6894 = and i32 %6893, 255
  %6895 = call i32 @llvm.ctpop.i32(i32 %6894)
  %6896 = trunc i32 %6895 to i8
  %6897 = and i8 %6896, 1
  %6898 = xor i8 %6897, 1
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6898, i8* %6899, align 1
  %6900 = xor i64 %6884, %6883
  %6901 = xor i64 %6900, %6887
  %6902 = lshr i64 %6901, 4
  %6903 = trunc i64 %6902 to i8
  %6904 = and i8 %6903, 1
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6904, i8* %6905, align 1
  %6906 = icmp eq i64 %6887, 0
  %6907 = zext i1 %6906 to i8
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6907, i8* %6908, align 1
  %6909 = lshr i64 %6887, 63
  %6910 = trunc i64 %6909 to i8
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6910, i8* %6911, align 1
  %6912 = lshr i64 %6883, 63
  %6913 = lshr i64 %6884, 63
  %6914 = xor i64 %6909, %6912
  %6915 = xor i64 %6909, %6913
  %6916 = add i64 %6914, %6915
  %6917 = icmp eq i64 %6916, 2
  %6918 = zext i1 %6917 to i8
  %6919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6918, i8* %6919, align 1
  store %struct.Memory* %loadMem_478921, %struct.Memory** %MEMORY
  %loadMem_478924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 33
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6922 to i64*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 11
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 15
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %6928 to i64*
  %6929 = load i64, i64* %RBP.i172
  %6930 = sub i64 %6929, 36
  %6931 = load i64, i64* %PC.i170
  %6932 = add i64 %6931, 3
  store i64 %6932, i64* %PC.i170
  %6933 = inttoptr i64 %6930 to i32*
  %6934 = load i32, i32* %6933
  %6935 = zext i32 %6934 to i64
  store i64 %6935, i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_478924, %struct.Memory** %MEMORY
  %loadMem_478927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 33
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6938 to i64*
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6940 = getelementptr inbounds %struct.GPR, %struct.GPR* %6939, i32 0, i32 11
  %6941 = getelementptr inbounds %struct.Reg, %struct.Reg* %6940, i32 0, i32 0
  %EDI.i168 = bitcast %union.anon* %6941 to i32*
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 17
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %R8D.i169 = bitcast %union.anon* %6944 to i32*
  %6945 = bitcast i32* %R8D.i169 to i64*
  %6946 = load i32, i32* %EDI.i168
  %6947 = zext i32 %6946 to i64
  %6948 = load i64, i64* %PC.i167
  %6949 = add i64 %6948, 3
  store i64 %6949, i64* %PC.i167
  %6950 = and i64 %6947, 4294967295
  store i64 %6950, i64* %6945, align 8
  store %struct.Memory* %loadMem_478927, %struct.Memory** %MEMORY
  %loadMem_47892a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 33
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 17
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %R8.i166 = bitcast %union.anon* %6956 to i64*
  %6957 = load i64, i64* %R8.i166
  %6958 = load i64, i64* %PC.i165
  %6959 = add i64 %6958, 3
  store i64 %6959, i64* %PC.i165
  %6960 = shl i64 %6957, 1
  %6961 = icmp slt i64 %6957, 0
  %6962 = icmp slt i64 %6960, 0
  %6963 = xor i1 %6961, %6962
  store i64 %6960, i64* %R8.i166, align 8
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6965 = zext i1 %6961 to i8
  store i8 %6965, i8* %6964, align 1
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6967 = trunc i64 %6960 to i32
  %6968 = and i32 %6967, 254
  %6969 = call i32 @llvm.ctpop.i32(i32 %6968)
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = xor i8 %6971, 1
  store i8 %6972, i8* %6966, align 1
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6973, align 1
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6975 = icmp eq i64 %6960, 0
  %6976 = zext i1 %6975 to i8
  store i8 %6976, i8* %6974, align 1
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6978 = lshr i64 %6960, 63
  %6979 = trunc i64 %6978 to i8
  store i8 %6979, i8* %6977, align 1
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6981 = zext i1 %6963 to i8
  store i8 %6981, i8* %6980, align 1
  store %struct.Memory* %loadMem_47892a, %struct.Memory** %MEMORY
  %loadMem_47892e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6983 = getelementptr inbounds %struct.GPR, %struct.GPR* %6982, i32 0, i32 33
  %6984 = getelementptr inbounds %struct.Reg, %struct.Reg* %6983, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6984 to i64*
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6986 = getelementptr inbounds %struct.GPR, %struct.GPR* %6985, i32 0, i32 1
  %6987 = getelementptr inbounds %struct.Reg, %struct.Reg* %6986, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %6987 to i64*
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6989 = getelementptr inbounds %struct.GPR, %struct.GPR* %6988, i32 0, i32 17
  %6990 = getelementptr inbounds %struct.Reg, %struct.Reg* %6989, i32 0, i32 0
  %R8.i164 = bitcast %union.anon* %6990 to i64*
  %6991 = load i64, i64* %RAX.i163
  %6992 = load i64, i64* %R8.i164
  %6993 = load i64, i64* %PC.i162
  %6994 = add i64 %6993, 3
  store i64 %6994, i64* %PC.i162
  %6995 = add i64 %6992, %6991
  store i64 %6995, i64* %RAX.i163, align 8
  %6996 = icmp ult i64 %6995, %6991
  %6997 = icmp ult i64 %6995, %6992
  %6998 = or i1 %6996, %6997
  %6999 = zext i1 %6998 to i8
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6999, i8* %7000, align 1
  %7001 = trunc i64 %6995 to i32
  %7002 = and i32 %7001, 255
  %7003 = call i32 @llvm.ctpop.i32(i32 %7002)
  %7004 = trunc i32 %7003 to i8
  %7005 = and i8 %7004, 1
  %7006 = xor i8 %7005, 1
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7006, i8* %7007, align 1
  %7008 = xor i64 %6992, %6991
  %7009 = xor i64 %7008, %6995
  %7010 = lshr i64 %7009, 4
  %7011 = trunc i64 %7010 to i8
  %7012 = and i8 %7011, 1
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7012, i8* %7013, align 1
  %7014 = icmp eq i64 %6995, 0
  %7015 = zext i1 %7014 to i8
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7015, i8* %7016, align 1
  %7017 = lshr i64 %6995, 63
  %7018 = trunc i64 %7017 to i8
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7018, i8* %7019, align 1
  %7020 = lshr i64 %6991, 63
  %7021 = lshr i64 %6992, 63
  %7022 = xor i64 %7017, %7020
  %7023 = xor i64 %7017, %7021
  %7024 = add i64 %7022, %7023
  %7025 = icmp eq i64 %7024, 2
  %7026 = zext i1 %7025 to i8
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7026, i8* %7027, align 1
  store %struct.Memory* %loadMem_47892e, %struct.Memory** %MEMORY
  %loadMem_478931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 33
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %7030 to i64*
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7032 = getelementptr inbounds %struct.GPR, %struct.GPR* %7031, i32 0, i32 15
  %7033 = getelementptr inbounds %struct.Reg, %struct.Reg* %7032, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %7033 to i64*
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7035 = getelementptr inbounds %struct.GPR, %struct.GPR* %7034, i32 0, i32 17
  %7036 = getelementptr inbounds %struct.Reg, %struct.Reg* %7035, i32 0, i32 0
  %R8.i161 = bitcast %union.anon* %7036 to i64*
  %7037 = load i64, i64* %RBP.i160
  %7038 = sub i64 %7037, 24
  %7039 = load i64, i64* %PC.i159
  %7040 = add i64 %7039, 4
  store i64 %7040, i64* %PC.i159
  %7041 = inttoptr i64 %7038 to i64*
  %7042 = load i64, i64* %7041
  store i64 %7042, i64* %R8.i161, align 8
  store %struct.Memory* %loadMem_478931, %struct.Memory** %MEMORY
  %loadMem_478935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7044 = getelementptr inbounds %struct.GPR, %struct.GPR* %7043, i32 0, i32 33
  %7045 = getelementptr inbounds %struct.Reg, %struct.Reg* %7044, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %7045 to i64*
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7047 = getelementptr inbounds %struct.GPR, %struct.GPR* %7046, i32 0, i32 9
  %7048 = getelementptr inbounds %struct.Reg, %struct.Reg* %7047, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %7048 to i64*
  %7049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7050 = getelementptr inbounds %struct.GPR, %struct.GPR* %7049, i32 0, i32 11
  %7051 = getelementptr inbounds %struct.Reg, %struct.Reg* %7050, i32 0, i32 0
  %RDI.i158 = bitcast %union.anon* %7051 to i64*
  %7052 = load i64, i64* %RSI.i157
  %7053 = load i64, i64* %PC.i156
  %7054 = add i64 %7053, 3
  store i64 %7054, i64* %PC.i156
  store i64 %7052, i64* %RDI.i158, align 8
  store %struct.Memory* %loadMem_478935, %struct.Memory** %MEMORY
  %loadMem_478938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 33
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7057 to i64*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 5
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 9
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RSI.i155 = bitcast %union.anon* %7063 to i64*
  %7064 = load i64, i64* %RCX.i154
  %7065 = load i64, i64* %PC.i153
  %7066 = add i64 %7065, 3
  store i64 %7066, i64* %PC.i153
  store i64 %7064, i64* %RSI.i155, align 8
  store %struct.Memory* %loadMem_478938, %struct.Memory** %MEMORY
  %loadMem_47893b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 33
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7069 to i64*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 1
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %7072 to i64*
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 5
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %7075 to i64*
  %7076 = load i64, i64* %RAX.i151
  %7077 = load i64, i64* %PC.i150
  %7078 = add i64 %7077, 3
  store i64 %7078, i64* %PC.i150
  store i64 %7076, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_47893b, %struct.Memory** %MEMORY
  %loadMem1_47893e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 33
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7081 to i64*
  %7082 = load i64, i64* %PC.i149
  %7083 = add i64 %7082, -2846
  %7084 = load i64, i64* %PC.i149
  %7085 = add i64 %7084, 5
  %7086 = load i64, i64* %PC.i149
  %7087 = add i64 %7086, 5
  store i64 %7087, i64* %PC.i149
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7089 = load i64, i64* %7088, align 8
  %7090 = add i64 %7089, -8
  %7091 = inttoptr i64 %7090 to i64*
  store i64 %7085, i64* %7091
  store i64 %7090, i64* %7088, align 8
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7083, i64* %7092, align 8
  store %struct.Memory* %loadMem1_47893e, %struct.Memory** %MEMORY
  %loadMem2_47893e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47893e = load i64, i64* %3
  %call2_47893e = call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* %0, i64 %loadPC_47893e, %struct.Memory* %loadMem2_47893e)
  store %struct.Memory* %call2_47893e, %struct.Memory** %MEMORY
  %loadMem_478943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 33
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7095 to i64*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 1
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %7098 to i64*
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7100 = getelementptr inbounds %struct.GPR, %struct.GPR* %7099, i32 0, i32 15
  %7101 = getelementptr inbounds %struct.Reg, %struct.Reg* %7100, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %7101 to i64*
  %7102 = load i64, i64* %RAX.i147
  %7103 = load i64, i64* %RBP.i148
  %7104 = sub i64 %7103, 28
  %7105 = load i64, i64* %PC.i146
  %7106 = add i64 %7105, 3
  store i64 %7106, i64* %PC.i146
  %7107 = trunc i64 %7102 to i32
  %7108 = inttoptr i64 %7104 to i32*
  %7109 = load i32, i32* %7108
  %7110 = add i32 %7109, %7107
  %7111 = zext i32 %7110 to i64
  store i64 %7111, i64* %RAX.i147, align 8
  %7112 = icmp ult i32 %7110, %7107
  %7113 = icmp ult i32 %7110, %7109
  %7114 = or i1 %7112, %7113
  %7115 = zext i1 %7114 to i8
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7115, i8* %7116, align 1
  %7117 = and i32 %7110, 255
  %7118 = call i32 @llvm.ctpop.i32(i32 %7117)
  %7119 = trunc i32 %7118 to i8
  %7120 = and i8 %7119, 1
  %7121 = xor i8 %7120, 1
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7121, i8* %7122, align 1
  %7123 = xor i32 %7109, %7107
  %7124 = xor i32 %7123, %7110
  %7125 = lshr i32 %7124, 4
  %7126 = trunc i32 %7125 to i8
  %7127 = and i8 %7126, 1
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7127, i8* %7128, align 1
  %7129 = icmp eq i32 %7110, 0
  %7130 = zext i1 %7129 to i8
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7130, i8* %7131, align 1
  %7132 = lshr i32 %7110, 31
  %7133 = trunc i32 %7132 to i8
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7133, i8* %7134, align 1
  %7135 = lshr i32 %7107, 31
  %7136 = lshr i32 %7109, 31
  %7137 = xor i32 %7132, %7135
  %7138 = xor i32 %7132, %7136
  %7139 = add i32 %7137, %7138
  %7140 = icmp eq i32 %7139, 2
  %7141 = zext i1 %7140 to i8
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7141, i8* %7142, align 1
  store %struct.Memory* %loadMem_478943, %struct.Memory** %MEMORY
  %loadMem_478946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7144 = getelementptr inbounds %struct.GPR, %struct.GPR* %7143, i32 0, i32 33
  %7145 = getelementptr inbounds %struct.Reg, %struct.Reg* %7144, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7145 to i64*
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 1
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %7148 to i32*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 15
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %7151 to i64*
  %7152 = load i64, i64* %RBP.i145
  %7153 = sub i64 %7152, 28
  %7154 = load i32, i32* %EAX.i144
  %7155 = zext i32 %7154 to i64
  %7156 = load i64, i64* %PC.i143
  %7157 = add i64 %7156, 3
  store i64 %7157, i64* %PC.i143
  %7158 = inttoptr i64 %7153 to i32*
  store i32 %7154, i32* %7158
  store %struct.Memory* %loadMem_478946, %struct.Memory** %MEMORY
  %loadMem_478949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 33
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7161 to i64*
  %7162 = load i64, i64* %PC.i142
  %7163 = add i64 %7162, 118
  %7164 = load i64, i64* %PC.i142
  %7165 = add i64 %7164, 5
  store i64 %7165, i64* %PC.i142
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7163, i64* %7166, align 8
  store %struct.Memory* %loadMem_478949, %struct.Memory** %MEMORY
  br label %block_.L_4789bf

block_.L_47894e:                                  ; preds = %block_4788dd
  %loadMem_47894e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 7
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %7172 to i64*
  %7173 = load i64, i64* %PC.i140
  %7174 = add i64 %7173, 5
  store i64 %7174, i64* %PC.i140
  store i64 64, i64* %RDX.i141, align 8
  store %struct.Memory* %loadMem_47894e, %struct.Memory** %MEMORY
  %loadMem_478953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 33
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7177 to i64*
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7179 = getelementptr inbounds %struct.GPR, %struct.GPR* %7178, i32 0, i32 1
  %7180 = getelementptr inbounds %struct.Reg, %struct.Reg* %7179, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %7180 to i64*
  %7181 = load i64, i64* %PC.i138
  %7182 = add i64 %7181, 10
  store i64 %7182, i64* %PC.i138
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_478953, %struct.Memory** %MEMORY
  %loadMem_47895d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 5
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %PC.i136
  %7190 = add i64 %7189, 10
  store i64 %7190, i64* %PC.i136
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_47895d, %struct.Memory** %MEMORY
  %loadMem_478967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 33
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7193 to i64*
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7195 = getelementptr inbounds %struct.GPR, %struct.GPR* %7194, i32 0, i32 9
  %7196 = getelementptr inbounds %struct.Reg, %struct.Reg* %7195, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %7196 to i64*
  %7197 = load i64, i64* %PC.i134
  %7198 = add i64 %7197, 10
  store i64 %7198, i64* %PC.i134
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI.i135, align 8
  store %struct.Memory* %loadMem_478967, %struct.Memory** %MEMORY
  %loadMem_478971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 33
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7201 to i64*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 11
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %7204 to i64*
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7206 = getelementptr inbounds %struct.GPR, %struct.GPR* %7205, i32 0, i32 15
  %7207 = getelementptr inbounds %struct.Reg, %struct.Reg* %7206, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %7207 to i64*
  %7208 = load i64, i64* %RBP.i133
  %7209 = sub i64 %7208, 36
  %7210 = load i64, i64* %PC.i131
  %7211 = add i64 %7210, 3
  store i64 %7211, i64* %PC.i131
  %7212 = inttoptr i64 %7209 to i32*
  %7213 = load i32, i32* %7212
  %7214 = zext i32 %7213 to i64
  store i64 %7214, i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_478971, %struct.Memory** %MEMORY
  %loadMem_478974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 11
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %7220 to i64*
  %7221 = load i64, i64* %RDI.i130
  %7222 = load i64, i64* %PC.i129
  %7223 = add i64 %7222, 3
  store i64 %7223, i64* %PC.i129
  %7224 = trunc i64 %7221 to i32
  %7225 = sub i32 %7224, 6
  %7226 = zext i32 %7225 to i64
  store i64 %7226, i64* %RDI.i130, align 8
  %7227 = icmp ult i32 %7224, 6
  %7228 = zext i1 %7227 to i8
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7228, i8* %7229, align 1
  %7230 = and i32 %7225, 255
  %7231 = call i32 @llvm.ctpop.i32(i32 %7230)
  %7232 = trunc i32 %7231 to i8
  %7233 = and i8 %7232, 1
  %7234 = xor i8 %7233, 1
  %7235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7234, i8* %7235, align 1
  %7236 = xor i64 6, %7221
  %7237 = trunc i64 %7236 to i32
  %7238 = xor i32 %7237, %7225
  %7239 = lshr i32 %7238, 4
  %7240 = trunc i32 %7239 to i8
  %7241 = and i8 %7240, 1
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7241, i8* %7242, align 1
  %7243 = icmp eq i32 %7225, 0
  %7244 = zext i1 %7243 to i8
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7244, i8* %7245, align 1
  %7246 = lshr i32 %7225, 31
  %7247 = trunc i32 %7246 to i8
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7247, i8* %7248, align 1
  %7249 = lshr i32 %7224, 31
  %7250 = xor i32 %7246, %7249
  %7251 = add i32 %7250, %7249
  %7252 = icmp eq i32 %7251, 2
  %7253 = zext i1 %7252 to i8
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7253, i8* %7254, align 1
  store %struct.Memory* %loadMem_478974, %struct.Memory** %MEMORY
  %loadMem_478977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7256 = getelementptr inbounds %struct.GPR, %struct.GPR* %7255, i32 0, i32 33
  %7257 = getelementptr inbounds %struct.Reg, %struct.Reg* %7256, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7257 to i64*
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7259 = getelementptr inbounds %struct.GPR, %struct.GPR* %7258, i32 0, i32 11
  %7260 = getelementptr inbounds %struct.Reg, %struct.Reg* %7259, i32 0, i32 0
  %EDI.i127 = bitcast %union.anon* %7260 to i32*
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7262 = getelementptr inbounds %struct.GPR, %struct.GPR* %7261, i32 0, i32 11
  %7263 = getelementptr inbounds %struct.Reg, %struct.Reg* %7262, i32 0, i32 0
  %RDI.i128 = bitcast %union.anon* %7263 to i64*
  %7264 = load i32, i32* %EDI.i127
  %7265 = zext i32 %7264 to i64
  %7266 = load i64, i64* %PC.i126
  %7267 = add i64 %7266, 2
  store i64 %7267, i64* %PC.i126
  %7268 = and i64 %7265, 4294967295
  store i64 %7268, i64* %RDI.i128, align 8
  store %struct.Memory* %loadMem_478977, %struct.Memory** %MEMORY
  %loadMem_478979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 33
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7271 to i64*
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7273 = getelementptr inbounds %struct.GPR, %struct.GPR* %7272, i32 0, i32 11
  %7274 = getelementptr inbounds %struct.Reg, %struct.Reg* %7273, i32 0, i32 0
  %EDI.i124 = bitcast %union.anon* %7274 to i32*
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7276 = getelementptr inbounds %struct.GPR, %struct.GPR* %7275, i32 0, i32 17
  %7277 = getelementptr inbounds %struct.Reg, %struct.Reg* %7276, i32 0, i32 0
  %R8D.i125 = bitcast %union.anon* %7277 to i32*
  %7278 = bitcast i32* %R8D.i125 to i64*
  %7279 = load i32, i32* %EDI.i124
  %7280 = zext i32 %7279 to i64
  %7281 = load i64, i64* %PC.i123
  %7282 = add i64 %7281, 3
  store i64 %7282, i64* %PC.i123
  %7283 = and i64 %7280, 4294967295
  store i64 %7283, i64* %7278, align 8
  store %struct.Memory* %loadMem_478979, %struct.Memory** %MEMORY
  %loadMem_47897c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 33
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7286 to i64*
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7288 = getelementptr inbounds %struct.GPR, %struct.GPR* %7287, i32 0, i32 17
  %7289 = getelementptr inbounds %struct.Reg, %struct.Reg* %7288, i32 0, i32 0
  %R8.i122 = bitcast %union.anon* %7289 to i64*
  %7290 = load i64, i64* %R8.i122
  %7291 = load i64, i64* %PC.i121
  %7292 = add i64 %7291, 4
  store i64 %7292, i64* %PC.i121
  %7293 = shl i64 %7290, 6
  %7294 = icmp slt i64 %7293, 0
  %7295 = shl i64 %7293, 1
  store i64 %7295, i64* %R8.i122, align 8
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7297 = zext i1 %7294 to i8
  store i8 %7297, i8* %7296, align 1
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7299 = trunc i64 %7295 to i32
  %7300 = and i32 %7299, 254
  %7301 = call i32 @llvm.ctpop.i32(i32 %7300)
  %7302 = trunc i32 %7301 to i8
  %7303 = and i8 %7302, 1
  %7304 = xor i8 %7303, 1
  store i8 %7304, i8* %7298, align 1
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7305, align 1
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7307 = icmp eq i64 %7295, 0
  %7308 = zext i1 %7307 to i8
  store i8 %7308, i8* %7306, align 1
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7310 = lshr i64 %7295, 63
  %7311 = trunc i64 %7310 to i8
  store i8 %7311, i8* %7309, align 1
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7312, align 1
  store %struct.Memory* %loadMem_47897c, %struct.Memory** %MEMORY
  %loadMem_478980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7314 = getelementptr inbounds %struct.GPR, %struct.GPR* %7313, i32 0, i32 33
  %7315 = getelementptr inbounds %struct.Reg, %struct.Reg* %7314, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7315 to i64*
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7317 = getelementptr inbounds %struct.GPR, %struct.GPR* %7316, i32 0, i32 9
  %7318 = getelementptr inbounds %struct.Reg, %struct.Reg* %7317, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %7318 to i64*
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7320 = getelementptr inbounds %struct.GPR, %struct.GPR* %7319, i32 0, i32 17
  %7321 = getelementptr inbounds %struct.Reg, %struct.Reg* %7320, i32 0, i32 0
  %R8.i120 = bitcast %union.anon* %7321 to i64*
  %7322 = load i64, i64* %RSI.i119
  %7323 = load i64, i64* %R8.i120
  %7324 = load i64, i64* %PC.i118
  %7325 = add i64 %7324, 3
  store i64 %7325, i64* %PC.i118
  %7326 = add i64 %7323, %7322
  store i64 %7326, i64* %RSI.i119, align 8
  %7327 = icmp ult i64 %7326, %7322
  %7328 = icmp ult i64 %7326, %7323
  %7329 = or i1 %7327, %7328
  %7330 = zext i1 %7329 to i8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7330, i8* %7331, align 1
  %7332 = trunc i64 %7326 to i32
  %7333 = and i32 %7332, 255
  %7334 = call i32 @llvm.ctpop.i32(i32 %7333)
  %7335 = trunc i32 %7334 to i8
  %7336 = and i8 %7335, 1
  %7337 = xor i8 %7336, 1
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7337, i8* %7338, align 1
  %7339 = xor i64 %7323, %7322
  %7340 = xor i64 %7339, %7326
  %7341 = lshr i64 %7340, 4
  %7342 = trunc i64 %7341 to i8
  %7343 = and i8 %7342, 1
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7343, i8* %7344, align 1
  %7345 = icmp eq i64 %7326, 0
  %7346 = zext i1 %7345 to i8
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7346, i8* %7347, align 1
  %7348 = lshr i64 %7326, 63
  %7349 = trunc i64 %7348 to i8
  %7350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7349, i8* %7350, align 1
  %7351 = lshr i64 %7322, 63
  %7352 = lshr i64 %7323, 63
  %7353 = xor i64 %7348, %7351
  %7354 = xor i64 %7348, %7352
  %7355 = add i64 %7353, %7354
  %7356 = icmp eq i64 %7355, 2
  %7357 = zext i1 %7356 to i8
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7357, i8* %7358, align 1
  store %struct.Memory* %loadMem_478980, %struct.Memory** %MEMORY
  %loadMem_478983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7360 = getelementptr inbounds %struct.GPR, %struct.GPR* %7359, i32 0, i32 33
  %7361 = getelementptr inbounds %struct.Reg, %struct.Reg* %7360, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %7361 to i64*
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7363 = getelementptr inbounds %struct.GPR, %struct.GPR* %7362, i32 0, i32 11
  %7364 = getelementptr inbounds %struct.Reg, %struct.Reg* %7363, i32 0, i32 0
  %RDI.i116 = bitcast %union.anon* %7364 to i64*
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7366 = getelementptr inbounds %struct.GPR, %struct.GPR* %7365, i32 0, i32 15
  %7367 = getelementptr inbounds %struct.Reg, %struct.Reg* %7366, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %7367 to i64*
  %7368 = load i64, i64* %RBP.i117
  %7369 = sub i64 %7368, 36
  %7370 = load i64, i64* %PC.i115
  %7371 = add i64 %7370, 3
  store i64 %7371, i64* %PC.i115
  %7372 = inttoptr i64 %7369 to i32*
  %7373 = load i32, i32* %7372
  %7374 = zext i32 %7373 to i64
  store i64 %7374, i64* %RDI.i116, align 8
  store %struct.Memory* %loadMem_478983, %struct.Memory** %MEMORY
  %loadMem_478986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7376 = getelementptr inbounds %struct.GPR, %struct.GPR* %7375, i32 0, i32 33
  %7377 = getelementptr inbounds %struct.Reg, %struct.Reg* %7376, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7377 to i64*
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7379 = getelementptr inbounds %struct.GPR, %struct.GPR* %7378, i32 0, i32 11
  %7380 = getelementptr inbounds %struct.Reg, %struct.Reg* %7379, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %7380 to i64*
  %7381 = load i64, i64* %RDI.i114
  %7382 = load i64, i64* %PC.i113
  %7383 = add i64 %7382, 3
  store i64 %7383, i64* %PC.i113
  %7384 = trunc i64 %7381 to i32
  %7385 = sub i32 %7384, 6
  %7386 = zext i32 %7385 to i64
  store i64 %7386, i64* %RDI.i114, align 8
  %7387 = icmp ult i32 %7384, 6
  %7388 = zext i1 %7387 to i8
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7388, i8* %7389, align 1
  %7390 = and i32 %7385, 255
  %7391 = call i32 @llvm.ctpop.i32(i32 %7390)
  %7392 = trunc i32 %7391 to i8
  %7393 = and i8 %7392, 1
  %7394 = xor i8 %7393, 1
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7394, i8* %7395, align 1
  %7396 = xor i64 6, %7381
  %7397 = trunc i64 %7396 to i32
  %7398 = xor i32 %7397, %7385
  %7399 = lshr i32 %7398, 4
  %7400 = trunc i32 %7399 to i8
  %7401 = and i8 %7400, 1
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7401, i8* %7402, align 1
  %7403 = icmp eq i32 %7385, 0
  %7404 = zext i1 %7403 to i8
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7404, i8* %7405, align 1
  %7406 = lshr i32 %7385, 31
  %7407 = trunc i32 %7406 to i8
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7407, i8* %7408, align 1
  %7409 = lshr i32 %7384, 31
  %7410 = xor i32 %7406, %7409
  %7411 = add i32 %7410, %7409
  %7412 = icmp eq i32 %7411, 2
  %7413 = zext i1 %7412 to i8
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7413, i8* %7414, align 1
  store %struct.Memory* %loadMem_478986, %struct.Memory** %MEMORY
  %loadMem_478989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 33
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7417 to i64*
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 11
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %EDI.i111 = bitcast %union.anon* %7420 to i32*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 11
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RDI.i112 = bitcast %union.anon* %7423 to i64*
  %7424 = load i32, i32* %EDI.i111
  %7425 = zext i32 %7424 to i64
  %7426 = load i64, i64* %PC.i110
  %7427 = add i64 %7426, 2
  store i64 %7427, i64* %PC.i110
  %7428 = and i64 %7425, 4294967295
  store i64 %7428, i64* %RDI.i112, align 8
  store %struct.Memory* %loadMem_478989, %struct.Memory** %MEMORY
  %loadMem_47898b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 33
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7431 to i64*
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 11
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %EDI.i108 = bitcast %union.anon* %7434 to i32*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 17
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %R8D.i109 = bitcast %union.anon* %7437 to i32*
  %7438 = bitcast i32* %R8D.i109 to i64*
  %7439 = load i32, i32* %EDI.i108
  %7440 = zext i32 %7439 to i64
  %7441 = load i64, i64* %PC.i107
  %7442 = add i64 %7441, 3
  store i64 %7442, i64* %PC.i107
  %7443 = and i64 %7440, 4294967295
  store i64 %7443, i64* %7438, align 8
  store %struct.Memory* %loadMem_47898b, %struct.Memory** %MEMORY
  %loadMem_47898e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 33
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7446 to i64*
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 17
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %R8.i106 = bitcast %union.anon* %7449 to i64*
  %7450 = load i64, i64* %R8.i106
  %7451 = load i64, i64* %PC.i105
  %7452 = add i64 %7451, 4
  store i64 %7452, i64* %PC.i105
  %7453 = shl i64 %7450, 6
  %7454 = icmp slt i64 %7453, 0
  %7455 = shl i64 %7453, 1
  store i64 %7455, i64* %R8.i106, align 8
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7457 = zext i1 %7454 to i8
  store i8 %7457, i8* %7456, align 1
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7459 = trunc i64 %7455 to i32
  %7460 = and i32 %7459, 254
  %7461 = call i32 @llvm.ctpop.i32(i32 %7460)
  %7462 = trunc i32 %7461 to i8
  %7463 = and i8 %7462, 1
  %7464 = xor i8 %7463, 1
  store i8 %7464, i8* %7458, align 1
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7465, align 1
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7467 = icmp eq i64 %7455, 0
  %7468 = zext i1 %7467 to i8
  store i8 %7468, i8* %7466, align 1
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7470 = lshr i64 %7455, 63
  %7471 = trunc i64 %7470 to i8
  store i8 %7471, i8* %7469, align 1
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7472, align 1
  store %struct.Memory* %loadMem_47898e, %struct.Memory** %MEMORY
  %loadMem_478992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7474 = getelementptr inbounds %struct.GPR, %struct.GPR* %7473, i32 0, i32 33
  %7475 = getelementptr inbounds %struct.Reg, %struct.Reg* %7474, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7475 to i64*
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7477 = getelementptr inbounds %struct.GPR, %struct.GPR* %7476, i32 0, i32 5
  %7478 = getelementptr inbounds %struct.Reg, %struct.Reg* %7477, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %7478 to i64*
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7480 = getelementptr inbounds %struct.GPR, %struct.GPR* %7479, i32 0, i32 17
  %7481 = getelementptr inbounds %struct.Reg, %struct.Reg* %7480, i32 0, i32 0
  %R8.i104 = bitcast %union.anon* %7481 to i64*
  %7482 = load i64, i64* %RCX.i103
  %7483 = load i64, i64* %R8.i104
  %7484 = load i64, i64* %PC.i102
  %7485 = add i64 %7484, 3
  store i64 %7485, i64* %PC.i102
  %7486 = add i64 %7483, %7482
  store i64 %7486, i64* %RCX.i103, align 8
  %7487 = icmp ult i64 %7486, %7482
  %7488 = icmp ult i64 %7486, %7483
  %7489 = or i1 %7487, %7488
  %7490 = zext i1 %7489 to i8
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7490, i8* %7491, align 1
  %7492 = trunc i64 %7486 to i32
  %7493 = and i32 %7492, 255
  %7494 = call i32 @llvm.ctpop.i32(i32 %7493)
  %7495 = trunc i32 %7494 to i8
  %7496 = and i8 %7495, 1
  %7497 = xor i8 %7496, 1
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7497, i8* %7498, align 1
  %7499 = xor i64 %7483, %7482
  %7500 = xor i64 %7499, %7486
  %7501 = lshr i64 %7500, 4
  %7502 = trunc i64 %7501 to i8
  %7503 = and i8 %7502, 1
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7503, i8* %7504, align 1
  %7505 = icmp eq i64 %7486, 0
  %7506 = zext i1 %7505 to i8
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7506, i8* %7507, align 1
  %7508 = lshr i64 %7486, 63
  %7509 = trunc i64 %7508 to i8
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7509, i8* %7510, align 1
  %7511 = lshr i64 %7482, 63
  %7512 = lshr i64 %7483, 63
  %7513 = xor i64 %7508, %7511
  %7514 = xor i64 %7508, %7512
  %7515 = add i64 %7513, %7514
  %7516 = icmp eq i64 %7515, 2
  %7517 = zext i1 %7516 to i8
  %7518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7517, i8* %7518, align 1
  store %struct.Memory* %loadMem_478992, %struct.Memory** %MEMORY
  %loadMem_478995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7520 = getelementptr inbounds %struct.GPR, %struct.GPR* %7519, i32 0, i32 33
  %7521 = getelementptr inbounds %struct.Reg, %struct.Reg* %7520, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %7521 to i64*
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7523 = getelementptr inbounds %struct.GPR, %struct.GPR* %7522, i32 0, i32 11
  %7524 = getelementptr inbounds %struct.Reg, %struct.Reg* %7523, i32 0, i32 0
  %RDI.i100 = bitcast %union.anon* %7524 to i64*
  %7525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7526 = getelementptr inbounds %struct.GPR, %struct.GPR* %7525, i32 0, i32 15
  %7527 = getelementptr inbounds %struct.Reg, %struct.Reg* %7526, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %7527 to i64*
  %7528 = load i64, i64* %RBP.i101
  %7529 = sub i64 %7528, 36
  %7530 = load i64, i64* %PC.i99
  %7531 = add i64 %7530, 3
  store i64 %7531, i64* %PC.i99
  %7532 = inttoptr i64 %7529 to i32*
  %7533 = load i32, i32* %7532
  %7534 = zext i32 %7533 to i64
  store i64 %7534, i64* %RDI.i100, align 8
  store %struct.Memory* %loadMem_478995, %struct.Memory** %MEMORY
  %loadMem_478998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7536 = getelementptr inbounds %struct.GPR, %struct.GPR* %7535, i32 0, i32 33
  %7537 = getelementptr inbounds %struct.Reg, %struct.Reg* %7536, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %7537 to i64*
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7539 = getelementptr inbounds %struct.GPR, %struct.GPR* %7538, i32 0, i32 11
  %7540 = getelementptr inbounds %struct.Reg, %struct.Reg* %7539, i32 0, i32 0
  %RDI.i98 = bitcast %union.anon* %7540 to i64*
  %7541 = load i64, i64* %RDI.i98
  %7542 = load i64, i64* %PC.i97
  %7543 = add i64 %7542, 3
  store i64 %7543, i64* %PC.i97
  %7544 = trunc i64 %7541 to i32
  %7545 = sub i32 %7544, 6
  %7546 = zext i32 %7545 to i64
  store i64 %7546, i64* %RDI.i98, align 8
  %7547 = icmp ult i32 %7544, 6
  %7548 = zext i1 %7547 to i8
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7548, i8* %7549, align 1
  %7550 = and i32 %7545, 255
  %7551 = call i32 @llvm.ctpop.i32(i32 %7550)
  %7552 = trunc i32 %7551 to i8
  %7553 = and i8 %7552, 1
  %7554 = xor i8 %7553, 1
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7554, i8* %7555, align 1
  %7556 = xor i64 6, %7541
  %7557 = trunc i64 %7556 to i32
  %7558 = xor i32 %7557, %7545
  %7559 = lshr i32 %7558, 4
  %7560 = trunc i32 %7559 to i8
  %7561 = and i8 %7560, 1
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7561, i8* %7562, align 1
  %7563 = icmp eq i32 %7545, 0
  %7564 = zext i1 %7563 to i8
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7564, i8* %7565, align 1
  %7566 = lshr i32 %7545, 31
  %7567 = trunc i32 %7566 to i8
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7567, i8* %7568, align 1
  %7569 = lshr i32 %7544, 31
  %7570 = xor i32 %7566, %7569
  %7571 = add i32 %7570, %7569
  %7572 = icmp eq i32 %7571, 2
  %7573 = zext i1 %7572 to i8
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7573, i8* %7574, align 1
  store %struct.Memory* %loadMem_478998, %struct.Memory** %MEMORY
  %loadMem_47899b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7576 = getelementptr inbounds %struct.GPR, %struct.GPR* %7575, i32 0, i32 33
  %7577 = getelementptr inbounds %struct.Reg, %struct.Reg* %7576, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7577 to i64*
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7579 = getelementptr inbounds %struct.GPR, %struct.GPR* %7578, i32 0, i32 11
  %7580 = getelementptr inbounds %struct.Reg, %struct.Reg* %7579, i32 0, i32 0
  %EDI.i95 = bitcast %union.anon* %7580 to i32*
  %7581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7582 = getelementptr inbounds %struct.GPR, %struct.GPR* %7581, i32 0, i32 11
  %7583 = getelementptr inbounds %struct.Reg, %struct.Reg* %7582, i32 0, i32 0
  %RDI.i96 = bitcast %union.anon* %7583 to i64*
  %7584 = load i32, i32* %EDI.i95
  %7585 = zext i32 %7584 to i64
  %7586 = load i64, i64* %PC.i94
  %7587 = add i64 %7586, 2
  store i64 %7587, i64* %PC.i94
  %7588 = and i64 %7585, 4294967295
  store i64 %7588, i64* %RDI.i96, align 8
  store %struct.Memory* %loadMem_47899b, %struct.Memory** %MEMORY
  %loadMem_47899d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 33
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7591 to i64*
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 11
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7594 to i32*
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7596 = getelementptr inbounds %struct.GPR, %struct.GPR* %7595, i32 0, i32 17
  %7597 = getelementptr inbounds %struct.Reg, %struct.Reg* %7596, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %7597 to i32*
  %7598 = bitcast i32* %R8D.i to i64*
  %7599 = load i32, i32* %EDI.i
  %7600 = zext i32 %7599 to i64
  %7601 = load i64, i64* %PC.i93
  %7602 = add i64 %7601, 3
  store i64 %7602, i64* %PC.i93
  %7603 = and i64 %7600, 4294967295
  store i64 %7603, i64* %7598, align 8
  store %struct.Memory* %loadMem_47899d, %struct.Memory** %MEMORY
  %loadMem_4789a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7605 = getelementptr inbounds %struct.GPR, %struct.GPR* %7604, i32 0, i32 33
  %7606 = getelementptr inbounds %struct.Reg, %struct.Reg* %7605, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7606 to i64*
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 17
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %R8.i92 = bitcast %union.anon* %7609 to i64*
  %7610 = load i64, i64* %R8.i92
  %7611 = load i64, i64* %PC.i91
  %7612 = add i64 %7611, 3
  store i64 %7612, i64* %PC.i91
  %7613 = shl i64 %7610, 1
  %7614 = icmp slt i64 %7610, 0
  %7615 = icmp slt i64 %7613, 0
  %7616 = xor i1 %7614, %7615
  store i64 %7613, i64* %R8.i92, align 8
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7618 = zext i1 %7614 to i8
  store i8 %7618, i8* %7617, align 1
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7620 = trunc i64 %7613 to i32
  %7621 = and i32 %7620, 254
  %7622 = call i32 @llvm.ctpop.i32(i32 %7621)
  %7623 = trunc i32 %7622 to i8
  %7624 = and i8 %7623, 1
  %7625 = xor i8 %7624, 1
  store i8 %7625, i8* %7619, align 1
  %7626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7626, align 1
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7628 = icmp eq i64 %7613, 0
  %7629 = zext i1 %7628 to i8
  store i8 %7629, i8* %7627, align 1
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7631 = lshr i64 %7613, 63
  %7632 = trunc i64 %7631 to i8
  store i8 %7632, i8* %7630, align 1
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7634 = zext i1 %7616 to i8
  store i8 %7634, i8* %7633, align 1
  store %struct.Memory* %loadMem_4789a0, %struct.Memory** %MEMORY
  %loadMem_4789a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7636 = getelementptr inbounds %struct.GPR, %struct.GPR* %7635, i32 0, i32 33
  %7637 = getelementptr inbounds %struct.Reg, %struct.Reg* %7636, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7637 to i64*
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7639 = getelementptr inbounds %struct.GPR, %struct.GPR* %7638, i32 0, i32 1
  %7640 = getelementptr inbounds %struct.Reg, %struct.Reg* %7639, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %7640 to i64*
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7642 = getelementptr inbounds %struct.GPR, %struct.GPR* %7641, i32 0, i32 17
  %7643 = getelementptr inbounds %struct.Reg, %struct.Reg* %7642, i32 0, i32 0
  %R8.i90 = bitcast %union.anon* %7643 to i64*
  %7644 = load i64, i64* %RAX.i89
  %7645 = load i64, i64* %R8.i90
  %7646 = load i64, i64* %PC.i88
  %7647 = add i64 %7646, 3
  store i64 %7647, i64* %PC.i88
  %7648 = add i64 %7645, %7644
  store i64 %7648, i64* %RAX.i89, align 8
  %7649 = icmp ult i64 %7648, %7644
  %7650 = icmp ult i64 %7648, %7645
  %7651 = or i1 %7649, %7650
  %7652 = zext i1 %7651 to i8
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7652, i8* %7653, align 1
  %7654 = trunc i64 %7648 to i32
  %7655 = and i32 %7654, 255
  %7656 = call i32 @llvm.ctpop.i32(i32 %7655)
  %7657 = trunc i32 %7656 to i8
  %7658 = and i8 %7657, 1
  %7659 = xor i8 %7658, 1
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7659, i8* %7660, align 1
  %7661 = xor i64 %7645, %7644
  %7662 = xor i64 %7661, %7648
  %7663 = lshr i64 %7662, 4
  %7664 = trunc i64 %7663 to i8
  %7665 = and i8 %7664, 1
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7665, i8* %7666, align 1
  %7667 = icmp eq i64 %7648, 0
  %7668 = zext i1 %7667 to i8
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7668, i8* %7669, align 1
  %7670 = lshr i64 %7648, 63
  %7671 = trunc i64 %7670 to i8
  %7672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7671, i8* %7672, align 1
  %7673 = lshr i64 %7644, 63
  %7674 = lshr i64 %7645, 63
  %7675 = xor i64 %7670, %7673
  %7676 = xor i64 %7670, %7674
  %7677 = add i64 %7675, %7676
  %7678 = icmp eq i64 %7677, 2
  %7679 = zext i1 %7678 to i8
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7679, i8* %7680, align 1
  store %struct.Memory* %loadMem_4789a4, %struct.Memory** %MEMORY
  %loadMem_4789a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7682 = getelementptr inbounds %struct.GPR, %struct.GPR* %7681, i32 0, i32 33
  %7683 = getelementptr inbounds %struct.Reg, %struct.Reg* %7682, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7683 to i64*
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 15
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %7686 to i64*
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7688 = getelementptr inbounds %struct.GPR, %struct.GPR* %7687, i32 0, i32 17
  %7689 = getelementptr inbounds %struct.Reg, %struct.Reg* %7688, i32 0, i32 0
  %R8.i = bitcast %union.anon* %7689 to i64*
  %7690 = load i64, i64* %RBP.i87
  %7691 = sub i64 %7690, 24
  %7692 = load i64, i64* %PC.i86
  %7693 = add i64 %7692, 4
  store i64 %7693, i64* %PC.i86
  %7694 = inttoptr i64 %7691 to i64*
  %7695 = load i64, i64* %7694
  store i64 %7695, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_4789a7, %struct.Memory** %MEMORY
  %loadMem_4789ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7697 = getelementptr inbounds %struct.GPR, %struct.GPR* %7696, i32 0, i32 33
  %7698 = getelementptr inbounds %struct.Reg, %struct.Reg* %7697, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7698 to i64*
  %7699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7700 = getelementptr inbounds %struct.GPR, %struct.GPR* %7699, i32 0, i32 9
  %7701 = getelementptr inbounds %struct.Reg, %struct.Reg* %7700, i32 0, i32 0
  %RSI.i84 = bitcast %union.anon* %7701 to i64*
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 11
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %7704 to i64*
  %7705 = load i64, i64* %RSI.i84
  %7706 = load i64, i64* %PC.i83
  %7707 = add i64 %7706, 3
  store i64 %7707, i64* %PC.i83
  store i64 %7705, i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_4789ab, %struct.Memory** %MEMORY
  %loadMem_4789ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 33
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 5
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %7713 to i64*
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7715 = getelementptr inbounds %struct.GPR, %struct.GPR* %7714, i32 0, i32 9
  %7716 = getelementptr inbounds %struct.Reg, %struct.Reg* %7715, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %7716 to i64*
  %7717 = load i64, i64* %RCX.i81
  %7718 = load i64, i64* %PC.i80
  %7719 = add i64 %7718, 3
  store i64 %7719, i64* %PC.i80
  store i64 %7717, i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_4789ae, %struct.Memory** %MEMORY
  %loadMem_4789b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7721 = getelementptr inbounds %struct.GPR, %struct.GPR* %7720, i32 0, i32 33
  %7722 = getelementptr inbounds %struct.Reg, %struct.Reg* %7721, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7722 to i64*
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 1
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %7725 to i64*
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7727 = getelementptr inbounds %struct.GPR, %struct.GPR* %7726, i32 0, i32 5
  %7728 = getelementptr inbounds %struct.Reg, %struct.Reg* %7727, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %7728 to i64*
  %7729 = load i64, i64* %RAX.i78
  %7730 = load i64, i64* %PC.i77
  %7731 = add i64 %7730, 3
  store i64 %7731, i64* %PC.i77
  store i64 %7729, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_4789b1, %struct.Memory** %MEMORY
  %loadMem1_4789b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7733 = getelementptr inbounds %struct.GPR, %struct.GPR* %7732, i32 0, i32 33
  %7734 = getelementptr inbounds %struct.Reg, %struct.Reg* %7733, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7734 to i64*
  %7735 = load i64, i64* %PC.i76
  %7736 = add i64 %7735, -2964
  %7737 = load i64, i64* %PC.i76
  %7738 = add i64 %7737, 5
  %7739 = load i64, i64* %PC.i76
  %7740 = add i64 %7739, 5
  store i64 %7740, i64* %PC.i76
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7742 = load i64, i64* %7741, align 8
  %7743 = add i64 %7742, -8
  %7744 = inttoptr i64 %7743 to i64*
  store i64 %7738, i64* %7744
  store i64 %7743, i64* %7741, align 8
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7736, i64* %7745, align 8
  store %struct.Memory* %loadMem1_4789b4, %struct.Memory** %MEMORY
  %loadMem2_4789b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4789b4 = load i64, i64* %3
  %call2_4789b4 = call %struct.Memory* @sub_477e20.Scaling_List(%struct.State* %0, i64 %loadPC_4789b4, %struct.Memory* %loadMem2_4789b4)
  store %struct.Memory* %call2_4789b4, %struct.Memory** %MEMORY
  %loadMem_4789b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7747 = getelementptr inbounds %struct.GPR, %struct.GPR* %7746, i32 0, i32 33
  %7748 = getelementptr inbounds %struct.Reg, %struct.Reg* %7747, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7748 to i64*
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 1
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %7751 to i64*
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 15
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %7754 to i64*
  %7755 = load i64, i64* %RAX.i74
  %7756 = load i64, i64* %RBP.i75
  %7757 = sub i64 %7756, 28
  %7758 = load i64, i64* %PC.i73
  %7759 = add i64 %7758, 3
  store i64 %7759, i64* %PC.i73
  %7760 = trunc i64 %7755 to i32
  %7761 = inttoptr i64 %7757 to i32*
  %7762 = load i32, i32* %7761
  %7763 = add i32 %7762, %7760
  %7764 = zext i32 %7763 to i64
  store i64 %7764, i64* %RAX.i74, align 8
  %7765 = icmp ult i32 %7763, %7760
  %7766 = icmp ult i32 %7763, %7762
  %7767 = or i1 %7765, %7766
  %7768 = zext i1 %7767 to i8
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7768, i8* %7769, align 1
  %7770 = and i32 %7763, 255
  %7771 = call i32 @llvm.ctpop.i32(i32 %7770)
  %7772 = trunc i32 %7771 to i8
  %7773 = and i8 %7772, 1
  %7774 = xor i8 %7773, 1
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7774, i8* %7775, align 1
  %7776 = xor i32 %7762, %7760
  %7777 = xor i32 %7776, %7763
  %7778 = lshr i32 %7777, 4
  %7779 = trunc i32 %7778 to i8
  %7780 = and i8 %7779, 1
  %7781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7780, i8* %7781, align 1
  %7782 = icmp eq i32 %7763, 0
  %7783 = zext i1 %7782 to i8
  %7784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7783, i8* %7784, align 1
  %7785 = lshr i32 %7763, 31
  %7786 = trunc i32 %7785 to i8
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7786, i8* %7787, align 1
  %7788 = lshr i32 %7760, 31
  %7789 = lshr i32 %7762, 31
  %7790 = xor i32 %7785, %7788
  %7791 = xor i32 %7785, %7789
  %7792 = add i32 %7790, %7791
  %7793 = icmp eq i32 %7792, 2
  %7794 = zext i1 %7793 to i8
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7794, i8* %7795, align 1
  store %struct.Memory* %loadMem_4789b9, %struct.Memory** %MEMORY
  %loadMem_4789bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7797 = getelementptr inbounds %struct.GPR, %struct.GPR* %7796, i32 0, i32 33
  %7798 = getelementptr inbounds %struct.Reg, %struct.Reg* %7797, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7798 to i64*
  %7799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7800 = getelementptr inbounds %struct.GPR, %struct.GPR* %7799, i32 0, i32 1
  %7801 = getelementptr inbounds %struct.Reg, %struct.Reg* %7800, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %7801 to i32*
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7803 = getelementptr inbounds %struct.GPR, %struct.GPR* %7802, i32 0, i32 15
  %7804 = getelementptr inbounds %struct.Reg, %struct.Reg* %7803, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %7804 to i64*
  %7805 = load i64, i64* %RBP.i72
  %7806 = sub i64 %7805, 28
  %7807 = load i32, i32* %EAX.i71
  %7808 = zext i32 %7807 to i64
  %7809 = load i64, i64* %PC.i70
  %7810 = add i64 %7809, 3
  store i64 %7810, i64* %PC.i70
  %7811 = inttoptr i64 %7806 to i32*
  store i32 %7807, i32* %7811
  store %struct.Memory* %loadMem_4789bc, %struct.Memory** %MEMORY
  br label %block_.L_4789bf

block_.L_4789bf:                                  ; preds = %block_.L_47894e, %block_4788e7
  %loadMem_4789bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7813 = getelementptr inbounds %struct.GPR, %struct.GPR* %7812, i32 0, i32 33
  %7814 = getelementptr inbounds %struct.Reg, %struct.Reg* %7813, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7814 to i64*
  %7815 = load i64, i64* %PC.i69
  %7816 = add i64 %7815, 5
  %7817 = load i64, i64* %PC.i69
  %7818 = add i64 %7817, 5
  store i64 %7818, i64* %PC.i69
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7816, i64* %7819, align 8
  store %struct.Memory* %loadMem_4789bf, %struct.Memory** %MEMORY
  br label %block_.L_4789c4

block_.L_4789c4:                                  ; preds = %block_.L_4789bf, %block_4788a3
  %loadMem_4789c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7821 = getelementptr inbounds %struct.GPR, %struct.GPR* %7820, i32 0, i32 33
  %7822 = getelementptr inbounds %struct.Reg, %struct.Reg* %7821, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7822 to i64*
  %7823 = load i64, i64* %PC.i68
  %7824 = add i64 %7823, 5
  %7825 = load i64, i64* %PC.i68
  %7826 = add i64 %7825, 5
  store i64 %7826, i64* %PC.i68
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7824, i64* %7827, align 8
  store %struct.Memory* %loadMem_4789c4, %struct.Memory** %MEMORY
  br label %block_.L_4789c9

block_.L_4789c9:                                  ; preds = %block_.L_4789c4
  %loadMem_4789c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7829 = getelementptr inbounds %struct.GPR, %struct.GPR* %7828, i32 0, i32 33
  %7830 = getelementptr inbounds %struct.Reg, %struct.Reg* %7829, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7830 to i64*
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7832 = getelementptr inbounds %struct.GPR, %struct.GPR* %7831, i32 0, i32 1
  %7833 = getelementptr inbounds %struct.Reg, %struct.Reg* %7832, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %7833 to i64*
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7835 = getelementptr inbounds %struct.GPR, %struct.GPR* %7834, i32 0, i32 15
  %7836 = getelementptr inbounds %struct.Reg, %struct.Reg* %7835, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %7836 to i64*
  %7837 = load i64, i64* %RBP.i67
  %7838 = sub i64 %7837, 36
  %7839 = load i64, i64* %PC.i65
  %7840 = add i64 %7839, 3
  store i64 %7840, i64* %PC.i65
  %7841 = inttoptr i64 %7838 to i32*
  %7842 = load i32, i32* %7841
  %7843 = zext i32 %7842 to i64
  store i64 %7843, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_4789c9, %struct.Memory** %MEMORY
  %loadMem_4789cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7845 = getelementptr inbounds %struct.GPR, %struct.GPR* %7844, i32 0, i32 33
  %7846 = getelementptr inbounds %struct.Reg, %struct.Reg* %7845, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7846 to i64*
  %7847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7848 = getelementptr inbounds %struct.GPR, %struct.GPR* %7847, i32 0, i32 1
  %7849 = getelementptr inbounds %struct.Reg, %struct.Reg* %7848, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %7849 to i64*
  %7850 = load i64, i64* %RAX.i64
  %7851 = load i64, i64* %PC.i63
  %7852 = add i64 %7851, 3
  store i64 %7852, i64* %PC.i63
  %7853 = trunc i64 %7850 to i32
  %7854 = add i32 1, %7853
  %7855 = zext i32 %7854 to i64
  store i64 %7855, i64* %RAX.i64, align 8
  %7856 = icmp ult i32 %7854, %7853
  %7857 = icmp ult i32 %7854, 1
  %7858 = or i1 %7856, %7857
  %7859 = zext i1 %7858 to i8
  %7860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7859, i8* %7860, align 1
  %7861 = and i32 %7854, 255
  %7862 = call i32 @llvm.ctpop.i32(i32 %7861)
  %7863 = trunc i32 %7862 to i8
  %7864 = and i8 %7863, 1
  %7865 = xor i8 %7864, 1
  %7866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7865, i8* %7866, align 1
  %7867 = xor i64 1, %7850
  %7868 = trunc i64 %7867 to i32
  %7869 = xor i32 %7868, %7854
  %7870 = lshr i32 %7869, 4
  %7871 = trunc i32 %7870 to i8
  %7872 = and i8 %7871, 1
  %7873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7872, i8* %7873, align 1
  %7874 = icmp eq i32 %7854, 0
  %7875 = zext i1 %7874 to i8
  %7876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7875, i8* %7876, align 1
  %7877 = lshr i32 %7854, 31
  %7878 = trunc i32 %7877 to i8
  %7879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7878, i8* %7879, align 1
  %7880 = lshr i32 %7853, 31
  %7881 = xor i32 %7877, %7880
  %7882 = add i32 %7881, %7877
  %7883 = icmp eq i32 %7882, 2
  %7884 = zext i1 %7883 to i8
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7884, i8* %7885, align 1
  store %struct.Memory* %loadMem_4789cc, %struct.Memory** %MEMORY
  %loadMem_4789cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7887 = getelementptr inbounds %struct.GPR, %struct.GPR* %7886, i32 0, i32 33
  %7888 = getelementptr inbounds %struct.Reg, %struct.Reg* %7887, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7888 to i64*
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7890 = getelementptr inbounds %struct.GPR, %struct.GPR* %7889, i32 0, i32 1
  %7891 = getelementptr inbounds %struct.Reg, %struct.Reg* %7890, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %7891 to i32*
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7893 = getelementptr inbounds %struct.GPR, %struct.GPR* %7892, i32 0, i32 15
  %7894 = getelementptr inbounds %struct.Reg, %struct.Reg* %7893, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7894 to i64*
  %7895 = load i64, i64* %RBP.i62
  %7896 = sub i64 %7895, 36
  %7897 = load i32, i32* %EAX.i61
  %7898 = zext i32 %7897 to i64
  %7899 = load i64, i64* %PC.i60
  %7900 = add i64 %7899, 3
  store i64 %7900, i64* %PC.i60
  %7901 = inttoptr i64 %7896 to i32*
  store i32 %7897, i32* %7901
  store %struct.Memory* %loadMem_4789cf, %struct.Memory** %MEMORY
  %loadMem_4789d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7903 = getelementptr inbounds %struct.GPR, %struct.GPR* %7902, i32 0, i32 33
  %7904 = getelementptr inbounds %struct.Reg, %struct.Reg* %7903, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7904 to i64*
  %7905 = load i64, i64* %PC.i59
  %7906 = add i64 %7905, -327
  %7907 = load i64, i64* %PC.i59
  %7908 = add i64 %7907, 5
  store i64 %7908, i64* %PC.i59
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7906, i64* %7909, align 8
  store %struct.Memory* %loadMem_4789d2, %struct.Memory** %MEMORY
  br label %block_.L_47888b

block_.L_4789d7:                                  ; preds = %block_.L_47888b
  %loadMem_4789d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7911 = getelementptr inbounds %struct.GPR, %struct.GPR* %7910, i32 0, i32 33
  %7912 = getelementptr inbounds %struct.Reg, %struct.Reg* %7911, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7912 to i64*
  %7913 = load i64, i64* %PC.i58
  %7914 = add i64 %7913, 5
  %7915 = load i64, i64* %PC.i58
  %7916 = add i64 %7915, 5
  store i64 %7916, i64* %PC.i58
  %7917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7914, i64* %7917, align 8
  store %struct.Memory* %loadMem_4789d7, %struct.Memory** %MEMORY
  br label %block_.L_4789dc

block_.L_4789dc:                                  ; preds = %block_.L_4789d7, %block_.L_478836
  %loadMem_4789dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7919 = getelementptr inbounds %struct.GPR, %struct.GPR* %7918, i32 0, i32 33
  %7920 = getelementptr inbounds %struct.Reg, %struct.Reg* %7919, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7920 to i64*
  %7921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7922 = getelementptr inbounds %struct.GPR, %struct.GPR* %7921, i32 0, i32 11
  %7923 = getelementptr inbounds %struct.Reg, %struct.Reg* %7922, i32 0, i32 0
  %RDI.i57 = bitcast %union.anon* %7923 to i64*
  %7924 = load i64, i64* %PC.i56
  %7925 = add i64 %7924, 10
  store i64 %7925, i64* %PC.i56
  store i64 ptrtoint (%G__0x4c2e26_type* @G__0x4c2e26 to i64), i64* %RDI.i57, align 8
  store %struct.Memory* %loadMem_4789dc, %struct.Memory** %MEMORY
  %loadMem_4789e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7927 = getelementptr inbounds %struct.GPR, %struct.GPR* %7926, i32 0, i32 33
  %7928 = getelementptr inbounds %struct.Reg, %struct.Reg* %7927, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7928 to i64*
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7930 = getelementptr inbounds %struct.GPR, %struct.GPR* %7929, i32 0, i32 1
  %7931 = getelementptr inbounds %struct.Reg, %struct.Reg* %7930, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %7931 to i64*
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7933 = getelementptr inbounds %struct.GPR, %struct.GPR* %7932, i32 0, i32 15
  %7934 = getelementptr inbounds %struct.Reg, %struct.Reg* %7933, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %7934 to i64*
  %7935 = load i64, i64* %RBP.i55
  %7936 = sub i64 %7935, 8
  %7937 = load i64, i64* %PC.i53
  %7938 = add i64 %7937, 4
  store i64 %7938, i64* %PC.i53
  %7939 = inttoptr i64 %7936 to i64*
  %7940 = load i64, i64* %7939
  store i64 %7940, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_4789e6, %struct.Memory** %MEMORY
  %loadMem_4789ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7942 = getelementptr inbounds %struct.GPR, %struct.GPR* %7941, i32 0, i32 33
  %7943 = getelementptr inbounds %struct.Reg, %struct.Reg* %7942, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7943 to i64*
  %7944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7945 = getelementptr inbounds %struct.GPR, %struct.GPR* %7944, i32 0, i32 1
  %7946 = getelementptr inbounds %struct.Reg, %struct.Reg* %7945, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %7946 to i64*
  %7947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7948 = getelementptr inbounds %struct.GPR, %struct.GPR* %7947, i32 0, i32 9
  %7949 = getelementptr inbounds %struct.Reg, %struct.Reg* %7948, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7949 to i64*
  %7950 = load i64, i64* %RAX.i52
  %7951 = add i64 %7950, 216
  %7952 = load i64, i64* %PC.i51
  %7953 = add i64 %7952, 6
  store i64 %7953, i64* %PC.i51
  %7954 = inttoptr i64 %7951 to i32*
  %7955 = load i32, i32* %7954
  %7956 = zext i32 %7955 to i64
  store i64 %7956, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4789ea, %struct.Memory** %MEMORY
  %loadMem_4789f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7958 = getelementptr inbounds %struct.GPR, %struct.GPR* %7957, i32 0, i32 33
  %7959 = getelementptr inbounds %struct.Reg, %struct.Reg* %7958, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7959 to i64*
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7961 = getelementptr inbounds %struct.GPR, %struct.GPR* %7960, i32 0, i32 7
  %7962 = getelementptr inbounds %struct.Reg, %struct.Reg* %7961, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7962 to i64*
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7964 = getelementptr inbounds %struct.GPR, %struct.GPR* %7963, i32 0, i32 15
  %7965 = getelementptr inbounds %struct.Reg, %struct.Reg* %7964, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7965 to i64*
  %7966 = load i64, i64* %RBP.i50
  %7967 = sub i64 %7966, 24
  %7968 = load i64, i64* %PC.i49
  %7969 = add i64 %7968, 4
  store i64 %7969, i64* %PC.i49
  %7970 = inttoptr i64 %7967 to i64*
  %7971 = load i64, i64* %7970
  store i64 %7971, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4789f0, %struct.Memory** %MEMORY
  %loadMem1_4789f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7973 = getelementptr inbounds %struct.GPR, %struct.GPR* %7972, i32 0, i32 33
  %7974 = getelementptr inbounds %struct.Reg, %struct.Reg* %7973, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7974 to i64*
  %7975 = load i64, i64* %PC.i48
  %7976 = add i64 %7975, 212940
  %7977 = load i64, i64* %PC.i48
  %7978 = add i64 %7977, 5
  %7979 = load i64, i64* %PC.i48
  %7980 = add i64 %7979, 5
  store i64 %7980, i64* %PC.i48
  %7981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7982 = load i64, i64* %7981, align 8
  %7983 = add i64 %7982, -8
  %7984 = inttoptr i64 %7983 to i64*
  store i64 %7978, i64* %7984
  store i64 %7983, i64* %7981, align 8
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7976, i64* %7985, align 8
  store %struct.Memory* %loadMem1_4789f4, %struct.Memory** %MEMORY
  %loadMem2_4789f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4789f4 = load i64, i64* %3
  %call2_4789f4 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_4789f4, %struct.Memory* %loadMem2_4789f4)
  store %struct.Memory* %call2_4789f4, %struct.Memory** %MEMORY
  %loadMem_4789f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 33
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7988 to i64*
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7990 = getelementptr inbounds %struct.GPR, %struct.GPR* %7989, i32 0, i32 1
  %7991 = getelementptr inbounds %struct.Reg, %struct.Reg* %7990, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %7991 to i64*
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 15
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7994 to i64*
  %7995 = load i64, i64* %RAX.i46
  %7996 = load i64, i64* %RBP.i47
  %7997 = sub i64 %7996, 28
  %7998 = load i64, i64* %PC.i45
  %7999 = add i64 %7998, 3
  store i64 %7999, i64* %PC.i45
  %8000 = trunc i64 %7995 to i32
  %8001 = inttoptr i64 %7997 to i32*
  %8002 = load i32, i32* %8001
  %8003 = add i32 %8002, %8000
  %8004 = zext i32 %8003 to i64
  store i64 %8004, i64* %RAX.i46, align 8
  %8005 = icmp ult i32 %8003, %8000
  %8006 = icmp ult i32 %8003, %8002
  %8007 = or i1 %8005, %8006
  %8008 = zext i1 %8007 to i8
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8008, i8* %8009, align 1
  %8010 = and i32 %8003, 255
  %8011 = call i32 @llvm.ctpop.i32(i32 %8010)
  %8012 = trunc i32 %8011 to i8
  %8013 = and i8 %8012, 1
  %8014 = xor i8 %8013, 1
  %8015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8014, i8* %8015, align 1
  %8016 = xor i32 %8002, %8000
  %8017 = xor i32 %8016, %8003
  %8018 = lshr i32 %8017, 4
  %8019 = trunc i32 %8018 to i8
  %8020 = and i8 %8019, 1
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8020, i8* %8021, align 1
  %8022 = icmp eq i32 %8003, 0
  %8023 = zext i1 %8022 to i8
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8023, i8* %8024, align 1
  %8025 = lshr i32 %8003, 31
  %8026 = trunc i32 %8025 to i8
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8026, i8* %8027, align 1
  %8028 = lshr i32 %8000, 31
  %8029 = lshr i32 %8002, 31
  %8030 = xor i32 %8025, %8028
  %8031 = xor i32 %8025, %8029
  %8032 = add i32 %8030, %8031
  %8033 = icmp eq i32 %8032, 2
  %8034 = zext i1 %8033 to i8
  %8035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8034, i8* %8035, align 1
  store %struct.Memory* %loadMem_4789f9, %struct.Memory** %MEMORY
  %loadMem_4789fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8037 = getelementptr inbounds %struct.GPR, %struct.GPR* %8036, i32 0, i32 33
  %8038 = getelementptr inbounds %struct.Reg, %struct.Reg* %8037, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8038 to i64*
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 1
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8041 to i32*
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8043 = getelementptr inbounds %struct.GPR, %struct.GPR* %8042, i32 0, i32 15
  %8044 = getelementptr inbounds %struct.Reg, %struct.Reg* %8043, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %8044 to i64*
  %8045 = load i64, i64* %RBP.i44
  %8046 = sub i64 %8045, 28
  %8047 = load i32, i32* %EAX.i
  %8048 = zext i32 %8047 to i64
  %8049 = load i64, i64* %PC.i43
  %8050 = add i64 %8049, 3
  store i64 %8050, i64* %PC.i43
  %8051 = inttoptr i64 %8046 to i32*
  store i32 %8047, i32* %8051
  store %struct.Memory* %loadMem_4789fc, %struct.Memory** %MEMORY
  br label %block_.L_4789ff

block_.L_4789ff:                                  ; preds = %block_.L_4789dc, %block_478829
  %loadMem_4789ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8053 = getelementptr inbounds %struct.GPR, %struct.GPR* %8052, i32 0, i32 33
  %8054 = getelementptr inbounds %struct.Reg, %struct.Reg* %8053, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8054 to i64*
  %8055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8056 = getelementptr inbounds %struct.GPR, %struct.GPR* %8055, i32 0, i32 1
  %8057 = getelementptr inbounds %struct.Reg, %struct.Reg* %8056, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8057 to i64*
  %8058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8059 = getelementptr inbounds %struct.GPR, %struct.GPR* %8058, i32 0, i32 15
  %8060 = getelementptr inbounds %struct.Reg, %struct.Reg* %8059, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8060 to i64*
  %8061 = load i64, i64* %RBP.i42
  %8062 = sub i64 %8061, 24
  %8063 = load i64, i64* %PC.i40
  %8064 = add i64 %8063, 4
  store i64 %8064, i64* %PC.i40
  %8065 = inttoptr i64 %8062 to i64*
  %8066 = load i64, i64* %8065
  store i64 %8066, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_4789ff, %struct.Memory** %MEMORY
  %loadMem_478a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8068 = getelementptr inbounds %struct.GPR, %struct.GPR* %8067, i32 0, i32 33
  %8069 = getelementptr inbounds %struct.Reg, %struct.Reg* %8068, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %8069 to i64*
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8071 = getelementptr inbounds %struct.GPR, %struct.GPR* %8070, i32 0, i32 1
  %8072 = getelementptr inbounds %struct.Reg, %struct.Reg* %8071, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %8072 to i64*
  %8073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8074 = getelementptr inbounds %struct.GPR, %struct.GPR* %8073, i32 0, i32 11
  %8075 = getelementptr inbounds %struct.Reg, %struct.Reg* %8074, i32 0, i32 0
  %RDI.i39 = bitcast %union.anon* %8075 to i64*
  %8076 = load i64, i64* %RAX.i38
  %8077 = load i64, i64* %PC.i37
  %8078 = add i64 %8077, 3
  store i64 %8078, i64* %PC.i37
  %8079 = inttoptr i64 %8076 to i64*
  %8080 = load i64, i64* %8079
  store i64 %8080, i64* %RDI.i39, align 8
  store %struct.Memory* %loadMem_478a03, %struct.Memory** %MEMORY
  %loadMem1_478a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8082 = getelementptr inbounds %struct.GPR, %struct.GPR* %8081, i32 0, i32 33
  %8083 = getelementptr inbounds %struct.Reg, %struct.Reg* %8082, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8083 to i64*
  %8084 = load i64, i64* %PC.i36
  %8085 = add i64 %8084, -14438
  %8086 = load i64, i64* %PC.i36
  %8087 = add i64 %8086, 5
  %8088 = load i64, i64* %PC.i36
  %8089 = add i64 %8088, 5
  store i64 %8089, i64* %PC.i36
  %8090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8091 = load i64, i64* %8090, align 8
  %8092 = add i64 %8091, -8
  %8093 = inttoptr i64 %8092 to i64*
  store i64 %8087, i64* %8093
  store i64 %8092, i64* %8090, align 8
  %8094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8085, i64* %8094, align 8
  store %struct.Memory* %loadMem1_478a06, %struct.Memory** %MEMORY
  %loadMem2_478a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478a06 = load i64, i64* %3
  %call2_478a06 = call %struct.Memory* @sub_4751a0.SODBtoRBSP(%struct.State* %0, i64 %loadPC_478a06, %struct.Memory* %loadMem2_478a06)
  store %struct.Memory* %call2_478a06, %struct.Memory** %MEMORY
  %loadMem_478a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 33
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8097 to i64*
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8099 = getelementptr inbounds %struct.GPR, %struct.GPR* %8098, i32 0, i32 1
  %8100 = getelementptr inbounds %struct.Reg, %struct.Reg* %8099, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %8100 to i64*
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 15
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %8103 to i64*
  %8104 = load i64, i64* %RBP.i35
  %8105 = sub i64 %8104, 24
  %8106 = load i64, i64* %PC.i33
  %8107 = add i64 %8106, 4
  store i64 %8107, i64* %PC.i33
  %8108 = inttoptr i64 %8105 to i64*
  %8109 = load i64, i64* %8108
  store i64 %8109, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_478a0b, %struct.Memory** %MEMORY
  %loadMem_478a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8111 = getelementptr inbounds %struct.GPR, %struct.GPR* %8110, i32 0, i32 33
  %8112 = getelementptr inbounds %struct.Reg, %struct.Reg* %8111, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8112 to i64*
  %8113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8114 = getelementptr inbounds %struct.GPR, %struct.GPR* %8113, i32 0, i32 1
  %8115 = getelementptr inbounds %struct.Reg, %struct.Reg* %8114, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %8115 to i64*
  %8116 = load i64, i64* %RAX.i32
  %8117 = load i64, i64* %PC.i31
  %8118 = add i64 %8117, 3
  store i64 %8118, i64* %PC.i31
  %8119 = inttoptr i64 %8116 to i64*
  %8120 = load i64, i64* %8119
  store i64 %8120, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_478a0f, %struct.Memory** %MEMORY
  %loadMem_478a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8122 = getelementptr inbounds %struct.GPR, %struct.GPR* %8121, i32 0, i32 33
  %8123 = getelementptr inbounds %struct.Reg, %struct.Reg* %8122, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8123 to i64*
  %8124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8125 = getelementptr inbounds %struct.GPR, %struct.GPR* %8124, i32 0, i32 1
  %8126 = getelementptr inbounds %struct.Reg, %struct.Reg* %8125, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %8126 to i64*
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 5
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8129 to i64*
  %8130 = load i64, i64* %RAX.i30
  %8131 = load i64, i64* %PC.i29
  %8132 = add i64 %8131, 2
  store i64 %8132, i64* %PC.i29
  %8133 = inttoptr i64 %8130 to i32*
  %8134 = load i32, i32* %8133
  %8135 = zext i32 %8134 to i64
  store i64 %8135, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_478a12, %struct.Memory** %MEMORY
  %loadMem_478a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8137 = getelementptr inbounds %struct.GPR, %struct.GPR* %8136, i32 0, i32 33
  %8138 = getelementptr inbounds %struct.Reg, %struct.Reg* %8137, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8138 to i64*
  %8139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8140 = getelementptr inbounds %struct.GPR, %struct.GPR* %8139, i32 0, i32 5
  %8141 = getelementptr inbounds %struct.Reg, %struct.Reg* %8140, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8141 to i32*
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8143 = getelementptr inbounds %struct.GPR, %struct.GPR* %8142, i32 0, i32 15
  %8144 = getelementptr inbounds %struct.Reg, %struct.Reg* %8143, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %8144 to i64*
  %8145 = load i64, i64* %RBP.i28
  %8146 = sub i64 %8145, 32
  %8147 = load i32, i32* %ECX.i
  %8148 = zext i32 %8147 to i64
  %8149 = load i64, i64* %PC.i27
  %8150 = add i64 %8149, 3
  store i64 %8150, i64* %PC.i27
  %8151 = inttoptr i64 %8146 to i32*
  store i32 %8147, i32* %8151
  store %struct.Memory* %loadMem_478a14, %struct.Memory** %MEMORY
  %loadMem_478a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8153 = getelementptr inbounds %struct.GPR, %struct.GPR* %8152, i32 0, i32 33
  %8154 = getelementptr inbounds %struct.Reg, %struct.Reg* %8153, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8154 to i64*
  %8155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8156 = getelementptr inbounds %struct.GPR, %struct.GPR* %8155, i32 0, i32 1
  %8157 = getelementptr inbounds %struct.Reg, %struct.Reg* %8156, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %8157 to i64*
  %8158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8159 = getelementptr inbounds %struct.GPR, %struct.GPR* %8158, i32 0, i32 15
  %8160 = getelementptr inbounds %struct.Reg, %struct.Reg* %8159, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %8160 to i64*
  %8161 = load i64, i64* %RBP.i26
  %8162 = sub i64 %8161, 24
  %8163 = load i64, i64* %PC.i24
  %8164 = add i64 %8163, 4
  store i64 %8164, i64* %PC.i24
  %8165 = inttoptr i64 %8162 to i64*
  %8166 = load i64, i64* %8165
  store i64 %8166, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_478a17, %struct.Memory** %MEMORY
  %loadMem_478a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8168 = getelementptr inbounds %struct.GPR, %struct.GPR* %8167, i32 0, i32 33
  %8169 = getelementptr inbounds %struct.Reg, %struct.Reg* %8168, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8169 to i64*
  %8170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8171 = getelementptr inbounds %struct.GPR, %struct.GPR* %8170, i32 0, i32 1
  %8172 = getelementptr inbounds %struct.Reg, %struct.Reg* %8171, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %8172 to i64*
  %8173 = load i64, i64* %RAX.i23
  %8174 = load i64, i64* %PC.i22
  %8175 = add i64 %8174, 3
  store i64 %8175, i64* %PC.i22
  %8176 = inttoptr i64 %8173 to i64*
  %8177 = load i64, i64* %8176
  store i64 %8177, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_478a1b, %struct.Memory** %MEMORY
  %loadMem_478a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8179 = getelementptr inbounds %struct.GPR, %struct.GPR* %8178, i32 0, i32 33
  %8180 = getelementptr inbounds %struct.Reg, %struct.Reg* %8179, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8180 to i64*
  %8181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8182 = getelementptr inbounds %struct.GPR, %struct.GPR* %8181, i32 0, i32 1
  %8183 = getelementptr inbounds %struct.Reg, %struct.Reg* %8182, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8183 to i64*
  %8184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8185 = getelementptr inbounds %struct.GPR, %struct.GPR* %8184, i32 0, i32 11
  %8186 = getelementptr inbounds %struct.Reg, %struct.Reg* %8185, i32 0, i32 0
  %RDI.i21 = bitcast %union.anon* %8186 to i64*
  %8187 = load i64, i64* %RAX.i20
  %8188 = load i64, i64* %PC.i19
  %8189 = add i64 %8188, 3
  store i64 %8189, i64* %PC.i19
  store i64 %8187, i64* %RDI.i21, align 8
  store %struct.Memory* %loadMem_478a1e, %struct.Memory** %MEMORY
  %loadMem1_478a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8191 = getelementptr inbounds %struct.GPR, %struct.GPR* %8190, i32 0, i32 33
  %8192 = getelementptr inbounds %struct.Reg, %struct.Reg* %8191, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8192 to i64*
  %8193 = load i64, i64* %PC.i18
  %8194 = add i64 %8193, -490145
  %8195 = load i64, i64* %PC.i18
  %8196 = add i64 %8195, 5
  %8197 = load i64, i64* %PC.i18
  %8198 = add i64 %8197, 5
  store i64 %8198, i64* %PC.i18
  %8199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8200 = load i64, i64* %8199, align 8
  %8201 = add i64 %8200, -8
  %8202 = inttoptr i64 %8201 to i64*
  store i64 %8196, i64* %8202
  store i64 %8201, i64* %8199, align 8
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8194, i64* %8203, align 8
  store %struct.Memory* %loadMem1_478a21, %struct.Memory** %MEMORY
  %loadMem2_478a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478a21 = load i64, i64* %3
  %8204 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_478a21)
  store %struct.Memory* %8204, %struct.Memory** %MEMORY
  %loadMem_478a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8206 = getelementptr inbounds %struct.GPR, %struct.GPR* %8205, i32 0, i32 33
  %8207 = getelementptr inbounds %struct.Reg, %struct.Reg* %8206, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8207 to i64*
  %8208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8209 = getelementptr inbounds %struct.GPR, %struct.GPR* %8208, i32 0, i32 1
  %8210 = getelementptr inbounds %struct.Reg, %struct.Reg* %8209, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %8210 to i64*
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 15
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %8213 to i64*
  %8214 = load i64, i64* %RBP.i15
  %8215 = sub i64 %8214, 24
  %8216 = load i64, i64* %PC.i13
  %8217 = add i64 %8216, 4
  store i64 %8217, i64* %PC.i13
  %8218 = inttoptr i64 %8215 to i64*
  %8219 = load i64, i64* %8218
  store i64 %8219, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_478a26, %struct.Memory** %MEMORY
  %loadMem_478a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8221 = getelementptr inbounds %struct.GPR, %struct.GPR* %8220, i32 0, i32 33
  %8222 = getelementptr inbounds %struct.Reg, %struct.Reg* %8221, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8222 to i64*
  %8223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8224 = getelementptr inbounds %struct.GPR, %struct.GPR* %8223, i32 0, i32 1
  %8225 = getelementptr inbounds %struct.Reg, %struct.Reg* %8224, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %8225 to i64*
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8227 = getelementptr inbounds %struct.GPR, %struct.GPR* %8226, i32 0, i32 11
  %8228 = getelementptr inbounds %struct.Reg, %struct.Reg* %8227, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8228 to i64*
  %8229 = load i64, i64* %RAX.i12
  %8230 = load i64, i64* %PC.i11
  %8231 = add i64 %8230, 3
  store i64 %8231, i64* %PC.i11
  store i64 %8229, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_478a2a, %struct.Memory** %MEMORY
  %loadMem1_478a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8233 = getelementptr inbounds %struct.GPR, %struct.GPR* %8232, i32 0, i32 33
  %8234 = getelementptr inbounds %struct.Reg, %struct.Reg* %8233, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8234 to i64*
  %8235 = load i64, i64* %PC.i10
  %8236 = add i64 %8235, -490157
  %8237 = load i64, i64* %PC.i10
  %8238 = add i64 %8237, 5
  %8239 = load i64, i64* %PC.i10
  %8240 = add i64 %8239, 5
  store i64 %8240, i64* %PC.i10
  %8241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8242 = load i64, i64* %8241, align 8
  %8243 = add i64 %8242, -8
  %8244 = inttoptr i64 %8243 to i64*
  store i64 %8238, i64* %8244
  store i64 %8243, i64* %8241, align 8
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8236, i64* %8245, align 8
  store %struct.Memory* %loadMem1_478a2d, %struct.Memory** %MEMORY
  %loadMem2_478a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_478a2d = load i64, i64* %3
  %8246 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_478a2d)
  store %struct.Memory* %8246, %struct.Memory** %MEMORY
  %loadMem_478a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8248 = getelementptr inbounds %struct.GPR, %struct.GPR* %8247, i32 0, i32 33
  %8249 = getelementptr inbounds %struct.Reg, %struct.Reg* %8248, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8249 to i64*
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8251 = getelementptr inbounds %struct.GPR, %struct.GPR* %8250, i32 0, i32 1
  %8252 = getelementptr inbounds %struct.Reg, %struct.Reg* %8251, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8252 to i64*
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8254 = getelementptr inbounds %struct.GPR, %struct.GPR* %8253, i32 0, i32 15
  %8255 = getelementptr inbounds %struct.Reg, %struct.Reg* %8254, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %8255 to i64*
  %8256 = load i64, i64* %RBP.i6
  %8257 = sub i64 %8256, 32
  %8258 = load i64, i64* %PC.i5
  %8259 = add i64 %8258, 3
  store i64 %8259, i64* %PC.i5
  %8260 = inttoptr i64 %8257 to i32*
  %8261 = load i32, i32* %8260
  %8262 = zext i32 %8261 to i64
  store i64 %8262, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_478a32, %struct.Memory** %MEMORY
  %loadMem_478a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8264 = getelementptr inbounds %struct.GPR, %struct.GPR* %8263, i32 0, i32 33
  %8265 = getelementptr inbounds %struct.Reg, %struct.Reg* %8264, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8265 to i64*
  %8266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8267 = getelementptr inbounds %struct.GPR, %struct.GPR* %8266, i32 0, i32 13
  %8268 = getelementptr inbounds %struct.Reg, %struct.Reg* %8267, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8268 to i64*
  %8269 = load i64, i64* %RSP.i
  %8270 = load i64, i64* %PC.i4
  %8271 = add i64 %8270, 4
  store i64 %8271, i64* %PC.i4
  %8272 = add i64 48, %8269
  store i64 %8272, i64* %RSP.i, align 8
  %8273 = icmp ult i64 %8272, %8269
  %8274 = icmp ult i64 %8272, 48
  %8275 = or i1 %8273, %8274
  %8276 = zext i1 %8275 to i8
  %8277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8276, i8* %8277, align 1
  %8278 = trunc i64 %8272 to i32
  %8279 = and i32 %8278, 255
  %8280 = call i32 @llvm.ctpop.i32(i32 %8279)
  %8281 = trunc i32 %8280 to i8
  %8282 = and i8 %8281, 1
  %8283 = xor i8 %8282, 1
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8283, i8* %8284, align 1
  %8285 = xor i64 48, %8269
  %8286 = xor i64 %8285, %8272
  %8287 = lshr i64 %8286, 4
  %8288 = trunc i64 %8287 to i8
  %8289 = and i8 %8288, 1
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8289, i8* %8290, align 1
  %8291 = icmp eq i64 %8272, 0
  %8292 = zext i1 %8291 to i8
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8292, i8* %8293, align 1
  %8294 = lshr i64 %8272, 63
  %8295 = trunc i64 %8294 to i8
  %8296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8295, i8* %8296, align 1
  %8297 = lshr i64 %8269, 63
  %8298 = xor i64 %8294, %8297
  %8299 = add i64 %8298, %8294
  %8300 = icmp eq i64 %8299, 2
  %8301 = zext i1 %8300 to i8
  %8302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8301, i8* %8302, align 1
  store %struct.Memory* %loadMem_478a35, %struct.Memory** %MEMORY
  %loadMem_478a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8304 = getelementptr inbounds %struct.GPR, %struct.GPR* %8303, i32 0, i32 33
  %8305 = getelementptr inbounds %struct.Reg, %struct.Reg* %8304, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8305 to i64*
  %8306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8307 = getelementptr inbounds %struct.GPR, %struct.GPR* %8306, i32 0, i32 15
  %8308 = getelementptr inbounds %struct.Reg, %struct.Reg* %8307, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8308 to i64*
  %8309 = load i64, i64* %PC.i2
  %8310 = add i64 %8309, 1
  store i64 %8310, i64* %PC.i2
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8312 = load i64, i64* %8311, align 8
  %8313 = add i64 %8312, 8
  %8314 = inttoptr i64 %8312 to i64*
  %8315 = load i64, i64* %8314
  store i64 %8315, i64* %RBP.i3, align 8
  store i64 %8313, i64* %8311, align 8
  store %struct.Memory* %loadMem_478a39, %struct.Memory** %MEMORY
  %loadMem_478a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8317 = getelementptr inbounds %struct.GPR, %struct.GPR* %8316, i32 0, i32 33
  %8318 = getelementptr inbounds %struct.Reg, %struct.Reg* %8317, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8318 to i64*
  %8319 = load i64, i64* %PC.i1
  %8320 = add i64 %8319, 1
  store i64 %8320, i64* %PC.i1
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8323 = load i64, i64* %8322, align 8
  %8324 = inttoptr i64 %8323 to i64*
  %8325 = load i64, i64* %8324
  store i64 %8325, i64* %8321, align 8
  %8326 = add i64 %8323, 8
  store i64 %8326, i64* %8322, align 8
  store %struct.Memory* %loadMem_478a3a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_478a3a
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x78___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 120, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jne_.L_4782bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2aef___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2aef_type* @G__0x4c2aef to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x30___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 48, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4782f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2b09___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2b09_type* @G__0x4c2b09 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2b23___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2b23_type* @G__0x4c2b23 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 8, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b2c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ue_v(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2b3d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2b3d_type* @G__0x4c2b3d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2b57___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2b57_type* @G__0x4c2b57 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.u_1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2b75___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2b75_type* @G__0x4c2b75 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x38__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2b91___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2b91_type* @G__0x4c2b91 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x3c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
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

define %struct.Memory* @routine_jbe_.L_47864d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2bae___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2bae_type* @G__0x4c2bae to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x40__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x40__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
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

define %struct.Memory* @routine_jne_.L_47844e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 60
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_ja_.L_478449(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2bc8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2bc8_type* @G__0x4c2bc8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x44__rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 68
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478405(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_478648(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 2
  %16 = icmp ult i32 %14, 2
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
  %25 = xor i32 %14, 2
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

define %struct.Memory* @routine_jne_.L_4784d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jae_.L_4784d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2be2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2be2_type* @G__0x4c2be2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x64__rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2bf3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2bf3_type* @G__0x4c2bf3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x84__rdx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 132
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 8
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478463(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_478643(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_je_.L_478501(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_cmpl__0x5__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jne_.L_47854c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2c08___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2c08_type* @G__0x4c2c08 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xa4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2c2f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2c2f_type* @G__0x4c2c2f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xa8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47863e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x6__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jne_.L_478639(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x3c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jb_.L_478574(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4785b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0x3c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 2
  %16 = icmp ult i32 %14, 2
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
  %25 = xor i32 %14, 2
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

define %struct.Memory* @routine_jb_.L_47858e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4785b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__0x3c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
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

define %struct.Memory* @routine_jb_.L_4785a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4785af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2c53___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2c53_type* @G__0x4c2c53 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xac__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xac__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 172
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

define %struct.Memory* @routine_ja_.L_478634(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2c75___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2c75_type* @G__0x4c2c75 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 176
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl___rax__rdx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = zext i8 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.u_v(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4785e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_478639(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47864d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4c2c8d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2c8d_type* @G__0x4c2c8d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb8__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2caf___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2caf_type* @G__0x4c2caf to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xbc__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2cd1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2cd1_type* @G__0x4c2cd1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc0__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2ce9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2ce9_type* @G__0x4c2ce9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc4__rdx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2d02___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2d02_type* @G__0x4c2d02 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc8__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.se_v(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2d1b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2d1b_type* @G__0x4c2d1b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xcc__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.IdentifyProfile(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x64__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 100
  %16 = icmp ult i32 %14, 100
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
  %25 = xor i32 %14, 100
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

define %struct.Memory* @routine_je_.L_478757(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6e__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 110
  %16 = icmp ult i32 %14, 110
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
  %25 = xor i32 %14, 110
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

define %struct.Memory* @routine_cmpl__0x7a__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 122
  %16 = icmp ult i32 %14, 122
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
  %25 = xor i32 %14, 122
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

define %struct.Memory* @routine_cmpl__0x90__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 144
  %16 = icmp ult i32 %14, 144
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
  %25 = xor i32 %14, 144
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

define %struct.Memory* @routine_jne_.L_47877f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2d34___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2d34_type* @G__0x4c2d34 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xd4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4787a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0xd0__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2d50___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2d50_type* @G__0x4c2d50 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xdc__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2d7c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2d7c_type* @G__0x4c2d7c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xe0__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2d9d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2d9d_type* @G__0x4c2d9d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xe4__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_478836(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4789ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c2dc1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2dc1_type* @G__0x4c2dc1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2dde___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2dde_type* @G__0x4c2dde to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x14__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
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

define %struct.Memory* @routine_je_.L_4789dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x6___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = add i32 6, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 6
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
  %26 = xor i64 6, %9
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

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = sub i32 %12, %14
  %19 = icmp ult i32 %12, %14
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %15, %13
  %29 = trunc i64 %28 to i32
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %14, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4789d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4c2e03___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2e03_type* @G__0x4c2e03 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 24
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x18__rdx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RDI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 24
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4789c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jae_.L_47894e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d4520___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d4520_type* @G__0x6d4520 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d1fc0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x6d1fc0_type* @G__0x6d1fc0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x711780___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x711780_type* @G__0x711780 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x1___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %9, 0
  %14 = icmp slt i64 %12, 0
  %15 = xor i1 %13, %14
  store i64 %12, i64* %R8, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = zext i1 %13 to i8
  store i8 %17, i8* %16, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = trunc i64 %12 to i32
  %20 = and i32 %19, 254
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %18, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i64 %12, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i64 %12, 63
  %31 = trunc i64 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %33 = zext i1 %15 to i8
  store i8 %33, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RAX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Scaling_List(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4789bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x40___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 64, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d1f9c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d1f9c_type* @G__0x6d1f9c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6f6e20___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x6f6e20_type* @G__0x6f6e20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x721ca0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x721ca0_type* @G__0x721ca0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x6___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 6
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %12, 6
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
  %24 = xor i64 6, %9
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

define %struct.Memory* @routine_movl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x7___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 6
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4789c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4789c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47888b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4789dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4c2e26___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2e26_type* @G__0x4c2e26 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xd8__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.SODBtoRBSP(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
