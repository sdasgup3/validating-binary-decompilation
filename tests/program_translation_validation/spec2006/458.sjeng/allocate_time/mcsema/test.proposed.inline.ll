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
%G_0x62ea00_type = type <{ [4 x i8] }>
%G_0x6ad3__rip__type = type <{ [8 x i8] }>
%G_0x6afd__rip__type = type <{ [8 x i8] }>
%G_0x6b02__rip__type = type <{ [8 x i8] }>
%G_0x6b4b__rip__type = type <{ [8 x i8] }>
%G_0x6b95__rip__type = type <{ [8 x i8] }>
%G_0x6bb3__rip__type = type <{ [8 x i8] }>
%G_0x6bca__rip__type = type <{ [8 x i8] }>
%G_0x6bd2__rip__type = type <{ [8 x i8] }>
%G_0x6be5__rip__type = type <{ [8 x i8] }>
%G_0x6c22__rip__type = type <{ [8 x i8] }>
%G_0x6c6f__rip__type = type <{ [8 x i8] }>
%G_0x6c80__rip__type = type <{ [8 x i8] }>
%G_0x6cb9__rip__type = type <{ [8 x i8] }>
%G_0x6cd7__rip__type = type <{ [8 x i8] }>
%G_0x6d26__rip__type = type <{ [8 x i8] }>
%G_0x6d41__rip__type = type <{ [8 x i8] }>
%G_0x6d70__rip__type = type <{ [8 x i8] }>
%G_0x6dc0__rip__type = type <{ [8 x i8] }>
%G_0x6ddf__rip__type = type <{ [8 x i8] }>
%G_0x6e19__rip__type = type <{ [8 x i8] }>
%G_0x6e48__rip__type = type <{ [8 x i8] }>
%G_0x6e72__rip__type = type <{ [8 x i8] }>
%G_0x6e89__rip__type = type <{ [8 x i8] }>
%G_0x6ecd__rip__type = type <{ [8 x i8] }>
%G_0x6f04__rip__type = type <{ [8 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x8661d8_type = type <{ [4 x i8] }>
%G_0x86bd64_type = type <{ [4 x i8] }>
%G_0x86bd70_type = type <{ [4 x i8] }>
%G_0x86bd88_type = type <{ [4 x i8] }>
%G_0x8a05b4_type = type <{ [4 x i8] }>
%G_0x8a0a78_type = type <{ [4 x i8] }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x62ea00 = global %G_0x62ea00_type zeroinitializer
@G_0x6ad3__rip_ = global %G_0x6ad3__rip__type zeroinitializer
@G_0x6afd__rip_ = global %G_0x6afd__rip__type zeroinitializer
@G_0x6b02__rip_ = global %G_0x6b02__rip__type zeroinitializer
@G_0x6b4b__rip_ = global %G_0x6b4b__rip__type zeroinitializer
@G_0x6b95__rip_ = global %G_0x6b95__rip__type zeroinitializer
@G_0x6bb3__rip_ = global %G_0x6bb3__rip__type zeroinitializer
@G_0x6bca__rip_ = global %G_0x6bca__rip__type zeroinitializer
@G_0x6bd2__rip_ = global %G_0x6bd2__rip__type zeroinitializer
@G_0x6be5__rip_ = global %G_0x6be5__rip__type zeroinitializer
@G_0x6c22__rip_ = global %G_0x6c22__rip__type zeroinitializer
@G_0x6c6f__rip_ = global %G_0x6c6f__rip__type zeroinitializer
@G_0x6c80__rip_ = global %G_0x6c80__rip__type zeroinitializer
@G_0x6cb9__rip_ = global %G_0x6cb9__rip__type zeroinitializer
@G_0x6cd7__rip_ = global %G_0x6cd7__rip__type zeroinitializer
@G_0x6d26__rip_ = global %G_0x6d26__rip__type zeroinitializer
@G_0x6d41__rip_ = global %G_0x6d41__rip__type zeroinitializer
@G_0x6d70__rip_ = global %G_0x6d70__rip__type zeroinitializer
@G_0x6dc0__rip_ = global %G_0x6dc0__rip__type zeroinitializer
@G_0x6ddf__rip_ = global %G_0x6ddf__rip__type zeroinitializer
@G_0x6e19__rip_ = global %G_0x6e19__rip__type zeroinitializer
@G_0x6e48__rip_ = global %G_0x6e48__rip__type zeroinitializer
@G_0x6e72__rip_ = global %G_0x6e72__rip__type zeroinitializer
@G_0x6e89__rip_ = global %G_0x6e89__rip__type zeroinitializer
@G_0x6ecd__rip_ = global %G_0x6ecd__rip__type zeroinitializer
@G_0x6f04__rip_ = global %G_0x6f04__rip__type zeroinitializer
@G_0x85f154 = global %G_0x85f154_type zeroinitializer
@G_0x8661d8 = global %G_0x8661d8_type zeroinitializer
@G_0x86bd64 = global %G_0x86bd64_type zeroinitializer
@G_0x86bd70 = global %G_0x86bd70_type zeroinitializer
@G_0x86bd88 = global %G_0x86bd88_type zeroinitializer
@G_0x8a05b4 = global %G_0x8a05b4_type zeroinitializer
@G_0x8a0a78 = global %G_0x8a0a78_type zeroinitializer
@G_0x8a2a04 = global %G_0x8a2a04_type zeroinitializer

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

; Function Attrs: alwaysinline
define %struct.Memory* @allocate_time(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4214c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4214c0, %struct.Memory** %MEMORY
  %loadMem_4214c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i123
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i123
  store i64 %26, i64* %RBP.i124, align 8
  store %struct.Memory* %loadMem_4214c1, %struct.Memory** %MEMORY
  %loadMem_4214c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %32, i64 0, i64 0
  %YMM0.i158 = bitcast %union.VectorReg* %33 to %"class.std::bitset"*
  %34 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %35 = load i64, i64* %PC.i157
  %36 = add i64 %35, ptrtoint (%G_0x6f04__rip__type* @G_0x6f04__rip_ to i64)
  %37 = load i64, i64* %PC.i157
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC.i157
  %39 = inttoptr i64 %36 to double*
  %40 = load double, double* %39
  %41 = bitcast i8* %34 to double*
  store double %40, double* %41, align 1
  %42 = getelementptr inbounds i8, i8* %34, i64 8
  %43 = bitcast i8* %42 to double*
  store double 0.000000e+00, double* %43, align 1
  store %struct.Memory* %loadMem_4214c4, %struct.Memory** %MEMORY
  %loadMem_4214cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 1
  %YMM1.i230 = bitcast %union.VectorReg* %48 to %"class.std::bitset"*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 1
  %XMM1.i231 = bitcast %union.VectorReg* %50 to %union.vec128_t*
  %51 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %52 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %53 = bitcast %union.vec128_t* %XMM1.i231 to i8*
  %54 = load i64, i64* %PC.i229
  %55 = add i64 %54, 3
  store i64 %55, i64* %PC.i229
  %56 = bitcast i8* %52 to i64*
  %57 = load i64, i64* %56, align 1
  %58 = getelementptr inbounds i8, i8* %52, i64 8
  %59 = bitcast i8* %58 to i64*
  %60 = load i64, i64* %59, align 1
  %61 = bitcast i8* %53 to i64*
  %62 = load i64, i64* %61, align 1
  %63 = getelementptr inbounds i8, i8* %53, i64 8
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 1
  %66 = xor i64 %62, %57
  %67 = xor i64 %65, %60
  %68 = trunc i64 %66 to i32
  %69 = lshr i64 %66, 32
  %70 = trunc i64 %69 to i32
  %71 = bitcast i8* %51 to i32*
  store i32 %68, i32* %71, align 1
  %72 = getelementptr inbounds i8, i8* %51, i64 4
  %73 = bitcast i8* %72 to i32*
  store i32 %70, i32* %73, align 1
  %74 = trunc i64 %67 to i32
  %75 = getelementptr inbounds i8, i8* %51, i64 8
  %76 = bitcast i8* %75 to i32*
  store i32 %74, i32* %76, align 1
  %77 = lshr i64 %67, 32
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds i8, i8* %51, i64 12
  %80 = bitcast i8* %79 to i32*
  store i32 %78, i32* %80, align 1
  store %struct.Memory* %loadMem_4214cc, %struct.Memory** %MEMORY
  %loadMem_4214cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 15
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %88 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %87, i64 0, i64 1
  %XMM1.i267 = bitcast %union.VectorReg* %88 to %union.vec128_t*
  %89 = load i64, i64* %RBP.i266
  %90 = sub i64 %89, 8
  %91 = bitcast %union.vec128_t* %XMM1.i267 to i8*
  %92 = load i64, i64* %PC.i265
  %93 = add i64 %92, 5
  store i64 %93, i64* %PC.i265
  %94 = bitcast i8* %91 to double*
  %95 = load double, double* %94, align 1
  %96 = inttoptr i64 %90 to double*
  store double %95, double* %96
  store %struct.Memory* %loadMem_4214cf, %struct.Memory** %MEMORY
  %loadMem_4214d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %103, i64 0, i64 0
  %XMM0.i303 = bitcast %union.VectorReg* %104 to %union.vec128_t*
  %105 = load i64, i64* %RBP.i302
  %106 = sub i64 %105, 16
  %107 = bitcast %union.vec128_t* %XMM0.i303 to i8*
  %108 = load i64, i64* %PC.i301
  %109 = add i64 %108, 5
  store i64 %109, i64* %PC.i301
  %110 = bitcast i8* %107 to double*
  %111 = load double, double* %110, align 1
  %112 = inttoptr i64 %106 to double*
  store double %111, double* %112
  store %struct.Memory* %loadMem_4214d4, %struct.Memory** %MEMORY
  %loadMem_4214d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %PC.i331
  %117 = add i64 %116, 8
  store i64 %117, i64* %PC.i331
  %118 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*)
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %119, align 1
  %120 = and i32 %118, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %124, i8* %125, align 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %126, align 1
  %127 = icmp eq i32 %118, 0
  %128 = zext i1 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %128, i8* %129, align 1
  %130 = lshr i32 %118, 31
  %131 = trunc i32 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %131, i8* %132, align 1
  %133 = lshr i32 %118, 31
  %134 = xor i32 %130, %133
  %135 = add i32 %134, %133
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %137, i8* %138, align 1
  store %struct.Memory* %loadMem_4214d9, %struct.Memory** %MEMORY
  %loadMem_4214e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %PC.i359
  %143 = add i64 %142, 884
  %144 = load i64, i64* %PC.i359
  %145 = add i64 %144, 6
  %146 = load i64, i64* %PC.i359
  %147 = add i64 %146, 6
  store i64 %147, i64* %PC.i359
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %149 = load i8, i8* %148, align 1
  %150 = icmp eq i8 %149, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %BRANCH_TAKEN, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %153 = select i1 %150, i64 %143, i64 %145
  store i64 %153, i64* %152, align 8
  store %struct.Memory* %loadMem_4214e1, %struct.Memory** %MEMORY
  %loadBr_4214e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214e1 = icmp eq i8 %loadBr_4214e1, 1
  br i1 %cmpBr_4214e1, label %block_.L_421855, label %block_4214e7

block_4214e7:                                     ; preds = %entry
  %loadMem_4214e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %PC.i378
  %158 = add i64 %157, 8
  store i64 %158, i64* %PC.i378
  %159 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*)
  %160 = sub i32 %159, 6
  %161 = icmp ult i32 %159, 6
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %162, i8* %163, align 1
  %164 = and i32 %160, 255
  %165 = call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %168, i8* %169, align 1
  %170 = xor i32 %159, 6
  %171 = xor i32 %170, %160
  %172 = lshr i32 %171, 4
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %174, i8* %175, align 1
  %176 = icmp eq i32 %160, 0
  %177 = zext i1 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %177, i8* %178, align 1
  %179 = lshr i32 %160, 31
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %180, i8* %181, align 1
  %182 = lshr i32 %159, 31
  %183 = xor i32 %179, %182
  %184 = add i32 %183, %182
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %186, i8* %187, align 1
  store %struct.Memory* %loadMem_4214e7, %struct.Memory** %MEMORY
  %loadMem_4214ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %PC.i403
  %192 = add i64 %191, 20
  %193 = load i64, i64* %PC.i403
  %194 = add i64 %193, 6
  %195 = load i64, i64* %PC.i403
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC.i403
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %198 = load i8, i8* %197, align 1
  %199 = icmp ne i8 %198, 0
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %201 = load i8, i8* %200, align 1
  %202 = icmp ne i8 %201, 0
  %203 = xor i1 %199, %202
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %BRANCH_TAKEN, align 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %207 = select i1 %203, i64 %194, i64 %192
  store i64 %207, i64* %206, align 8
  store %struct.Memory* %loadMem_4214ef, %struct.Memory** %MEMORY
  %loadBr_4214ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214ef = icmp eq i8 %loadBr_4214ef, 1
  br i1 %cmpBr_4214ef, label %block_.L_421503, label %block_4214f5

block_4214f5:                                     ; preds = %block_4214e7
  %loadMem_4214f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %PC.i402
  %212 = add i64 %211, 8
  store i64 %212, i64* %PC.i402
  %213 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %214, align 1
  %215 = and i32 %213, 255
  %216 = call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %219, i8* %220, align 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %221, align 1
  %222 = icmp eq i32 %213, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1
  %225 = lshr i32 %213, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1
  %228 = lshr i32 %213, 31
  %229 = xor i32 %225, %228
  %230 = add i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1
  store %struct.Memory* %loadMem_4214f5, %struct.Memory** %MEMORY
  %loadMem_4214fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %PC.i401
  %238 = add i64 %237, 74
  %239 = load i64, i64* %PC.i401
  %240 = add i64 %239, 6
  %241 = load i64, i64* %PC.i401
  %242 = add i64 %241, 6
  store i64 %242, i64* %PC.i401
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1
  store i8 %244, i8* %BRANCH_TAKEN, align 1
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8
  store %struct.Memory* %loadMem_4214fd, %struct.Memory** %MEMORY
  %loadBr_4214fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214fd = icmp eq i8 %loadBr_4214fd, 1
  br i1 %cmpBr_4214fd, label %block_.L_421547, label %block_.L_421503

block_.L_421503:                                  ; preds = %block_4214f5, %block_4214e7
  %loadMem_421503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %251, i64 0, i64 0
  %YMM0.i400 = bitcast %union.VectorReg* %252 to %"class.std::bitset"*
  %253 = bitcast %"class.std::bitset"* %YMM0.i400 to i8*
  %254 = load i64, i64* %PC.i399
  %255 = add i64 %254, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
  %256 = load i64, i64* %PC.i399
  %257 = add i64 %256, 8
  store i64 %257, i64* %PC.i399
  %258 = inttoptr i64 %255 to double*
  %259 = load double, double* %258
  %260 = bitcast i8* %253 to double*
  store double %259, double* %260, align 1
  %261 = getelementptr inbounds i8, i8* %253, i64 8
  %262 = bitcast i8* %261 to double*
  store double 0.000000e+00, double* %262, align 1
  store %struct.Memory* %loadMem_421503, %struct.Memory** %MEMORY
  %loadMem_42150b = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 1
  %YMM1.i398 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*
  %268 = bitcast %"class.std::bitset"* %YMM1.i398 to i8*
  %269 = load i64, i64* %PC.i397
  %270 = add i64 %269, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
  %271 = load i64, i64* %PC.i397
  %272 = add i64 %271, 8
  store i64 %272, i64* %PC.i397
  %273 = inttoptr i64 %270 to double*
  %274 = load double, double* %273
  %275 = bitcast i8* %268 to double*
  store double %274, double* %275, align 1
  %276 = getelementptr inbounds i8, i8* %268, i64 8
  %277 = bitcast i8* %276 to double*
  store double 0.000000e+00, double* %277, align 1
  store %struct.Memory* %loadMem_42150b, %struct.Memory** %MEMORY
  %loadMem_421513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %281, i64 0, i64 2
  %YMM2.i396 = bitcast %union.VectorReg* %282 to %"class.std::bitset"*
  %283 = bitcast %"class.std::bitset"* %YMM2.i396 to i8*
  %284 = load i64, i64* %PC.i395
  %285 = add i64 %284, 9
  store i64 %285, i64* %PC.i395
  %286 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %287 = sitofp i32 %286 to double
  %288 = bitcast i8* %283 to double*
  store double %287, double* %288, align 1
  store %struct.Memory* %loadMem_421513, %struct.Memory** %MEMORY
  %loadMem_42151c = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i393
  %296 = add i64 %295, 11
  store i64 %296, i64* %PC.i393
  %297 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*)
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 6000
  %300 = trunc i64 %299 to i32
  %301 = and i64 %299, 4294967295
  store i64 %301, i64* %RAX.i394, align 8
  %302 = shl i64 %299, 32
  %303 = ashr exact i64 %302, 32
  %304 = icmp ne i64 %303, %299
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %305, i8* %306, align 1
  %307 = and i32 %300, 255
  %308 = call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %311, i8* %312, align 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %313, align 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %314, align 1
  %315 = lshr i32 %300, 31
  %316 = trunc i32 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %316, i8* %317, align 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %305, i8* %318, align 1
  store %struct.Memory* %loadMem_42151c, %struct.Memory** %MEMORY
  %loadMem_421527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %PC.i391
  %326 = add i64 %325, 8
  store i64 %326, i64* %PC.i391
  %327 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*)
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 100
  %330 = trunc i64 %329 to i32
  %331 = and i64 %329, 4294967295
  store i64 %331, i64* %RCX.i392, align 8
  %332 = shl i64 %329, 32
  %333 = ashr exact i64 %332, 32
  %334 = icmp ne i64 %333, %329
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %335, i8* %336, align 1
  %337 = and i32 %330, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %343, align 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %344, align 1
  %345 = lshr i32 %330, 31
  %346 = trunc i32 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %346, i8* %347, align 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %335, i8* %348, align 1
  store %struct.Memory* %loadMem_421527, %struct.Memory** %MEMORY
  %loadMem_42152f = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %ECX.i389 = bitcast %union.anon* %354 to i32*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %RAX.i390
  %359 = load i32, i32* %ECX.i389
  %360 = zext i32 %359 to i64
  %361 = load i64, i64* %PC.i388
  %362 = add i64 %361, 2
  store i64 %362, i64* %PC.i388
  %363 = trunc i64 %358 to i32
  %364 = add i32 %359, %363
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RAX.i390, align 8
  %366 = icmp ult i32 %364, %363
  %367 = icmp ult i32 %364, %359
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %369, i8* %370, align 1
  %371 = and i32 %364, 255
  %372 = call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %375, i8* %376, align 1
  %377 = xor i64 %360, %358
  %378 = trunc i64 %377 to i32
  %379 = xor i32 %378, %364
  %380 = lshr i32 %379, 4
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %382, i8* %383, align 1
  %384 = icmp eq i32 %364, 0
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %385, i8* %386, align 1
  %387 = lshr i32 %364, 31
  %388 = trunc i32 %387 to i8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %388, i8* %389, align 1
  %390 = lshr i32 %363, 31
  %391 = lshr i32 %359, 31
  %392 = xor i32 %387, %390
  %393 = xor i32 %387, %391
  %394 = add i32 %392, %393
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %396, i8* %397, align 1
  store %struct.Memory* %loadMem_42152f, %struct.Memory** %MEMORY
  %loadMem_421531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %403 to i32*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %404, i64 0, i64 3
  %YMM3.i387 = bitcast %union.VectorReg* %405 to %"class.std::bitset"*
  %406 = bitcast %"class.std::bitset"* %YMM3.i387 to i8*
  %407 = load i32, i32* %EAX.i386
  %408 = zext i32 %407 to i64
  %409 = load i64, i64* %PC.i385
  %410 = add i64 %409, 4
  store i64 %410, i64* %PC.i385
  %411 = sitofp i32 %407 to double
  %412 = bitcast i8* %406 to double*
  store double %411, double* %412, align 1
  store %struct.Memory* %loadMem_421531, %struct.Memory** %MEMORY
  %loadMem_421535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %417 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %416, i64 0, i64 3
  %YMM3.i383 = bitcast %union.VectorReg* %417 to %"class.std::bitset"*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %418, i64 0, i64 1
  %XMM1.i384 = bitcast %union.VectorReg* %419 to %union.vec128_t*
  %420 = bitcast %"class.std::bitset"* %YMM3.i383 to i8*
  %421 = bitcast %"class.std::bitset"* %YMM3.i383 to i8*
  %422 = bitcast %union.vec128_t* %XMM1.i384 to i8*
  %423 = load i64, i64* %PC.i382
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC.i382
  %425 = bitcast i8* %421 to double*
  %426 = load double, double* %425, align 1
  %427 = getelementptr inbounds i8, i8* %421, i64 8
  %428 = bitcast i8* %427 to i64*
  %429 = load i64, i64* %428, align 1
  %430 = bitcast i8* %422 to double*
  %431 = load double, double* %430, align 1
  %432 = fmul double %426, %431
  %433 = bitcast i8* %420 to double*
  store double %432, double* %433, align 1
  %434 = getelementptr inbounds i8, i8* %420, i64 8
  %435 = bitcast i8* %434 to i64*
  store i64 %429, i64* %435, align 1
  store %struct.Memory* %loadMem_421535, %struct.Memory** %MEMORY
  %loadMem_421539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %439, i64 0, i64 3
  %YMM3.i380 = bitcast %union.VectorReg* %440 to %"class.std::bitset"*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %441, i64 0, i64 0
  %XMM0.i381 = bitcast %union.VectorReg* %442 to %union.vec128_t*
  %443 = bitcast %"class.std::bitset"* %YMM3.i380 to i8*
  %444 = bitcast %"class.std::bitset"* %YMM3.i380 to i8*
  %445 = bitcast %union.vec128_t* %XMM0.i381 to i8*
  %446 = load i64, i64* %PC.i379
  %447 = add i64 %446, 4
  store i64 %447, i64* %PC.i379
  %448 = bitcast i8* %444 to double*
  %449 = load double, double* %448, align 1
  %450 = getelementptr inbounds i8, i8* %444, i64 8
  %451 = bitcast i8* %450 to i64*
  %452 = load i64, i64* %451, align 1
  %453 = bitcast i8* %445 to double*
  %454 = load double, double* %453, align 1
  %455 = fdiv double %449, %454
  %456 = bitcast i8* %443 to double*
  store double %455, double* %456, align 1
  %457 = getelementptr inbounds i8, i8* %443, i64 8
  %458 = bitcast i8* %457 to i64*
  store i64 %452, i64* %458, align 1
  store %struct.Memory* %loadMem_421539, %struct.Memory** %MEMORY
  %loadMem_42153d = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %462, i64 0, i64 2
  %XMM2.i376 = bitcast %union.VectorReg* %463 to %union.vec128_t*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %464, i64 0, i64 3
  %XMM3.i377 = bitcast %union.VectorReg* %465 to %union.vec128_t*
  %466 = bitcast %union.vec128_t* %XMM3.i377 to i8*
  %467 = bitcast %union.vec128_t* %XMM2.i376 to i8*
  %468 = load i64, i64* %PC.i375
  %469 = add i64 %468, 4
  store i64 %469, i64* %PC.i375
  %470 = bitcast i8* %466 to double*
  %471 = load double, double* %470, align 1
  %472 = bitcast i8* %467 to double*
  %473 = load double, double* %472, align 1
  %474 = fcmp uno double %471, %473
  br i1 %474, label %475, label %487

; <label>:475:                                    ; preds = %block_.L_421503
  %476 = fadd double %471, %473
  %477 = bitcast double %476 to i64
  %478 = and i64 %477, 9221120237041090560
  %479 = icmp eq i64 %478, 9218868437227405312
  %480 = and i64 %477, 2251799813685247
  %481 = icmp ne i64 %480, 0
  %482 = and i1 %479, %481
  br i1 %482, label %483, label %493

; <label>:483:                                    ; preds = %475
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %485, %struct.Memory* %loadMem_42153d)
  br label %routine_ucomisd__xmm2___xmm3.exit

; <label>:487:                                    ; preds = %block_.L_421503
  %488 = fcmp ogt double %471, %473
  br i1 %488, label %493, label %489

; <label>:489:                                    ; preds = %487
  %490 = fcmp olt double %471, %473
  br i1 %490, label %493, label %491

; <label>:491:                                    ; preds = %489
  %492 = fcmp oeq double %471, %473
  br i1 %492, label %493, label %500

; <label>:493:                                    ; preds = %491, %489, %487, %475
  %494 = phi i8 [ 0, %487 ], [ 0, %489 ], [ 1, %491 ], [ 1, %475 ]
  %495 = phi i8 [ 0, %487 ], [ 0, %489 ], [ 0, %491 ], [ 1, %475 ]
  %496 = phi i8 [ 0, %487 ], [ 1, %489 ], [ 0, %491 ], [ 1, %475 ]
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %494, i8* %497, align 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %495, i8* %498, align 1
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %496, i8* %499, align 1
  br label %500

; <label>:500:                                    ; preds = %493, %491
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %501, align 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %502, align 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %503, align 1
  br label %routine_ucomisd__xmm2___xmm3.exit

routine_ucomisd__xmm2___xmm3.exit:                ; preds = %483, %500
  %504 = phi %struct.Memory* [ %486, %483 ], [ %loadMem_42153d, %500 ]
  store %struct.Memory* %504, %struct.Memory** %MEMORY
  %loadMem_421541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %PC.i374
  %509 = add i64 %508, 259
  %510 = load i64, i64* %PC.i374
  %511 = add i64 %510, 6
  %512 = load i64, i64* %PC.i374
  %513 = add i64 %512, 6
  store i64 %513, i64* %PC.i374
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %515 = load i8, i8* %514, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %517 = load i8, i8* %516, align 1
  %518 = or i8 %517, %515
  %519 = icmp ne i8 %518, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %BRANCH_TAKEN, align 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %522 = select i1 %519, i64 %509, i64 %511
  store i64 %522, i64* %521, align 8
  store %struct.Memory* %loadMem_421541, %struct.Memory** %MEMORY
  %loadBr_421541 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421541 = icmp eq i8 %loadBr_421541, 1
  br i1 %cmpBr_421541, label %block_.L_421644, label %block_.L_421547

block_.L_421547:                                  ; preds = %routine_ucomisd__xmm2___xmm3.exit, %block_4214f5
  %loadMem_421547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %526, i64 0, i64 0
  %YMM0.i373 = bitcast %union.VectorReg* %527 to %"class.std::bitset"*
  %528 = bitcast %"class.std::bitset"* %YMM0.i373 to i8*
  %529 = load i64, i64* %PC.i372
  %530 = add i64 %529, ptrtoint (%G_0x6e89__rip__type* @G_0x6e89__rip_ to i64)
  %531 = load i64, i64* %PC.i372
  %532 = add i64 %531, 8
  store i64 %532, i64* %PC.i372
  %533 = inttoptr i64 %530 to double*
  %534 = load double, double* %533
  %535 = bitcast i8* %528 to double*
  store double %534, double* %535, align 1
  %536 = getelementptr inbounds i8, i8* %528, i64 8
  %537 = bitcast i8* %536 to double*
  store double 0.000000e+00, double* %537, align 1
  store %struct.Memory* %loadMem_421547, %struct.Memory** %MEMORY
  %loadMem_42154f = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %PC.i370
  %545 = add i64 %544, 7
  store i64 %545, i64* %PC.i370
  %546 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_42154f, %struct.Memory** %MEMORY
  %loadMem_421556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RAX.i369
  %555 = load i64, i64* %PC.i368
  %556 = add i64 %555, 7
  store i64 %556, i64* %PC.i368
  %557 = trunc i64 %554 to i32
  %558 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %559 = sub i32 %557, %558
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RAX.i369, align 8
  %561 = icmp ult i32 %557, %558
  %562 = zext i1 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %562, i8* %563, align 1
  %564 = and i32 %559, 255
  %565 = call i32 @llvm.ctpop.i32(i32 %564)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %568, i8* %569, align 1
  %570 = xor i32 %558, %557
  %571 = xor i32 %570, %559
  %572 = lshr i32 %571, 4
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %574, i8* %575, align 1
  %576 = icmp eq i32 %559, 0
  %577 = zext i1 %576 to i8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %577, i8* %578, align 1
  %579 = lshr i32 %559, 31
  %580 = trunc i32 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %580, i8* %581, align 1
  %582 = lshr i32 %557, 31
  %583 = lshr i32 %558, 31
  %584 = xor i32 %583, %582
  %585 = xor i32 %579, %582
  %586 = add i32 %585, %584
  %587 = icmp eq i32 %586, 2
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %588, i8* %589, align 1
  store %struct.Memory* %loadMem_421556, %struct.Memory** %MEMORY
  %loadMem_42155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %EAX.i366 = bitcast %union.anon* %595 to i32*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %596, i64 0, i64 1
  %YMM1.i367 = bitcast %union.VectorReg* %597 to %"class.std::bitset"*
  %598 = bitcast %"class.std::bitset"* %YMM1.i367 to i8*
  %599 = load i32, i32* %EAX.i366
  %600 = zext i32 %599 to i64
  %601 = load i64, i64* %PC.i365
  %602 = add i64 %601, 4
  store i64 %602, i64* %PC.i365
  %603 = sitofp i32 %599 to double
  %604 = bitcast i8* %598 to double*
  store double %603, double* %604, align 1
  store %struct.Memory* %loadMem_42155d, %struct.Memory** %MEMORY
  %loadMem_421561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %608, i64 0, i64 2
  %YMM2.i364 = bitcast %union.VectorReg* %609 to %"class.std::bitset"*
  %610 = bitcast %"class.std::bitset"* %YMM2.i364 to i8*
  %611 = load i64, i64* %PC.i363
  %612 = add i64 %611, 9
  store i64 %612, i64* %PC.i363
  %613 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %614 = sitofp i32 %613 to double
  %615 = bitcast i8* %610 to double*
  store double %614, double* %615, align 1
  store %struct.Memory* %loadMem_421561, %struct.Memory** %MEMORY
  %loadMem_42156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %619, i64 0, i64 2
  %YMM2.i361 = bitcast %union.VectorReg* %620 to %"class.std::bitset"*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %621, i64 0, i64 0
  %XMM0.i362 = bitcast %union.VectorReg* %622 to %union.vec128_t*
  %623 = bitcast %"class.std::bitset"* %YMM2.i361 to i8*
  %624 = bitcast %"class.std::bitset"* %YMM2.i361 to i8*
  %625 = bitcast %union.vec128_t* %XMM0.i362 to i8*
  %626 = load i64, i64* %PC.i360
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC.i360
  %628 = bitcast i8* %624 to double*
  %629 = load double, double* %628, align 1
  %630 = getelementptr inbounds i8, i8* %624, i64 8
  %631 = bitcast i8* %630 to i64*
  %632 = load i64, i64* %631, align 1
  %633 = bitcast i8* %625 to double*
  %634 = load double, double* %633, align 1
  %635 = fdiv double %629, %634
  %636 = bitcast i8* %623 to double*
  store double %635, double* %636, align 1
  %637 = getelementptr inbounds i8, i8* %623, i64 8
  %638 = bitcast i8* %637 to i64*
  store i64 %632, i64* %638, align 1
  store %struct.Memory* %loadMem_42156a, %struct.Memory** %MEMORY
  %loadMem_42156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %642, i64 0, i64 1
  %XMM1.i356 = bitcast %union.VectorReg* %643 to %union.vec128_t*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %645 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %644, i64 0, i64 2
  %XMM2.i357 = bitcast %union.VectorReg* %645 to %union.vec128_t*
  %646 = bitcast %union.vec128_t* %XMM1.i356 to i8*
  %647 = bitcast %union.vec128_t* %XMM2.i357 to i8*
  %648 = load i64, i64* %PC.i355
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i355
  %650 = bitcast i8* %646 to double*
  %651 = load double, double* %650, align 1
  %652 = bitcast i8* %647 to double*
  %653 = load double, double* %652, align 1
  %654 = fcmp uno double %651, %653
  br i1 %654, label %655, label %667

; <label>:655:                                    ; preds = %block_.L_421547
  %656 = fadd double %651, %653
  %657 = bitcast double %656 to i64
  %658 = and i64 %657, 9221120237041090560
  %659 = icmp eq i64 %658, 9218868437227405312
  %660 = and i64 %657, 2251799813685247
  %661 = icmp ne i64 %660, 0
  %662 = and i1 %659, %661
  br i1 %662, label %663, label %673

; <label>:663:                                    ; preds = %655
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %665, %struct.Memory* %loadMem_42156e)
  br label %routine_ucomisd__xmm2___xmm1.exit358

; <label>:667:                                    ; preds = %block_.L_421547
  %668 = fcmp ogt double %651, %653
  br i1 %668, label %673, label %669

; <label>:669:                                    ; preds = %667
  %670 = fcmp olt double %651, %653
  br i1 %670, label %673, label %671

; <label>:671:                                    ; preds = %669
  %672 = fcmp oeq double %651, %653
  br i1 %672, label %673, label %680

; <label>:673:                                    ; preds = %671, %669, %667, %655
  %674 = phi i8 [ 0, %667 ], [ 0, %669 ], [ 1, %671 ], [ 1, %655 ]
  %675 = phi i8 [ 0, %667 ], [ 0, %669 ], [ 0, %671 ], [ 1, %655 ]
  %676 = phi i8 [ 0, %667 ], [ 1, %669 ], [ 0, %671 ], [ 1, %655 ]
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %674, i8* %677, align 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %675, i8* %678, align 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %676, i8* %679, align 1
  br label %680

; <label>:680:                                    ; preds = %673, %671
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %681, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %682, align 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %683, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit358

routine_ucomisd__xmm2___xmm1.exit358:             ; preds = %663, %680
  %684 = phi %struct.Memory* [ %666, %663 ], [ %loadMem_42156e, %680 ]
  store %struct.Memory* %684, %struct.Memory** %MEMORY
  %loadMem_421572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %PC.i354
  %689 = add i64 %688, 38
  %690 = load i64, i64* %PC.i354
  %691 = add i64 %690, 6
  %692 = load i64, i64* %PC.i354
  %693 = add i64 %692, 6
  store i64 %693, i64* %PC.i354
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %695 = load i8, i8* %694, align 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %697 = load i8, i8* %696, align 1
  %698 = or i8 %697, %695
  %699 = icmp ne i8 %698, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %BRANCH_TAKEN, align 1
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %702 = select i1 %699, i64 %689, i64 %691
  store i64 %702, i64* %701, align 8
  store %struct.Memory* %loadMem_421572, %struct.Memory** %MEMORY
  %loadBr_421572 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421572 = icmp eq i8 %loadBr_421572, 1
  br i1 %cmpBr_421572, label %block_.L_421598, label %block_421578

block_421578:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit358
  %loadMem_421578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %PC.i353
  %707 = add i64 %706, 8
  store i64 %707, i64* %PC.i353
  %708 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*)
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %709, align 1
  %710 = and i32 %708, 255
  %711 = call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %714, i8* %715, align 1
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %716, align 1
  %717 = icmp eq i32 %708, 0
  %718 = zext i1 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %718, i8* %719, align 1
  %720 = lshr i32 %708, 31
  %721 = trunc i32 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %721, i8* %722, align 1
  %723 = lshr i32 %708, 31
  %724 = xor i32 %720, %723
  %725 = add i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %727, i8* %728, align 1
  store %struct.Memory* %loadMem_421578, %struct.Memory** %MEMORY
  %loadMem_421580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i352
  %733 = add i64 %732, 24
  %734 = load i64, i64* %PC.i352
  %735 = add i64 %734, 6
  %736 = load i64, i64* %PC.i352
  %737 = add i64 %736, 6
  store i64 %737, i64* %PC.i352
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %739 = load i8, i8* %738, align 1
  store i8 %739, i8* %BRANCH_TAKEN, align 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %741 = icmp ne i8 %739, 0
  %742 = select i1 %741, i64 %733, i64 %735
  store i64 %742, i64* %740, align 8
  store %struct.Memory* %loadMem_421580, %struct.Memory** %MEMORY
  %loadBr_421580 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421580 = icmp eq i8 %loadBr_421580, 1
  br i1 %cmpBr_421580, label %block_.L_421598, label %block_421586

block_421586:                                     ; preds = %block_421578
  %loadMem_421586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %747 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %746, i64 0, i64 0
  %YMM0.i351 = bitcast %union.VectorReg* %747 to %"class.std::bitset"*
  %748 = bitcast %"class.std::bitset"* %YMM0.i351 to i8*
  %749 = load i64, i64* %PC.i350
  %750 = add i64 %749, ptrtoint (%G_0x6e72__rip__type* @G_0x6e72__rip_ to i64)
  %751 = load i64, i64* %PC.i350
  %752 = add i64 %751, 8
  store i64 %752, i64* %PC.i350
  %753 = inttoptr i64 %750 to double*
  %754 = load double, double* %753
  %755 = bitcast i8* %748 to double*
  store double %754, double* %755, align 1
  %756 = getelementptr inbounds i8, i8* %748, i64 8
  %757 = bitcast i8* %756 to double*
  store double 0.000000e+00, double* %757, align 1
  store %struct.Memory* %loadMem_421586, %struct.Memory** %MEMORY
  %loadMem_42158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 15
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %764, i64 0, i64 0
  %XMM0.i349 = bitcast %union.VectorReg* %765 to %union.vec128_t*
  %766 = load i64, i64* %RBP.i348
  %767 = sub i64 %766, 16
  %768 = bitcast %union.vec128_t* %XMM0.i349 to i8*
  %769 = load i64, i64* %PC.i347
  %770 = add i64 %769, 5
  store i64 %770, i64* %PC.i347
  %771 = bitcast i8* %768 to double*
  %772 = load double, double* %771, align 1
  %773 = inttoptr i64 %767 to double*
  store double %772, double* %773
  store %struct.Memory* %loadMem_42158e, %struct.Memory** %MEMORY
  %loadMem_421593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %776 to i64*
  %777 = load i64, i64* %PC.i346
  %778 = add i64 %777, 172
  %779 = load i64, i64* %PC.i346
  %780 = add i64 %779, 5
  store i64 %780, i64* %PC.i346
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %778, i64* %781, align 8
  store %struct.Memory* %loadMem_421593, %struct.Memory** %MEMORY
  br label %block_.L_42163f

block_.L_421598:                                  ; preds = %block_421578, %routine_ucomisd__xmm2___xmm1.exit358
  %loadMem_421598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %785, i64 0, i64 0
  %YMM0.i345 = bitcast %union.VectorReg* %786 to %"class.std::bitset"*
  %787 = bitcast %"class.std::bitset"* %YMM0.i345 to i8*
  %788 = load i64, i64* %PC.i344
  %789 = add i64 %788, ptrtoint (%G_0x6e48__rip__type* @G_0x6e48__rip_ to i64)
  %790 = load i64, i64* %PC.i344
  %791 = add i64 %790, 8
  store i64 %791, i64* %PC.i344
  %792 = inttoptr i64 %789 to double*
  %793 = load double, double* %792
  %794 = bitcast i8* %787 to double*
  store double %793, double* %794, align 1
  %795 = getelementptr inbounds i8, i8* %787, i64 8
  %796 = bitcast i8* %795 to double*
  store double 0.000000e+00, double* %796, align 1
  store %struct.Memory* %loadMem_421598, %struct.Memory** %MEMORY
  %loadMem_4215a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 1
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %PC.i342
  %804 = add i64 %803, 7
  store i64 %804, i64* %PC.i342
  %805 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_4215a0, %struct.Memory** %MEMORY
  %loadMem_4215a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 1
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RAX.i341
  %814 = load i64, i64* %PC.i340
  %815 = add i64 %814, 7
  store i64 %815, i64* %PC.i340
  %816 = trunc i64 %813 to i32
  %817 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %818 = sub i32 %816, %817
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX.i341, align 8
  %820 = icmp ult i32 %816, %817
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %821, i8* %822, align 1
  %823 = and i32 %818, 255
  %824 = call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %827, i8* %828, align 1
  %829 = xor i32 %817, %816
  %830 = xor i32 %829, %818
  %831 = lshr i32 %830, 4
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %833, i8* %834, align 1
  %835 = icmp eq i32 %818, 0
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %836, i8* %837, align 1
  %838 = lshr i32 %818, 31
  %839 = trunc i32 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %839, i8* %840, align 1
  %841 = lshr i32 %816, 31
  %842 = lshr i32 %817, 31
  %843 = xor i32 %842, %841
  %844 = xor i32 %838, %841
  %845 = add i32 %844, %843
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %847, i8* %848, align 1
  store %struct.Memory* %loadMem_4215a7, %struct.Memory** %MEMORY
  %loadMem_4215ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 1
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %854 to i32*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %855, i64 0, i64 1
  %YMM1.i339 = bitcast %union.VectorReg* %856 to %"class.std::bitset"*
  %857 = bitcast %"class.std::bitset"* %YMM1.i339 to i8*
  %858 = load i32, i32* %EAX.i338
  %859 = zext i32 %858 to i64
  %860 = load i64, i64* %PC.i337
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC.i337
  %862 = sitofp i32 %858 to double
  %863 = bitcast i8* %857 to double*
  store double %862, double* %863, align 1
  store %struct.Memory* %loadMem_4215ae, %struct.Memory** %MEMORY
  %loadMem_4215b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %867, i64 0, i64 2
  %YMM2.i336 = bitcast %union.VectorReg* %868 to %"class.std::bitset"*
  %869 = bitcast %"class.std::bitset"* %YMM2.i336 to i8*
  %870 = load i64, i64* %PC.i335
  %871 = add i64 %870, 9
  store i64 %871, i64* %PC.i335
  %872 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %873 = sitofp i32 %872 to double
  %874 = bitcast i8* %869 to double*
  store double %873, double* %874, align 1
  store %struct.Memory* %loadMem_4215b2, %struct.Memory** %MEMORY
  %loadMem_4215bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %879 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %878, i64 0, i64 2
  %YMM2.i333 = bitcast %union.VectorReg* %879 to %"class.std::bitset"*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %880, i64 0, i64 0
  %XMM0.i334 = bitcast %union.VectorReg* %881 to %union.vec128_t*
  %882 = bitcast %"class.std::bitset"* %YMM2.i333 to i8*
  %883 = bitcast %"class.std::bitset"* %YMM2.i333 to i8*
  %884 = bitcast %union.vec128_t* %XMM0.i334 to i8*
  %885 = load i64, i64* %PC.i332
  %886 = add i64 %885, 4
  store i64 %886, i64* %PC.i332
  %887 = bitcast i8* %883 to double*
  %888 = load double, double* %887, align 1
  %889 = getelementptr inbounds i8, i8* %883, i64 8
  %890 = bitcast i8* %889 to i64*
  %891 = load i64, i64* %890, align 1
  %892 = bitcast i8* %884 to double*
  %893 = load double, double* %892, align 1
  %894 = fdiv double %888, %893
  %895 = bitcast i8* %882 to double*
  store double %894, double* %895, align 1
  %896 = getelementptr inbounds i8, i8* %882, i64 8
  %897 = bitcast i8* %896 to i64*
  store i64 %891, i64* %897, align 1
  store %struct.Memory* %loadMem_4215bb, %struct.Memory** %MEMORY
  %loadMem_4215bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %901, i64 0, i64 1
  %XMM1.i328 = bitcast %union.VectorReg* %902 to %union.vec128_t*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %903, i64 0, i64 2
  %XMM2.i329 = bitcast %union.VectorReg* %904 to %union.vec128_t*
  %905 = bitcast %union.vec128_t* %XMM1.i328 to i8*
  %906 = bitcast %union.vec128_t* %XMM2.i329 to i8*
  %907 = load i64, i64* %PC.i327
  %908 = add i64 %907, 4
  store i64 %908, i64* %PC.i327
  %909 = bitcast i8* %905 to double*
  %910 = load double, double* %909, align 1
  %911 = bitcast i8* %906 to double*
  %912 = load double, double* %911, align 1
  %913 = fcmp uno double %910, %912
  br i1 %913, label %914, label %926

; <label>:914:                                    ; preds = %block_.L_421598
  %915 = fadd double %910, %912
  %916 = bitcast double %915 to i64
  %917 = and i64 %916, 9221120237041090560
  %918 = icmp eq i64 %917, 9218868437227405312
  %919 = and i64 %916, 2251799813685247
  %920 = icmp ne i64 %919, 0
  %921 = and i1 %918, %920
  br i1 %921, label %922, label %932

; <label>:922:                                    ; preds = %914
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %924 = load i64, i64* %923, align 8
  %925 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %924, %struct.Memory* %loadMem_4215bf)
  br label %routine_ucomisd__xmm2___xmm1.exit330

; <label>:926:                                    ; preds = %block_.L_421598
  %927 = fcmp ogt double %910, %912
  br i1 %927, label %932, label %928

; <label>:928:                                    ; preds = %926
  %929 = fcmp olt double %910, %912
  br i1 %929, label %932, label %930

; <label>:930:                                    ; preds = %928
  %931 = fcmp oeq double %910, %912
  br i1 %931, label %932, label %939

; <label>:932:                                    ; preds = %930, %928, %926, %914
  %933 = phi i8 [ 0, %926 ], [ 0, %928 ], [ 1, %930 ], [ 1, %914 ]
  %934 = phi i8 [ 0, %926 ], [ 0, %928 ], [ 0, %930 ], [ 1, %914 ]
  %935 = phi i8 [ 0, %926 ], [ 1, %928 ], [ 0, %930 ], [ 1, %914 ]
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %933, i8* %936, align 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %934, i8* %937, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %935, i8* %938, align 1
  br label %939

; <label>:939:                                    ; preds = %932, %930
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %940, align 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %941, align 1
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %942, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit330

routine_ucomisd__xmm2___xmm1.exit330:             ; preds = %922, %939
  %943 = phi %struct.Memory* [ %925, %922 ], [ %loadMem_4215bf, %939 ]
  store %struct.Memory* %943, %struct.Memory** %MEMORY
  %loadMem_4215c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %PC.i326
  %948 = add i64 %947, 38
  %949 = load i64, i64* %PC.i326
  %950 = add i64 %949, 6
  %951 = load i64, i64* %PC.i326
  %952 = add i64 %951, 6
  store i64 %952, i64* %PC.i326
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %954 = load i8, i8* %953, align 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %956 = load i8, i8* %955, align 1
  %957 = or i8 %956, %954
  %958 = icmp ne i8 %957, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %BRANCH_TAKEN, align 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %961 = select i1 %958, i64 %948, i64 %950
  store i64 %961, i64* %960, align 8
  store %struct.Memory* %loadMem_4215c3, %struct.Memory** %MEMORY
  %loadBr_4215c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215c3 = icmp eq i8 %loadBr_4215c3, 1
  br i1 %cmpBr_4215c3, label %block_.L_4215e9, label %block_4215c9

block_4215c9:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit330
  %loadMem_4215c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %PC.i325
  %966 = add i64 %965, 8
  store i64 %966, i64* %PC.i325
  %967 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*)
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %968, align 1
  %969 = and i32 %967, 255
  %970 = call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %973, i8* %974, align 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %975, align 1
  %976 = icmp eq i32 %967, 0
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %977, i8* %978, align 1
  %979 = lshr i32 %967, 31
  %980 = trunc i32 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %980, i8* %981, align 1
  %982 = lshr i32 %967, 31
  %983 = xor i32 %979, %982
  %984 = add i32 %983, %982
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %986, i8* %987, align 1
  store %struct.Memory* %loadMem_4215c9, %struct.Memory** %MEMORY
  %loadMem_4215d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %PC.i324
  %992 = add i64 %991, 24
  %993 = load i64, i64* %PC.i324
  %994 = add i64 %993, 6
  %995 = load i64, i64* %PC.i324
  %996 = add i64 %995, 6
  store i64 %996, i64* %PC.i324
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %998 = load i8, i8* %997, align 1
  store i8 %998, i8* %BRANCH_TAKEN, align 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1000 = icmp ne i8 %998, 0
  %1001 = select i1 %1000, i64 %992, i64 %994
  store i64 %1001, i64* %999, align 8
  store %struct.Memory* %loadMem_4215d1, %struct.Memory** %MEMORY
  %loadBr_4215d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215d1 = icmp eq i8 %loadBr_4215d1, 1
  br i1 %cmpBr_4215d1, label %block_.L_4215e9, label %block_4215d7

block_4215d7:                                     ; preds = %block_4215c9
  %loadMem_4215d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1005, i64 0, i64 0
  %YMM0.i323 = bitcast %union.VectorReg* %1006 to %"class.std::bitset"*
  %1007 = bitcast %"class.std::bitset"* %YMM0.i323 to i8*
  %1008 = load i64, i64* %PC.i322
  %1009 = add i64 %1008, ptrtoint (%G_0x6e19__rip__type* @G_0x6e19__rip_ to i64)
  %1010 = load i64, i64* %PC.i322
  %1011 = add i64 %1010, 8
  store i64 %1011, i64* %PC.i322
  %1012 = inttoptr i64 %1009 to double*
  %1013 = load double, double* %1012
  %1014 = bitcast i8* %1007 to double*
  store double %1013, double* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1007, i64 8
  %1016 = bitcast i8* %1015 to double*
  store double 0.000000e+00, double* %1016, align 1
  store %struct.Memory* %loadMem_4215d7, %struct.Memory** %MEMORY
  %loadMem_4215df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 0
  %XMM0.i321 = bitcast %union.VectorReg* %1024 to %union.vec128_t*
  %1025 = load i64, i64* %RBP.i320
  %1026 = sub i64 %1025, 16
  %1027 = bitcast %union.vec128_t* %XMM0.i321 to i8*
  %1028 = load i64, i64* %PC.i319
  %1029 = add i64 %1028, 5
  store i64 %1029, i64* %PC.i319
  %1030 = bitcast i8* %1027 to double*
  %1031 = load double, double* %1030, align 1
  %1032 = inttoptr i64 %1026 to double*
  store double %1031, double* %1032
  store %struct.Memory* %loadMem_4215df, %struct.Memory** %MEMORY
  %loadMem_4215e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %PC.i318
  %1037 = add i64 %1036, 86
  %1038 = load i64, i64* %PC.i318
  %1039 = add i64 %1038, 5
  store i64 %1039, i64* %PC.i318
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1037, i64* %1040, align 8
  store %struct.Memory* %loadMem_4215e4, %struct.Memory** %MEMORY
  br label %block_.L_42163a

block_.L_4215e9:                                  ; preds = %block_4215c9, %routine_ucomisd__xmm2___xmm1.exit330
  %loadMem_4215e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1045 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1044, i64 0, i64 0
  %YMM0.i317 = bitcast %union.VectorReg* %1045 to %"class.std::bitset"*
  %1046 = bitcast %"class.std::bitset"* %YMM0.i317 to i8*
  %1047 = load i64, i64* %PC.i316
  %1048 = add i64 %1047, ptrtoint (%G_0x6ddf__rip__type* @G_0x6ddf__rip_ to i64)
  %1049 = load i64, i64* %PC.i316
  %1050 = add i64 %1049, 8
  store i64 %1050, i64* %PC.i316
  %1051 = inttoptr i64 %1048 to double*
  %1052 = load double, double* %1051
  %1053 = bitcast i8* %1046 to double*
  store double %1052, double* %1053, align 1
  %1054 = getelementptr inbounds i8, i8* %1046, i64 8
  %1055 = bitcast i8* %1054 to double*
  store double 0.000000e+00, double* %1055, align 1
  store %struct.Memory* %loadMem_4215e9, %struct.Memory** %MEMORY
  %loadMem_4215f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %PC.i314
  %1063 = add i64 %1062, 7
  store i64 %1063, i64* %PC.i314
  %1064 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_4215f1, %struct.Memory** %MEMORY
  %loadMem_4215f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 33
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 1
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RAX.i313
  %1073 = load i64, i64* %PC.i312
  %1074 = add i64 %1073, 7
  store i64 %1074, i64* %PC.i312
  %1075 = trunc i64 %1072 to i32
  %1076 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %1077 = sub i32 %1075, %1076
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i313, align 8
  %1079 = icmp ult i32 %1075, %1076
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1080, i8* %1081, align 1
  %1082 = and i32 %1077, 255
  %1083 = call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1086, i8* %1087, align 1
  %1088 = xor i32 %1076, %1075
  %1089 = xor i32 %1088, %1077
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1092, i8* %1093, align 1
  %1094 = icmp eq i32 %1077, 0
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1095, i8* %1096, align 1
  %1097 = lshr i32 %1077, 31
  %1098 = trunc i32 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1098, i8* %1099, align 1
  %1100 = lshr i32 %1075, 31
  %1101 = lshr i32 %1076, 31
  %1102 = xor i32 %1101, %1100
  %1103 = xor i32 %1097, %1100
  %1104 = add i32 %1103, %1102
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1106, i8* %1107, align 1
  store %struct.Memory* %loadMem_4215f8, %struct.Memory** %MEMORY
  %loadMem_4215ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 1
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %EAX.i310 = bitcast %union.anon* %1113 to i32*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1114, i64 0, i64 1
  %YMM1.i311 = bitcast %union.VectorReg* %1115 to %"class.std::bitset"*
  %1116 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %1117 = load i32, i32* %EAX.i310
  %1118 = zext i32 %1117 to i64
  %1119 = load i64, i64* %PC.i309
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i309
  %1121 = sitofp i32 %1117 to double
  %1122 = bitcast i8* %1116 to double*
  store double %1121, double* %1122, align 1
  store %struct.Memory* %loadMem_4215ff, %struct.Memory** %MEMORY
  %loadMem_421603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1126, i64 0, i64 2
  %YMM2.i308 = bitcast %union.VectorReg* %1127 to %"class.std::bitset"*
  %1128 = bitcast %"class.std::bitset"* %YMM2.i308 to i8*
  %1129 = load i64, i64* %PC.i307
  %1130 = add i64 %1129, 9
  store i64 %1130, i64* %PC.i307
  %1131 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %1132 = sitofp i32 %1131 to double
  %1133 = bitcast i8* %1128 to double*
  store double %1132, double* %1133, align 1
  store %struct.Memory* %loadMem_421603, %struct.Memory** %MEMORY
  %loadMem_42160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1137, i64 0, i64 2
  %YMM2.i305 = bitcast %union.VectorReg* %1138 to %"class.std::bitset"*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1139, i64 0, i64 0
  %XMM0.i306 = bitcast %union.VectorReg* %1140 to %union.vec128_t*
  %1141 = bitcast %"class.std::bitset"* %YMM2.i305 to i8*
  %1142 = bitcast %"class.std::bitset"* %YMM2.i305 to i8*
  %1143 = bitcast %union.vec128_t* %XMM0.i306 to i8*
  %1144 = load i64, i64* %PC.i304
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %PC.i304
  %1146 = bitcast i8* %1142 to double*
  %1147 = load double, double* %1146, align 1
  %1148 = getelementptr inbounds i8, i8* %1142, i64 8
  %1149 = bitcast i8* %1148 to i64*
  %1150 = load i64, i64* %1149, align 1
  %1151 = bitcast i8* %1143 to double*
  %1152 = load double, double* %1151, align 1
  %1153 = fdiv double %1147, %1152
  %1154 = bitcast i8* %1141 to double*
  store double %1153, double* %1154, align 1
  %1155 = getelementptr inbounds i8, i8* %1141, i64 8
  %1156 = bitcast i8* %1155 to i64*
  store i64 %1150, i64* %1156, align 1
  store %struct.Memory* %loadMem_42160c, %struct.Memory** %MEMORY
  %loadMem_421610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1160, i64 0, i64 1
  %XMM1.i298 = bitcast %union.VectorReg* %1161 to %union.vec128_t*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1162, i64 0, i64 2
  %XMM2.i299 = bitcast %union.VectorReg* %1163 to %union.vec128_t*
  %1164 = bitcast %union.vec128_t* %XMM1.i298 to i8*
  %1165 = bitcast %union.vec128_t* %XMM2.i299 to i8*
  %1166 = load i64, i64* %PC.i297
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC.i297
  %1168 = bitcast i8* %1164 to double*
  %1169 = load double, double* %1168, align 1
  %1170 = bitcast i8* %1165 to double*
  %1171 = load double, double* %1170, align 1
  %1172 = fcmp uno double %1169, %1171
  br i1 %1172, label %1173, label %1185

; <label>:1173:                                   ; preds = %block_.L_4215e9
  %1174 = fadd double %1169, %1171
  %1175 = bitcast double %1174 to i64
  %1176 = and i64 %1175, 9221120237041090560
  %1177 = icmp eq i64 %1176, 9218868437227405312
  %1178 = and i64 %1175, 2251799813685247
  %1179 = icmp ne i64 %1178, 0
  %1180 = and i1 %1177, %1179
  br i1 %1180, label %1181, label %1191

; <label>:1181:                                   ; preds = %1173
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1183 = load i64, i64* %1182, align 8
  %1184 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1183, %struct.Memory* %loadMem_421610)
  br label %routine_ucomisd__xmm2___xmm1.exit300

; <label>:1185:                                   ; preds = %block_.L_4215e9
  %1186 = fcmp ogt double %1169, %1171
  br i1 %1186, label %1191, label %1187

; <label>:1187:                                   ; preds = %1185
  %1188 = fcmp olt double %1169, %1171
  br i1 %1188, label %1191, label %1189

; <label>:1189:                                   ; preds = %1187
  %1190 = fcmp oeq double %1169, %1171
  br i1 %1190, label %1191, label %1198

; <label>:1191:                                   ; preds = %1189, %1187, %1185, %1173
  %1192 = phi i8 [ 0, %1185 ], [ 0, %1187 ], [ 1, %1189 ], [ 1, %1173 ]
  %1193 = phi i8 [ 0, %1185 ], [ 0, %1187 ], [ 0, %1189 ], [ 1, %1173 ]
  %1194 = phi i8 [ 0, %1185 ], [ 1, %1187 ], [ 0, %1189 ], [ 1, %1173 ]
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1192, i8* %1195, align 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1193, i8* %1196, align 1
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1194, i8* %1197, align 1
  br label %1198

; <label>:1198:                                   ; preds = %1191, %1189
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1199, align 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1200, align 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1201, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit300

routine_ucomisd__xmm2___xmm1.exit300:             ; preds = %1181, %1198
  %1202 = phi %struct.Memory* [ %1184, %1181 ], [ %loadMem_421610, %1198 ]
  store %struct.Memory* %1202, %struct.Memory** %MEMORY
  %loadMem_421614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %PC.i296
  %1207 = add i64 %1206, 33
  %1208 = load i64, i64* %PC.i296
  %1209 = add i64 %1208, 6
  %1210 = load i64, i64* %PC.i296
  %1211 = add i64 %1210, 6
  store i64 %1211, i64* %PC.i296
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1213 = load i8, i8* %1212, align 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1215 = load i8, i8* %1214, align 1
  %1216 = or i8 %1215, %1213
  %1217 = icmp ne i8 %1216, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %BRANCH_TAKEN, align 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1220 = select i1 %1217, i64 %1207, i64 %1209
  store i64 %1220, i64* %1219, align 8
  store %struct.Memory* %loadMem_421614, %struct.Memory** %MEMORY
  %loadBr_421614 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421614 = icmp eq i8 %loadBr_421614, 1
  br i1 %cmpBr_421614, label %block_.L_421635, label %block_42161a

block_42161a:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit300
  %loadMem_42161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %PC.i295
  %1225 = add i64 %1224, 8
  store i64 %1225, i64* %PC.i295
  %1226 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*)
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1227, align 1
  %1228 = and i32 %1226, 255
  %1229 = call i32 @llvm.ctpop.i32(i32 %1228)
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  %1232 = xor i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1232, i8* %1233, align 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1234, align 1
  %1235 = icmp eq i32 %1226, 0
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1226, 31
  %1239 = trunc i32 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1239, i8* %1240, align 1
  %1241 = lshr i32 %1226, 31
  %1242 = xor i32 %1238, %1241
  %1243 = add i32 %1242, %1241
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1245, i8* %1246, align 1
  store %struct.Memory* %loadMem_42161a, %struct.Memory** %MEMORY
  %loadMem_421622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1249 to i64*
  %1250 = load i64, i64* %PC.i294
  %1251 = add i64 %1250, 19
  %1252 = load i64, i64* %PC.i294
  %1253 = add i64 %1252, 6
  %1254 = load i64, i64* %PC.i294
  %1255 = add i64 %1254, 6
  store i64 %1255, i64* %PC.i294
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1257 = load i8, i8* %1256, align 1
  store i8 %1257, i8* %BRANCH_TAKEN, align 1
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1259 = icmp ne i8 %1257, 0
  %1260 = select i1 %1259, i64 %1251, i64 %1253
  store i64 %1260, i64* %1258, align 8
  store %struct.Memory* %loadMem_421622, %struct.Memory** %MEMORY
  %loadBr_421622 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421622 = icmp eq i8 %loadBr_421622, 1
  br i1 %cmpBr_421622, label %block_.L_421635, label %block_421628

block_421628:                                     ; preds = %block_42161a
  %loadMem_421628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1264, i64 0, i64 0
  %YMM0.i293 = bitcast %union.VectorReg* %1265 to %"class.std::bitset"*
  %1266 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %1267 = load i64, i64* %PC.i292
  %1268 = add i64 %1267, ptrtoint (%G_0x6dc0__rip__type* @G_0x6dc0__rip_ to i64)
  %1269 = load i64, i64* %PC.i292
  %1270 = add i64 %1269, 8
  store i64 %1270, i64* %PC.i292
  %1271 = inttoptr i64 %1268 to double*
  %1272 = load double, double* %1271
  %1273 = bitcast i8* %1266 to double*
  store double %1272, double* %1273, align 1
  %1274 = getelementptr inbounds i8, i8* %1266, i64 8
  %1275 = bitcast i8* %1274 to double*
  store double 0.000000e+00, double* %1275, align 1
  store %struct.Memory* %loadMem_421628, %struct.Memory** %MEMORY
  %loadMem_421630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 15
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1282, i64 0, i64 0
  %XMM0.i291 = bitcast %union.VectorReg* %1283 to %union.vec128_t*
  %1284 = load i64, i64* %RBP.i290
  %1285 = sub i64 %1284, 16
  %1286 = bitcast %union.vec128_t* %XMM0.i291 to i8*
  %1287 = load i64, i64* %PC.i289
  %1288 = add i64 %1287, 5
  store i64 %1288, i64* %PC.i289
  %1289 = bitcast i8* %1286 to double*
  %1290 = load double, double* %1289, align 1
  %1291 = inttoptr i64 %1285 to double*
  store double %1290, double* %1291
  store %struct.Memory* %loadMem_421630, %struct.Memory** %MEMORY
  br label %block_.L_421635

block_.L_421635:                                  ; preds = %block_421628, %block_42161a, %routine_ucomisd__xmm2___xmm1.exit300
  %loadMem_421635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %PC.i288
  %1296 = add i64 %1295, 5
  %1297 = load i64, i64* %PC.i288
  %1298 = add i64 %1297, 5
  store i64 %1298, i64* %PC.i288
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1296, i64* %1299, align 8
  store %struct.Memory* %loadMem_421635, %struct.Memory** %MEMORY
  br label %block_.L_42163a

block_.L_42163a:                                  ; preds = %block_.L_421635, %block_4215d7
  %loadMem_42163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %PC.i287
  %1304 = add i64 %1303, 5
  %1305 = load i64, i64* %PC.i287
  %1306 = add i64 %1305, 5
  store i64 %1306, i64* %PC.i287
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1304, i64* %1307, align 8
  store %struct.Memory* %loadMem_42163a, %struct.Memory** %MEMORY
  br label %block_.L_42163f

block_.L_42163f:                                  ; preds = %block_.L_42163a, %block_421586
  %loadMem_42163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %PC.i286
  %1312 = add i64 %1311, 5
  %1313 = load i64, i64* %PC.i286
  %1314 = add i64 %1313, 5
  store i64 %1314, i64* %PC.i286
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1312, i64* %1315, align 8
  store %struct.Memory* %loadMem_42163f, %struct.Memory** %MEMORY
  br label %block_.L_421644

block_.L_421644:                                  ; preds = %block_.L_42163f, %routine_ucomisd__xmm2___xmm3.exit
  %loadMem_421644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %PC.i285
  %1320 = add i64 %1319, 8
  store i64 %1320, i64* %PC.i285
  %1321 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %1322 = sub i32 %1321, 3
  %1323 = icmp ult i32 %1321, 3
  %1324 = zext i1 %1323 to i8
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1324, i8* %1325, align 1
  %1326 = and i32 %1322, 255
  %1327 = call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1330, i8* %1331, align 1
  %1332 = xor i32 %1321, 3
  %1333 = xor i32 %1332, %1322
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1336, i8* %1337, align 1
  %1338 = icmp eq i32 %1322, 0
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1339, i8* %1340, align 1
  %1341 = lshr i32 %1322, 31
  %1342 = trunc i32 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1342, i8* %1343, align 1
  %1344 = lshr i32 %1321, 31
  %1345 = xor i32 %1341, %1344
  %1346 = add i32 %1345, %1344
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1348, i8* %1349, align 1
  store %struct.Memory* %loadMem_421644, %struct.Memory** %MEMORY
  %loadMem_42164c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %PC.i284
  %1354 = add i64 %1353, 205
  %1355 = load i64, i64* %PC.i284
  %1356 = add i64 %1355, 6
  %1357 = load i64, i64* %PC.i284
  %1358 = add i64 %1357, 6
  store i64 %1358, i64* %PC.i284
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1360 = load i8, i8* %1359, align 1
  store i8 %1360, i8* %BRANCH_TAKEN, align 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1362 = icmp ne i8 %1360, 0
  %1363 = select i1 %1362, i64 %1354, i64 %1356
  store i64 %1363, i64* %1361, align 8
  store %struct.Memory* %loadMem_42164c, %struct.Memory** %MEMORY
  %loadBr_42164c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42164c = icmp eq i8 %loadBr_42164c, 1
  br i1 %cmpBr_42164c, label %block_.L_421719, label %block_421652

block_421652:                                     ; preds = %block_.L_421644
  %loadMem_421652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %PC.i283
  %1368 = add i64 %1367, 8
  store i64 %1368, i64* %PC.i283
  %1369 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %1370 = sub i32 %1369, 4
  %1371 = icmp ult i32 %1369, 4
  %1372 = zext i1 %1371 to i8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1372, i8* %1373, align 1
  %1374 = and i32 %1370, 255
  %1375 = call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1378, i8* %1379, align 1
  %1380 = xor i32 %1369, 4
  %1381 = xor i32 %1380, %1370
  %1382 = lshr i32 %1381, 4
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1384, i8* %1385, align 1
  %1386 = icmp eq i32 %1370, 0
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1387, i8* %1388, align 1
  %1389 = lshr i32 %1370, 31
  %1390 = trunc i32 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1390, i8* %1391, align 1
  %1392 = lshr i32 %1369, 31
  %1393 = xor i32 %1389, %1392
  %1394 = add i32 %1393, %1392
  %1395 = icmp eq i32 %1394, 2
  %1396 = zext i1 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1396, i8* %1397, align 1
  store %struct.Memory* %loadMem_421652, %struct.Memory** %MEMORY
  %loadMem_42165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %PC.i282
  %1402 = add i64 %1401, 191
  %1403 = load i64, i64* %PC.i282
  %1404 = add i64 %1403, 6
  %1405 = load i64, i64* %PC.i282
  %1406 = add i64 %1405, 6
  store i64 %1406, i64* %PC.i282
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1408 = load i8, i8* %1407, align 1
  store i8 %1408, i8* %BRANCH_TAKEN, align 1
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1410 = icmp ne i8 %1408, 0
  %1411 = select i1 %1410, i64 %1402, i64 %1404
  store i64 %1411, i64* %1409, align 8
  store %struct.Memory* %loadMem_42165a, %struct.Memory** %MEMORY
  %loadBr_42165a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42165a = icmp eq i8 %loadBr_42165a, 1
  br i1 %cmpBr_42165a, label %block_.L_421719, label %block_421660

block_421660:                                     ; preds = %block_421652
  %loadMem_421660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1415, i64 0, i64 0
  %YMM0.i281 = bitcast %union.VectorReg* %1416 to %"class.std::bitset"*
  %1417 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %1418 = load i64, i64* %PC.i280
  %1419 = add i64 %1418, ptrtoint (%G_0x6d70__rip__type* @G_0x6d70__rip_ to i64)
  %1420 = load i64, i64* %PC.i280
  %1421 = add i64 %1420, 8
  store i64 %1421, i64* %PC.i280
  %1422 = inttoptr i64 %1419 to double*
  %1423 = load double, double* %1422
  %1424 = bitcast i8* %1417 to double*
  store double %1423, double* %1424, align 1
  %1425 = getelementptr inbounds i8, i8* %1417, i64 8
  %1426 = bitcast i8* %1425 to double*
  store double 0.000000e+00, double* %1426, align 1
  store %struct.Memory* %loadMem_421660, %struct.Memory** %MEMORY
  %loadMem_421668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 1
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %PC.i278
  %1434 = add i64 %1433, 7
  store i64 %1434, i64* %PC.i278
  %1435 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_421668, %struct.Memory** %MEMORY
  %loadMem_42166f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 1
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %RAX.i277
  %1444 = load i64, i64* %PC.i276
  %1445 = add i64 %1444, 7
  store i64 %1445, i64* %PC.i276
  %1446 = trunc i64 %1443 to i32
  %1447 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %1448 = sub i32 %1446, %1447
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RAX.i277, align 8
  %1450 = icmp ult i32 %1446, %1447
  %1451 = zext i1 %1450 to i8
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1451, i8* %1452, align 1
  %1453 = and i32 %1448, 255
  %1454 = call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1457, i8* %1458, align 1
  %1459 = xor i32 %1447, %1446
  %1460 = xor i32 %1459, %1448
  %1461 = lshr i32 %1460, 4
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1463, i8* %1464, align 1
  %1465 = icmp eq i32 %1448, 0
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1466, i8* %1467, align 1
  %1468 = lshr i32 %1448, 31
  %1469 = trunc i32 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1469, i8* %1470, align 1
  %1471 = lshr i32 %1446, 31
  %1472 = lshr i32 %1447, 31
  %1473 = xor i32 %1472, %1471
  %1474 = xor i32 %1468, %1471
  %1475 = add i32 %1474, %1473
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1477, i8* %1478, align 1
  store %struct.Memory* %loadMem_42166f, %struct.Memory** %MEMORY
  %loadMem_421676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %1484 to i32*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1486 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1485, i64 0, i64 1
  %YMM1.i275 = bitcast %union.VectorReg* %1486 to %"class.std::bitset"*
  %1487 = bitcast %"class.std::bitset"* %YMM1.i275 to i8*
  %1488 = load i32, i32* %EAX.i274
  %1489 = zext i32 %1488 to i64
  %1490 = load i64, i64* %PC.i273
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC.i273
  %1492 = sitofp i32 %1488 to double
  %1493 = bitcast i8* %1487 to double*
  store double %1492, double* %1493, align 1
  store %struct.Memory* %loadMem_421676, %struct.Memory** %MEMORY
  %loadMem_42167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1497, i64 0, i64 2
  %YMM2.i272 = bitcast %union.VectorReg* %1498 to %"class.std::bitset"*
  %1499 = bitcast %"class.std::bitset"* %YMM2.i272 to i8*
  %1500 = load i64, i64* %PC.i271
  %1501 = add i64 %1500, 9
  store i64 %1501, i64* %PC.i271
  %1502 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %1503 = sitofp i32 %1502 to double
  %1504 = bitcast i8* %1499 to double*
  store double %1503, double* %1504, align 1
  store %struct.Memory* %loadMem_42167a, %struct.Memory** %MEMORY
  %loadMem_421683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1509 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1508, i64 0, i64 2
  %YMM2.i269 = bitcast %union.VectorReg* %1509 to %"class.std::bitset"*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1511 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1510, i64 0, i64 0
  %XMM0.i270 = bitcast %union.VectorReg* %1511 to %union.vec128_t*
  %1512 = bitcast %"class.std::bitset"* %YMM2.i269 to i8*
  %1513 = bitcast %"class.std::bitset"* %YMM2.i269 to i8*
  %1514 = bitcast %union.vec128_t* %XMM0.i270 to i8*
  %1515 = load i64, i64* %PC.i268
  %1516 = add i64 %1515, 4
  store i64 %1516, i64* %PC.i268
  %1517 = bitcast i8* %1513 to double*
  %1518 = load double, double* %1517, align 1
  %1519 = getelementptr inbounds i8, i8* %1513, i64 8
  %1520 = bitcast i8* %1519 to i64*
  %1521 = load i64, i64* %1520, align 1
  %1522 = bitcast i8* %1514 to double*
  %1523 = load double, double* %1522, align 1
  %1524 = fdiv double %1518, %1523
  %1525 = bitcast i8* %1512 to double*
  store double %1524, double* %1525, align 1
  %1526 = getelementptr inbounds i8, i8* %1512, i64 8
  %1527 = bitcast i8* %1526 to i64*
  store i64 %1521, i64* %1527, align 1
  store %struct.Memory* %loadMem_421683, %struct.Memory** %MEMORY
  %loadMem_421687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1531, i64 0, i64 1
  %XMM1.i262 = bitcast %union.VectorReg* %1532 to %union.vec128_t*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1533, i64 0, i64 2
  %XMM2.i263 = bitcast %union.VectorReg* %1534 to %union.vec128_t*
  %1535 = bitcast %union.vec128_t* %XMM1.i262 to i8*
  %1536 = bitcast %union.vec128_t* %XMM2.i263 to i8*
  %1537 = load i64, i64* %PC.i261
  %1538 = add i64 %1537, 4
  store i64 %1538, i64* %PC.i261
  %1539 = bitcast i8* %1535 to double*
  %1540 = load double, double* %1539, align 1
  %1541 = bitcast i8* %1536 to double*
  %1542 = load double, double* %1541, align 1
  %1543 = fcmp uno double %1540, %1542
  br i1 %1543, label %1544, label %1556

; <label>:1544:                                   ; preds = %block_421660
  %1545 = fadd double %1540, %1542
  %1546 = bitcast double %1545 to i64
  %1547 = and i64 %1546, 9221120237041090560
  %1548 = icmp eq i64 %1547, 9218868437227405312
  %1549 = and i64 %1546, 2251799813685247
  %1550 = icmp ne i64 %1549, 0
  %1551 = and i1 %1548, %1550
  br i1 %1551, label %1552, label %1562

; <label>:1552:                                   ; preds = %1544
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1554 = load i64, i64* %1553, align 8
  %1555 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1554, %struct.Memory* %loadMem_421687)
  br label %routine_ucomisd__xmm2___xmm1.exit264

; <label>:1556:                                   ; preds = %block_421660
  %1557 = fcmp ogt double %1540, %1542
  br i1 %1557, label %1562, label %1558

; <label>:1558:                                   ; preds = %1556
  %1559 = fcmp olt double %1540, %1542
  br i1 %1559, label %1562, label %1560

; <label>:1560:                                   ; preds = %1558
  %1561 = fcmp oeq double %1540, %1542
  br i1 %1561, label %1562, label %1569

; <label>:1562:                                   ; preds = %1560, %1558, %1556, %1544
  %1563 = phi i8 [ 0, %1556 ], [ 0, %1558 ], [ 1, %1560 ], [ 1, %1544 ]
  %1564 = phi i8 [ 0, %1556 ], [ 0, %1558 ], [ 0, %1560 ], [ 1, %1544 ]
  %1565 = phi i8 [ 0, %1556 ], [ 1, %1558 ], [ 0, %1560 ], [ 1, %1544 ]
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1563, i8* %1566, align 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1564, i8* %1567, align 1
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1565, i8* %1568, align 1
  br label %1569

; <label>:1569:                                   ; preds = %1562, %1560
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1570, align 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1571, align 1
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1572, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit264

routine_ucomisd__xmm2___xmm1.exit264:             ; preds = %1552, %1569
  %1573 = phi %struct.Memory* [ %1555, %1552 ], [ %loadMem_421687, %1569 ]
  store %struct.Memory* %1573, %struct.Memory** %MEMORY
  %loadMem_42168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %PC.i260
  %1578 = add i64 %1577, 47
  %1579 = load i64, i64* %PC.i260
  %1580 = add i64 %1579, 6
  %1581 = load i64, i64* %PC.i260
  %1582 = add i64 %1581, 6
  store i64 %1582, i64* %PC.i260
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1584 = load i8, i8* %1583, align 1
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1586 = load i8, i8* %1585, align 1
  %1587 = or i8 %1586, %1584
  %1588 = icmp ne i8 %1587, 0
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %BRANCH_TAKEN, align 1
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1591 = select i1 %1588, i64 %1578, i64 %1580
  store i64 %1591, i64* %1590, align 8
  store %struct.Memory* %loadMem_42168b, %struct.Memory** %MEMORY
  %loadBr_42168b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42168b = icmp eq i8 %loadBr_42168b, 1
  br i1 %cmpBr_42168b, label %block_.L_4216ba, label %block_421691

block_421691:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit264
  %loadMem_421691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %PC.i259
  %1596 = add i64 %1595, 8
  store i64 %1596, i64* %PC.i259
  %1597 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*)
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1598, align 1
  %1599 = and i32 %1597, 255
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1603, i8* %1604, align 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1605, align 1
  %1606 = icmp eq i32 %1597, 0
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1607, i8* %1608, align 1
  %1609 = lshr i32 %1597, 31
  %1610 = trunc i32 %1609 to i8
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1610, i8* %1611, align 1
  %1612 = lshr i32 %1597, 31
  %1613 = xor i32 %1609, %1612
  %1614 = add i32 %1613, %1612
  %1615 = icmp eq i32 %1614, 2
  %1616 = zext i1 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1616, i8* %1617, align 1
  store %struct.Memory* %loadMem_421691, %struct.Memory** %MEMORY
  %loadMem_421699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %PC.i258
  %1622 = add i64 %1621, 33
  %1623 = load i64, i64* %PC.i258
  %1624 = add i64 %1623, 6
  %1625 = load i64, i64* %PC.i258
  %1626 = add i64 %1625, 6
  store i64 %1626, i64* %PC.i258
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1628 = load i8, i8* %1627, align 1
  store i8 %1628, i8* %BRANCH_TAKEN, align 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1630 = icmp ne i8 %1628, 0
  %1631 = select i1 %1630, i64 %1622, i64 %1624
  store i64 %1631, i64* %1629, align 8
  store %struct.Memory* %loadMem_421699, %struct.Memory** %MEMORY
  %loadBr_421699 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421699 = icmp eq i8 %loadBr_421699, 1
  br i1 %cmpBr_421699, label %block_.L_4216ba, label %block_42169f

block_42169f:                                     ; preds = %block_421691
  %loadMem_42169f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 0
  %YMM0.i257 = bitcast %union.VectorReg* %1636 to %"class.std::bitset"*
  %1637 = bitcast %"class.std::bitset"* %YMM0.i257 to i8*
  %1638 = load i64, i64* %PC.i256
  %1639 = add i64 %1638, ptrtoint (%G_0x6d41__rip__type* @G_0x6d41__rip_ to i64)
  %1640 = load i64, i64* %PC.i256
  %1641 = add i64 %1640, 8
  store i64 %1641, i64* %PC.i256
  %1642 = inttoptr i64 %1639 to double*
  %1643 = load double, double* %1642
  %1644 = bitcast i8* %1637 to double*
  store double %1643, double* %1644, align 1
  %1645 = getelementptr inbounds i8, i8* %1637, i64 8
  %1646 = bitcast i8* %1645 to double*
  store double 0.000000e+00, double* %1646, align 1
  store %struct.Memory* %loadMem_42169f, %struct.Memory** %MEMORY
  %loadMem_4216a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1653, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %1654 to %"class.std::bitset"*
  %1655 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %1656 = load i64, i64* %RBP.i254
  %1657 = sub i64 %1656, 16
  %1658 = load i64, i64* %PC.i253
  %1659 = add i64 %1658, 5
  store i64 %1659, i64* %PC.i253
  %1660 = inttoptr i64 %1657 to double*
  %1661 = load double, double* %1660
  %1662 = bitcast i8* %1655 to double*
  store double %1661, double* %1662, align 1
  %1663 = getelementptr inbounds i8, i8* %1655, i64 8
  %1664 = bitcast i8* %1663 to double*
  store double 0.000000e+00, double* %1664, align 1
  store %struct.Memory* %loadMem_4216a7, %struct.Memory** %MEMORY
  %loadMem_4216ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1669 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1668, i64 0, i64 1
  %YMM1.i251 = bitcast %union.VectorReg* %1669 to %"class.std::bitset"*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1670, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %1671 to %union.vec128_t*
  %1672 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1673 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1674 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %1675 = load i64, i64* %PC.i250
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %PC.i250
  %1677 = bitcast i8* %1673 to double*
  %1678 = load double, double* %1677, align 1
  %1679 = getelementptr inbounds i8, i8* %1673, i64 8
  %1680 = bitcast i8* %1679 to i64*
  %1681 = load i64, i64* %1680, align 1
  %1682 = bitcast i8* %1674 to double*
  %1683 = load double, double* %1682, align 1
  %1684 = fsub double %1678, %1683
  %1685 = bitcast i8* %1672 to double*
  store double %1684, double* %1685, align 1
  %1686 = getelementptr inbounds i8, i8* %1672, i64 8
  %1687 = bitcast i8* %1686 to i64*
  store i64 %1681, i64* %1687, align 1
  store %struct.Memory* %loadMem_4216ac, %struct.Memory** %MEMORY
  %loadMem_4216b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 15
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1694, i64 0, i64 1
  %XMM1.i249 = bitcast %union.VectorReg* %1695 to %union.vec128_t*
  %1696 = load i64, i64* %RBP.i248
  %1697 = sub i64 %1696, 16
  %1698 = bitcast %union.vec128_t* %XMM1.i249 to i8*
  %1699 = load i64, i64* %PC.i247
  %1700 = add i64 %1699, 5
  store i64 %1700, i64* %PC.i247
  %1701 = bitcast i8* %1698 to double*
  %1702 = load double, double* %1701, align 1
  %1703 = inttoptr i64 %1697 to double*
  store double %1702, double* %1703
  store %struct.Memory* %loadMem_4216b0, %struct.Memory** %MEMORY
  %loadMem_4216b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %PC.i246
  %1708 = add i64 %1707, 95
  %1709 = load i64, i64* %PC.i246
  %1710 = add i64 %1709, 5
  store i64 %1710, i64* %PC.i246
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1708, i64* %1711, align 8
  store %struct.Memory* %loadMem_4216b5, %struct.Memory** %MEMORY
  br label %block_.L_421714

block_.L_4216ba:                                  ; preds = %block_421691, %routine_ucomisd__xmm2___xmm1.exit264
  %loadMem_4216ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1715, i64 0, i64 0
  %YMM0.i245 = bitcast %union.VectorReg* %1716 to %"class.std::bitset"*
  %1717 = bitcast %"class.std::bitset"* %YMM0.i245 to i8*
  %1718 = load i64, i64* %PC.i244
  %1719 = add i64 %1718, ptrtoint (%G_0x6d26__rip__type* @G_0x6d26__rip_ to i64)
  %1720 = load i64, i64* %PC.i244
  %1721 = add i64 %1720, 8
  store i64 %1721, i64* %PC.i244
  %1722 = inttoptr i64 %1719 to double*
  %1723 = load double, double* %1722
  %1724 = bitcast i8* %1717 to double*
  store double %1723, double* %1724, align 1
  %1725 = getelementptr inbounds i8, i8* %1717, i64 8
  %1726 = bitcast i8* %1725 to double*
  store double 0.000000e+00, double* %1726, align 1
  store %struct.Memory* %loadMem_4216ba, %struct.Memory** %MEMORY
  %loadMem_4216c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 1
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %PC.i242
  %1734 = add i64 %1733, 7
  store i64 %1734, i64* %PC.i242
  %1735 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_4216c2, %struct.Memory** %MEMORY
  %loadMem_4216c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 1
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %RAX.i241
  %1744 = load i64, i64* %PC.i240
  %1745 = add i64 %1744, 7
  store i64 %1745, i64* %PC.i240
  %1746 = trunc i64 %1743 to i32
  %1747 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %1748 = sub i32 %1746, %1747
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RAX.i241, align 8
  %1750 = icmp ult i32 %1746, %1747
  %1751 = zext i1 %1750 to i8
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1751, i8* %1752, align 1
  %1753 = and i32 %1748, 255
  %1754 = call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1757, i8* %1758, align 1
  %1759 = xor i32 %1747, %1746
  %1760 = xor i32 %1759, %1748
  %1761 = lshr i32 %1760, 4
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1763, i8* %1764, align 1
  %1765 = icmp eq i32 %1748, 0
  %1766 = zext i1 %1765 to i8
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1766, i8* %1767, align 1
  %1768 = lshr i32 %1748, 31
  %1769 = trunc i32 %1768 to i8
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1769, i8* %1770, align 1
  %1771 = lshr i32 %1746, 31
  %1772 = lshr i32 %1747, 31
  %1773 = xor i32 %1772, %1771
  %1774 = xor i32 %1768, %1771
  %1775 = add i32 %1774, %1773
  %1776 = icmp eq i32 %1775, 2
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1777, i8* %1778, align 1
  store %struct.Memory* %loadMem_4216c9, %struct.Memory** %MEMORY
  %loadMem_4216d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %1784 to i32*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1785, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %1786 to %"class.std::bitset"*
  %1787 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %1788 = load i32, i32* %EAX.i238
  %1789 = zext i32 %1788 to i64
  %1790 = load i64, i64* %PC.i237
  %1791 = add i64 %1790, 4
  store i64 %1791, i64* %PC.i237
  %1792 = sitofp i32 %1788 to double
  %1793 = bitcast i8* %1787 to double*
  store double %1792, double* %1793, align 1
  store %struct.Memory* %loadMem_4216d0, %struct.Memory** %MEMORY
  %loadMem_4216d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1797, i64 0, i64 2
  %YMM2.i236 = bitcast %union.VectorReg* %1798 to %"class.std::bitset"*
  %1799 = bitcast %"class.std::bitset"* %YMM2.i236 to i8*
  %1800 = load i64, i64* %PC.i235
  %1801 = add i64 %1800, 9
  store i64 %1801, i64* %PC.i235
  %1802 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %1803 = sitofp i32 %1802 to double
  %1804 = bitcast i8* %1799 to double*
  store double %1803, double* %1804, align 1
  store %struct.Memory* %loadMem_4216d4, %struct.Memory** %MEMORY
  %loadMem_4216dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1808, i64 0, i64 2
  %YMM2.i233 = bitcast %union.VectorReg* %1809 to %"class.std::bitset"*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1810, i64 0, i64 0
  %XMM0.i234 = bitcast %union.VectorReg* %1811 to %union.vec128_t*
  %1812 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %1813 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %1814 = bitcast %union.vec128_t* %XMM0.i234 to i8*
  %1815 = load i64, i64* %PC.i232
  %1816 = add i64 %1815, 4
  store i64 %1816, i64* %PC.i232
  %1817 = bitcast i8* %1813 to double*
  %1818 = load double, double* %1817, align 1
  %1819 = getelementptr inbounds i8, i8* %1813, i64 8
  %1820 = bitcast i8* %1819 to i64*
  %1821 = load i64, i64* %1820, align 1
  %1822 = bitcast i8* %1814 to double*
  %1823 = load double, double* %1822, align 1
  %1824 = fdiv double %1818, %1823
  %1825 = bitcast i8* %1812 to double*
  store double %1824, double* %1825, align 1
  %1826 = getelementptr inbounds i8, i8* %1812, i64 8
  %1827 = bitcast i8* %1826 to i64*
  store i64 %1821, i64* %1827, align 1
  store %struct.Memory* %loadMem_4216dd, %struct.Memory** %MEMORY
  %loadMem_4216e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1832 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1831, i64 0, i64 1
  %XMM1.i227 = bitcast %union.VectorReg* %1832 to %union.vec128_t*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1833, i64 0, i64 2
  %XMM2.i228 = bitcast %union.VectorReg* %1834 to %union.vec128_t*
  %1835 = bitcast %union.vec128_t* %XMM1.i227 to i8*
  %1836 = bitcast %union.vec128_t* %XMM2.i228 to i8*
  %1837 = load i64, i64* %PC.i226
  %1838 = add i64 %1837, 4
  store i64 %1838, i64* %PC.i226
  %1839 = bitcast i8* %1835 to double*
  %1840 = load double, double* %1839, align 1
  %1841 = bitcast i8* %1836 to double*
  %1842 = load double, double* %1841, align 1
  %1843 = fcmp uno double %1840, %1842
  br i1 %1843, label %1844, label %1856

; <label>:1844:                                   ; preds = %block_.L_4216ba
  %1845 = fadd double %1840, %1842
  %1846 = bitcast double %1845 to i64
  %1847 = and i64 %1846, 9221120237041090560
  %1848 = icmp eq i64 %1847, 9218868437227405312
  %1849 = and i64 %1846, 2251799813685247
  %1850 = icmp ne i64 %1849, 0
  %1851 = and i1 %1848, %1850
  br i1 %1851, label %1852, label %1862

; <label>:1852:                                   ; preds = %1844
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1854 = load i64, i64* %1853, align 8
  %1855 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1854, %struct.Memory* %loadMem_4216e1)
  br label %routine_ucomisd__xmm2___xmm1.exit

; <label>:1856:                                   ; preds = %block_.L_4216ba
  %1857 = fcmp ogt double %1840, %1842
  br i1 %1857, label %1862, label %1858

; <label>:1858:                                   ; preds = %1856
  %1859 = fcmp olt double %1840, %1842
  br i1 %1859, label %1862, label %1860

; <label>:1860:                                   ; preds = %1858
  %1861 = fcmp oeq double %1840, %1842
  br i1 %1861, label %1862, label %1869

; <label>:1862:                                   ; preds = %1860, %1858, %1856, %1844
  %1863 = phi i8 [ 0, %1856 ], [ 0, %1858 ], [ 1, %1860 ], [ 1, %1844 ]
  %1864 = phi i8 [ 0, %1856 ], [ 0, %1858 ], [ 0, %1860 ], [ 1, %1844 ]
  %1865 = phi i8 [ 0, %1856 ], [ 1, %1858 ], [ 0, %1860 ], [ 1, %1844 ]
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1863, i8* %1866, align 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1867, align 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1865, i8* %1868, align 1
  br label %1869

; <label>:1869:                                   ; preds = %1862, %1860
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1870, align 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1871, align 1
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1872, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit

routine_ucomisd__xmm2___xmm1.exit:                ; preds = %1852, %1869
  %1873 = phi %struct.Memory* [ %1855, %1852 ], [ %loadMem_4216e1, %1869 ]
  store %struct.Memory* %1873, %struct.Memory** %MEMORY
  %loadMem_4216e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %PC.i225
  %1878 = add i64 %1877, 42
  %1879 = load i64, i64* %PC.i225
  %1880 = add i64 %1879, 6
  %1881 = load i64, i64* %PC.i225
  %1882 = add i64 %1881, 6
  store i64 %1882, i64* %PC.i225
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1884 = load i8, i8* %1883, align 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1886 = load i8, i8* %1885, align 1
  %1887 = or i8 %1886, %1884
  %1888 = icmp ne i8 %1887, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %BRANCH_TAKEN, align 1
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1891 = select i1 %1888, i64 %1878, i64 %1880
  store i64 %1891, i64* %1890, align 8
  store %struct.Memory* %loadMem_4216e5, %struct.Memory** %MEMORY
  %loadBr_4216e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4216e5 = icmp eq i8 %loadBr_4216e5, 1
  br i1 %cmpBr_4216e5, label %block_.L_42170f, label %block_4216eb

block_4216eb:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit
  %loadMem_4216eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i224
  %1896 = add i64 %1895, 8
  store i64 %1896, i64* %PC.i224
  %1897 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*)
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1898, align 1
  %1899 = and i32 %1897, 255
  %1900 = call i32 @llvm.ctpop.i32(i32 %1899)
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1903, i8* %1904, align 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1905, align 1
  %1906 = icmp eq i32 %1897, 0
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1907, i8* %1908, align 1
  %1909 = lshr i32 %1897, 31
  %1910 = trunc i32 %1909 to i8
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1910, i8* %1911, align 1
  %1912 = lshr i32 %1897, 31
  %1913 = xor i32 %1909, %1912
  %1914 = add i32 %1913, %1912
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1916, i8* %1917, align 1
  store %struct.Memory* %loadMem_4216eb, %struct.Memory** %MEMORY
  %loadMem_4216f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %PC.i223
  %1922 = add i64 %1921, 28
  %1923 = load i64, i64* %PC.i223
  %1924 = add i64 %1923, 6
  %1925 = load i64, i64* %PC.i223
  %1926 = add i64 %1925, 6
  store i64 %1926, i64* %PC.i223
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1928 = load i8, i8* %1927, align 1
  store i8 %1928, i8* %BRANCH_TAKEN, align 1
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1930 = icmp ne i8 %1928, 0
  %1931 = select i1 %1930, i64 %1922, i64 %1924
  store i64 %1931, i64* %1929, align 8
  store %struct.Memory* %loadMem_4216f3, %struct.Memory** %MEMORY
  %loadBr_4216f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4216f3 = icmp eq i8 %loadBr_4216f3, 1
  br i1 %cmpBr_4216f3, label %block_.L_42170f, label %block_4216f9

block_4216f9:                                     ; preds = %block_4216eb
  %loadMem_4216f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1935, i64 0, i64 0
  %YMM0.i222 = bitcast %union.VectorReg* %1936 to %"class.std::bitset"*
  %1937 = bitcast %"class.std::bitset"* %YMM0.i222 to i8*
  %1938 = load i64, i64* %PC.i221
  %1939 = add i64 %1938, ptrtoint (%G_0x6cd7__rip__type* @G_0x6cd7__rip_ to i64)
  %1940 = load i64, i64* %PC.i221
  %1941 = add i64 %1940, 8
  store i64 %1941, i64* %PC.i221
  %1942 = inttoptr i64 %1939 to double*
  %1943 = load double, double* %1942
  %1944 = bitcast i8* %1937 to double*
  store double %1943, double* %1944, align 1
  %1945 = getelementptr inbounds i8, i8* %1937, i64 8
  %1946 = bitcast i8* %1945 to double*
  store double 0.000000e+00, double* %1946, align 1
  store %struct.Memory* %loadMem_4216f9, %struct.Memory** %MEMORY
  %loadMem_421701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 15
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1953, i64 0, i64 1
  %YMM1.i220 = bitcast %union.VectorReg* %1954 to %"class.std::bitset"*
  %1955 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %1956 = load i64, i64* %RBP.i219
  %1957 = sub i64 %1956, 16
  %1958 = load i64, i64* %PC.i218
  %1959 = add i64 %1958, 5
  store i64 %1959, i64* %PC.i218
  %1960 = inttoptr i64 %1957 to double*
  %1961 = load double, double* %1960
  %1962 = bitcast i8* %1955 to double*
  store double %1961, double* %1962, align 1
  %1963 = getelementptr inbounds i8, i8* %1955, i64 8
  %1964 = bitcast i8* %1963 to double*
  store double 0.000000e+00, double* %1964, align 1
  store %struct.Memory* %loadMem_421701, %struct.Memory** %MEMORY
  %loadMem_421706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1968, i64 0, i64 1
  %YMM1.i216 = bitcast %union.VectorReg* %1969 to %"class.std::bitset"*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1970, i64 0, i64 0
  %XMM0.i217 = bitcast %union.VectorReg* %1971 to %union.vec128_t*
  %1972 = bitcast %"class.std::bitset"* %YMM1.i216 to i8*
  %1973 = bitcast %"class.std::bitset"* %YMM1.i216 to i8*
  %1974 = bitcast %union.vec128_t* %XMM0.i217 to i8*
  %1975 = load i64, i64* %PC.i215
  %1976 = add i64 %1975, 4
  store i64 %1976, i64* %PC.i215
  %1977 = bitcast i8* %1973 to double*
  %1978 = load double, double* %1977, align 1
  %1979 = getelementptr inbounds i8, i8* %1973, i64 8
  %1980 = bitcast i8* %1979 to i64*
  %1981 = load i64, i64* %1980, align 1
  %1982 = bitcast i8* %1974 to double*
  %1983 = load double, double* %1982, align 1
  %1984 = fsub double %1978, %1983
  %1985 = bitcast i8* %1972 to double*
  store double %1984, double* %1985, align 1
  %1986 = getelementptr inbounds i8, i8* %1972, i64 8
  %1987 = bitcast i8* %1986 to i64*
  store i64 %1981, i64* %1987, align 1
  store %struct.Memory* %loadMem_421706, %struct.Memory** %MEMORY
  %loadMem_42170a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 15
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 1
  %XMM1.i214 = bitcast %union.VectorReg* %1995 to %union.vec128_t*
  %1996 = load i64, i64* %RBP.i213
  %1997 = sub i64 %1996, 16
  %1998 = bitcast %union.vec128_t* %XMM1.i214 to i8*
  %1999 = load i64, i64* %PC.i212
  %2000 = add i64 %1999, 5
  store i64 %2000, i64* %PC.i212
  %2001 = bitcast i8* %1998 to double*
  %2002 = load double, double* %2001, align 1
  %2003 = inttoptr i64 %1997 to double*
  store double %2002, double* %2003
  store %struct.Memory* %loadMem_42170a, %struct.Memory** %MEMORY
  br label %block_.L_42170f

block_.L_42170f:                                  ; preds = %block_4216f9, %block_4216eb, %routine_ucomisd__xmm2___xmm1.exit
  %loadMem_42170f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %PC.i211
  %2008 = add i64 %2007, 5
  %2009 = load i64, i64* %PC.i211
  %2010 = add i64 %2009, 5
  store i64 %2010, i64* %PC.i211
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2008, i64* %2011, align 8
  store %struct.Memory* %loadMem_42170f, %struct.Memory** %MEMORY
  br label %block_.L_421714

block_.L_421714:                                  ; preds = %block_.L_42170f, %block_42169f
  %loadMem_421714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %PC.i210
  %2016 = add i64 %2015, 92
  %2017 = load i64, i64* %PC.i210
  %2018 = add i64 %2017, 5
  store i64 %2018, i64* %PC.i210
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2016, i64* %2019, align 8
  store %struct.Memory* %loadMem_421714, %struct.Memory** %MEMORY
  br label %block_.L_421770

block_.L_421719:                                  ; preds = %block_421652, %block_.L_421644
  %loadMem_421719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2022 to i64*
  %2023 = load i64, i64* %PC.i209
  %2024 = add i64 %2023, 8
  store i64 %2024, i64* %PC.i209
  %2025 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %2026 = sub i32 %2025, 3
  %2027 = icmp ult i32 %2025, 3
  %2028 = zext i1 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2028, i8* %2029, align 1
  %2030 = and i32 %2026, 255
  %2031 = call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2034, i8* %2035, align 1
  %2036 = xor i32 %2025, 3
  %2037 = xor i32 %2036, %2026
  %2038 = lshr i32 %2037, 4
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2040, i8* %2041, align 1
  %2042 = icmp eq i32 %2026, 0
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2043, i8* %2044, align 1
  %2045 = lshr i32 %2026, 31
  %2046 = trunc i32 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2046, i8* %2047, align 1
  %2048 = lshr i32 %2025, 31
  %2049 = xor i32 %2045, %2048
  %2050 = add i32 %2049, %2048
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2052, i8* %2053, align 1
  store %struct.Memory* %loadMem_421719, %struct.Memory** %MEMORY
  %loadMem_421721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %PC.i208
  %2058 = add i64 %2057, 33
  %2059 = load i64, i64* %PC.i208
  %2060 = add i64 %2059, 6
  %2061 = load i64, i64* %PC.i208
  %2062 = add i64 %2061, 6
  store i64 %2062, i64* %PC.i208
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2064 = load i8, i8* %2063, align 1
  %2065 = icmp eq i8 %2064, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %BRANCH_TAKEN, align 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2068 = select i1 %2065, i64 %2058, i64 %2060
  store i64 %2068, i64* %2067, align 8
  store %struct.Memory* %loadMem_421721, %struct.Memory** %MEMORY
  %loadBr_421721 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421721 = icmp eq i8 %loadBr_421721, 1
  br i1 %cmpBr_421721, label %block_.L_421742, label %block_421727

block_421727:                                     ; preds = %block_.L_421719
  %loadMem_421727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2073 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2072, i64 0, i64 0
  %YMM0.i207 = bitcast %union.VectorReg* %2073 to %"class.std::bitset"*
  %2074 = bitcast %"class.std::bitset"* %YMM0.i207 to i8*
  %2075 = load i64, i64* %PC.i206
  %2076 = add i64 %2075, ptrtoint (%G_0x6cb9__rip__type* @G_0x6cb9__rip_ to i64)
  %2077 = load i64, i64* %PC.i206
  %2078 = add i64 %2077, 8
  store i64 %2078, i64* %PC.i206
  %2079 = inttoptr i64 %2076 to double*
  %2080 = load double, double* %2079
  %2081 = bitcast i8* %2074 to double*
  store double %2080, double* %2081, align 1
  %2082 = getelementptr inbounds i8, i8* %2074, i64 8
  %2083 = bitcast i8* %2082 to double*
  store double 0.000000e+00, double* %2083, align 1
  store %struct.Memory* %loadMem_421727, %struct.Memory** %MEMORY
  %loadMem_42172f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 15
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2090, i64 0, i64 1
  %YMM1.i205 = bitcast %union.VectorReg* %2091 to %"class.std::bitset"*
  %2092 = bitcast %"class.std::bitset"* %YMM1.i205 to i8*
  %2093 = load i64, i64* %RBP.i204
  %2094 = sub i64 %2093, 16
  %2095 = load i64, i64* %PC.i203
  %2096 = add i64 %2095, 5
  store i64 %2096, i64* %PC.i203
  %2097 = inttoptr i64 %2094 to double*
  %2098 = load double, double* %2097
  %2099 = bitcast i8* %2092 to double*
  store double %2098, double* %2099, align 1
  %2100 = getelementptr inbounds i8, i8* %2092, i64 8
  %2101 = bitcast i8* %2100 to double*
  store double 0.000000e+00, double* %2101, align 1
  store %struct.Memory* %loadMem_42172f, %struct.Memory** %MEMORY
  %loadMem_421734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2105, i64 0, i64 1
  %YMM1.i201 = bitcast %union.VectorReg* %2106 to %"class.std::bitset"*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2107, i64 0, i64 0
  %XMM0.i202 = bitcast %union.VectorReg* %2108 to %union.vec128_t*
  %2109 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %2110 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %2111 = bitcast %union.vec128_t* %XMM0.i202 to i8*
  %2112 = load i64, i64* %PC.i200
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC.i200
  %2114 = bitcast i8* %2110 to double*
  %2115 = load double, double* %2114, align 1
  %2116 = getelementptr inbounds i8, i8* %2110, i64 8
  %2117 = bitcast i8* %2116 to i64*
  %2118 = load i64, i64* %2117, align 1
  %2119 = bitcast i8* %2111 to double*
  %2120 = load double, double* %2119, align 1
  %2121 = fsub double %2115, %2120
  %2122 = bitcast i8* %2109 to double*
  store double %2121, double* %2122, align 1
  %2123 = getelementptr inbounds i8, i8* %2109, i64 8
  %2124 = bitcast i8* %2123 to i64*
  store i64 %2118, i64* %2124, align 1
  store %struct.Memory* %loadMem_421734, %struct.Memory** %MEMORY
  %loadMem_421738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 15
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2131, i64 0, i64 1
  %XMM1.i199 = bitcast %union.VectorReg* %2132 to %union.vec128_t*
  %2133 = load i64, i64* %RBP.i198
  %2134 = sub i64 %2133, 16
  %2135 = bitcast %union.vec128_t* %XMM1.i199 to i8*
  %2136 = load i64, i64* %PC.i197
  %2137 = add i64 %2136, 5
  store i64 %2137, i64* %PC.i197
  %2138 = bitcast i8* %2135 to double*
  %2139 = load double, double* %2138, align 1
  %2140 = inttoptr i64 %2134 to double*
  store double %2139, double* %2140
  store %struct.Memory* %loadMem_421738, %struct.Memory** %MEMORY
  %loadMem_42173d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2143 to i64*
  %2144 = load i64, i64* %PC.i196
  %2145 = add i64 %2144, 46
  %2146 = load i64, i64* %PC.i196
  %2147 = add i64 %2146, 5
  store i64 %2147, i64* %PC.i196
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2145, i64* %2148, align 8
  store %struct.Memory* %loadMem_42173d, %struct.Memory** %MEMORY
  br label %block_.L_42176b

block_.L_421742:                                  ; preds = %block_.L_421719
  %loadMem_421742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %PC.i195
  %2153 = add i64 %2152, 8
  store i64 %2153, i64* %PC.i195
  %2154 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %2155 = sub i32 %2154, 4
  %2156 = icmp ult i32 %2154, 4
  %2157 = zext i1 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2157, i8* %2158, align 1
  %2159 = and i32 %2155, 255
  %2160 = call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2163, i8* %2164, align 1
  %2165 = xor i32 %2154, 4
  %2166 = xor i32 %2165, %2155
  %2167 = lshr i32 %2166, 4
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2169, i8* %2170, align 1
  %2171 = icmp eq i32 %2155, 0
  %2172 = zext i1 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2172, i8* %2173, align 1
  %2174 = lshr i32 %2155, 31
  %2175 = trunc i32 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2175, i8* %2176, align 1
  %2177 = lshr i32 %2154, 31
  %2178 = xor i32 %2174, %2177
  %2179 = add i32 %2178, %2177
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2181, i8* %2182, align 1
  store %struct.Memory* %loadMem_421742, %struct.Memory** %MEMORY
  %loadMem_42174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %PC.i194
  %2187 = add i64 %2186, 28
  %2188 = load i64, i64* %PC.i194
  %2189 = add i64 %2188, 6
  %2190 = load i64, i64* %PC.i194
  %2191 = add i64 %2190, 6
  store i64 %2191, i64* %PC.i194
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2193 = load i8, i8* %2192, align 1
  %2194 = icmp eq i8 %2193, 0
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %BRANCH_TAKEN, align 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2197 = select i1 %2194, i64 %2187, i64 %2189
  store i64 %2197, i64* %2196, align 8
  store %struct.Memory* %loadMem_42174a, %struct.Memory** %MEMORY
  %loadBr_42174a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42174a = icmp eq i8 %loadBr_42174a, 1
  br i1 %cmpBr_42174a, label %block_.L_421766, label %block_421750

block_421750:                                     ; preds = %block_.L_421742
  %loadMem_421750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2201, i64 0, i64 0
  %YMM0.i193 = bitcast %union.VectorReg* %2202 to %"class.std::bitset"*
  %2203 = bitcast %"class.std::bitset"* %YMM0.i193 to i8*
  %2204 = load i64, i64* %PC.i192
  %2205 = add i64 %2204, ptrtoint (%G_0x6c80__rip__type* @G_0x6c80__rip_ to i64)
  %2206 = load i64, i64* %PC.i192
  %2207 = add i64 %2206, 8
  store i64 %2207, i64* %PC.i192
  %2208 = inttoptr i64 %2205 to double*
  %2209 = load double, double* %2208
  %2210 = bitcast i8* %2203 to double*
  store double %2209, double* %2210, align 1
  %2211 = getelementptr inbounds i8, i8* %2203, i64 8
  %2212 = bitcast i8* %2211 to double*
  store double 0.000000e+00, double* %2212, align 1
  store %struct.Memory* %loadMem_421750, %struct.Memory** %MEMORY
  %loadMem_421758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 15
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2219, i64 0, i64 1
  %YMM1.i191 = bitcast %union.VectorReg* %2220 to %"class.std::bitset"*
  %2221 = bitcast %"class.std::bitset"* %YMM1.i191 to i8*
  %2222 = load i64, i64* %RBP.i190
  %2223 = sub i64 %2222, 16
  %2224 = load i64, i64* %PC.i189
  %2225 = add i64 %2224, 5
  store i64 %2225, i64* %PC.i189
  %2226 = inttoptr i64 %2223 to double*
  %2227 = load double, double* %2226
  %2228 = bitcast i8* %2221 to double*
  store double %2227, double* %2228, align 1
  %2229 = getelementptr inbounds i8, i8* %2221, i64 8
  %2230 = bitcast i8* %2229 to double*
  store double 0.000000e+00, double* %2230, align 1
  store %struct.Memory* %loadMem_421758, %struct.Memory** %MEMORY
  %loadMem_42175d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2234, i64 0, i64 1
  %YMM1.i187 = bitcast %union.VectorReg* %2235 to %"class.std::bitset"*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2236, i64 0, i64 0
  %XMM0.i188 = bitcast %union.VectorReg* %2237 to %union.vec128_t*
  %2238 = bitcast %"class.std::bitset"* %YMM1.i187 to i8*
  %2239 = bitcast %"class.std::bitset"* %YMM1.i187 to i8*
  %2240 = bitcast %union.vec128_t* %XMM0.i188 to i8*
  %2241 = load i64, i64* %PC.i186
  %2242 = add i64 %2241, 4
  store i64 %2242, i64* %PC.i186
  %2243 = bitcast i8* %2239 to double*
  %2244 = load double, double* %2243, align 1
  %2245 = getelementptr inbounds i8, i8* %2239, i64 8
  %2246 = bitcast i8* %2245 to i64*
  %2247 = load i64, i64* %2246, align 1
  %2248 = bitcast i8* %2240 to double*
  %2249 = load double, double* %2248, align 1
  %2250 = fsub double %2244, %2249
  %2251 = bitcast i8* %2238 to double*
  store double %2250, double* %2251, align 1
  %2252 = getelementptr inbounds i8, i8* %2238, i64 8
  %2253 = bitcast i8* %2252 to i64*
  store i64 %2247, i64* %2253, align 1
  store %struct.Memory* %loadMem_42175d, %struct.Memory** %MEMORY
  %loadMem_421761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2260, i64 0, i64 1
  %XMM1.i185 = bitcast %union.VectorReg* %2261 to %union.vec128_t*
  %2262 = load i64, i64* %RBP.i184
  %2263 = sub i64 %2262, 16
  %2264 = bitcast %union.vec128_t* %XMM1.i185 to i8*
  %2265 = load i64, i64* %PC.i183
  %2266 = add i64 %2265, 5
  store i64 %2266, i64* %PC.i183
  %2267 = bitcast i8* %2264 to double*
  %2268 = load double, double* %2267, align 1
  %2269 = inttoptr i64 %2263 to double*
  store double %2268, double* %2269
  store %struct.Memory* %loadMem_421761, %struct.Memory** %MEMORY
  br label %block_.L_421766

block_.L_421766:                                  ; preds = %block_421750, %block_.L_421742
  %loadMem_421766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i182
  %2274 = add i64 %2273, 5
  %2275 = load i64, i64* %PC.i182
  %2276 = add i64 %2275, 5
  store i64 %2276, i64* %PC.i182
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2274, i64* %2277, align 8
  store %struct.Memory* %loadMem_421766, %struct.Memory** %MEMORY
  br label %block_.L_42176b

block_.L_42176b:                                  ; preds = %block_.L_421766, %block_421727
  %loadMem_42176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2280 to i64*
  %2281 = load i64, i64* %PC.i181
  %2282 = add i64 %2281, 5
  %2283 = load i64, i64* %PC.i181
  %2284 = add i64 %2283, 5
  store i64 %2284, i64* %PC.i181
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2282, i64* %2285, align 8
  store %struct.Memory* %loadMem_42176b, %struct.Memory** %MEMORY
  br label %block_.L_421770

block_.L_421770:                                  ; preds = %block_.L_42176b, %block_.L_421714
  %loadMem_421770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2289, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %2290 to %"class.std::bitset"*
  %2291 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %2292 = load i64, i64* %PC.i179
  %2293 = add i64 %2292, 9
  store i64 %2293, i64* %PC.i179
  %2294 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %2295 = sitofp i32 %2294 to double
  %2296 = bitcast i8* %2291 to double*
  store double %2295, double* %2296, align 1
  store %struct.Memory* %loadMem_421770, %struct.Memory** %MEMORY
  %loadMem_421779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 15
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2303, i64 0, i64 0
  %YMM0.i178 = bitcast %union.VectorReg* %2304 to %"class.std::bitset"*
  %2305 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %2306 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %2307 = load i64, i64* %RBP.i177
  %2308 = sub i64 %2307, 16
  %2309 = load i64, i64* %PC.i176
  %2310 = add i64 %2309, 5
  store i64 %2310, i64* %PC.i176
  %2311 = bitcast i8* %2306 to double*
  %2312 = load double, double* %2311, align 1
  %2313 = getelementptr inbounds i8, i8* %2306, i64 8
  %2314 = bitcast i8* %2313 to i64*
  %2315 = load i64, i64* %2314, align 1
  %2316 = inttoptr i64 %2308 to double*
  %2317 = load double, double* %2316
  %2318 = fdiv double %2312, %2317
  %2319 = bitcast i8* %2305 to double*
  store double %2318, double* %2319, align 1
  %2320 = getelementptr inbounds i8, i8* %2305, i64 8
  %2321 = bitcast i8* %2320 to i64*
  store i64 %2315, i64* %2321, align 1
  store %struct.Memory* %loadMem_421779, %struct.Memory** %MEMORY
  %loadMem_42177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 15
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2329 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2328, i64 0, i64 0
  %XMM0.i175 = bitcast %union.VectorReg* %2329 to %union.vec128_t*
  %2330 = load i64, i64* %RBP.i174
  %2331 = sub i64 %2330, 8
  %2332 = bitcast %union.vec128_t* %XMM0.i175 to i8*
  %2333 = load i64, i64* %PC.i173
  %2334 = add i64 %2333, 5
  store i64 %2334, i64* %PC.i173
  %2335 = bitcast i8* %2332 to double*
  %2336 = load double, double* %2335, align 1
  %2337 = inttoptr i64 %2331 to double*
  store double %2336, double* %2337
  store %struct.Memory* %loadMem_42177e, %struct.Memory** %MEMORY
  %loadMem_421783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %PC.i172
  %2342 = add i64 %2341, 8
  store i64 %2342, i64* %PC.i172
  %2343 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2344, align 1
  %2345 = and i32 %2343, 255
  %2346 = call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2349, i8* %2350, align 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2351, align 1
  %2352 = icmp eq i32 %2343, 0
  %2353 = zext i1 %2352 to i8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2353, i8* %2354, align 1
  %2355 = lshr i32 %2343, 31
  %2356 = trunc i32 %2355 to i8
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2356, i8* %2357, align 1
  %2358 = lshr i32 %2343, 31
  %2359 = xor i32 %2355, %2358
  %2360 = add i32 %2359, %2358
  %2361 = icmp eq i32 %2360, 2
  %2362 = zext i1 %2361 to i8
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2362, i8* %2363, align 1
  store %struct.Memory* %loadMem_421783, %struct.Memory** %MEMORY
  %loadMem_42178b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2366 to i64*
  %2367 = load i64, i64* %PC.i171
  %2368 = add i64 %2367, 197
  %2369 = load i64, i64* %PC.i171
  %2370 = add i64 %2369, 6
  %2371 = load i64, i64* %PC.i171
  %2372 = add i64 %2371, 6
  store i64 %2372, i64* %PC.i171
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2374 = load i8, i8* %2373, align 1
  store i8 %2374, i8* %BRANCH_TAKEN, align 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2376 = icmp ne i8 %2374, 0
  %2377 = select i1 %2376, i64 %2368, i64 %2370
  store i64 %2377, i64* %2375, align 8
  store %struct.Memory* %loadMem_42178b, %struct.Memory** %MEMORY
  %loadBr_42178b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42178b = icmp eq i8 %loadBr_42178b, 1
  br i1 %cmpBr_42178b, label %block_.L_421850, label %block_421791

block_421791:                                     ; preds = %block_.L_421770
  %loadMem_421791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2381, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %2382 to %"class.std::bitset"*
  %2383 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %2384 = load i64, i64* %PC.i169
  %2385 = add i64 %2384, ptrtoint (%G_0x6c6f__rip__type* @G_0x6c6f__rip_ to i64)
  %2386 = load i64, i64* %PC.i169
  %2387 = add i64 %2386, 8
  store i64 %2387, i64* %PC.i169
  %2388 = inttoptr i64 %2385 to double*
  %2389 = load double, double* %2388
  %2390 = bitcast i8* %2383 to double*
  store double %2389, double* %2390, align 1
  %2391 = getelementptr inbounds i8, i8* %2383, i64 8
  %2392 = bitcast i8* %2391 to double*
  store double 0.000000e+00, double* %2392, align 1
  store %struct.Memory* %loadMem_421791, %struct.Memory** %MEMORY
  %loadMem_421799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2397 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2396, i64 0, i64 1
  %YMM1.i168 = bitcast %union.VectorReg* %2397 to %"class.std::bitset"*
  %2398 = bitcast %"class.std::bitset"* %YMM1.i168 to i8*
  %2399 = load i64, i64* %PC.i167
  %2400 = add i64 %2399, 9
  store i64 %2400, i64* %PC.i167
  %2401 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %2402 = sitofp i32 %2401 to double
  %2403 = bitcast i8* %2398 to double*
  store double %2402, double* %2403, align 1
  store %struct.Memory* %loadMem_421799, %struct.Memory** %MEMORY
  %loadMem_4217a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2410, i64 0, i64 1
  %YMM1.i166 = bitcast %union.VectorReg* %2411 to %"class.std::bitset"*
  %2412 = bitcast %"class.std::bitset"* %YMM1.i166 to i8*
  %2413 = bitcast %"class.std::bitset"* %YMM1.i166 to i8*
  %2414 = load i64, i64* %RBP.i165
  %2415 = sub i64 %2414, 8
  %2416 = load i64, i64* %PC.i164
  %2417 = add i64 %2416, 5
  store i64 %2417, i64* %PC.i164
  %2418 = bitcast i8* %2413 to double*
  %2419 = load double, double* %2418, align 1
  %2420 = getelementptr inbounds i8, i8* %2413, i64 8
  %2421 = bitcast i8* %2420 to i64*
  %2422 = load i64, i64* %2421, align 1
  %2423 = inttoptr i64 %2415 to double*
  %2424 = load double, double* %2423
  %2425 = fsub double %2419, %2424
  %2426 = bitcast i8* %2412 to double*
  store double %2425, double* %2426, align 1
  %2427 = getelementptr inbounds i8, i8* %2412, i64 8
  %2428 = bitcast i8* %2427 to i64*
  store i64 %2422, i64* %2428, align 1
  store %struct.Memory* %loadMem_4217a2, %struct.Memory** %MEMORY
  %loadMem_4217a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2432, i64 0, i64 2
  %YMM2.i163 = bitcast %union.VectorReg* %2433 to %"class.std::bitset"*
  %2434 = bitcast %"class.std::bitset"* %YMM2.i163 to i8*
  %2435 = load i64, i64* %PC.i162
  %2436 = add i64 %2435, 9
  store i64 %2436, i64* %PC.i162
  %2437 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %2438 = sitofp i32 %2437 to double
  %2439 = bitcast i8* %2434 to double*
  store double %2438, double* %2439, align 1
  store %struct.Memory* %loadMem_4217a7, %struct.Memory** %MEMORY
  %loadMem_4217b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2443, i64 0, i64 1
  %YMM1.i160 = bitcast %union.VectorReg* %2444 to %"class.std::bitset"*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2446 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2445, i64 0, i64 2
  %XMM2.i161 = bitcast %union.VectorReg* %2446 to %union.vec128_t*
  %2447 = bitcast %"class.std::bitset"* %YMM1.i160 to i8*
  %2448 = bitcast %"class.std::bitset"* %YMM1.i160 to i8*
  %2449 = bitcast %union.vec128_t* %XMM2.i161 to i8*
  %2450 = load i64, i64* %PC.i159
  %2451 = add i64 %2450, 4
  store i64 %2451, i64* %PC.i159
  %2452 = bitcast i8* %2448 to double*
  %2453 = load double, double* %2452, align 1
  %2454 = getelementptr inbounds i8, i8* %2448, i64 8
  %2455 = bitcast i8* %2454 to i64*
  %2456 = load i64, i64* %2455, align 1
  %2457 = bitcast i8* %2449 to double*
  %2458 = load double, double* %2457, align 1
  %2459 = fsub double %2453, %2458
  %2460 = bitcast i8* %2447 to double*
  store double %2459, double* %2460, align 1
  %2461 = getelementptr inbounds i8, i8* %2447, i64 8
  %2462 = bitcast i8* %2461 to i64*
  store i64 %2456, i64* %2462, align 1
  store %struct.Memory* %loadMem_4217b0, %struct.Memory** %MEMORY
  %loadMem_4217b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2466, i64 0, i64 0
  %XMM0.i155 = bitcast %union.VectorReg* %2467 to %union.vec128_t*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2468, i64 0, i64 1
  %XMM1.i156 = bitcast %union.VectorReg* %2469 to %union.vec128_t*
  %2470 = bitcast %union.vec128_t* %XMM1.i156 to i8*
  %2471 = bitcast %union.vec128_t* %XMM0.i155 to i8*
  %2472 = load i64, i64* %PC.i154
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %PC.i154
  %2474 = bitcast i8* %2470 to double*
  %2475 = load double, double* %2474, align 1
  %2476 = bitcast i8* %2471 to double*
  %2477 = load double, double* %2476, align 1
  %2478 = fcmp uno double %2475, %2477
  br i1 %2478, label %2479, label %2491

; <label>:2479:                                   ; preds = %block_421791
  %2480 = fadd double %2475, %2477
  %2481 = bitcast double %2480 to i64
  %2482 = and i64 %2481, 9221120237041090560
  %2483 = icmp eq i64 %2482, 9218868437227405312
  %2484 = and i64 %2481, 2251799813685247
  %2485 = icmp ne i64 %2484, 0
  %2486 = and i1 %2483, %2485
  br i1 %2486, label %2487, label %2497

; <label>:2487:                                   ; preds = %2479
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2489 = load i64, i64* %2488, align 8
  %2490 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2489, %struct.Memory* %loadMem_4217b4)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2491:                                   ; preds = %block_421791
  %2492 = fcmp ogt double %2475, %2477
  br i1 %2492, label %2497, label %2493

; <label>:2493:                                   ; preds = %2491
  %2494 = fcmp olt double %2475, %2477
  br i1 %2494, label %2497, label %2495

; <label>:2495:                                   ; preds = %2493
  %2496 = fcmp oeq double %2475, %2477
  br i1 %2496, label %2497, label %2504

; <label>:2497:                                   ; preds = %2495, %2493, %2491, %2479
  %2498 = phi i8 [ 0, %2491 ], [ 0, %2493 ], [ 1, %2495 ], [ 1, %2479 ]
  %2499 = phi i8 [ 0, %2491 ], [ 0, %2493 ], [ 0, %2495 ], [ 1, %2479 ]
  %2500 = phi i8 [ 0, %2491 ], [ 1, %2493 ], [ 0, %2495 ], [ 1, %2479 ]
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2498, i8* %2501, align 1
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2499, i8* %2502, align 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2500, i8* %2503, align 1
  br label %2504

; <label>:2504:                                   ; preds = %2497, %2495
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2505, align 1
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2506, align 1
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2507, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2487, %2504
  %2508 = phi %struct.Memory* [ %2490, %2487 ], [ %loadMem_4217b4, %2504 ]
  store %struct.Memory* %2508, %struct.Memory** %MEMORY
  %loadMem_4217b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %PC.i153
  %2513 = add i64 %2512, 30
  %2514 = load i64, i64* %PC.i153
  %2515 = add i64 %2514, 6
  %2516 = load i64, i64* %PC.i153
  %2517 = add i64 %2516, 6
  store i64 %2517, i64* %PC.i153
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2519 = load i8, i8* %2518, align 1
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2521 = load i8, i8* %2520, align 1
  %2522 = or i8 %2521, %2519
  %2523 = icmp ne i8 %2522, 0
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %BRANCH_TAKEN, align 1
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2526 = select i1 %2523, i64 %2513, i64 %2515
  store i64 %2526, i64* %2525, align 8
  store %struct.Memory* %loadMem_4217b8, %struct.Memory** %MEMORY
  %loadBr_4217b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4217b8 = icmp eq i8 %loadBr_4217b8, 1
  br i1 %cmpBr_4217b8, label %block_.L_4217d6, label %block_4217be

block_4217be:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4217be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2530, i64 0, i64 0
  %YMM0.i152 = bitcast %union.VectorReg* %2531 to %"class.std::bitset"*
  %2532 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %2533 = load i64, i64* %PC.i151
  %2534 = add i64 %2533, 9
  store i64 %2534, i64* %PC.i151
  %2535 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %2536 = sitofp i32 %2535 to double
  %2537 = bitcast i8* %2532 to double*
  store double %2536, double* %2537, align 1
  store %struct.Memory* %loadMem_4217be, %struct.Memory** %MEMORY
  %loadMem_4217c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 15
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2544, i64 0, i64 0
  %YMM0.i150 = bitcast %union.VectorReg* %2545 to %"class.std::bitset"*
  %2546 = bitcast %"class.std::bitset"* %YMM0.i150 to i8*
  %2547 = bitcast %"class.std::bitset"* %YMM0.i150 to i8*
  %2548 = load i64, i64* %RBP.i149
  %2549 = sub i64 %2548, 8
  %2550 = load i64, i64* %PC.i148
  %2551 = add i64 %2550, 5
  store i64 %2551, i64* %PC.i148
  %2552 = bitcast i8* %2547 to double*
  %2553 = load double, double* %2552, align 1
  %2554 = getelementptr inbounds i8, i8* %2547, i64 8
  %2555 = bitcast i8* %2554 to i64*
  %2556 = load i64, i64* %2555, align 1
  %2557 = inttoptr i64 %2549 to double*
  %2558 = load double, double* %2557
  %2559 = fadd double %2553, %2558
  %2560 = bitcast i8* %2546 to double*
  store double %2559, double* %2560, align 1
  %2561 = getelementptr inbounds i8, i8* %2546, i64 8
  %2562 = bitcast i8* %2561 to i64*
  store i64 %2556, i64* %2562, align 1
  store %struct.Memory* %loadMem_4217c7, %struct.Memory** %MEMORY
  %loadMem_4217cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2569, i64 0, i64 0
  %XMM0.i147 = bitcast %union.VectorReg* %2570 to %union.vec128_t*
  %2571 = load i64, i64* %RBP.i146
  %2572 = sub i64 %2571, 8
  %2573 = bitcast %union.vec128_t* %XMM0.i147 to i8*
  %2574 = load i64, i64* %PC.i145
  %2575 = add i64 %2574, 5
  store i64 %2575, i64* %PC.i145
  %2576 = bitcast i8* %2573 to double*
  %2577 = load double, double* %2576, align 1
  %2578 = inttoptr i64 %2572 to double*
  store double %2577, double* %2578
  store %struct.Memory* %loadMem_4217cc, %struct.Memory** %MEMORY
  %loadMem_4217d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2581 to i64*
  %2582 = load i64, i64* %PC.i144
  %2583 = add i64 %2582, 122
  %2584 = load i64, i64* %PC.i144
  %2585 = add i64 %2584, 5
  store i64 %2585, i64* %PC.i144
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2583, i64* %2586, align 8
  store %struct.Memory* %loadMem_4217d1, %struct.Memory** %MEMORY
  br label %block_.L_42184b

block_.L_4217d6:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4217d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2589 to i64*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2590, i64 0, i64 0
  %YMM0.i143 = bitcast %union.VectorReg* %2591 to %"class.std::bitset"*
  %2592 = bitcast %"class.std::bitset"* %YMM0.i143 to i8*
  %2593 = load i64, i64* %PC.i142
  %2594 = add i64 %2593, ptrtoint (%G_0x6bca__rip__type* @G_0x6bca__rip_ to i64)
  %2595 = load i64, i64* %PC.i142
  %2596 = add i64 %2595, 8
  store i64 %2596, i64* %PC.i142
  %2597 = inttoptr i64 %2594 to double*
  %2598 = load double, double* %2597
  %2599 = bitcast i8* %2592 to double*
  store double %2598, double* %2599, align 1
  %2600 = getelementptr inbounds i8, i8* %2592, i64 8
  %2601 = bitcast i8* %2600 to double*
  store double 0.000000e+00, double* %2601, align 1
  store %struct.Memory* %loadMem_4217d6, %struct.Memory** %MEMORY
  %loadMem_4217de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2605, i64 0, i64 1
  %YMM1.i141 = bitcast %union.VectorReg* %2606 to %"class.std::bitset"*
  %2607 = bitcast %"class.std::bitset"* %YMM1.i141 to i8*
  %2608 = load i64, i64* %PC.i140
  %2609 = add i64 %2608, ptrtoint (%G_0x6bd2__rip__type* @G_0x6bd2__rip_ to i64)
  %2610 = load i64, i64* %PC.i140
  %2611 = add i64 %2610, 8
  store i64 %2611, i64* %PC.i140
  %2612 = inttoptr i64 %2609 to double*
  %2613 = load double, double* %2612
  %2614 = bitcast i8* %2607 to double*
  store double %2613, double* %2614, align 1
  %2615 = getelementptr inbounds i8, i8* %2607, i64 8
  %2616 = bitcast i8* %2615 to double*
  store double 0.000000e+00, double* %2616, align 1
  store %struct.Memory* %loadMem_4217de, %struct.Memory** %MEMORY
  %loadMem_4217e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2621 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2620, i64 0, i64 2
  %YMM2.i139 = bitcast %union.VectorReg* %2621 to %"class.std::bitset"*
  %2622 = bitcast %"class.std::bitset"* %YMM2.i139 to i8*
  %2623 = load i64, i64* %PC.i138
  %2624 = add i64 %2623, ptrtoint (%G_0x6c22__rip__type* @G_0x6c22__rip_ to i64)
  %2625 = load i64, i64* %PC.i138
  %2626 = add i64 %2625, 8
  store i64 %2626, i64* %PC.i138
  %2627 = inttoptr i64 %2624 to double*
  %2628 = load double, double* %2627
  %2629 = bitcast i8* %2622 to double*
  store double %2628, double* %2629, align 1
  %2630 = getelementptr inbounds i8, i8* %2622, i64 8
  %2631 = bitcast i8* %2630 to double*
  store double 0.000000e+00, double* %2631, align 1
  store %struct.Memory* %loadMem_4217e6, %struct.Memory** %MEMORY
  %loadMem_4217ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2635, i64 0, i64 3
  %YMM3.i137 = bitcast %union.VectorReg* %2636 to %"class.std::bitset"*
  %2637 = bitcast %"class.std::bitset"* %YMM3.i137 to i8*
  %2638 = load i64, i64* %PC.i136
  %2639 = add i64 %2638, 9
  store i64 %2639, i64* %PC.i136
  %2640 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %2641 = sitofp i32 %2640 to double
  %2642 = bitcast i8* %2637 to double*
  store double %2641, double* %2642, align 1
  store %struct.Memory* %loadMem_4217ee, %struct.Memory** %MEMORY
  %loadMem_4217f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 15
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2650 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2649, i64 0, i64 3
  %YMM3.i135 = bitcast %union.VectorReg* %2650 to %"class.std::bitset"*
  %2651 = bitcast %"class.std::bitset"* %YMM3.i135 to i8*
  %2652 = bitcast %"class.std::bitset"* %YMM3.i135 to i8*
  %2653 = load i64, i64* %RBP.i134
  %2654 = sub i64 %2653, 8
  %2655 = load i64, i64* %PC.i133
  %2656 = add i64 %2655, 5
  store i64 %2656, i64* %PC.i133
  %2657 = bitcast i8* %2652 to double*
  %2658 = load double, double* %2657, align 1
  %2659 = getelementptr inbounds i8, i8* %2652, i64 8
  %2660 = bitcast i8* %2659 to i64*
  %2661 = load i64, i64* %2660, align 1
  %2662 = inttoptr i64 %2654 to double*
  %2663 = load double, double* %2662
  %2664 = fsub double %2658, %2663
  %2665 = bitcast i8* %2651 to double*
  store double %2664, double* %2665, align 1
  %2666 = getelementptr inbounds i8, i8* %2651, i64 8
  %2667 = bitcast i8* %2666 to i64*
  store i64 %2661, i64* %2667, align 1
  store %struct.Memory* %loadMem_4217f7, %struct.Memory** %MEMORY
  %loadMem_4217fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2671, i64 0, i64 4
  %YMM4.i132 = bitcast %union.VectorReg* %2672 to %"class.std::bitset"*
  %2673 = bitcast %"class.std::bitset"* %YMM4.i132 to i8*
  %2674 = load i64, i64* %PC.i131
  %2675 = add i64 %2674, 9
  store i64 %2675, i64* %PC.i131
  %2676 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %2677 = sitofp i32 %2676 to double
  %2678 = bitcast i8* %2673 to double*
  store double %2677, double* %2678, align 1
  store %struct.Memory* %loadMem_4217fc, %struct.Memory** %MEMORY
  %loadMem_421805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2682, i64 0, i64 4
  %YMM4.i129 = bitcast %union.VectorReg* %2683 to %"class.std::bitset"*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 2
  %XMM2.i130 = bitcast %union.VectorReg* %2685 to %union.vec128_t*
  %2686 = bitcast %"class.std::bitset"* %YMM4.i129 to i8*
  %2687 = bitcast %"class.std::bitset"* %YMM4.i129 to i8*
  %2688 = bitcast %union.vec128_t* %XMM2.i130 to i8*
  %2689 = load i64, i64* %PC.i128
  %2690 = add i64 %2689, 4
  store i64 %2690, i64* %PC.i128
  %2691 = bitcast i8* %2687 to double*
  %2692 = load double, double* %2691, align 1
  %2693 = getelementptr inbounds i8, i8* %2687, i64 8
  %2694 = bitcast i8* %2693 to i64*
  %2695 = load i64, i64* %2694, align 1
  %2696 = bitcast i8* %2688 to double*
  %2697 = load double, double* %2696, align 1
  %2698 = fmul double %2692, %2697
  %2699 = bitcast i8* %2686 to double*
  store double %2698, double* %2699, align 1
  %2700 = getelementptr inbounds i8, i8* %2686, i64 8
  %2701 = bitcast i8* %2700 to i64*
  store i64 %2695, i64* %2701, align 1
  store %struct.Memory* %loadMem_421805, %struct.Memory** %MEMORY
  %loadMem_421809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2705, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2706 to %"class.std::bitset"*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2708 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2707, i64 0, i64 1
  %XMM1.i127 = bitcast %union.VectorReg* %2708 to %union.vec128_t*
  %2709 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2710 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2711 = bitcast %union.vec128_t* %XMM1.i127 to i8*
  %2712 = load i64, i64* %PC.i126
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i126
  %2714 = bitcast i8* %2710 to double*
  %2715 = load double, double* %2714, align 1
  %2716 = getelementptr inbounds i8, i8* %2710, i64 8
  %2717 = bitcast i8* %2716 to i64*
  %2718 = load i64, i64* %2717, align 1
  %2719 = bitcast i8* %2711 to double*
  %2720 = load double, double* %2719, align 1
  %2721 = fdiv double %2715, %2720
  %2722 = bitcast i8* %2709 to double*
  store double %2721, double* %2722, align 1
  %2723 = getelementptr inbounds i8, i8* %2709, i64 8
  %2724 = bitcast i8* %2723 to i64*
  store i64 %2718, i64* %2724, align 1
  store %struct.Memory* %loadMem_421809, %struct.Memory** %MEMORY
  %loadMem_42180d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2728, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2729 to %"class.std::bitset"*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2730, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2731 to %union.vec128_t*
  %2732 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2733 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2734 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2735 = load i64, i64* %PC.i125
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC.i125
  %2737 = bitcast i8* %2733 to double*
  %2738 = load double, double* %2737, align 1
  %2739 = getelementptr inbounds i8, i8* %2733, i64 8
  %2740 = bitcast i8* %2739 to i64*
  %2741 = load i64, i64* %2740, align 1
  %2742 = bitcast i8* %2734 to double*
  %2743 = load double, double* %2742, align 1
  %2744 = fsub double %2738, %2743
  %2745 = bitcast i8* %2732 to double*
  store double %2744, double* %2745, align 1
  %2746 = getelementptr inbounds i8, i8* %2732, i64 8
  %2747 = bitcast i8* %2746 to i64*
  store i64 %2741, i64* %2747, align 1
  store %struct.Memory* %loadMem_42180d, %struct.Memory** %MEMORY
  %loadMem_421811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2751, i64 0, i64 0
  %XMM0.i122 = bitcast %union.VectorReg* %2752 to %union.vec128_t*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2753, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2754 to %union.vec128_t*
  %2755 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2756 = bitcast %union.vec128_t* %XMM0.i122 to i8*
  %2757 = load i64, i64* %PC.i121
  %2758 = add i64 %2757, 4
  store i64 %2758, i64* %PC.i121
  %2759 = bitcast i8* %2755 to double*
  %2760 = load double, double* %2759, align 1
  %2761 = bitcast i8* %2756 to double*
  %2762 = load double, double* %2761, align 1
  %2763 = fcmp uno double %2760, %2762
  br i1 %2763, label %2764, label %2776

; <label>:2764:                                   ; preds = %block_.L_4217d6
  %2765 = fadd double %2760, %2762
  %2766 = bitcast double %2765 to i64
  %2767 = and i64 %2766, 9221120237041090560
  %2768 = icmp eq i64 %2767, 9218868437227405312
  %2769 = and i64 %2766, 2251799813685247
  %2770 = icmp ne i64 %2769, 0
  %2771 = and i1 %2768, %2770
  br i1 %2771, label %2772, label %2782

; <label>:2772:                                   ; preds = %2764
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2774 = load i64, i64* %2773, align 8
  %2775 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2774, %struct.Memory* %loadMem_421811)
  br label %routine_ucomisd__xmm0___xmm3.exit

; <label>:2776:                                   ; preds = %block_.L_4217d6
  %2777 = fcmp ogt double %2760, %2762
  br i1 %2777, label %2782, label %2778

; <label>:2778:                                   ; preds = %2776
  %2779 = fcmp olt double %2760, %2762
  br i1 %2779, label %2782, label %2780

; <label>:2780:                                   ; preds = %2778
  %2781 = fcmp oeq double %2760, %2762
  br i1 %2781, label %2782, label %2789

; <label>:2782:                                   ; preds = %2780, %2778, %2776, %2764
  %2783 = phi i8 [ 0, %2776 ], [ 0, %2778 ], [ 1, %2780 ], [ 1, %2764 ]
  %2784 = phi i8 [ 0, %2776 ], [ 0, %2778 ], [ 0, %2780 ], [ 1, %2764 ]
  %2785 = phi i8 [ 0, %2776 ], [ 1, %2778 ], [ 0, %2780 ], [ 1, %2764 ]
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2783, i8* %2786, align 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2784, i8* %2787, align 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2785, i8* %2788, align 1
  br label %2789

; <label>:2789:                                   ; preds = %2782, %2780
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2790, align 1
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2791, align 1
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2792, align 1
  br label %routine_ucomisd__xmm0___xmm3.exit

routine_ucomisd__xmm0___xmm3.exit:                ; preds = %2772, %2789
  %2793 = phi %struct.Memory* [ %2775, %2772 ], [ %loadMem_421811, %2789 ]
  store %struct.Memory* %2793, %struct.Memory** %MEMORY
  %loadMem_421815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2796 to i64*
  %2797 = load i64, i64* %PC.i120
  %2798 = add i64 %2797, 49
  %2799 = load i64, i64* %PC.i120
  %2800 = add i64 %2799, 6
  %2801 = load i64, i64* %PC.i120
  %2802 = add i64 %2801, 6
  store i64 %2802, i64* %PC.i120
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2804 = load i8, i8* %2803, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2806 = load i8, i8* %2805, align 1
  %2807 = or i8 %2806, %2804
  %2808 = icmp ne i8 %2807, 0
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %BRANCH_TAKEN, align 1
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2811 = select i1 %2808, i64 %2798, i64 %2800
  store i64 %2811, i64* %2810, align 8
  store %struct.Memory* %loadMem_421815, %struct.Memory** %MEMORY
  %loadBr_421815 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421815 = icmp eq i8 %loadBr_421815, 1
  br i1 %cmpBr_421815, label %block_.L_421846, label %block_42181b

block_42181b:                                     ; preds = %routine_ucomisd__xmm0___xmm3.exit
  %loadMem_42181b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2815, i64 0, i64 0
  %YMM0.i119 = bitcast %union.VectorReg* %2816 to %"class.std::bitset"*
  %2817 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %2818 = load i64, i64* %PC.i118
  %2819 = add i64 %2818, ptrtoint (%G_0x6b95__rip__type* @G_0x6b95__rip_ to i64)
  %2820 = load i64, i64* %PC.i118
  %2821 = add i64 %2820, 8
  store i64 %2821, i64* %PC.i118
  %2822 = inttoptr i64 %2819 to double*
  %2823 = load double, double* %2822
  %2824 = bitcast i8* %2817 to double*
  store double %2823, double* %2824, align 1
  %2825 = getelementptr inbounds i8, i8* %2817, i64 8
  %2826 = bitcast i8* %2825 to double*
  store double 0.000000e+00, double* %2826, align 1
  store %struct.Memory* %loadMem_42181b, %struct.Memory** %MEMORY
  %loadMem_421823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2830, i64 0, i64 1
  %YMM1.i117 = bitcast %union.VectorReg* %2831 to %"class.std::bitset"*
  %2832 = bitcast %"class.std::bitset"* %YMM1.i117 to i8*
  %2833 = load i64, i64* %PC.i116
  %2834 = add i64 %2833, ptrtoint (%G_0x6be5__rip__type* @G_0x6be5__rip_ to i64)
  %2835 = load i64, i64* %PC.i116
  %2836 = add i64 %2835, 8
  store i64 %2836, i64* %PC.i116
  %2837 = inttoptr i64 %2834 to double*
  %2838 = load double, double* %2837
  %2839 = bitcast i8* %2832 to double*
  store double %2838, double* %2839, align 1
  %2840 = getelementptr inbounds i8, i8* %2832, i64 8
  %2841 = bitcast i8* %2840 to double*
  store double 0.000000e+00, double* %2841, align 1
  store %struct.Memory* %loadMem_421823, %struct.Memory** %MEMORY
  %loadMem_42182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2846 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2845, i64 0, i64 2
  %YMM2.i115 = bitcast %union.VectorReg* %2846 to %"class.std::bitset"*
  %2847 = bitcast %"class.std::bitset"* %YMM2.i115 to i8*
  %2848 = load i64, i64* %PC.i114
  %2849 = add i64 %2848, 9
  store i64 %2849, i64* %PC.i114
  %2850 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %2851 = sitofp i32 %2850 to double
  %2852 = bitcast i8* %2847 to double*
  store double %2851, double* %2852, align 1
  store %struct.Memory* %loadMem_42182b, %struct.Memory** %MEMORY
  %loadMem_421834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2857 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2856, i64 0, i64 2
  %YMM2.i112 = bitcast %union.VectorReg* %2857 to %"class.std::bitset"*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2858, i64 0, i64 1
  %XMM1.i113 = bitcast %union.VectorReg* %2859 to %union.vec128_t*
  %2860 = bitcast %"class.std::bitset"* %YMM2.i112 to i8*
  %2861 = bitcast %"class.std::bitset"* %YMM2.i112 to i8*
  %2862 = bitcast %union.vec128_t* %XMM1.i113 to i8*
  %2863 = load i64, i64* %PC.i111
  %2864 = add i64 %2863, 4
  store i64 %2864, i64* %PC.i111
  %2865 = bitcast i8* %2861 to double*
  %2866 = load double, double* %2865, align 1
  %2867 = getelementptr inbounds i8, i8* %2861, i64 8
  %2868 = bitcast i8* %2867 to i64*
  %2869 = load i64, i64* %2868, align 1
  %2870 = bitcast i8* %2862 to double*
  %2871 = load double, double* %2870, align 1
  %2872 = fmul double %2866, %2871
  %2873 = bitcast i8* %2860 to double*
  store double %2872, double* %2873, align 1
  %2874 = getelementptr inbounds i8, i8* %2860, i64 8
  %2875 = bitcast i8* %2874 to i64*
  store i64 %2869, i64* %2875, align 1
  store %struct.Memory* %loadMem_421834, %struct.Memory** %MEMORY
  %loadMem_421838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2880 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2879, i64 0, i64 2
  %YMM2.i109 = bitcast %union.VectorReg* %2880 to %"class.std::bitset"*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2881, i64 0, i64 0
  %XMM0.i110 = bitcast %union.VectorReg* %2882 to %union.vec128_t*
  %2883 = bitcast %"class.std::bitset"* %YMM2.i109 to i8*
  %2884 = bitcast %"class.std::bitset"* %YMM2.i109 to i8*
  %2885 = bitcast %union.vec128_t* %XMM0.i110 to i8*
  %2886 = load i64, i64* %PC.i108
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i108
  %2888 = bitcast i8* %2884 to double*
  %2889 = load double, double* %2888, align 1
  %2890 = getelementptr inbounds i8, i8* %2884, i64 8
  %2891 = bitcast i8* %2890 to i64*
  %2892 = load i64, i64* %2891, align 1
  %2893 = bitcast i8* %2885 to double*
  %2894 = load double, double* %2893, align 1
  %2895 = fdiv double %2889, %2894
  %2896 = bitcast i8* %2883 to double*
  store double %2895, double* %2896, align 1
  %2897 = getelementptr inbounds i8, i8* %2883, i64 8
  %2898 = bitcast i8* %2897 to i64*
  store i64 %2892, i64* %2898, align 1
  store %struct.Memory* %loadMem_421838, %struct.Memory** %MEMORY
  %loadMem_42183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 15
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2905, i64 0, i64 2
  %YMM2.i107 = bitcast %union.VectorReg* %2906 to %"class.std::bitset"*
  %2907 = bitcast %"class.std::bitset"* %YMM2.i107 to i8*
  %2908 = bitcast %"class.std::bitset"* %YMM2.i107 to i8*
  %2909 = load i64, i64* %RBP.i106
  %2910 = sub i64 %2909, 8
  %2911 = load i64, i64* %PC.i105
  %2912 = add i64 %2911, 5
  store i64 %2912, i64* %PC.i105
  %2913 = bitcast i8* %2908 to double*
  %2914 = load double, double* %2913, align 1
  %2915 = getelementptr inbounds i8, i8* %2908, i64 8
  %2916 = bitcast i8* %2915 to i64*
  %2917 = load i64, i64* %2916, align 1
  %2918 = inttoptr i64 %2910 to double*
  %2919 = load double, double* %2918
  %2920 = fadd double %2914, %2919
  %2921 = bitcast i8* %2907 to double*
  store double %2920, double* %2921, align 1
  %2922 = getelementptr inbounds i8, i8* %2907, i64 8
  %2923 = bitcast i8* %2922 to i64*
  store i64 %2917, i64* %2923, align 1
  store %struct.Memory* %loadMem_42183c, %struct.Memory** %MEMORY
  %loadMem_421841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 15
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2931 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2930, i64 0, i64 2
  %XMM2.i104 = bitcast %union.VectorReg* %2931 to %union.vec128_t*
  %2932 = load i64, i64* %RBP.i103
  %2933 = sub i64 %2932, 8
  %2934 = bitcast %union.vec128_t* %XMM2.i104 to i8*
  %2935 = load i64, i64* %PC.i102
  %2936 = add i64 %2935, 5
  store i64 %2936, i64* %PC.i102
  %2937 = bitcast i8* %2934 to double*
  %2938 = load double, double* %2937, align 1
  %2939 = inttoptr i64 %2933 to double*
  store double %2938, double* %2939
  store %struct.Memory* %loadMem_421841, %struct.Memory** %MEMORY
  br label %block_.L_421846

block_.L_421846:                                  ; preds = %block_42181b, %routine_ucomisd__xmm0___xmm3.exit
  %loadMem_421846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2942 to i64*
  %2943 = load i64, i64* %PC.i101
  %2944 = add i64 %2943, 5
  %2945 = load i64, i64* %PC.i101
  %2946 = add i64 %2945, 5
  store i64 %2946, i64* %PC.i101
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2944, i64* %2947, align 8
  store %struct.Memory* %loadMem_421846, %struct.Memory** %MEMORY
  br label %block_.L_42184b

block_.L_42184b:                                  ; preds = %block_.L_421846, %block_4217be
  %loadMem_42184b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %PC.i100
  %2952 = add i64 %2951, 5
  %2953 = load i64, i64* %PC.i100
  %2954 = add i64 %2953, 5
  store i64 %2954, i64* %PC.i100
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2952, i64* %2955, align 8
  store %struct.Memory* %loadMem_42184b, %struct.Memory** %MEMORY
  br label %block_.L_421850

block_.L_421850:                                  ; preds = %block_.L_42184b, %block_.L_421770
  %loadMem_421850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %PC.i99
  %2960 = add i64 %2959, 184
  %2961 = load i64, i64* %PC.i99
  %2962 = add i64 %2961, 5
  store i64 %2962, i64* %PC.i99
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2960, i64* %2963, align 8
  store %struct.Memory* %loadMem_421850, %struct.Memory** %MEMORY
  br label %block_.L_421908

block_.L_421855:                                  ; preds = %entry
  %loadMem_421855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2967, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %2968 to %"class.std::bitset"*
  %2969 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %2970 = load i64, i64* %PC.i97
  %2971 = add i64 %2970, ptrtoint (%G_0x6b4b__rip__type* @G_0x6b4b__rip_ to i64)
  %2972 = load i64, i64* %PC.i97
  %2973 = add i64 %2972, 8
  store i64 %2973, i64* %PC.i97
  %2974 = inttoptr i64 %2971 to double*
  %2975 = load double, double* %2974
  %2976 = bitcast i8* %2969 to double*
  store double %2975, double* %2976, align 1
  %2977 = getelementptr inbounds i8, i8* %2969, i64 8
  %2978 = bitcast i8* %2977 to double*
  store double 0.000000e+00, double* %2978, align 1
  store %struct.Memory* %loadMem_421855, %struct.Memory** %MEMORY
  %loadMem_42185d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2982, i64 0, i64 1
  %YMM1.i96 = bitcast %union.VectorReg* %2983 to %"class.std::bitset"*
  %2984 = bitcast %"class.std::bitset"* %YMM1.i96 to i8*
  %2985 = load i64, i64* %PC.i95
  %2986 = add i64 %2985, ptrtoint (%G_0x6bb3__rip__type* @G_0x6bb3__rip_ to i64)
  %2987 = load i64, i64* %PC.i95
  %2988 = add i64 %2987, 8
  store i64 %2988, i64* %PC.i95
  %2989 = inttoptr i64 %2986 to double*
  %2990 = load double, double* %2989
  %2991 = bitcast i8* %2984 to double*
  store double %2990, double* %2991, align 1
  %2992 = getelementptr inbounds i8, i8* %2984, i64 8
  %2993 = bitcast i8* %2992 to double*
  store double 0.000000e+00, double* %2993, align 1
  store %struct.Memory* %loadMem_42185d, %struct.Memory** %MEMORY
  %loadMem_421865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2997, i64 0, i64 2
  %YMM2.i94 = bitcast %union.VectorReg* %2998 to %"class.std::bitset"*
  %2999 = bitcast %"class.std::bitset"* %YMM2.i94 to i8*
  %3000 = load i64, i64* %PC.i93
  %3001 = add i64 %3000, 9
  store i64 %3001, i64* %PC.i93
  %3002 = bitcast i8* %2999 to <2 x i32>*
  %3003 = load <2 x i32>, <2 x i32>* %3002, align 1
  %3004 = getelementptr inbounds i8, i8* %2999, i64 8
  %3005 = bitcast i8* %3004 to <2 x i32>*
  %3006 = load <2 x i32>, <2 x i32>* %3005, align 1
  %3007 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*)
  %3008 = sitofp i32 %3007 to float
  %3009 = bitcast i8* %2999 to float*
  store float %3008, float* %3009, align 1
  %3010 = extractelement <2 x i32> %3003, i32 1
  %3011 = getelementptr inbounds i8, i8* %2999, i64 4
  %3012 = bitcast i8* %3011 to i32*
  store i32 %3010, i32* %3012, align 1
  %3013 = extractelement <2 x i32> %3006, i32 0
  %3014 = bitcast i8* %3004 to i32*
  store i32 %3013, i32* %3014, align 1
  %3015 = extractelement <2 x i32> %3006, i32 1
  %3016 = getelementptr inbounds i8, i8* %2999, i64 12
  %3017 = bitcast i8* %3016 to i32*
  store i32 %3015, i32* %3017, align 1
  store %struct.Memory* %loadMem_421865, %struct.Memory** %MEMORY
  %loadMem_42186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3021, i64 0, i64 2
  %YMM2.i91 = bitcast %union.VectorReg* %3022 to %"class.std::bitset"*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3023, i64 0, i64 2
  %XMM2.i92 = bitcast %union.VectorReg* %3024 to %union.vec128_t*
  %3025 = bitcast %"class.std::bitset"* %YMM2.i91 to i8*
  %3026 = bitcast %union.vec128_t* %XMM2.i92 to i8*
  %3027 = load i64, i64* %PC.i90
  %3028 = add i64 %3027, 4
  store i64 %3028, i64* %PC.i90
  %3029 = bitcast i8* %3026 to <2 x float>*
  %3030 = load <2 x float>, <2 x float>* %3029, align 1
  %3031 = extractelement <2 x float> %3030, i32 0
  %3032 = fpext float %3031 to double
  %3033 = bitcast i8* %3025 to double*
  store double %3032, double* %3033, align 1
  store %struct.Memory* %loadMem_42186e, %struct.Memory** %MEMORY
  %loadMem_421872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3037, i64 0, i64 2
  %YMM2.i88 = bitcast %union.VectorReg* %3038 to %"class.std::bitset"*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3039, i64 0, i64 1
  %XMM1.i89 = bitcast %union.VectorReg* %3040 to %union.vec128_t*
  %3041 = bitcast %"class.std::bitset"* %YMM2.i88 to i8*
  %3042 = bitcast %"class.std::bitset"* %YMM2.i88 to i8*
  %3043 = bitcast %union.vec128_t* %XMM1.i89 to i8*
  %3044 = load i64, i64* %PC.i87
  %3045 = add i64 %3044, 4
  store i64 %3045, i64* %PC.i87
  %3046 = bitcast i8* %3042 to double*
  %3047 = load double, double* %3046, align 1
  %3048 = getelementptr inbounds i8, i8* %3042, i64 8
  %3049 = bitcast i8* %3048 to i64*
  %3050 = load i64, i64* %3049, align 1
  %3051 = bitcast i8* %3043 to double*
  %3052 = load double, double* %3051, align 1
  %3053 = fmul double %3047, %3052
  %3054 = bitcast i8* %3041 to double*
  store double %3053, double* %3054, align 1
  %3055 = getelementptr inbounds i8, i8* %3041, i64 8
  %3056 = bitcast i8* %3055 to i64*
  store i64 %3050, i64* %3056, align 1
  store %struct.Memory* %loadMem_421872, %struct.Memory** %MEMORY
  %loadMem_421876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3060, i64 0, i64 1
  %YMM1.i86 = bitcast %union.VectorReg* %3061 to %"class.std::bitset"*
  %3062 = bitcast %"class.std::bitset"* %YMM1.i86 to i8*
  %3063 = load i64, i64* %PC.i85
  %3064 = add i64 %3063, 9
  store i64 %3064, i64* %PC.i85
  %3065 = bitcast i8* %3062 to <2 x i32>*
  %3066 = load <2 x i32>, <2 x i32>* %3065, align 1
  %3067 = getelementptr inbounds i8, i8* %3062, i64 8
  %3068 = bitcast i8* %3067 to <2 x i32>*
  %3069 = load <2 x i32>, <2 x i32>* %3068, align 1
  %3070 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*)
  %3071 = sitofp i32 %3070 to float
  %3072 = bitcast i8* %3062 to float*
  store float %3071, float* %3072, align 1
  %3073 = extractelement <2 x i32> %3066, i32 1
  %3074 = getelementptr inbounds i8, i8* %3062, i64 4
  %3075 = bitcast i8* %3074 to i32*
  store i32 %3073, i32* %3075, align 1
  %3076 = extractelement <2 x i32> %3069, i32 0
  %3077 = bitcast i8* %3067 to i32*
  store i32 %3076, i32* %3077, align 1
  %3078 = extractelement <2 x i32> %3069, i32 1
  %3079 = getelementptr inbounds i8, i8* %3062, i64 12
  %3080 = bitcast i8* %3079 to i32*
  store i32 %3078, i32* %3080, align 1
  store %struct.Memory* %loadMem_421876, %struct.Memory** %MEMORY
  %loadMem_42187f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3084, i64 0, i64 1
  %YMM1.i83 = bitcast %union.VectorReg* %3085 to %"class.std::bitset"*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3086, i64 0, i64 1
  %XMM1.i84 = bitcast %union.VectorReg* %3087 to %union.vec128_t*
  %3088 = bitcast %"class.std::bitset"* %YMM1.i83 to i8*
  %3089 = bitcast %union.vec128_t* %XMM1.i84 to i8*
  %3090 = load i64, i64* %PC.i82
  %3091 = add i64 %3090, 4
  store i64 %3091, i64* %PC.i82
  %3092 = bitcast i8* %3089 to <2 x float>*
  %3093 = load <2 x float>, <2 x float>* %3092, align 1
  %3094 = extractelement <2 x float> %3093, i32 0
  %3095 = fpext float %3094 to double
  %3096 = bitcast i8* %3088 to double*
  store double %3095, double* %3096, align 1
  store %struct.Memory* %loadMem_42187f, %struct.Memory** %MEMORY
  %loadMem_421883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3100, i64 0, i64 1
  %YMM1.i80 = bitcast %union.VectorReg* %3101 to %"class.std::bitset"*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3102, i64 0, i64 0
  %XMM0.i81 = bitcast %union.VectorReg* %3103 to %union.vec128_t*
  %3104 = bitcast %"class.std::bitset"* %YMM1.i80 to i8*
  %3105 = bitcast %"class.std::bitset"* %YMM1.i80 to i8*
  %3106 = bitcast %union.vec128_t* %XMM0.i81 to i8*
  %3107 = load i64, i64* %PC.i79
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %PC.i79
  %3109 = bitcast i8* %3105 to double*
  %3110 = load double, double* %3109, align 1
  %3111 = getelementptr inbounds i8, i8* %3105, i64 8
  %3112 = bitcast i8* %3111 to i64*
  %3113 = load i64, i64* %3112, align 1
  %3114 = bitcast i8* %3106 to double*
  %3115 = load double, double* %3114, align 1
  %3116 = fmul double %3110, %3115
  %3117 = bitcast i8* %3104 to double*
  store double %3116, double* %3117, align 1
  %3118 = getelementptr inbounds i8, i8* %3104, i64 8
  %3119 = bitcast i8* %3118 to i64*
  store i64 %3113, i64* %3119, align 1
  store %struct.Memory* %loadMem_421883, %struct.Memory** %MEMORY
  %loadMem_421887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3123, i64 0, i64 2
  %YMM2.i77 = bitcast %union.VectorReg* %3124 to %"class.std::bitset"*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3126 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3125, i64 0, i64 1
  %XMM1.i78 = bitcast %union.VectorReg* %3126 to %union.vec128_t*
  %3127 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %3128 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %3129 = bitcast %union.vec128_t* %XMM1.i78 to i8*
  %3130 = load i64, i64* %PC.i76
  %3131 = add i64 %3130, 4
  store i64 %3131, i64* %PC.i76
  %3132 = bitcast i8* %3128 to double*
  %3133 = load double, double* %3132, align 1
  %3134 = getelementptr inbounds i8, i8* %3128, i64 8
  %3135 = bitcast i8* %3134 to i64*
  %3136 = load i64, i64* %3135, align 1
  %3137 = bitcast i8* %3129 to double*
  %3138 = load double, double* %3137, align 1
  %3139 = fadd double %3133, %3138
  %3140 = bitcast i8* %3127 to double*
  store double %3139, double* %3140, align 1
  %3141 = getelementptr inbounds i8, i8* %3127, i64 8
  %3142 = bitcast i8* %3141 to i64*
  store i64 %3136, i64* %3142, align 1
  store %struct.Memory* %loadMem_421887, %struct.Memory** %MEMORY
  %loadMem_42188b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3146, i64 0, i64 1
  %YMM1.i75 = bitcast %union.VectorReg* %3147 to %"class.std::bitset"*
  %3148 = bitcast %"class.std::bitset"* %YMM1.i75 to i8*
  %3149 = load i64, i64* %PC.i74
  %3150 = add i64 %3149, 9
  store i64 %3150, i64* %PC.i74
  %3151 = bitcast i8* %3148 to <2 x i32>*
  %3152 = load <2 x i32>, <2 x i32>* %3151, align 1
  %3153 = getelementptr inbounds i8, i8* %3148, i64 8
  %3154 = bitcast i8* %3153 to <2 x i32>*
  %3155 = load <2 x i32>, <2 x i32>* %3154, align 1
  %3156 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*)
  %3157 = sitofp i32 %3156 to float
  %3158 = bitcast i8* %3148 to float*
  store float %3157, float* %3158, align 1
  %3159 = extractelement <2 x i32> %3152, i32 1
  %3160 = getelementptr inbounds i8, i8* %3148, i64 4
  %3161 = bitcast i8* %3160 to i32*
  store i32 %3159, i32* %3161, align 1
  %3162 = extractelement <2 x i32> %3155, i32 0
  %3163 = bitcast i8* %3153 to i32*
  store i32 %3162, i32* %3163, align 1
  %3164 = extractelement <2 x i32> %3155, i32 1
  %3165 = getelementptr inbounds i8, i8* %3148, i64 12
  %3166 = bitcast i8* %3165 to i32*
  store i32 %3164, i32* %3166, align 1
  store %struct.Memory* %loadMem_42188b, %struct.Memory** %MEMORY
  %loadMem_421894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3171 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3170, i64 0, i64 1
  %YMM1.i72 = bitcast %union.VectorReg* %3171 to %"class.std::bitset"*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3173 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3172, i64 0, i64 1
  %XMM1.i73 = bitcast %union.VectorReg* %3173 to %union.vec128_t*
  %3174 = bitcast %"class.std::bitset"* %YMM1.i72 to i8*
  %3175 = bitcast %union.vec128_t* %XMM1.i73 to i8*
  %3176 = load i64, i64* %PC.i71
  %3177 = add i64 %3176, 4
  store i64 %3177, i64* %PC.i71
  %3178 = bitcast i8* %3175 to <2 x float>*
  %3179 = load <2 x float>, <2 x float>* %3178, align 1
  %3180 = extractelement <2 x float> %3179, i32 0
  %3181 = fpext float %3180 to double
  %3182 = bitcast i8* %3174 to double*
  store double %3181, double* %3182, align 1
  store %struct.Memory* %loadMem_421894, %struct.Memory** %MEMORY
  %loadMem_421898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3186, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %3187 to %"class.std::bitset"*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3188, i64 0, i64 1
  %XMM1.i70 = bitcast %union.VectorReg* %3189 to %union.vec128_t*
  %3190 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %3191 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %3192 = bitcast %union.vec128_t* %XMM1.i70 to i8*
  %3193 = load i64, i64* %PC.i68
  %3194 = add i64 %3193, 4
  store i64 %3194, i64* %PC.i68
  %3195 = bitcast i8* %3191 to double*
  %3196 = load double, double* %3195, align 1
  %3197 = getelementptr inbounds i8, i8* %3191, i64 8
  %3198 = bitcast i8* %3197 to i64*
  %3199 = load i64, i64* %3198, align 1
  %3200 = bitcast i8* %3192 to double*
  %3201 = load double, double* %3200, align 1
  %3202 = fdiv double %3196, %3201
  %3203 = bitcast i8* %3190 to double*
  store double %3202, double* %3203, align 1
  %3204 = getelementptr inbounds i8, i8* %3190, i64 8
  %3205 = bitcast i8* %3204 to i64*
  store i64 %3199, i64* %3205, align 1
  store %struct.Memory* %loadMem_421898, %struct.Memory** %MEMORY
  %loadMem_42189c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 33
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3209, i64 0, i64 2
  %YMM2.i66 = bitcast %union.VectorReg* %3210 to %"class.std::bitset"*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3211, i64 0, i64 0
  %XMM0.i67 = bitcast %union.VectorReg* %3212 to %union.vec128_t*
  %3213 = bitcast %"class.std::bitset"* %YMM2.i66 to i8*
  %3214 = bitcast %"class.std::bitset"* %YMM2.i66 to i8*
  %3215 = bitcast %union.vec128_t* %XMM0.i67 to i8*
  %3216 = load i64, i64* %PC.i65
  %3217 = add i64 %3216, 4
  store i64 %3217, i64* %PC.i65
  %3218 = bitcast i8* %3214 to double*
  %3219 = load double, double* %3218, align 1
  %3220 = getelementptr inbounds i8, i8* %3214, i64 8
  %3221 = bitcast i8* %3220 to i64*
  %3222 = load i64, i64* %3221, align 1
  %3223 = bitcast i8* %3215 to double*
  %3224 = load double, double* %3223, align 1
  %3225 = fsub double %3219, %3224
  %3226 = bitcast i8* %3213 to double*
  store double %3225, double* %3226, align 1
  %3227 = getelementptr inbounds i8, i8* %3213, i64 8
  %3228 = bitcast i8* %3227 to i64*
  store i64 %3222, i64* %3228, align 1
  store %struct.Memory* %loadMem_42189c, %struct.Memory** %MEMORY
  %loadMem_4218a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3235, i64 0, i64 2
  %XMM2.i64 = bitcast %union.VectorReg* %3236 to %union.vec128_t*
  %3237 = load i64, i64* %RBP.i63
  %3238 = sub i64 %3237, 8
  %3239 = bitcast %union.vec128_t* %XMM2.i64 to i8*
  %3240 = load i64, i64* %PC.i62
  %3241 = add i64 %3240, 5
  store i64 %3241, i64* %PC.i62
  %3242 = bitcast i8* %3239 to double*
  %3243 = load double, double* %3242, align 1
  %3244 = inttoptr i64 %3238 to double*
  store double %3243, double* %3244
  store %struct.Memory* %loadMem_4218a0, %struct.Memory** %MEMORY
  %loadMem_4218a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3247 to i64*
  %3248 = load i64, i64* %PC.i61
  %3249 = add i64 %3248, 8
  store i64 %3249, i64* %PC.i61
  %3250 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3251, align 1
  %3252 = and i32 %3250, 255
  %3253 = call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3256, i8* %3257, align 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3258, align 1
  %3259 = icmp eq i32 %3250, 0
  %3260 = zext i1 %3259 to i8
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3260, i8* %3261, align 1
  %3262 = lshr i32 %3250, 31
  %3263 = trunc i32 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3263, i8* %3264, align 1
  %3265 = lshr i32 %3250, 31
  %3266 = xor i32 %3262, %3265
  %3267 = add i32 %3266, %3265
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3269, i8* %3270, align 1
  store %struct.Memory* %loadMem_4218a5, %struct.Memory** %MEMORY
  %loadMem_4218ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %PC.i60
  %3275 = add i64 %3274, 86
  %3276 = load i64, i64* %PC.i60
  %3277 = add i64 %3276, 6
  %3278 = load i64, i64* %PC.i60
  %3279 = add i64 %3278, 6
  store i64 %3279, i64* %PC.i60
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3281 = load i8, i8* %3280, align 1
  store i8 %3281, i8* %BRANCH_TAKEN, align 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3283 = icmp ne i8 %3281, 0
  %3284 = select i1 %3283, i64 %3275, i64 %3277
  store i64 %3284, i64* %3282, align 8
  store %struct.Memory* %loadMem_4218ad, %struct.Memory** %MEMORY
  %loadBr_4218ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218ad = icmp eq i8 %loadBr_4218ad, 1
  br i1 %cmpBr_4218ad, label %block_.L_421903, label %block_4218b3

block_4218b3:                                     ; preds = %block_.L_421855
  %loadMem_4218b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3288, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %3289 to %"class.std::bitset"*
  %3290 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %3291 = load i64, i64* %PC.i58
  %3292 = add i64 %3291, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
  %3293 = load i64, i64* %PC.i58
  %3294 = add i64 %3293, 8
  store i64 %3294, i64* %PC.i58
  %3295 = inttoptr i64 %3292 to double*
  %3296 = load double, double* %3295
  %3297 = bitcast i8* %3290 to double*
  store double %3296, double* %3297, align 1
  %3298 = getelementptr inbounds i8, i8* %3290, i64 8
  %3299 = bitcast i8* %3298 to double*
  store double 0.000000e+00, double* %3299, align 1
  store %struct.Memory* %loadMem_4218b3, %struct.Memory** %MEMORY
  %loadMem_4218bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3303, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3304 to %"class.std::bitset"*
  %3305 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3306 = load i64, i64* %PC.i57
  %3307 = add i64 %3306, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
  %3308 = load i64, i64* %PC.i57
  %3309 = add i64 %3308, 8
  store i64 %3309, i64* %PC.i57
  %3310 = inttoptr i64 %3307 to double*
  %3311 = load double, double* %3310
  %3312 = bitcast i8* %3305 to double*
  store double %3311, double* %3312, align 1
  %3313 = getelementptr inbounds i8, i8* %3305, i64 8
  %3314 = bitcast i8* %3313 to double*
  store double 0.000000e+00, double* %3314, align 1
  store %struct.Memory* %loadMem_4218bb, %struct.Memory** %MEMORY
  %loadMem_4218c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3318, i64 0, i64 2
  %YMM2.i56 = bitcast %union.VectorReg* %3319 to %"class.std::bitset"*
  %3320 = bitcast %"class.std::bitset"* %YMM2.i56 to i8*
  %3321 = load i64, i64* %PC.i55
  %3322 = add i64 %3321, 9
  store i64 %3322, i64* %PC.i55
  %3323 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  %3324 = sitofp i32 %3323 to double
  %3325 = bitcast i8* %3320 to double*
  store double %3324, double* %3325, align 1
  store %struct.Memory* %loadMem_4218c3, %struct.Memory** %MEMORY
  %loadMem_4218cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3329, i64 0, i64 2
  %YMM2.i53 = bitcast %union.VectorReg* %3330 to %"class.std::bitset"*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3331, i64 0, i64 1
  %XMM1.i54 = bitcast %union.VectorReg* %3332 to %union.vec128_t*
  %3333 = bitcast %"class.std::bitset"* %YMM2.i53 to i8*
  %3334 = bitcast %"class.std::bitset"* %YMM2.i53 to i8*
  %3335 = bitcast %union.vec128_t* %XMM1.i54 to i8*
  %3336 = load i64, i64* %PC.i52
  %3337 = add i64 %3336, 4
  store i64 %3337, i64* %PC.i52
  %3338 = bitcast i8* %3334 to double*
  %3339 = load double, double* %3338, align 1
  %3340 = getelementptr inbounds i8, i8* %3334, i64 8
  %3341 = bitcast i8* %3340 to i64*
  %3342 = load i64, i64* %3341, align 1
  %3343 = bitcast i8* %3335 to double*
  %3344 = load double, double* %3343, align 1
  %3345 = fmul double %3339, %3344
  %3346 = bitcast i8* %3333 to double*
  store double %3345, double* %3346, align 1
  %3347 = getelementptr inbounds i8, i8* %3333, i64 8
  %3348 = bitcast i8* %3347 to i64*
  store i64 %3342, i64* %3348, align 1
  store %struct.Memory* %loadMem_4218cc, %struct.Memory** %MEMORY
  %loadMem_4218d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3352, i64 0, i64 2
  %YMM2.i50 = bitcast %union.VectorReg* %3353 to %"class.std::bitset"*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3354, i64 0, i64 0
  %XMM0.i51 = bitcast %union.VectorReg* %3355 to %union.vec128_t*
  %3356 = bitcast %"class.std::bitset"* %YMM2.i50 to i8*
  %3357 = bitcast %"class.std::bitset"* %YMM2.i50 to i8*
  %3358 = bitcast %union.vec128_t* %XMM0.i51 to i8*
  %3359 = load i64, i64* %PC.i49
  %3360 = add i64 %3359, 4
  store i64 %3360, i64* %PC.i49
  %3361 = bitcast i8* %3357 to double*
  %3362 = load double, double* %3361, align 1
  %3363 = getelementptr inbounds i8, i8* %3357, i64 8
  %3364 = bitcast i8* %3363 to i64*
  %3365 = load i64, i64* %3364, align 1
  %3366 = bitcast i8* %3358 to double*
  %3367 = load double, double* %3366, align 1
  %3368 = fdiv double %3362, %3367
  %3369 = bitcast i8* %3356 to double*
  store double %3368, double* %3369, align 1
  %3370 = getelementptr inbounds i8, i8* %3356, i64 8
  %3371 = bitcast i8* %3370 to i64*
  store i64 %3365, i64* %3371, align 1
  store %struct.Memory* %loadMem_4218d0, %struct.Memory** %MEMORY
  %loadMem_4218d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 15
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %3377 to i64*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3379 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3378, i64 0, i64 2
  %YMM2.i48 = bitcast %union.VectorReg* %3379 to %"class.std::bitset"*
  %3380 = bitcast %"class.std::bitset"* %YMM2.i48 to i8*
  %3381 = bitcast %"class.std::bitset"* %YMM2.i48 to i8*
  %3382 = load i64, i64* %RBP.i47
  %3383 = sub i64 %3382, 8
  %3384 = load i64, i64* %PC.i46
  %3385 = add i64 %3384, 5
  store i64 %3385, i64* %PC.i46
  %3386 = bitcast i8* %3381 to double*
  %3387 = load double, double* %3386, align 1
  %3388 = getelementptr inbounds i8, i8* %3381, i64 8
  %3389 = bitcast i8* %3388 to i64*
  %3390 = load i64, i64* %3389, align 1
  %3391 = inttoptr i64 %3383 to double*
  %3392 = load double, double* %3391
  %3393 = fadd double %3387, %3392
  %3394 = bitcast i8* %3380 to double*
  store double %3393, double* %3394, align 1
  %3395 = getelementptr inbounds i8, i8* %3380, i64 8
  %3396 = bitcast i8* %3395 to i64*
  store i64 %3390, i64* %3396, align 1
  store %struct.Memory* %loadMem_4218d4, %struct.Memory** %MEMORY
  %loadMem_4218d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3403, i64 0, i64 2
  %XMM2.i45 = bitcast %union.VectorReg* %3404 to %union.vec128_t*
  %3405 = load i64, i64* %RBP.i44
  %3406 = sub i64 %3405, 8
  %3407 = bitcast %union.vec128_t* %XMM2.i45 to i8*
  %3408 = load i64, i64* %PC.i43
  %3409 = add i64 %3408, 5
  store i64 %3409, i64* %PC.i43
  %3410 = bitcast i8* %3407 to double*
  %3411 = load double, double* %3410, align 1
  %3412 = inttoptr i64 %3406 to double*
  store double %3411, double* %3412
  store %struct.Memory* %loadMem_4218d9, %struct.Memory** %MEMORY
  %loadMem_4218de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3417 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3416, i64 0, i64 2
  %YMM2.i42 = bitcast %union.VectorReg* %3417 to %"class.std::bitset"*
  %3418 = bitcast %"class.std::bitset"* %YMM2.i42 to i8*
  %3419 = load i64, i64* %PC.i41
  %3420 = add i64 %3419, 9
  store i64 %3420, i64* %PC.i41
  %3421 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  %3422 = sitofp i32 %3421 to double
  %3423 = bitcast i8* %3418 to double*
  store double %3422, double* %3423, align 1
  store %struct.Memory* %loadMem_4218de, %struct.Memory** %MEMORY
  %loadMem_4218e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3426 to i64*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3427, i64 0, i64 2
  %YMM2.i40 = bitcast %union.VectorReg* %3428 to %"class.std::bitset"*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3429, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3430 to %union.vec128_t*
  %3431 = bitcast %"class.std::bitset"* %YMM2.i40 to i8*
  %3432 = bitcast %"class.std::bitset"* %YMM2.i40 to i8*
  %3433 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3434 = load i64, i64* %PC.i39
  %3435 = add i64 %3434, 4
  store i64 %3435, i64* %PC.i39
  %3436 = bitcast i8* %3432 to double*
  %3437 = load double, double* %3436, align 1
  %3438 = getelementptr inbounds i8, i8* %3432, i64 8
  %3439 = bitcast i8* %3438 to i64*
  %3440 = load i64, i64* %3439, align 1
  %3441 = bitcast i8* %3433 to double*
  %3442 = load double, double* %3441, align 1
  %3443 = fmul double %3437, %3442
  %3444 = bitcast i8* %3431 to double*
  store double %3443, double* %3444, align 1
  %3445 = getelementptr inbounds i8, i8* %3431, i64 8
  %3446 = bitcast i8* %3445 to i64*
  store i64 %3440, i64* %3446, align 1
  store %struct.Memory* %loadMem_4218e7, %struct.Memory** %MEMORY
  %loadMem_4218eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3451 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3450, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3451 to %"class.std::bitset"*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3452, i64 0, i64 0
  %XMM0.i38 = bitcast %union.VectorReg* %3453 to %union.vec128_t*
  %3454 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3455 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3456 = bitcast %union.vec128_t* %XMM0.i38 to i8*
  %3457 = load i64, i64* %PC.i37
  %3458 = add i64 %3457, 4
  store i64 %3458, i64* %PC.i37
  %3459 = bitcast i8* %3455 to double*
  %3460 = load double, double* %3459, align 1
  %3461 = getelementptr inbounds i8, i8* %3455, i64 8
  %3462 = bitcast i8* %3461 to i64*
  %3463 = load i64, i64* %3462, align 1
  %3464 = bitcast i8* %3456 to double*
  %3465 = load double, double* %3464, align 1
  %3466 = fdiv double %3460, %3465
  %3467 = bitcast i8* %3454 to double*
  store double %3466, double* %3467, align 1
  %3468 = getelementptr inbounds i8, i8* %3454, i64 8
  %3469 = bitcast i8* %3468 to i64*
  store i64 %3463, i64* %3469, align 1
  store %struct.Memory* %loadMem_4218eb, %struct.Memory** %MEMORY
  %loadMem_4218ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 1
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3477 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3476, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3477 to %union.vec128_t*
  %3478 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3479 = load i64, i64* %PC.i35
  %3480 = add i64 %3479, 4
  store i64 %3480, i64* %PC.i35
  %3481 = bitcast i8* %3478 to double*
  %3482 = load double, double* %3481, align 1
  %3483 = call double @llvm.trunc.f64(double %3482)
  %3484 = call double @llvm.fabs.f64(double %3483)
  %3485 = fcmp ogt double %3484, 0x41DFFFFFFFC00000
  %3486 = fptosi double %3483 to i32
  %3487 = zext i32 %3486 to i64
  %3488 = select i1 %3485, i64 2147483648, i64 %3487
  store i64 %3488, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_4218ef, %struct.Memory** %MEMORY
  %loadMem_4218f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 5
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %PC.i33
  %3496 = add i64 %3495, 7
  store i64 %3496, i64* %PC.i33
  %3497 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  %3498 = zext i32 %3497 to i64
  store i64 %3498, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_4218f3, %struct.Memory** %MEMORY
  %loadMem_4218fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 1
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %3504 to i32*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 5
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %RCX.i
  %3509 = load i32, i32* %EAX.i32
  %3510 = zext i32 %3509 to i64
  %3511 = load i64, i64* %PC.i31
  %3512 = add i64 %3511, 2
  store i64 %3512, i64* %PC.i31
  %3513 = trunc i64 %3508 to i32
  %3514 = sub i32 %3513, %3509
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RCX.i, align 8
  %3516 = icmp ult i32 %3513, %3509
  %3517 = zext i1 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3517, i8* %3518, align 1
  %3519 = and i32 %3514, 255
  %3520 = call i32 @llvm.ctpop.i32(i32 %3519)
  %3521 = trunc i32 %3520 to i8
  %3522 = and i8 %3521, 1
  %3523 = xor i8 %3522, 1
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3523, i8* %3524, align 1
  %3525 = xor i64 %3510, %3508
  %3526 = trunc i64 %3525 to i32
  %3527 = xor i32 %3526, %3514
  %3528 = lshr i32 %3527, 4
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3530, i8* %3531, align 1
  %3532 = icmp eq i32 %3514, 0
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3533, i8* %3534, align 1
  %3535 = lshr i32 %3514, 31
  %3536 = trunc i32 %3535 to i8
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3536, i8* %3537, align 1
  %3538 = lshr i32 %3513, 31
  %3539 = lshr i32 %3509, 31
  %3540 = xor i32 %3539, %3538
  %3541 = xor i32 %3535, %3538
  %3542 = add i32 %3541, %3540
  %3543 = icmp eq i32 %3542, 2
  %3544 = zext i1 %3543 to i8
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3544, i8* %3545, align 1
  store %struct.Memory* %loadMem_4218fa, %struct.Memory** %MEMORY
  %loadMem_4218fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 5
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3551 to i32*
  %3552 = load i32, i32* %ECX.i
  %3553 = zext i32 %3552 to i64
  %3554 = load i64, i64* %PC.i30
  %3555 = add i64 %3554, 7
  store i64 %3555, i64* %PC.i30
  store i32 %3552, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  store %struct.Memory* %loadMem_4218fc, %struct.Memory** %MEMORY
  br label %block_.L_421903

block_.L_421903:                                  ; preds = %block_4218b3, %block_.L_421855
  %loadMem_421903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3558 to i64*
  %3559 = load i64, i64* %PC.i29
  %3560 = add i64 %3559, 5
  %3561 = load i64, i64* %PC.i29
  %3562 = add i64 %3561, 5
  store i64 %3562, i64* %PC.i29
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3560, i64* %3563, align 8
  store %struct.Memory* %loadMem_421903, %struct.Memory** %MEMORY
  br label %block_.L_421908

block_.L_421908:                                  ; preds = %block_.L_421903, %block_.L_421850
  %loadMem_421908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3566 to i64*
  %3567 = load i64, i64* %PC.i28
  %3568 = add i64 %3567, 8
  store i64 %3568, i64* %PC.i28
  %3569 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %3570 = sub i32 %3569, 1
  %3571 = icmp ult i32 %3569, 1
  %3572 = zext i1 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3572, i8* %3573, align 1
  %3574 = and i32 %3570, 255
  %3575 = call i32 @llvm.ctpop.i32(i32 %3574)
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  %3578 = xor i8 %3577, 1
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3578, i8* %3579, align 1
  %3580 = xor i32 %3569, 1
  %3581 = xor i32 %3580, %3570
  %3582 = lshr i32 %3581, 4
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3584, i8* %3585, align 1
  %3586 = icmp eq i32 %3570, 0
  %3587 = zext i1 %3586 to i8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3587, i8* %3588, align 1
  %3589 = lshr i32 %3570, 31
  %3590 = trunc i32 %3589 to i8
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3590, i8* %3591, align 1
  %3592 = lshr i32 %3569, 31
  %3593 = xor i32 %3589, %3592
  %3594 = add i32 %3593, %3592
  %3595 = icmp eq i32 %3594, 2
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3596, i8* %3597, align 1
  store %struct.Memory* %loadMem_421908, %struct.Memory** %MEMORY
  %loadMem_421910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %PC.i27
  %3602 = add i64 %3601, 84
  %3603 = load i64, i64* %PC.i27
  %3604 = add i64 %3603, 6
  %3605 = load i64, i64* %PC.i27
  %3606 = add i64 %3605, 6
  store i64 %3606, i64* %PC.i27
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3608 = load i8, i8* %3607, align 1
  %3609 = icmp eq i8 %3608, 0
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %BRANCH_TAKEN, align 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3612 = select i1 %3609, i64 %3602, i64 %3604
  store i64 %3612, i64* %3611, align 8
  store %struct.Memory* %loadMem_421910, %struct.Memory** %MEMORY
  %loadBr_421910 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421910 = icmp eq i8 %loadBr_421910, 1
  br i1 %cmpBr_421910, label %block_.L_421964, label %block_421916

block_421916:                                     ; preds = %block_.L_421908
  %loadMem_421916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3616, i64 0, i64 0
  %YMM0.i26 = bitcast %union.VectorReg* %3617 to %"class.std::bitset"*
  %3618 = bitcast %"class.std::bitset"* %YMM0.i26 to i8*
  %3619 = load i64, i64* %PC.i25
  %3620 = add i64 %3619, ptrtoint (%G_0x6b02__rip__type* @G_0x6b02__rip_ to i64)
  %3621 = load i64, i64* %PC.i25
  %3622 = add i64 %3621, 8
  store i64 %3622, i64* %PC.i25
  %3623 = inttoptr i64 %3620 to double*
  %3624 = load double, double* %3623
  %3625 = bitcast i8* %3618 to double*
  store double %3624, double* %3625, align 1
  %3626 = getelementptr inbounds i8, i8* %3618, i64 8
  %3627 = bitcast i8* %3626 to double*
  store double 0.000000e+00, double* %3627, align 1
  store %struct.Memory* %loadMem_421916, %struct.Memory** %MEMORY
  %loadMem_42191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 15
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3634, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %3635 to %"class.std::bitset"*
  %3636 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %3637 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %3638 = load i64, i64* %RBP.i23
  %3639 = sub i64 %3638, 8
  %3640 = load i64, i64* %PC.i22
  %3641 = add i64 %3640, 5
  store i64 %3641, i64* %PC.i22
  %3642 = bitcast i8* %3637 to double*
  %3643 = load double, double* %3642, align 1
  %3644 = getelementptr inbounds i8, i8* %3637, i64 8
  %3645 = bitcast i8* %3644 to i64*
  %3646 = load i64, i64* %3645, align 1
  %3647 = inttoptr i64 %3639 to double*
  %3648 = load double, double* %3647
  %3649 = fmul double %3643, %3648
  %3650 = bitcast i8* %3636 to double*
  store double %3649, double* %3650, align 1
  %3651 = getelementptr inbounds i8, i8* %3636, i64 8
  %3652 = bitcast i8* %3651 to i64*
  store i64 %3646, i64* %3652, align 1
  store %struct.Memory* %loadMem_42191e, %struct.Memory** %MEMORY
  %loadMem_421923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 33
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 15
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3659, i64 0, i64 0
  %XMM0.i21 = bitcast %union.VectorReg* %3660 to %union.vec128_t*
  %3661 = load i64, i64* %RBP.i20
  %3662 = sub i64 %3661, 8
  %3663 = bitcast %union.vec128_t* %XMM0.i21 to i8*
  %3664 = load i64, i64* %PC.i19
  %3665 = add i64 %3664, 5
  store i64 %3665, i64* %PC.i19
  %3666 = bitcast i8* %3663 to double*
  %3667 = load double, double* %3666, align 1
  %3668 = inttoptr i64 %3662 to double*
  store double %3667, double* %3668
  store %struct.Memory* %loadMem_421923, %struct.Memory** %MEMORY
  %loadMem_421928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 33
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 1
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %3674 to i64*
  %3675 = load i64, i64* %PC.i17
  %3676 = add i64 %3675, 7
  store i64 %3676, i64* %PC.i17
  %3677 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_421928, %struct.Memory** %MEMORY
  %loadMem_42192f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 1
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3684 to i32*
  %3685 = load i32, i32* %EAX.i
  %3686 = zext i32 %3685 to i64
  %3687 = load i64, i64* %PC.i16
  %3688 = add i64 %3687, 7
  store i64 %3688, i64* %PC.i16
  %3689 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %3690 = sub i32 %3685, %3689
  %3691 = icmp ult i32 %3685, %3689
  %3692 = zext i1 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3692, i8* %3693, align 1
  %3694 = and i32 %3690, 255
  %3695 = call i32 @llvm.ctpop.i32(i32 %3694)
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = xor i8 %3697, 1
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3698, i8* %3699, align 1
  %3700 = xor i32 %3689, %3685
  %3701 = xor i32 %3700, %3690
  %3702 = lshr i32 %3701, 4
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3704, i8* %3705, align 1
  %3706 = icmp eq i32 %3690, 0
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3707, i8* %3708, align 1
  %3709 = lshr i32 %3690, 31
  %3710 = trunc i32 %3709 to i8
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3710, i8* %3711, align 1
  %3712 = lshr i32 %3685, 31
  %3713 = lshr i32 %3689, 31
  %3714 = xor i32 %3713, %3712
  %3715 = xor i32 %3709, %3712
  %3716 = add i32 %3715, %3714
  %3717 = icmp eq i32 %3716, 2
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3718, i8* %3719, align 1
  store %struct.Memory* %loadMem_42192f, %struct.Memory** %MEMORY
  %loadMem_421936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3722 to i64*
  %3723 = load i64, i64* %PC.i15
  %3724 = add i64 %3723, 23
  %3725 = load i64, i64* %PC.i15
  %3726 = add i64 %3725, 6
  %3727 = load i64, i64* %PC.i15
  %3728 = add i64 %3727, 6
  store i64 %3728, i64* %PC.i15
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3730 = load i8, i8* %3729, align 1
  %3731 = icmp eq i8 %3730, 0
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3733 = load i8, i8* %3732, align 1
  %3734 = icmp ne i8 %3733, 0
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3736 = load i8, i8* %3735, align 1
  %3737 = icmp ne i8 %3736, 0
  %3738 = xor i1 %3734, %3737
  %3739 = xor i1 %3738, true
  %3740 = and i1 %3731, %3739
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %BRANCH_TAKEN, align 1
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3743 = select i1 %3740, i64 %3724, i64 %3726
  store i64 %3743, i64* %3742, align 8
  store %struct.Memory* %loadMem_421936, %struct.Memory** %MEMORY
  %loadBr_421936 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421936 = icmp eq i8 %loadBr_421936, 1
  br i1 %cmpBr_421936, label %block_.L_42194d, label %block_42193c

block_42193c:                                     ; preds = %block_421916
  %loadMem_42193c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %PC.i14
  %3748 = add i64 %3747, 11
  store i64 %3748, i64* %PC.i14
  %3749 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %3750 = sub i32 %3749, 1500
  %3751 = icmp ult i32 %3749, 1500
  %3752 = zext i1 %3751 to i8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3752, i8* %3753, align 1
  %3754 = and i32 %3750, 255
  %3755 = call i32 @llvm.ctpop.i32(i32 %3754)
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3758, i8* %3759, align 1
  %3760 = xor i32 %3749, 1500
  %3761 = xor i32 %3760, %3750
  %3762 = lshr i32 %3761, 4
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3764, i8* %3765, align 1
  %3766 = icmp eq i32 %3750, 0
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3767, i8* %3768, align 1
  %3769 = lshr i32 %3750, 31
  %3770 = trunc i32 %3769 to i8
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3770, i8* %3771, align 1
  %3772 = lshr i32 %3749, 31
  %3773 = xor i32 %3769, %3772
  %3774 = add i32 %3773, %3772
  %3775 = icmp eq i32 %3774, 2
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3776, i8* %3777, align 1
  store %struct.Memory* %loadMem_42193c, %struct.Memory** %MEMORY
  %loadMem_421947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %PC.i13
  %3782 = add i64 %3781, 24
  %3783 = load i64, i64* %PC.i13
  %3784 = add i64 %3783, 6
  %3785 = load i64, i64* %PC.i13
  %3786 = add i64 %3785, 6
  store i64 %3786, i64* %PC.i13
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3788 = load i8, i8* %3787, align 1
  %3789 = icmp ne i8 %3788, 0
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3791 = load i8, i8* %3790, align 1
  %3792 = icmp ne i8 %3791, 0
  %3793 = xor i1 %3789, %3792
  %3794 = xor i1 %3793, true
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %BRANCH_TAKEN, align 1
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3797 = select i1 %3793, i64 %3784, i64 %3782
  store i64 %3797, i64* %3796, align 8
  store %struct.Memory* %loadMem_421947, %struct.Memory** %MEMORY
  %loadBr_421947 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421947 = icmp eq i8 %loadBr_421947, 1
  br i1 %cmpBr_421947, label %block_.L_42195f, label %block_.L_42194d

block_.L_42194d:                                  ; preds = %block_42193c, %block_421916
  %loadMem_42194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3801, i64 0, i64 0
  %YMM0.i12 = bitcast %union.VectorReg* %3802 to %"class.std::bitset"*
  %3803 = bitcast %"class.std::bitset"* %YMM0.i12 to i8*
  %3804 = load i64, i64* %PC.i11
  %3805 = add i64 %3804, ptrtoint (%G_0x6ad3__rip__type* @G_0x6ad3__rip_ to i64)
  %3806 = load i64, i64* %PC.i11
  %3807 = add i64 %3806, 8
  store i64 %3807, i64* %PC.i11
  %3808 = inttoptr i64 %3805 to double*
  %3809 = load double, double* %3808
  %3810 = bitcast i8* %3803 to double*
  store double %3809, double* %3810, align 1
  %3811 = getelementptr inbounds i8, i8* %3803, i64 8
  %3812 = bitcast i8* %3811 to double*
  store double 0.000000e+00, double* %3812, align 1
  store %struct.Memory* %loadMem_42194d, %struct.Memory** %MEMORY
  %loadMem_421955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3820 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3819, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3820 to %"class.std::bitset"*
  %3821 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3822 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3823 = load i64, i64* %RBP.i10
  %3824 = sub i64 %3823, 8
  %3825 = load i64, i64* %PC.i9
  %3826 = add i64 %3825, 5
  store i64 %3826, i64* %PC.i9
  %3827 = bitcast i8* %3822 to double*
  %3828 = load double, double* %3827, align 1
  %3829 = getelementptr inbounds i8, i8* %3822, i64 8
  %3830 = bitcast i8* %3829 to i64*
  %3831 = load i64, i64* %3830, align 1
  %3832 = inttoptr i64 %3824 to double*
  %3833 = load double, double* %3832
  %3834 = fmul double %3828, %3833
  %3835 = bitcast i8* %3821 to double*
  store double %3834, double* %3835, align 1
  %3836 = getelementptr inbounds i8, i8* %3821, i64 8
  %3837 = bitcast i8* %3836 to i64*
  store i64 %3831, i64* %3837, align 1
  store %struct.Memory* %loadMem_421955, %struct.Memory** %MEMORY
  %loadMem_42195a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3844, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3845 to %union.vec128_t*
  %3846 = load i64, i64* %RBP.i8
  %3847 = sub i64 %3846, 8
  %3848 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3849 = load i64, i64* %PC.i7
  %3850 = add i64 %3849, 5
  store i64 %3850, i64* %PC.i7
  %3851 = bitcast i8* %3848 to double*
  %3852 = load double, double* %3851, align 1
  %3853 = inttoptr i64 %3847 to double*
  store double %3852, double* %3853
  store %struct.Memory* %loadMem_42195a, %struct.Memory** %MEMORY
  br label %block_.L_42195f

block_.L_42195f:                                  ; preds = %block_.L_42194d, %block_42193c
  %loadMem_42195f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %PC.i6
  %3858 = add i64 %3857, 5
  %3859 = load i64, i64* %PC.i6
  %3860 = add i64 %3859, 5
  store i64 %3860, i64* %PC.i6
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3858, i64* %3861, align 8
  store %struct.Memory* %loadMem_42195f, %struct.Memory** %MEMORY
  br label %block_.L_421964

block_.L_421964:                                  ; preds = %block_.L_42195f, %block_.L_421908
  %loadMem_421964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 1
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 15
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBP.i5 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %RBP.i5
  %3872 = sub i64 %3871, 8
  %3873 = load i64, i64* %PC.i4
  %3874 = add i64 %3873, 5
  store i64 %3874, i64* %PC.i4
  %3875 = inttoptr i64 %3872 to double*
  %3876 = load double, double* %3875
  %3877 = call double @llvm.trunc.f64(double %3876)
  %3878 = call double @llvm.fabs.f64(double %3877)
  %3879 = fcmp ogt double %3878, 0x41DFFFFFFFC00000
  %3880 = fptosi double %3877 to i32
  %3881 = zext i32 %3880 to i64
  %3882 = select i1 %3879, i64 2147483648, i64 %3881
  store i64 %3882, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_421964, %struct.Memory** %MEMORY
  %loadMem_421969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %PC.i2
  %3890 = add i64 %3889, 1
  store i64 %3890, i64* %PC.i2
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3892 = load i64, i64* %3891, align 8
  %3893 = add i64 %3892, 8
  %3894 = inttoptr i64 %3892 to i64*
  %3895 = load i64, i64* %3894
  store i64 %3895, i64* %RBP.i3, align 8
  store i64 %3893, i64* %3891, align 8
  store %struct.Memory* %loadMem_421969, %struct.Memory** %MEMORY
  %loadMem_42196a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %PC.i1
  %3900 = add i64 %3899, 1
  store i64 %3900, i64* %PC.i1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3903 = load i64, i64* %3902, align 8
  %3904 = inttoptr i64 %3903 to i64*
  %3905 = load i64, i64* %3904
  store i64 %3905, i64* %3901, align 8
  %3906 = add i64 %3903, 8
  store i64 %3906, i64* %3902, align 8
  store %struct.Memory* %loadMem_42196a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42196a
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

define %struct.Memory* @routine_movsd_0x6f04__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6f04__rip__type* @G_0x6f04__rip_ to i64)
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x8661d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*)
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

define %struct.Memory* @routine_jne_.L_421855(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__0x86bd70(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*)
  %9 = sub i32 %8, 6
  %10 = icmp ult i32 %8, 6
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
  %19 = xor i32 %8, 6
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

define %struct.Memory* @routine_jge_.L_421503(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x8a0a78(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
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

define %struct.Memory* @routine_je_.L_421547(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6ecd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6ecd__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6ecd__rip__type* @G_0x6ecd__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x1770__0x86bd70___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 11
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*)
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 6000
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x64__0x62ea00___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*)
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 100
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_mulsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_divsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_ucomisd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_421644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6e89__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6e89__rip__type* @G_0x6e89__rip_ to i64)
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

define %struct.Memory* @routine_movl_0x86bd64___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x8a05b4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %12, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %12
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

define %struct.Memory* @routine_cvtsi2sdl_0x86bd64___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_ucomisd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_421598(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*)
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

define %struct.Memory* @routine_je_.L_421598(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6e72__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6e72__rip__type* @G_0x6e72__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_42163f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x6e48__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6e48__rip__type* @G_0x6e48__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_4215e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4215e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6e19__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6e19__rip__type* @G_0x6e19__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_42163a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x6ddf__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6ddf__rip__type* @G_0x6ddf__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_421635(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_421635(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6dc0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6dc0__rip__type* @G_0x6dc0__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_421644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
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

define %struct.Memory* @routine_je_.L_421719(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 4
  %10 = icmp ult i32 %8, 4
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
  %19 = xor i32 %8, 4
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

define %struct.Memory* @routine_movsd_0x6d70__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6d70__rip__type* @G_0x6d70__rip_ to i64)
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

define %struct.Memory* @routine_movl_0x8a05b4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x86bd64___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %12, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %12
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_4216ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4216ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6d41__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6d41__rip__type* @G_0x6d41__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421714(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x6d26__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6d26__rip__type* @G_0x6d26__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_42170f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42170f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6cd7__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6cd7__rip__type* @G_0x6cd7__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_421770(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_421742(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6cb9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6cb9__rip__type* @G_0x6cb9__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_42176b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_421766(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6c80__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6c80__rip__type* @G_0x6c80__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_421850(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6c6f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6c6f__rip__type* @G_0x6c6f__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0x8a0a78___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_4217d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl_0x8a0a78___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42184b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x6bca__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6bca__rip__type* @G_0x6bca__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6bd2__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6bd2__rip__type* @G_0x6bd2__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6c22__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6c22__rip__type* @G_0x6c22__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x8a05b4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x8__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0x8a0a78___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm2___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_divsd__xmm1___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_421846(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6b95__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6b95__rip__type* @G_0x6b95__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6be5__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6be5__rip__type* @G_0x6be5__rip_ to i64)
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

define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_421850(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_421908(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x6b4b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6b4b__rip__type* @G_0x6b4b__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6bb3__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6bb3__rip__type* @G_0x6bb3__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_0x86bd70___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = load i32, i32* bitcast (%G_0x86bd70_type* @G_0x86bd70 to i32*)
  %17 = sitofp i32 %16 to float
  %18 = bitcast i8* %8 to float*
  store float %17, float* %18, align 1
  %19 = extractelement <2 x i32> %12, i32 1
  %20 = getelementptr inbounds i8, i8* %8, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %15, i32 0
  %23 = bitcast i8* %13 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %15, i32 1
  %25 = getelementptr inbounds i8, i8* %8, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_cvtsi2ssl_0x62ea00___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = load i32, i32* bitcast (%G_0x62ea00_type* @G_0x62ea00 to i32*)
  %17 = sitofp i32 %16 to float
  %18 = bitcast i8* %8 to float*
  store float %17, float* %18, align 1
  %19 = extractelement <2 x i32> %12, i32 1
  %20 = getelementptr inbounds i8, i8* %8, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %15, i32 0
  %23 = bitcast i8* %13 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %15, i32 1
  %25 = getelementptr inbounds i8, i8* %8, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_0x8661d8___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*)
  %17 = sitofp i32 %16 to float
  %18 = bitcast i8* %8 to float*
  store float %17, float* %18, align 1
  %19 = extractelement <2 x i32> %12, i32 1
  %20 = getelementptr inbounds i8, i8* %8, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %15, i32 0
  %23 = bitcast i8* %13 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %15, i32 1
  %25 = getelementptr inbounds i8, i8* %8, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x86bd88(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
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

define %struct.Memory* @routine_je_.L_421903(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6afd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6afd__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6afd__rip__type* @G_0x6afd__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x86bd88___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movl_0x86bd88___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x86bd88(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 1
  %10 = icmp ult i32 %8, 1
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
  %19 = xor i32 %8, 1
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

define %struct.Memory* @routine_jne_.L_421964(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6b02__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6b02__rip__type* @G_0x6b02__rip_ to i64)
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

define %struct.Memory* @routine_mulsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x8a05b4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*)
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

define %struct.Memory* @routine_jg_.L_42194d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5dc__0x86bd64(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x86bd64_type* @G_0x86bd64 to i32*)
  %9 = sub i32 %8, 1500
  %10 = icmp ult i32 %8, 1500
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
  %19 = xor i32 %8, 1500
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

define %struct.Memory* @routine_jge_.L_42195f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6ad3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x6ad3__rip__type* @G_0x6ad3__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_421964(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvttsd2si_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = call double @llvm.trunc.f64(double %17)
  %19 = call double @llvm.fabs.f64(double %18)
  %20 = fcmp ogt double %19, 0x41DFFFFFFFC00000
  %21 = fptosi double %18 to i32
  %22 = zext i32 %21 to i64
  %23 = select i1 %20, i64 2147483648, i64 %22
  store i64 %23, i64* %RAX, align 8
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
