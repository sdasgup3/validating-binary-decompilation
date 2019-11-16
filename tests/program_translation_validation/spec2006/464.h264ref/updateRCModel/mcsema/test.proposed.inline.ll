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
%G_0x30b32__rip__type = type <{ [8 x i8] }>
%G_0x30b65__rip__type = type <{ [8 x i8] }>
%G_0x30baf__rip__type = type <{ [8 x i8] }>
%G_0x30bdc__rip__type = type <{ [8 x i8] }>
%G_0x30da3__rip__type = type <{ [8 x i8] }>
%G_0x30dd3__rip__type = type <{ [8 x i8] }>
%G_0x30e1a__rip__type = type <{ [8 x i8] }>
%G_0x30e4a__rip__type = type <{ [8 x i8] }>
%G_0x30eab__rip__type = type <{ [8 x i8] }>
%G_0x3c784__rip__type = type <{ [16 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cd300_type = type <{ [16 x i8] }>
%G_0x6d1280_type = type <{ [16 x i8] }>
%G_0x6d1910_type = type <{ [16 x i8] }>
%G_0x6d32cc_type = type <{ [4 x i8] }>
%G_0x6d32d8_type = type <{ [4 x i8] }>
%G_0x6d33e0_type = type <{ [16 x i8] }>
%G_0x6d4540_type = type <{ [16 x i8] }>
%G_0x6d46a0_type = type <{ [16 x i8] }>
%G_0x6f80a0_type = type <{ [4 x i8] }>
%G_0x6f9358_type = type <{ [8 x i8] }>
%G_0x6f9688_type = type <{ [4 x i8] }>
%G_0x6f9720_type = type <{ [4 x i8] }>
%G_0x710830_type = type <{ [8 x i8] }>
%G_0x721a90_type = type <{ [4 x i8] }>
%G_0x722c78_type = type <{ [4 x i8] }>
%G_0x723630_type = type <{ [8 x i8] }>
%G_0x723640_type = type <{ [16 x i8] }>
%G_0x723698_type = type <{ [4 x i8] }>
%G_0x723e30_type = type <{ [4 x i8] }>
%G_0x724bd0_type = type <{ [4 x i8] }>
%G_0x724bd8_type = type <{ [8 x i8] }>
%G_0x725270_type = type <{ [16 x i8] }>
%G_0x726420_type = type <{ [8 x i8] }>
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
@G_0x30b32__rip_ = global %G_0x30b32__rip__type zeroinitializer
@G_0x30b65__rip_ = global %G_0x30b65__rip__type zeroinitializer
@G_0x30baf__rip_ = global %G_0x30baf__rip__type zeroinitializer
@G_0x30bdc__rip_ = global %G_0x30bdc__rip__type zeroinitializer
@G_0x30da3__rip_ = global %G_0x30da3__rip__type zeroinitializer
@G_0x30dd3__rip_ = global %G_0x30dd3__rip__type zeroinitializer
@G_0x30e1a__rip_ = global %G_0x30e1a__rip__type zeroinitializer
@G_0x30e4a__rip_ = global %G_0x30e4a__rip__type zeroinitializer
@G_0x30eab__rip_ = global %G_0x30eab__rip__type zeroinitializer
@G_0x3c784__rip_ = global %G_0x3c784__rip__type zeroinitializer
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cd300 = global %G_0x6cd300_type zeroinitializer
@G_0x6d1280 = global %G_0x6d1280_type zeroinitializer
@G_0x6d1910 = global %G_0x6d1910_type zeroinitializer
@G_0x6d32cc = global %G_0x6d32cc_type zeroinitializer
@G_0x6d32d8 = global %G_0x6d32d8_type zeroinitializer
@G_0x6d33e0 = global %G_0x6d33e0_type zeroinitializer
@G_0x6d4540 = global %G_0x6d4540_type zeroinitializer
@G_0x6d46a0 = global %G_0x6d46a0_type zeroinitializer
@G_0x6f80a0 = global %G_0x6f80a0_type zeroinitializer
@G_0x6f9358 = global %G_0x6f9358_type zeroinitializer
@G_0x6f9688 = global %G_0x6f9688_type zeroinitializer
@G_0x6f9720 = global %G_0x6f9720_type zeroinitializer
@G_0x710830 = global %G_0x710830_type zeroinitializer
@G_0x721a90 = global %G_0x721a90_type zeroinitializer
@G_0x722c78 = global %G_0x722c78_type zeroinitializer
@G_0x723630 = global %G_0x723630_type zeroinitializer
@G_0x723640 = global %G_0x723640_type zeroinitializer
@G_0x723698 = global %G_0x723698_type zeroinitializer
@G_0x723e30 = global %G_0x723e30_type zeroinitializer
@G_0x724bd0 = global %G_0x724bd0_type zeroinitializer
@G_0x724bd8 = global %G_0x724bd8_type zeroinitializer
@G_0x725270 = global %G_0x725270_type zeroinitializer
@G_0x726420 = global %G_0x726420_type zeroinitializer

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

declare %struct.Memory* @sub_4810e0.ComputeFrameMAD(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_480870.QP2Qstep(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_481160.RCModelEstimator(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4814c0.updateMADModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @updateRCModel(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4808f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4808f0, %struct.Memory** %MEMORY
  %loadMem_4808f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i41 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i41
  %27 = load i64, i64* %PC.i40
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i40
  store i64 %26, i64* %RBP.i42, align 8
  store %struct.Memory* %loadMem_4808f1, %struct.Memory** %MEMORY
  %loadMem_4808f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i339 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i339
  %36 = load i64, i64* %PC.i338
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i338
  %38 = sub i64 %35, 240
  store i64 %38, i64* %RSP.i339, align 8
  %39 = icmp ult i64 %35, 240
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
  %49 = xor i64 240, %35
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
  store %struct.Memory* %loadMem_4808f4, %struct.Memory** %MEMORY
  %loadMem_4808fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i741 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i742 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i741 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i741 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i742 to i8*
  %77 = load i64, i64* %PC.i740
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i740
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_4808fb, %struct.Memory** %MEMORY
  %loadMem_4808fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %110, i64 0, i64 0
  %XMM0.i739 = bitcast %union.VectorReg* %111 to %union.vec128_t*
  %112 = load i64, i64* %RBP.i738
  %113 = sub i64 %112, 184
  %114 = bitcast %union.vec128_t* %XMM0.i739 to i8*
  %115 = load i64, i64* %PC.i737
  %116 = add i64 %115, 8
  store i64 %116, i64* %PC.i737
  %117 = bitcast i8* %114 to double*
  %118 = load double, double* %117, align 1
  %119 = inttoptr i64 %113 to double*
  store double %118, double* %119
  store %struct.Memory* %loadMem_4808fe, %struct.Memory** %MEMORY
  %loadMem_480906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i736
  %127 = sub i64 %126, 200
  %128 = load i64, i64* %PC.i735
  %129 = add i64 %128, 10
  store i64 %129, i64* %PC.i735
  %130 = inttoptr i64 %127 to i32*
  store i32 0, i32* %130
  store %struct.Memory* %loadMem_480906, %struct.Memory** %MEMORY
  %loadMem_480910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %PC.i733
  %138 = add i64 %137, 8
  store i64 %138, i64* %PC.i733
  %139 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %139, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_480910, %struct.Memory** %MEMORY
  %loadMem_480918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RAX.i732
  %147 = add i64 %146, 24
  %148 = load i64, i64* %PC.i731
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC.i731
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %152, align 1
  %153 = and i32 %151, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %157, i8* %158, align 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %159, align 1
  %160 = icmp eq i32 %151, 0
  %161 = zext i1 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %161, i8* %162, align 1
  %163 = lshr i32 %151, 31
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %164, i8* %165, align 1
  %166 = lshr i32 %151, 31
  %167 = xor i32 %163, %166
  %168 = add i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %170, i8* %171, align 1
  store %struct.Memory* %loadMem_480918, %struct.Memory** %MEMORY
  %loadMem_48091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %PC.i730
  %176 = add i64 %175, 1964
  %177 = load i64, i64* %PC.i730
  %178 = add i64 %177, 6
  %179 = load i64, i64* %PC.i730
  %180 = add i64 %179, 6
  store i64 %180, i64* %PC.i730
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %182 = load i8, i8* %181, align 1
  %183 = icmp eq i8 %182, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %BRANCH_TAKEN, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = select i1 %183, i64 %176, i64 %178
  store i64 %186, i64* %185, align 8
  store %struct.Memory* %loadMem_48091c, %struct.Memory** %MEMORY
  %loadBr_48091c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48091c = icmp eq i8 %loadBr_48091c, 1
  br i1 %cmpBr_48091c, label %block_.L_4810c8, label %block_480922

block_480922:                                     ; preds = %entry
  %loadMem_480922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %PC.i728
  %194 = add i64 %193, 8
  store i64 %194, i64* %PC.i728
  %195 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %195, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_480922, %struct.Memory** %MEMORY
  %loadMem_48092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RAX.i726
  %206 = add i64 %205, 72620
  %207 = load i64, i64* %PC.i725
  %208 = add i64 %207, 6
  store i64 %208, i64* %PC.i725
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RCX.i727, align 8
  store %struct.Memory* %loadMem_48092a, %struct.Memory** %MEMORY
  %loadMem_480930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %PC.i723
  %219 = add i64 %218, 8
  store i64 %219, i64* %PC.i723
  %220 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %220, i64* %RAX.i724, align 8
  store %struct.Memory* %loadMem_480930, %struct.Memory** %MEMORY
  %loadMem_480938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %ECX.i721 = bitcast %union.anon* %226 to i32*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %229 to i64*
  %230 = load i32, i32* %ECX.i721
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* %RAX.i722
  %233 = add i64 %232, 72608
  %234 = load i64, i64* %PC.i720
  %235 = add i64 %234, 6
  store i64 %235, i64* %PC.i720
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = sub i32 %230, %237
  %239 = icmp ult i32 %230, %237
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %240, i8* %241, align 1
  %242 = and i32 %238, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1
  %248 = xor i32 %237, %230
  %249 = xor i32 %248, %238
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %252, i8* %253, align 1
  %254 = icmp eq i32 %238, 0
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %255, i8* %256, align 1
  %257 = lshr i32 %238, 31
  %258 = trunc i32 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %258, i8* %259, align 1
  %260 = lshr i32 %230, 31
  %261 = lshr i32 %237, 31
  %262 = xor i32 %261, %260
  %263 = xor i32 %257, %260
  %264 = add i32 %263, %262
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %266, i8* %267, align 1
  store %struct.Memory* %loadMem_480938, %struct.Memory** %MEMORY
  %loadMem_48093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %PC.i719
  %272 = add i64 %271, 45
  %273 = load i64, i64* %PC.i719
  %274 = add i64 %273, 6
  %275 = load i64, i64* %PC.i719
  %276 = add i64 %275, 6
  store i64 %276, i64* %PC.i719
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %278 = load i8, i8* %277, align 1
  %279 = icmp eq i8 %278, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %BRANCH_TAKEN, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %282 = select i1 %279, i64 %272, i64 %274
  store i64 %282, i64* %281, align 8
  store %struct.Memory* %loadMem_48093e, %struct.Memory** %MEMORY
  %loadBr_48093e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48093e = icmp eq i8 %loadBr_48093e, 1
  br i1 %cmpBr_48093e, label %block_.L_48096b, label %block_480944

block_480944:                                     ; preds = %block_480922
  %loadMem1_480944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %PC.i718
  %287 = add i64 %286, 1948
  %288 = load i64, i64* %PC.i718
  %289 = add i64 %288, 5
  %290 = load i64, i64* %PC.i718
  %291 = add i64 %290, 5
  store i64 %291, i64* %PC.i718
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %289, i64* %295
  store i64 %294, i64* %292, align 8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %287, i64* %296, align 8
  store %struct.Memory* %loadMem1_480944, %struct.Memory** %MEMORY
  %loadMem2_480944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480944 = load i64, i64* %3
  %call2_480944 = call %struct.Memory* @sub_4810e0.ComputeFrameMAD(%struct.State* %0, i64 %loadPC_480944, %struct.Memory* %loadMem2_480944)
  store %struct.Memory* %call2_480944, %struct.Memory** %MEMORY
  %loadMem_480949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 0
  %XMM0.i717 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = bitcast %union.vec128_t* %XMM0.i717 to i8*
  %303 = load i64, i64* %PC.i716
  %304 = add i64 %303, 9
  store i64 %304, i64* %PC.i716
  %305 = bitcast i8* %302 to double*
  %306 = load double, double* %305, align 1
  store double %306, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  store %struct.Memory* %loadMem_480949, %struct.Memory** %MEMORY
  %loadMem_480952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %PC.i714
  %314 = add i64 %313, 8
  store i64 %314, i64* %PC.i714
  %315 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %315, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_480952, %struct.Memory** %MEMORY
  %loadMem_48095a = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RAX.i712
  %326 = add i64 %325, 72564
  %327 = load i64, i64* %PC.i711
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC.i711
  %329 = inttoptr i64 %326 to i32*
  %330 = load i32, i32* %329
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RCX.i713, align 8
  store %struct.Memory* %loadMem_48095a, %struct.Memory** %MEMORY
  %loadMem_480960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %ECX.i709 = bitcast %union.anon* %337 to i32*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i710
  %342 = sub i64 %341, 196
  %343 = load i32, i32* %ECX.i709
  %344 = zext i32 %343 to i64
  %345 = load i64, i64* %PC.i708
  %346 = add i64 %345, 6
  store i64 %346, i64* %PC.i708
  %347 = inttoptr i64 %342 to i32*
  store i32 %343, i32* %347
  store %struct.Memory* %loadMem_480960, %struct.Memory** %MEMORY
  %loadMem_480966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %PC.i707
  %352 = add i64 %351, 665
  %353 = load i64, i64* %PC.i707
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC.i707
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %352, i64* %355, align 8
  store %struct.Memory* %loadMem_480966, %struct.Memory** %MEMORY
  br label %block_.L_480bff

block_.L_48096b:                                  ; preds = %block_480922
  %loadMem_48096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %PC.i705
  %363 = add i64 %362, 8
  store i64 %363, i64* %PC.i705
  %364 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %364, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_48096b, %struct.Memory** %MEMORY
  %loadMem_480973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RAX.i704
  %372 = add i64 %371, 2884
  %373 = load i64, i64* %PC.i703
  %374 = add i64 %373, 7
  store i64 %374, i64* %PC.i703
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %377, align 1
  %378 = and i32 %376, 255
  %379 = call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %382, i8* %383, align 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %384, align 1
  %385 = icmp eq i32 %376, 0
  %386 = zext i1 %385 to i8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %386, i8* %387, align 1
  %388 = lshr i32 %376, 31
  %389 = trunc i32 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %389, i8* %390, align 1
  %391 = lshr i32 %376, 31
  %392 = xor i32 %388, %391
  %393 = add i32 %392, %391
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %395, i8* %396, align 1
  store %struct.Memory* %loadMem_480973, %struct.Memory** %MEMORY
  %loadMem_48097a = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %PC.i702
  %401 = add i64 %400, 89
  %402 = load i64, i64* %PC.i702
  %403 = add i64 %402, 6
  %404 = load i64, i64* %PC.i702
  %405 = add i64 %404, 6
  store i64 %405, i64* %PC.i702
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %407 = load i8, i8* %406, align 1
  store i8 %407, i8* %BRANCH_TAKEN, align 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %409 = icmp ne i8 %407, 0
  %410 = select i1 %409, i64 %401, i64 %403
  store i64 %410, i64* %408, align 8
  store %struct.Memory* %loadMem_48097a, %struct.Memory** %MEMORY
  %loadBr_48097a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48097a = icmp eq i8 %loadBr_48097a, 1
  br i1 %cmpBr_48097a, label %block_.L_4809d3, label %block_480980

block_480980:                                     ; preds = %block_.L_48096b
  %loadMem_480980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %PC.i700
  %418 = add i64 %417, 8
  store i64 %418, i64* %PC.i700
  %419 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %419, i64* %RAX.i701, align 8
  store %struct.Memory* %loadMem_480980, %struct.Memory** %MEMORY
  %loadMem_480988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RAX.i699
  %427 = add i64 %426, 72600
  %428 = load i64, i64* %PC.i698
  %429 = add i64 %428, 7
  store i64 %429, i64* %PC.i698
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %432, align 1
  %433 = and i32 %431, 255
  %434 = call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %437, i8* %438, align 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %439, align 1
  %440 = icmp eq i32 %431, 0
  %441 = zext i1 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %441, i8* %442, align 1
  %443 = lshr i32 %431, 31
  %444 = trunc i32 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %444, i8* %445, align 1
  %446 = lshr i32 %431, 31
  %447 = xor i32 %443, %446
  %448 = add i32 %447, %446
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %450, i8* %451, align 1
  store %struct.Memory* %loadMem_480988, %struct.Memory** %MEMORY
  %loadMem_48098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %PC.i697
  %456 = add i64 %455, 68
  %457 = load i64, i64* %PC.i697
  %458 = add i64 %457, 6
  %459 = load i64, i64* %PC.i697
  %460 = add i64 %459, 6
  store i64 %460, i64* %PC.i697
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %462 = load i8, i8* %461, align 1
  %463 = icmp eq i8 %462, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %BRANCH_TAKEN, align 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %466 = select i1 %463, i64 %456, i64 %458
  store i64 %466, i64* %465, align 8
  store %struct.Memory* %loadMem_48098f, %struct.Memory** %MEMORY
  %loadBr_48098f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48098f = icmp eq i8 %loadBr_48098f, 1
  br i1 %cmpBr_48098f, label %block_.L_4809d3, label %block_480995

block_480995:                                     ; preds = %block_480980
  %loadMem_480995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %470, i64 0, i64 0
  %YMM0.i696 = bitcast %union.VectorReg* %471 to %"class.std::bitset"*
  %472 = bitcast %"class.std::bitset"* %YMM0.i696 to i8*
  %473 = load i64, i64* %PC.i695
  %474 = add i64 %473, ptrtoint (%G_0x30eab__rip__type* @G_0x30eab__rip_ to i64)
  %475 = load i64, i64* %PC.i695
  %476 = add i64 %475, 8
  store i64 %476, i64* %PC.i695
  %477 = inttoptr i64 %474 to double*
  %478 = load double, double* %477
  %479 = bitcast i8* %472 to double*
  store double %478, double* %479, align 1
  %480 = getelementptr inbounds i8, i8* %472, i64 8
  %481 = bitcast i8* %480 to double*
  store double 0.000000e+00, double* %481, align 1
  store %struct.Memory* %loadMem_480995, %struct.Memory** %MEMORY
  %loadMem_48099d = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %487 to i64*
  %488 = load i64, i64* %PC.i693
  %489 = add i64 %488, 8
  store i64 %489, i64* %PC.i693
  %490 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %490, i64* %RAX.i694, align 8
  store %struct.Memory* %loadMem_48099d, %struct.Memory** %MEMORY
  %loadMem_4809a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %497, i64 0, i64 1
  %YMM1.i692 = bitcast %union.VectorReg* %498 to %"class.std::bitset"*
  %499 = bitcast %"class.std::bitset"* %YMM1.i692 to i8*
  %500 = load i64, i64* %RAX.i691
  %501 = add i64 %500, 72544
  %502 = load i64, i64* %PC.i690
  %503 = add i64 %502, 8
  store i64 %503, i64* %PC.i690
  %504 = inttoptr i64 %501 to double*
  %505 = load double, double* %504
  %506 = bitcast i8* %499 to double*
  store double %505, double* %506, align 1
  %507 = getelementptr inbounds i8, i8* %499, i64 8
  %508 = bitcast i8* %507 to double*
  store double 0.000000e+00, double* %508, align 1
  store %struct.Memory* %loadMem_4809a5, %struct.Memory** %MEMORY
  %loadMem_4809ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %PC.i688
  %516 = add i64 %515, 8
  store i64 %516, i64* %PC.i688
  %517 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %517, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_4809ad, %struct.Memory** %MEMORY
  %loadMem_4809b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %525 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %524, i64 0, i64 2
  %YMM2.i687 = bitcast %union.VectorReg* %525 to %"class.std::bitset"*
  %526 = bitcast %"class.std::bitset"* %YMM2.i687 to i8*
  %527 = load i64, i64* %RAX.i686
  %528 = add i64 %527, 72620
  %529 = load i64, i64* %PC.i685
  %530 = add i64 %529, 8
  store i64 %530, i64* %PC.i685
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531
  %533 = sitofp i32 %532 to double
  %534 = bitcast i8* %526 to double*
  store double %533, double* %534, align 1
  store %struct.Memory* %loadMem_4809b5, %struct.Memory** %MEMORY
  %loadMem_4809bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %538, i64 0, i64 1
  %YMM1.i683 = bitcast %union.VectorReg* %539 to %"class.std::bitset"*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %541 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %540, i64 0, i64 2
  %XMM2.i684 = bitcast %union.VectorReg* %541 to %union.vec128_t*
  %542 = bitcast %"class.std::bitset"* %YMM1.i683 to i8*
  %543 = bitcast %"class.std::bitset"* %YMM1.i683 to i8*
  %544 = bitcast %union.vec128_t* %XMM2.i684 to i8*
  %545 = load i64, i64* %PC.i682
  %546 = add i64 %545, 4
  store i64 %546, i64* %PC.i682
  %547 = bitcast i8* %543 to double*
  %548 = load double, double* %547, align 1
  %549 = getelementptr inbounds i8, i8* %543, i64 8
  %550 = bitcast i8* %549 to i64*
  %551 = load i64, i64* %550, align 1
  %552 = bitcast i8* %544 to double*
  %553 = load double, double* %552, align 1
  %554 = fdiv double %548, %553
  %555 = bitcast i8* %542 to double*
  store double %554, double* %555, align 1
  %556 = getelementptr inbounds i8, i8* %542, i64 8
  %557 = bitcast i8* %556 to i64*
  store i64 %551, i64* %557, align 1
  store %struct.Memory* %loadMem_4809bd, %struct.Memory** %MEMORY
  %loadMem_4809c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %561, i64 0, i64 1
  %YMM1.i680 = bitcast %union.VectorReg* %562 to %"class.std::bitset"*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %563, i64 0, i64 0
  %XMM0.i681 = bitcast %union.VectorReg* %564 to %union.vec128_t*
  %565 = bitcast %"class.std::bitset"* %YMM1.i680 to i8*
  %566 = bitcast %"class.std::bitset"* %YMM1.i680 to i8*
  %567 = bitcast %union.vec128_t* %XMM0.i681 to i8*
  %568 = load i64, i64* %PC.i679
  %569 = add i64 %568, 4
  store i64 %569, i64* %PC.i679
  %570 = bitcast i8* %566 to double*
  %571 = load double, double* %570, align 1
  %572 = getelementptr inbounds i8, i8* %566, i64 8
  %573 = bitcast i8* %572 to i64*
  %574 = load i64, i64* %573, align 1
  %575 = bitcast i8* %567 to double*
  %576 = load double, double* %575, align 1
  %577 = fdiv double %571, %576
  %578 = bitcast i8* %565 to double*
  store double %577, double* %578, align 1
  %579 = getelementptr inbounds i8, i8* %565, i64 8
  %580 = bitcast i8* %579 to i64*
  store i64 %574, i64* %580, align 1
  store %struct.Memory* %loadMem_4809c1, %struct.Memory** %MEMORY
  %loadMem_4809c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %584, i64 0, i64 1
  %XMM1.i678 = bitcast %union.VectorReg* %585 to %union.vec128_t*
  %586 = bitcast %union.vec128_t* %XMM1.i678 to i8*
  %587 = load i64, i64* %PC.i677
  %588 = add i64 %587, 9
  store i64 %588, i64* %PC.i677
  %589 = bitcast i8* %586 to double*
  %590 = load double, double* %589, align 1
  store double %590, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  store %struct.Memory* %loadMem_4809c5, %struct.Memory** %MEMORY
  %loadMem_4809ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %PC.i676
  %595 = add i64 %594, 50
  %596 = load i64, i64* %PC.i676
  %597 = add i64 %596, 5
  store i64 %597, i64* %PC.i676
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %595, i64* %598, align 8
  store %struct.Memory* %loadMem_4809ce, %struct.Memory** %MEMORY
  br label %block_.L_480a00

block_.L_4809d3:                                  ; preds = %block_480980, %block_.L_48096b
  %loadMem_4809d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %PC.i674
  %606 = add i64 %605, 8
  store i64 %606, i64* %PC.i674
  %607 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %607, i64* %RAX.i675, align 8
  store %struct.Memory* %loadMem_4809d3, %struct.Memory** %MEMORY
  %loadMem_4809db = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %614, i64 0, i64 0
  %YMM0.i673 = bitcast %union.VectorReg* %615 to %"class.std::bitset"*
  %616 = bitcast %"class.std::bitset"* %YMM0.i673 to i8*
  %617 = load i64, i64* %RAX.i672
  %618 = add i64 %617, 72544
  %619 = load i64, i64* %PC.i671
  %620 = add i64 %619, 8
  store i64 %620, i64* %PC.i671
  %621 = inttoptr i64 %618 to double*
  %622 = load double, double* %621
  %623 = bitcast i8* %616 to double*
  store double %622, double* %623, align 1
  %624 = getelementptr inbounds i8, i8* %616, i64 8
  %625 = bitcast i8* %624 to double*
  store double 0.000000e+00, double* %625, align 1
  store %struct.Memory* %loadMem_4809db, %struct.Memory** %MEMORY
  %loadMem_4809e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %PC.i669
  %633 = add i64 %632, 8
  store i64 %633, i64* %PC.i669
  %634 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %634, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_4809e3, %struct.Memory** %MEMORY
  %loadMem_4809eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %641, i64 0, i64 1
  %YMM1.i668 = bitcast %union.VectorReg* %642 to %"class.std::bitset"*
  %643 = bitcast %"class.std::bitset"* %YMM1.i668 to i8*
  %644 = load i64, i64* %RAX.i667
  %645 = add i64 %644, 72620
  %646 = load i64, i64* %PC.i666
  %647 = add i64 %646, 8
  store i64 %647, i64* %PC.i666
  %648 = inttoptr i64 %645 to i32*
  %649 = load i32, i32* %648
  %650 = sitofp i32 %649 to double
  %651 = bitcast i8* %643 to double*
  store double %650, double* %651, align 1
  store %struct.Memory* %loadMem_4809eb, %struct.Memory** %MEMORY
  %loadMem_4809f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %655, i64 0, i64 0
  %YMM0.i664 = bitcast %union.VectorReg* %656 to %"class.std::bitset"*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %657, i64 0, i64 1
  %XMM1.i665 = bitcast %union.VectorReg* %658 to %union.vec128_t*
  %659 = bitcast %"class.std::bitset"* %YMM0.i664 to i8*
  %660 = bitcast %"class.std::bitset"* %YMM0.i664 to i8*
  %661 = bitcast %union.vec128_t* %XMM1.i665 to i8*
  %662 = load i64, i64* %PC.i663
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC.i663
  %664 = bitcast i8* %660 to double*
  %665 = load double, double* %664, align 1
  %666 = getelementptr inbounds i8, i8* %660, i64 8
  %667 = bitcast i8* %666 to i64*
  %668 = load i64, i64* %667, align 1
  %669 = bitcast i8* %661 to double*
  %670 = load double, double* %669, align 1
  %671 = fdiv double %665, %670
  %672 = bitcast i8* %659 to double*
  store double %671, double* %672, align 1
  %673 = getelementptr inbounds i8, i8* %659, i64 8
  %674 = bitcast i8* %673 to i64*
  store i64 %668, i64* %674, align 1
  store %struct.Memory* %loadMem_4809f3, %struct.Memory** %MEMORY
  %loadMem_4809f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %678, i64 0, i64 0
  %XMM0.i662 = bitcast %union.VectorReg* %679 to %union.vec128_t*
  %680 = bitcast %union.vec128_t* %XMM0.i662 to i8*
  %681 = load i64, i64* %PC.i661
  %682 = add i64 %681, 9
  store i64 %682, i64* %PC.i661
  %683 = bitcast i8* %680 to double*
  %684 = load double, double* %683, align 1
  store double %684, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  store %struct.Memory* %loadMem_4809f7, %struct.Memory** %MEMORY
  br label %block_.L_480a00

block_.L_480a00:                                  ; preds = %block_.L_4809d3, %block_480995
  %loadMem_480a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %688, i64 0, i64 0
  %YMM0.i659 = bitcast %union.VectorReg* %689 to %"class.std::bitset"*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %691 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %690, i64 0, i64 0
  %XMM0.i660 = bitcast %union.VectorReg* %691 to %union.vec128_t*
  %692 = bitcast %"class.std::bitset"* %YMM0.i659 to i8*
  %693 = bitcast %"class.std::bitset"* %YMM0.i659 to i8*
  %694 = bitcast %union.vec128_t* %XMM0.i660 to i8*
  %695 = load i64, i64* %PC.i658
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i658
  %697 = bitcast i8* %693 to i64*
  %698 = load i64, i64* %697, align 1
  %699 = getelementptr inbounds i8, i8* %693, i64 8
  %700 = bitcast i8* %699 to i64*
  %701 = load i64, i64* %700, align 1
  %702 = bitcast i8* %694 to i64*
  %703 = load i64, i64* %702, align 1
  %704 = getelementptr inbounds i8, i8* %694, i64 8
  %705 = bitcast i8* %704 to i64*
  %706 = load i64, i64* %705, align 1
  %707 = xor i64 %703, %698
  %708 = xor i64 %706, %701
  %709 = trunc i64 %707 to i32
  %710 = lshr i64 %707, 32
  %711 = trunc i64 %710 to i32
  %712 = bitcast i8* %692 to i32*
  store i32 %709, i32* %712, align 1
  %713 = getelementptr inbounds i8, i8* %692, i64 4
  %714 = bitcast i8* %713 to i32*
  store i32 %711, i32* %714, align 1
  %715 = trunc i64 %708 to i32
  %716 = getelementptr inbounds i8, i8* %692, i64 8
  %717 = bitcast i8* %716 to i32*
  store i32 %715, i32* %717, align 1
  %718 = lshr i64 %708, 32
  %719 = trunc i64 %718 to i32
  %720 = getelementptr inbounds i8, i8* %692, i64 12
  %721 = bitcast i8* %720 to i32*
  store i32 %719, i32* %721, align 1
  store %struct.Memory* %loadMem_480a00, %struct.Memory** %MEMORY
  %loadMem_480a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 1
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %727 to i64*
  %728 = load i64, i64* %PC.i656
  %729 = add i64 %728, 8
  store i64 %729, i64* %PC.i656
  %730 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %730, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_480a03, %struct.Memory** %MEMORY
  %loadMem_480a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %737, i64 0, i64 0
  %XMM0.i655 = bitcast %union.VectorReg* %738 to %union.vec128_t*
  %739 = load i64, i64* %RAX.i654
  %740 = add i64 %739, 72544
  %741 = bitcast %union.vec128_t* %XMM0.i655 to i8*
  %742 = load i64, i64* %PC.i653
  %743 = add i64 %742, 8
  store i64 %743, i64* %PC.i653
  %744 = bitcast i8* %741 to double*
  %745 = load double, double* %744, align 1
  %746 = inttoptr i64 %740 to double*
  store double %745, double* %746
  store %struct.Memory* %loadMem_480a0b, %struct.Memory** %MEMORY
  %loadMem_480a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 33
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 5
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %PC.i651
  %754 = add i64 %753, 7
  store i64 %754, i64* %PC.i651
  %755 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_480a13, %struct.Memory** %MEMORY
  %loadMem_480a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 5
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RCX.i650
  %764 = load i64, i64* %PC.i649
  %765 = add i64 %764, 7
  store i64 %765, i64* %PC.i649
  %766 = trunc i64 %763 to i32
  %767 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %768 = sub i32 %766, %767
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RCX.i650, align 8
  %770 = icmp ult i32 %766, %767
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %771, i8* %772, align 1
  %773 = and i32 %768, 255
  %774 = call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %777, i8* %778, align 1
  %779 = xor i32 %767, %766
  %780 = xor i32 %779, %768
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %783, i8* %784, align 1
  %785 = icmp eq i32 %768, 0
  %786 = zext i1 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %786, i8* %787, align 1
  %788 = lshr i32 %768, 31
  %789 = trunc i32 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %789, i8* %790, align 1
  %791 = lshr i32 %766, 31
  %792 = lshr i32 %767, 31
  %793 = xor i32 %792, %791
  %794 = xor i32 %788, %791
  %795 = add i32 %794, %793
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %797, i8* %798, align 1
  store %struct.Memory* %loadMem_480a1a, %struct.Memory** %MEMORY
  %loadMem_480a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 5
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %ECX.i648 = bitcast %union.anon* %804 to i32*
  %805 = load i32, i32* %ECX.i648
  %806 = zext i32 %805 to i64
  %807 = load i64, i64* %PC.i647
  %808 = add i64 %807, 7
  store i64 %808, i64* %PC.i647
  store i32 %805, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  store %struct.Memory* %loadMem_480a21, %struct.Memory** %MEMORY
  %loadMem_480a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %811 to i64*
  %812 = load i64, i64* %PC.i646
  %813 = add i64 %812, 8
  store i64 %813, i64* %PC.i646
  %814 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %815, align 1
  %816 = and i32 %814, 255
  %817 = call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %820, i8* %821, align 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %822, align 1
  %823 = icmp eq i32 %814, 0
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %824, i8* %825, align 1
  %826 = lshr i32 %814, 31
  %827 = trunc i32 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %827, i8* %828, align 1
  %829 = lshr i32 %814, 31
  %830 = xor i32 %826, %829
  %831 = add i32 %830, %829
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %833, i8* %834, align 1
  store %struct.Memory* %loadMem_480a28, %struct.Memory** %MEMORY
  %loadMem_480a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %PC.i645
  %839 = add i64 %838, 214
  %840 = load i64, i64* %PC.i645
  %841 = add i64 %840, 6
  %842 = load i64, i64* %PC.i645
  %843 = add i64 %842, 6
  store i64 %843, i64* %PC.i645
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %845 = load i8, i8* %844, align 1
  %846 = icmp ne i8 %845, 0
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %848 = load i8, i8* %847, align 1
  %849 = icmp ne i8 %848, 0
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %851 = load i8, i8* %850, align 1
  %852 = icmp ne i8 %851, 0
  %853 = xor i1 %849, %852
  %854 = or i1 %846, %853
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %BRANCH_TAKEN, align 1
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %857 = select i1 %854, i64 %839, i64 %841
  store i64 %857, i64* %856, align 8
  store %struct.Memory* %loadMem_480a30, %struct.Memory** %MEMORY
  %loadBr_480a30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480a30 = icmp eq i8 %loadBr_480a30, 1
  br i1 %cmpBr_480a30, label %block_.L_480b06, label %block_480a36

block_480a36:                                     ; preds = %block_.L_480a00
  %loadMem_480a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %861, i64 0, i64 0
  %YMM0.i644 = bitcast %union.VectorReg* %862 to %"class.std::bitset"*
  %863 = bitcast %"class.std::bitset"* %YMM0.i644 to i8*
  %864 = load i64, i64* %PC.i643
  %865 = add i64 %864, ptrtoint (%G_0x30e4a__rip__type* @G_0x30e4a__rip_ to i64)
  %866 = load i64, i64* %PC.i643
  %867 = add i64 %866, 8
  store i64 %867, i64* %PC.i643
  %868 = inttoptr i64 %865 to double*
  %869 = load double, double* %868
  %870 = bitcast i8* %863 to double*
  store double %869, double* %870, align 1
  %871 = getelementptr inbounds i8, i8* %863, i64 8
  %872 = bitcast i8* %871 to double*
  store double 0.000000e+00, double* %872, align 1
  store %struct.Memory* %loadMem_480a36, %struct.Memory** %MEMORY
  %loadMem_480a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %877 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %876, i64 0, i64 1
  %YMM1.i642 = bitcast %union.VectorReg* %877 to %"class.std::bitset"*
  %878 = bitcast %"class.std::bitset"* %YMM1.i642 to i8*
  %879 = load i64, i64* %PC.i641
  %880 = add i64 %879, ptrtoint (%G_0x30e1a__rip__type* @G_0x30e1a__rip_ to i64)
  %881 = load i64, i64* %PC.i641
  %882 = add i64 %881, 8
  store i64 %882, i64* %PC.i641
  %883 = inttoptr i64 %880 to double*
  %884 = load double, double* %883
  %885 = bitcast i8* %878 to double*
  store double %884, double* %885, align 1
  %886 = getelementptr inbounds i8, i8* %878, i64 8
  %887 = bitcast i8* %886 to double*
  store double 0.000000e+00, double* %887, align 1
  store %struct.Memory* %loadMem_480a3e, %struct.Memory** %MEMORY
  %loadMem_480a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %PC.i639
  %895 = add i64 %894, 7
  store i64 %895, i64* %PC.i639
  %896 = load i32, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i640, align 8
  store %struct.Memory* %loadMem_480a46, %struct.Memory** %MEMORY
  %loadMem_480a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %PC.i637
  %905 = add i64 %904, 7
  store i64 %905, i64* %PC.i637
  %906 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_480a4d, %struct.Memory** %MEMORY
  %loadMem_480a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 33
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 5
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RCX.i636
  %915 = load i64, i64* %PC.i635
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i635
  %917 = trunc i64 %914 to i32
  %918 = sub i32 %917, 1
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RCX.i636, align 8
  %920 = icmp ult i32 %917, 1
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %921, i8* %922, align 1
  %923 = and i32 %918, 255
  %924 = call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %927, i8* %928, align 1
  %929 = xor i64 1, %914
  %930 = trunc i64 %929 to i32
  %931 = xor i32 %930, %918
  %932 = lshr i32 %931, 4
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %934, i8* %935, align 1
  %936 = icmp eq i32 %918, 0
  %937 = zext i1 %936 to i8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %937, i8* %938, align 1
  %939 = lshr i32 %918, 31
  %940 = trunc i32 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %940, i8* %941, align 1
  %942 = lshr i32 %917, 31
  %943 = xor i32 %939, %942
  %944 = add i32 %943, %942
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %946, i8* %947, align 1
  store %struct.Memory* %loadMem_480a54, %struct.Memory** %MEMORY
  %loadMem_480a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 5
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %ECX.i633 = bitcast %union.anon* %953 to i32*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 1
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RAX.i634
  %958 = load i32, i32* %ECX.i633
  %959 = zext i32 %958 to i64
  %960 = load i64, i64* %PC.i632
  %961 = add i64 %960, 3
  store i64 %961, i64* %PC.i632
  %962 = shl i64 %957, 32
  %963 = ashr exact i64 %962, 32
  %964 = shl i64 %959, 32
  %965 = ashr exact i64 %964, 32
  %966 = mul i64 %965, %963
  %967 = trunc i64 %966 to i32
  %968 = and i64 %966, 4294967295
  store i64 %968, i64* %RAX.i634, align 8
  %969 = shl i64 %966, 32
  %970 = ashr exact i64 %969, 32
  %971 = icmp ne i64 %970, %966
  %972 = zext i1 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %972, i8* %973, align 1
  %974 = and i32 %967, 255
  %975 = call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %978, i8* %979, align 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %980, align 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %981, align 1
  %982 = lshr i32 %967, 31
  %983 = trunc i32 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %983, i8* %984, align 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %972, i8* %985, align 1
  store %struct.Memory* %loadMem_480a57, %struct.Memory** %MEMORY
  %loadMem_480a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 7
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RDX.i631 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %PC.i630
  %993 = add i64 %992, 8
  store i64 %993, i64* %PC.i630
  %994 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %994, i64* %RDX.i631, align 8
  store %struct.Memory* %loadMem_480a5a, %struct.Memory** %MEMORY
  %loadMem_480a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 1
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 7
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RAX.i628
  %1005 = load i64, i64* %RDX.i629
  %1006 = add i64 %1005, 72532
  %1007 = load i64, i64* %PC.i627
  %1008 = add i64 %1007, 6
  store i64 %1008, i64* %PC.i627
  %1009 = trunc i64 %1004 to i32
  %1010 = inttoptr i64 %1006 to i32*
  %1011 = load i32, i32* %1010
  %1012 = add i32 %1011, %1009
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RAX.i628, align 8
  %1014 = icmp ult i32 %1012, %1009
  %1015 = icmp ult i32 %1012, %1011
  %1016 = or i1 %1014, %1015
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1017, i8* %1018, align 1
  %1019 = and i32 %1012, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1
  %1025 = xor i32 %1011, %1009
  %1026 = xor i32 %1025, %1012
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1029, i8* %1030, align 1
  %1031 = icmp eq i32 %1012, 0
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1032, i8* %1033, align 1
  %1034 = lshr i32 %1012, 31
  %1035 = trunc i32 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i32 %1009, 31
  %1038 = lshr i32 %1011, 31
  %1039 = xor i32 %1034, %1037
  %1040 = xor i32 %1034, %1038
  %1041 = add i32 %1039, %1040
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1043, i8* %1044, align 1
  store %struct.Memory* %loadMem_480a62, %struct.Memory** %MEMORY
  %loadMem_480a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %EAX.i625 = bitcast %union.anon* %1050 to i32*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1051, i64 0, i64 2
  %YMM2.i626 = bitcast %union.VectorReg* %1052 to %"class.std::bitset"*
  %1053 = bitcast %"class.std::bitset"* %YMM2.i626 to i8*
  %1054 = load i32, i32* %EAX.i625
  %1055 = zext i32 %1054 to i64
  %1056 = load i64, i64* %PC.i624
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC.i624
  %1058 = sitofp i32 %1054 to double
  %1059 = bitcast i8* %1053 to double*
  store double %1058, double* %1059, align 1
  store %struct.Memory* %loadMem_480a68, %struct.Memory** %MEMORY
  %loadMem_480a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1063, i64 0, i64 1
  %YMM1.i622 = bitcast %union.VectorReg* %1064 to %"class.std::bitset"*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1066 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1065, i64 0, i64 2
  %XMM2.i623 = bitcast %union.VectorReg* %1066 to %union.vec128_t*
  %1067 = bitcast %"class.std::bitset"* %YMM1.i622 to i8*
  %1068 = bitcast %"class.std::bitset"* %YMM1.i622 to i8*
  %1069 = bitcast %union.vec128_t* %XMM2.i623 to i8*
  %1070 = load i64, i64* %PC.i621
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC.i621
  %1072 = bitcast i8* %1068 to double*
  %1073 = load double, double* %1072, align 1
  %1074 = getelementptr inbounds i8, i8* %1068, i64 8
  %1075 = bitcast i8* %1074 to i64*
  %1076 = load i64, i64* %1075, align 1
  %1077 = bitcast i8* %1069 to double*
  %1078 = load double, double* %1077, align 1
  %1079 = fmul double %1073, %1078
  %1080 = bitcast i8* %1067 to double*
  store double %1079, double* %1080, align 1
  %1081 = getelementptr inbounds i8, i8* %1067, i64 8
  %1082 = bitcast i8* %1081 to i64*
  store i64 %1076, i64* %1082, align 1
  store %struct.Memory* %loadMem_480a6c, %struct.Memory** %MEMORY
  %loadMem_480a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1086, i64 0, i64 2
  %YMM2.i620 = bitcast %union.VectorReg* %1087 to %"class.std::bitset"*
  %1088 = bitcast %"class.std::bitset"* %YMM2.i620 to i8*
  %1089 = load i64, i64* %PC.i619
  %1090 = add i64 %1089, 9
  store i64 %1090, i64* %PC.i619
  %1091 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %1092 = sitofp i32 %1091 to double
  %1093 = bitcast i8* %1088 to double*
  store double %1092, double* %1093, align 1
  store %struct.Memory* %loadMem_480a70, %struct.Memory** %MEMORY
  %loadMem_480a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1097, i64 0, i64 1
  %YMM1.i617 = bitcast %union.VectorReg* %1098 to %"class.std::bitset"*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1099, i64 0, i64 2
  %XMM2.i618 = bitcast %union.VectorReg* %1100 to %union.vec128_t*
  %1101 = bitcast %"class.std::bitset"* %YMM1.i617 to i8*
  %1102 = bitcast %"class.std::bitset"* %YMM1.i617 to i8*
  %1103 = bitcast %union.vec128_t* %XMM2.i618 to i8*
  %1104 = load i64, i64* %PC.i616
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %PC.i616
  %1106 = bitcast i8* %1102 to double*
  %1107 = load double, double* %1106, align 1
  %1108 = getelementptr inbounds i8, i8* %1102, i64 8
  %1109 = bitcast i8* %1108 to i64*
  %1110 = load i64, i64* %1109, align 1
  %1111 = bitcast i8* %1103 to double*
  %1112 = load double, double* %1111, align 1
  %1113 = fdiv double %1107, %1112
  %1114 = bitcast i8* %1101 to double*
  store double %1113, double* %1114, align 1
  %1115 = getelementptr inbounds i8, i8* %1101, i64 8
  %1116 = bitcast i8* %1115 to i64*
  store i64 %1110, i64* %1116, align 1
  store %struct.Memory* %loadMem_480a79, %struct.Memory** %MEMORY
  %loadMem_480a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1120, i64 0, i64 1
  %YMM1.i614 = bitcast %union.VectorReg* %1121 to %"class.std::bitset"*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1122, i64 0, i64 0
  %XMM0.i615 = bitcast %union.VectorReg* %1123 to %union.vec128_t*
  %1124 = bitcast %"class.std::bitset"* %YMM1.i614 to i8*
  %1125 = bitcast %"class.std::bitset"* %YMM1.i614 to i8*
  %1126 = bitcast %union.vec128_t* %XMM0.i615 to i8*
  %1127 = load i64, i64* %PC.i613
  %1128 = add i64 %1127, 4
  store i64 %1128, i64* %PC.i613
  %1129 = bitcast i8* %1125 to double*
  %1130 = load double, double* %1129, align 1
  %1131 = getelementptr inbounds i8, i8* %1125, i64 8
  %1132 = bitcast i8* %1131 to i64*
  %1133 = load i64, i64* %1132, align 1
  %1134 = bitcast i8* %1126 to double*
  %1135 = load double, double* %1134, align 1
  %1136 = fadd double %1130, %1135
  %1137 = bitcast i8* %1124 to double*
  store double %1136, double* %1137, align 1
  %1138 = getelementptr inbounds i8, i8* %1124, i64 8
  %1139 = bitcast i8* %1138 to i64*
  store i64 %1133, i64* %1139, align 1
  store %struct.Memory* %loadMem_480a7d, %struct.Memory** %MEMORY
  %loadMem_480a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 1
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1146, i64 0, i64 1
  %XMM1.i612 = bitcast %union.VectorReg* %1147 to %union.vec128_t*
  %1148 = bitcast %union.vec128_t* %XMM1.i612 to i8*
  %1149 = load i64, i64* %PC.i610
  %1150 = add i64 %1149, 4
  store i64 %1150, i64* %PC.i610
  %1151 = bitcast i8* %1148 to double*
  %1152 = load double, double* %1151, align 1
  %1153 = call double @llvm.trunc.f64(double %1152)
  %1154 = call double @llvm.fabs.f64(double %1153)
  %1155 = fcmp ogt double %1154, 0x41DFFFFFFFC00000
  %1156 = fptosi double %1153 to i32
  %1157 = zext i32 %1156 to i64
  %1158 = select i1 %1155, i64 2147483648, i64 %1157
  store i64 %1158, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_480a81, %struct.Memory** %MEMORY
  %loadMem_480a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %EAX.i609 = bitcast %union.anon* %1164 to i32*
  %1165 = load i32, i32* %EAX.i609
  %1166 = zext i32 %1165 to i64
  %1167 = load i64, i64* %PC.i608
  %1168 = add i64 %1167, 7
  store i64 %1168, i64* %PC.i608
  store i32 %1165, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  store %struct.Memory* %loadMem_480a85, %struct.Memory** %MEMORY
  %loadMem_480a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %PC.i607
  %1173 = add i64 %1172, 8
  store i64 %1173, i64* %PC.i607
  %1174 = load i32, i32* bitcast (%G_0x722c78_type* @G_0x722c78 to i32*)
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1175, align 1
  %1176 = and i32 %1174, 255
  %1177 = call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1180, i8* %1181, align 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1182, align 1
  %1183 = icmp eq i32 %1174, 0
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1184, i8* %1185, align 1
  %1186 = lshr i32 %1174, 31
  %1187 = trunc i32 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1187, i8* %1188, align 1
  %1189 = lshr i32 %1174, 31
  %1190 = xor i32 %1186, %1189
  %1191 = add i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1193, i8* %1194, align 1
  store %struct.Memory* %loadMem_480a8c, %struct.Memory** %MEMORY
  %loadMem_480a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %PC.i606
  %1199 = add i64 %1198, 25
  %1200 = load i64, i64* %PC.i606
  %1201 = add i64 %1200, 6
  %1202 = load i64, i64* %PC.i606
  %1203 = add i64 %1202, 6
  store i64 %1203, i64* %PC.i606
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1205 = load i8, i8* %1204, align 1
  %1206 = icmp eq i8 %1205, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %BRANCH_TAKEN, align 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1209 = select i1 %1206, i64 %1199, i64 %1201
  store i64 %1209, i64* %1208, align 8
  store %struct.Memory* %loadMem_480a94, %struct.Memory** %MEMORY
  %loadBr_480a94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480a94 = icmp eq i8 %loadBr_480a94, 1
  br i1 %cmpBr_480a94, label %block_.L_480aad, label %block_480a9a

block_480a9a:                                     ; preds = %block_480a36
  %loadMem_480a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 1
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %PC.i604
  %1217 = add i64 %1216, 7
  store i64 %1217, i64* %PC.i604
  %1218 = load i32, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_480a9a, %struct.Memory** %MEMORY
  %loadMem_480aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 1
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %EAX.i603 = bitcast %union.anon* %1225 to i32*
  %1226 = load i32, i32* %EAX.i603
  %1227 = zext i32 %1226 to i64
  %1228 = load i64, i64* %PC.i602
  %1229 = add i64 %1228, 7
  store i64 %1229, i64* %PC.i602
  store i32 %1226, i32* bitcast (%G_0x723698_type* @G_0x723698 to i32*)
  store %struct.Memory* %loadMem_480aa1, %struct.Memory** %MEMORY
  %loadMem_480aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %PC.i601
  %1234 = add i64 %1233, 89
  %1235 = load i64, i64* %PC.i601
  %1236 = add i64 %1235, 5
  store i64 %1236, i64* %PC.i601
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1234, i64* %1237, align 8
  store %struct.Memory* %loadMem_480aa8, %struct.Memory** %MEMORY
  br label %block_.L_480b01

block_.L_480aad:                                  ; preds = %block_480a36
  %loadMem_480aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1241, i64 0, i64 0
  %YMM0.i600 = bitcast %union.VectorReg* %1242 to %"class.std::bitset"*
  %1243 = bitcast %"class.std::bitset"* %YMM0.i600 to i8*
  %1244 = load i64, i64* %PC.i599
  %1245 = add i64 %1244, ptrtoint (%G_0x30dd3__rip__type* @G_0x30dd3__rip_ to i64)
  %1246 = load i64, i64* %PC.i599
  %1247 = add i64 %1246, 8
  store i64 %1247, i64* %PC.i599
  %1248 = inttoptr i64 %1245 to double*
  %1249 = load double, double* %1248
  %1250 = bitcast i8* %1243 to double*
  store double %1249, double* %1250, align 1
  %1251 = getelementptr inbounds i8, i8* %1243, i64 8
  %1252 = bitcast i8* %1251 to double*
  store double 0.000000e+00, double* %1252, align 1
  store %struct.Memory* %loadMem_480aad, %struct.Memory** %MEMORY
  %loadMem_480ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 33
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1256, i64 0, i64 1
  %YMM1.i598 = bitcast %union.VectorReg* %1257 to %"class.std::bitset"*
  %1258 = bitcast %"class.std::bitset"* %YMM1.i598 to i8*
  %1259 = load i64, i64* %PC.i597
  %1260 = add i64 %1259, ptrtoint (%G_0x30da3__rip__type* @G_0x30da3__rip_ to i64)
  %1261 = load i64, i64* %PC.i597
  %1262 = add i64 %1261, 8
  store i64 %1262, i64* %PC.i597
  %1263 = inttoptr i64 %1260 to double*
  %1264 = load double, double* %1263
  %1265 = bitcast i8* %1258 to double*
  store double %1264, double* %1265, align 1
  %1266 = getelementptr inbounds i8, i8* %1258, i64 8
  %1267 = bitcast i8* %1266 to double*
  store double 0.000000e+00, double* %1267, align 1
  store %struct.Memory* %loadMem_480ab5, %struct.Memory** %MEMORY
  %loadMem_480abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %PC.i595
  %1275 = add i64 %1274, 7
  store i64 %1275, i64* %PC.i595
  %1276 = load i32, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_480abd, %struct.Memory** %MEMORY
  %loadMem_480ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 33
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 1
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %1283 to i64*
  %1284 = load i64, i64* %RAX.i594
  %1285 = load i64, i64* %PC.i593
  %1286 = add i64 %1285, 8
  store i64 %1286, i64* %PC.i593
  %1287 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %1288 = shl i64 %1284, 32
  %1289 = ashr exact i64 %1288, 32
  %1290 = sext i32 %1287 to i64
  %1291 = mul i64 %1290, %1289
  %1292 = trunc i64 %1291 to i32
  %1293 = and i64 %1291, 4294967295
  store i64 %1293, i64* %RAX.i594, align 8
  %1294 = shl i64 %1291, 32
  %1295 = ashr exact i64 %1294, 32
  %1296 = icmp ne i64 %1295, %1291
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1297, i8* %1298, align 1
  %1299 = and i32 %1292, 255
  %1300 = call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1303, i8* %1304, align 1
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1305, align 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1306, align 1
  %1307 = lshr i32 %1292, 31
  %1308 = trunc i32 %1307 to i8
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1308, i8* %1309, align 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1297, i8* %1310, align 1
  store %struct.Memory* %loadMem_480ac4, %struct.Memory** %MEMORY
  %loadMem_480acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 5
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %PC.i591
  %1318 = add i64 %1317, 7
  store i64 %1318, i64* %PC.i591
  %1319 = load i32, i32* bitcast (%G_0x722c78_type* @G_0x722c78 to i32*)
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_480acc, %struct.Memory** %MEMORY
  %loadMem_480ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 5
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %1326 to i64*
  %1327 = load i64, i64* %RCX.i590
  %1328 = load i64, i64* %PC.i589
  %1329 = add i64 %1328, 8
  store i64 %1329, i64* %PC.i589
  %1330 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %1331 = shl i64 %1327, 32
  %1332 = ashr exact i64 %1331, 32
  %1333 = sext i32 %1330 to i64
  %1334 = mul i64 %1333, %1332
  %1335 = trunc i64 %1334 to i32
  %1336 = and i64 %1334, 4294967295
  store i64 %1336, i64* %RCX.i590, align 8
  %1337 = shl i64 %1334, 32
  %1338 = ashr exact i64 %1337, 32
  %1339 = icmp ne i64 %1338, %1334
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1340, i8* %1341, align 1
  %1342 = and i32 %1335, 255
  %1343 = call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1346, i8* %1347, align 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1348, align 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1349, align 1
  %1350 = lshr i32 %1335, 31
  %1351 = trunc i32 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1351, i8* %1352, align 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1340, i8* %1353, align 1
  store %struct.Memory* %loadMem_480ad3, %struct.Memory** %MEMORY
  %loadMem_480adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 5
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %ECX.i587 = bitcast %union.anon* %1359 to i32*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RAX.i588
  %1364 = load i32, i32* %ECX.i587
  %1365 = zext i32 %1364 to i64
  %1366 = load i64, i64* %PC.i586
  %1367 = add i64 %1366, 2
  store i64 %1367, i64* %PC.i586
  %1368 = trunc i64 %1363 to i32
  %1369 = add i32 %1364, %1368
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RAX.i588, align 8
  %1371 = icmp ult i32 %1369, %1368
  %1372 = icmp ult i32 %1369, %1364
  %1373 = or i1 %1371, %1372
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1374, i8* %1375, align 1
  %1376 = and i32 %1369, 255
  %1377 = call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1380, i8* %1381, align 1
  %1382 = xor i64 %1365, %1363
  %1383 = trunc i64 %1382 to i32
  %1384 = xor i32 %1383, %1369
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1387, i8* %1388, align 1
  %1389 = icmp eq i32 %1369, 0
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1390, i8* %1391, align 1
  %1392 = lshr i32 %1369, 31
  %1393 = trunc i32 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1393, i8* %1394, align 1
  %1395 = lshr i32 %1368, 31
  %1396 = lshr i32 %1364, 31
  %1397 = xor i32 %1392, %1395
  %1398 = xor i32 %1392, %1396
  %1399 = add i32 %1397, %1398
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1401, i8* %1402, align 1
  store %struct.Memory* %loadMem_480adb, %struct.Memory** %MEMORY
  %loadMem_480add = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 1
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %EAX.i584 = bitcast %union.anon* %1408 to i32*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1409, i64 0, i64 2
  %YMM2.i585 = bitcast %union.VectorReg* %1410 to %"class.std::bitset"*
  %1411 = bitcast %"class.std::bitset"* %YMM2.i585 to i8*
  %1412 = load i32, i32* %EAX.i584
  %1413 = zext i32 %1412 to i64
  %1414 = load i64, i64* %PC.i583
  %1415 = add i64 %1414, 4
  store i64 %1415, i64* %PC.i583
  %1416 = sitofp i32 %1412 to double
  %1417 = bitcast i8* %1411 to double*
  store double %1416, double* %1417, align 1
  store %struct.Memory* %loadMem_480add, %struct.Memory** %MEMORY
  %loadMem_480ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1421, i64 0, i64 1
  %YMM1.i581 = bitcast %union.VectorReg* %1422 to %"class.std::bitset"*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1423, i64 0, i64 2
  %XMM2.i582 = bitcast %union.VectorReg* %1424 to %union.vec128_t*
  %1425 = bitcast %"class.std::bitset"* %YMM1.i581 to i8*
  %1426 = bitcast %"class.std::bitset"* %YMM1.i581 to i8*
  %1427 = bitcast %union.vec128_t* %XMM2.i582 to i8*
  %1428 = load i64, i64* %PC.i580
  %1429 = add i64 %1428, 4
  store i64 %1429, i64* %PC.i580
  %1430 = bitcast i8* %1426 to double*
  %1431 = load double, double* %1430, align 1
  %1432 = getelementptr inbounds i8, i8* %1426, i64 8
  %1433 = bitcast i8* %1432 to i64*
  %1434 = load i64, i64* %1433, align 1
  %1435 = bitcast i8* %1427 to double*
  %1436 = load double, double* %1435, align 1
  %1437 = fmul double %1431, %1436
  %1438 = bitcast i8* %1425 to double*
  store double %1437, double* %1438, align 1
  %1439 = getelementptr inbounds i8, i8* %1425, i64 8
  %1440 = bitcast i8* %1439 to i64*
  store i64 %1434, i64* %1440, align 1
  store %struct.Memory* %loadMem_480ae1, %struct.Memory** %MEMORY
  %loadMem_480ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1444, i64 0, i64 2
  %YMM2.i579 = bitcast %union.VectorReg* %1445 to %"class.std::bitset"*
  %1446 = bitcast %"class.std::bitset"* %YMM2.i579 to i8*
  %1447 = load i64, i64* %PC.i578
  %1448 = add i64 %1447, 9
  store i64 %1448, i64* %PC.i578
  %1449 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %1450 = sitofp i32 %1449 to double
  %1451 = bitcast i8* %1446 to double*
  store double %1450, double* %1451, align 1
  store %struct.Memory* %loadMem_480ae5, %struct.Memory** %MEMORY
  %loadMem_480aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1455, i64 0, i64 1
  %YMM1.i576 = bitcast %union.VectorReg* %1456 to %"class.std::bitset"*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1457, i64 0, i64 2
  %XMM2.i577 = bitcast %union.VectorReg* %1458 to %union.vec128_t*
  %1459 = bitcast %"class.std::bitset"* %YMM1.i576 to i8*
  %1460 = bitcast %"class.std::bitset"* %YMM1.i576 to i8*
  %1461 = bitcast %union.vec128_t* %XMM2.i577 to i8*
  %1462 = load i64, i64* %PC.i575
  %1463 = add i64 %1462, 4
  store i64 %1463, i64* %PC.i575
  %1464 = bitcast i8* %1460 to double*
  %1465 = load double, double* %1464, align 1
  %1466 = getelementptr inbounds i8, i8* %1460, i64 8
  %1467 = bitcast i8* %1466 to i64*
  %1468 = load i64, i64* %1467, align 1
  %1469 = bitcast i8* %1461 to double*
  %1470 = load double, double* %1469, align 1
  %1471 = fdiv double %1465, %1470
  %1472 = bitcast i8* %1459 to double*
  store double %1471, double* %1472, align 1
  %1473 = getelementptr inbounds i8, i8* %1459, i64 8
  %1474 = bitcast i8* %1473 to i64*
  store i64 %1468, i64* %1474, align 1
  store %struct.Memory* %loadMem_480aee, %struct.Memory** %MEMORY
  %loadMem_480af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1479 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1478, i64 0, i64 1
  %YMM1.i573 = bitcast %union.VectorReg* %1479 to %"class.std::bitset"*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1480, i64 0, i64 0
  %XMM0.i574 = bitcast %union.VectorReg* %1481 to %union.vec128_t*
  %1482 = bitcast %"class.std::bitset"* %YMM1.i573 to i8*
  %1483 = bitcast %"class.std::bitset"* %YMM1.i573 to i8*
  %1484 = bitcast %union.vec128_t* %XMM0.i574 to i8*
  %1485 = load i64, i64* %PC.i572
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %PC.i572
  %1487 = bitcast i8* %1483 to double*
  %1488 = load double, double* %1487, align 1
  %1489 = getelementptr inbounds i8, i8* %1483, i64 8
  %1490 = bitcast i8* %1489 to i64*
  %1491 = load i64, i64* %1490, align 1
  %1492 = bitcast i8* %1484 to double*
  %1493 = load double, double* %1492, align 1
  %1494 = fadd double %1488, %1493
  %1495 = bitcast i8* %1482 to double*
  store double %1494, double* %1495, align 1
  %1496 = getelementptr inbounds i8, i8* %1482, i64 8
  %1497 = bitcast i8* %1496 to i64*
  store i64 %1491, i64* %1497, align 1
  store %struct.Memory* %loadMem_480af2, %struct.Memory** %MEMORY
  %loadMem_480af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1504, i64 0, i64 1
  %XMM1.i571 = bitcast %union.VectorReg* %1505 to %union.vec128_t*
  %1506 = bitcast %union.vec128_t* %XMM1.i571 to i8*
  %1507 = load i64, i64* %PC.i569
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC.i569
  %1509 = bitcast i8* %1506 to double*
  %1510 = load double, double* %1509, align 1
  %1511 = call double @llvm.trunc.f64(double %1510)
  %1512 = call double @llvm.fabs.f64(double %1511)
  %1513 = fcmp ogt double %1512, 0x41DFFFFFFFC00000
  %1514 = fptosi double %1511 to i32
  %1515 = zext i32 %1514 to i64
  %1516 = select i1 %1513, i64 2147483648, i64 %1515
  store i64 %1516, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_480af6, %struct.Memory** %MEMORY
  %loadMem_480afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 1
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %EAX.i568 = bitcast %union.anon* %1522 to i32*
  %1523 = load i32, i32* %EAX.i568
  %1524 = zext i32 %1523 to i64
  %1525 = load i64, i64* %PC.i567
  %1526 = add i64 %1525, 7
  store i64 %1526, i64* %PC.i567
  store i32 %1523, i32* bitcast (%G_0x723698_type* @G_0x723698 to i32*)
  store %struct.Memory* %loadMem_480afa, %struct.Memory** %MEMORY
  br label %block_.L_480b01

block_.L_480b01:                                  ; preds = %block_.L_480aad, %block_480a9a
  %loadMem_480b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %PC.i566
  %1531 = add i64 %1530, 5
  %1532 = load i64, i64* %PC.i566
  %1533 = add i64 %1532, 5
  store i64 %1533, i64* %PC.i566
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1531, i64* %1534, align 8
  store %struct.Memory* %loadMem_480b01, %struct.Memory** %MEMORY
  br label %block_.L_480b06

block_.L_480b06:                                  ; preds = %block_.L_480b01, %block_.L_480a00
  %loadMem_480b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 1
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %PC.i564
  %1542 = add i64 %1541, 8
  store i64 %1542, i64* %PC.i564
  %1543 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1543, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_480b06, %struct.Memory** %MEMORY
  %loadMem_480b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RAX.i563
  %1551 = add i64 %1550, 2880
  %1552 = load i64, i64* %PC.i562
  %1553 = add i64 %1552, 7
  store i64 %1553, i64* %PC.i562
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554
  %1556 = sub i32 %1555, 2
  %1557 = icmp ult i32 %1555, 2
  %1558 = zext i1 %1557 to i8
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1558, i8* %1559, align 1
  %1560 = and i32 %1556, 255
  %1561 = call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1564, i8* %1565, align 1
  %1566 = xor i32 %1555, 2
  %1567 = xor i32 %1566, %1556
  %1568 = lshr i32 %1567, 4
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1570, i8* %1571, align 1
  %1572 = icmp eq i32 %1556, 0
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1573, i8* %1574, align 1
  %1575 = lshr i32 %1556, 31
  %1576 = trunc i32 %1575 to i8
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1576, i8* %1577, align 1
  %1578 = lshr i32 %1555, 31
  %1579 = xor i32 %1575, %1578
  %1580 = add i32 %1579, %1578
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1582, i8* %1583, align 1
  store %struct.Memory* %loadMem_480b0e, %struct.Memory** %MEMORY
  %loadMem_480b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %PC.i561
  %1588 = add i64 %1587, 27
  %1589 = load i64, i64* %PC.i561
  %1590 = add i64 %1589, 6
  %1591 = load i64, i64* %PC.i561
  %1592 = add i64 %1591, 6
  store i64 %1592, i64* %PC.i561
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1594 = load i8, i8* %1593, align 1
  store i8 %1594, i8* %BRANCH_TAKEN, align 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1596 = icmp ne i8 %1594, 0
  %1597 = select i1 %1596, i64 %1588, i64 %1590
  store i64 %1597, i64* %1595, align 8
  store %struct.Memory* %loadMem_480b15, %struct.Memory** %MEMORY
  %loadBr_480b15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b15 = icmp eq i8 %loadBr_480b15, 1
  br i1 %cmpBr_480b15, label %block_.L_480b30, label %block_480b1b

block_480b1b:                                     ; preds = %block_.L_480b06
  %loadMem_480b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 1
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %PC.i559
  %1605 = add i64 %1604, 8
  store i64 %1605, i64* %PC.i559
  %1606 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1606, i64* %RAX.i560, align 8
  store %struct.Memory* %loadMem_480b1b, %struct.Memory** %MEMORY
  %loadMem_480b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 1
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RAX.i558
  %1614 = add i64 %1613, 2884
  %1615 = load i64, i64* %PC.i557
  %1616 = add i64 %1615, 7
  store i64 %1616, i64* %PC.i557
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1619, align 1
  %1620 = and i32 %1618, 255
  %1621 = call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1624, i8* %1625, align 1
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1626, align 1
  %1627 = icmp eq i32 %1618, 0
  %1628 = zext i1 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1628, i8* %1629, align 1
  %1630 = lshr i32 %1618, 31
  %1631 = trunc i32 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1631, i8* %1632, align 1
  %1633 = lshr i32 %1618, 31
  %1634 = xor i32 %1630, %1633
  %1635 = add i32 %1634, %1633
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1637, i8* %1638, align 1
  store %struct.Memory* %loadMem_480b23, %struct.Memory** %MEMORY
  %loadMem_480b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %PC.i556
  %1643 = add i64 %1642, 74
  %1644 = load i64, i64* %PC.i556
  %1645 = add i64 %1644, 6
  %1646 = load i64, i64* %PC.i556
  %1647 = add i64 %1646, 6
  store i64 %1647, i64* %PC.i556
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1649 = load i8, i8* %1648, align 1
  store i8 %1649, i8* %BRANCH_TAKEN, align 1
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1651 = icmp ne i8 %1649, 0
  %1652 = select i1 %1651, i64 %1643, i64 %1645
  store i64 %1652, i64* %1650, align 8
  store %struct.Memory* %loadMem_480b2a, %struct.Memory** %MEMORY
  %loadBr_480b2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b2a = icmp eq i8 %loadBr_480b2a, 1
  br i1 %cmpBr_480b2a, label %block_.L_480b74, label %block_.L_480b30

block_.L_480b30:                                  ; preds = %block_480b1b, %block_.L_480b06
  %loadMem_480b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 1
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %PC.i554
  %1660 = add i64 %1659, 8
  store i64 %1660, i64* %PC.i554
  %1661 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1661, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_480b30, %struct.Memory** %MEMORY
  %loadMem_480b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 1
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RAX.i553
  %1669 = add i64 %1668, 72600
  %1670 = load i64, i64* %PC.i552
  %1671 = add i64 %1670, 7
  store i64 %1671, i64* %PC.i552
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672
  %1674 = sub i32 %1673, 1
  %1675 = icmp ult i32 %1673, 1
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1676, i8* %1677, align 1
  %1678 = and i32 %1674, 255
  %1679 = call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1682, i8* %1683, align 1
  %1684 = xor i32 %1673, 1
  %1685 = xor i32 %1684, %1674
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1688, i8* %1689, align 1
  %1690 = icmp eq i32 %1674, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1674, 31
  %1694 = trunc i32 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i32 %1673, 31
  %1697 = xor i32 %1693, %1696
  %1698 = add i32 %1697, %1696
  %1699 = icmp eq i32 %1698, 2
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1700, i8* %1701, align 1
  store %struct.Memory* %loadMem_480b38, %struct.Memory** %MEMORY
  %loadMem_480b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %PC.i551
  %1706 = add i64 %1705, 53
  %1707 = load i64, i64* %PC.i551
  %1708 = add i64 %1707, 6
  %1709 = load i64, i64* %PC.i551
  %1710 = add i64 %1709, 6
  store i64 %1710, i64* %PC.i551
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1712 = load i8, i8* %1711, align 1
  %1713 = icmp eq i8 %1712, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %BRANCH_TAKEN, align 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1716 = select i1 %1713, i64 %1706, i64 %1708
  store i64 %1716, i64* %1715, align 8
  store %struct.Memory* %loadMem_480b3f, %struct.Memory** %MEMORY
  %loadBr_480b3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480b3f = icmp eq i8 %loadBr_480b3f, 1
  br i1 %cmpBr_480b3f, label %block_.L_480b74, label %block_480b45

block_480b45:                                     ; preds = %block_.L_480b30
  %loadMem_480b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1720, i64 0, i64 0
  %YMM0.i550 = bitcast %union.VectorReg* %1721 to %"class.std::bitset"*
  %1722 = bitcast %"class.std::bitset"* %YMM0.i550 to i8*
  %1723 = load i64, i64* %PC.i549
  %1724 = add i64 %1723, 9
  store i64 %1724, i64* %PC.i549
  %1725 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %1726 = bitcast i8* %1722 to double*
  store double %1725, double* %1726, align 1
  %1727 = getelementptr inbounds i8, i8* %1722, i64 8
  %1728 = bitcast i8* %1727 to double*
  store double 0.000000e+00, double* %1728, align 1
  store %struct.Memory* %loadMem_480b45, %struct.Memory** %MEMORY
  %loadMem_480b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %PC.i547
  %1736 = add i64 %1735, 8
  store i64 %1736, i64* %PC.i547
  %1737 = load i64, i64* bitcast (%G_0x723630_type* @G_0x723630 to i64*)
  store i64 %1737, i64* %RAX.i548, align 8
  store %struct.Memory* %loadMem_480b4e, %struct.Memory** %MEMORY
  %loadMem_480b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 5
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %PC.i545
  %1745 = add i64 %1744, 7
  store i64 %1745, i64* %PC.i545
  %1746 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_480b56, %struct.Memory** %MEMORY
  %loadMem_480b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 5
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RCX.i544
  %1755 = load i64, i64* %PC.i543
  %1756 = add i64 %1755, 3
  store i64 %1756, i64* %PC.i543
  %1757 = trunc i64 %1754 to i32
  %1758 = sub i32 %1757, 1
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RCX.i544, align 8
  %1760 = icmp ult i32 %1757, 1
  %1761 = zext i1 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1761, i8* %1762, align 1
  %1763 = and i32 %1758, 255
  %1764 = call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1767, i8* %1768, align 1
  %1769 = xor i64 1, %1754
  %1770 = trunc i64 %1769 to i32
  %1771 = xor i32 %1770, %1758
  %1772 = lshr i32 %1771, 4
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1774, i8* %1775, align 1
  %1776 = icmp eq i32 %1758, 0
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1777, i8* %1778, align 1
  %1779 = lshr i32 %1758, 31
  %1780 = trunc i32 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1780, i8* %1781, align 1
  %1782 = lshr i32 %1757, 31
  %1783 = xor i32 %1779, %1782
  %1784 = add i32 %1783, %1782
  %1785 = icmp eq i32 %1784, 2
  %1786 = zext i1 %1785 to i8
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1786, i8* %1787, align 1
  store %struct.Memory* %loadMem_480b5d, %struct.Memory** %MEMORY
  %loadMem_480b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 5
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RCX.i542
  %1795 = load i64, i64* %PC.i541
  %1796 = add i64 %1795, 7
  store i64 %1796, i64* %PC.i541
  %1797 = trunc i64 %1794 to i32
  %1798 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %1799 = sub i32 %1797, %1798
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RCX.i542, align 8
  %1801 = icmp ult i32 %1797, %1798
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1802, i8* %1803, align 1
  %1804 = and i32 %1799, 255
  %1805 = call i32 @llvm.ctpop.i32(i32 %1804)
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1808, i8* %1809, align 1
  %1810 = xor i32 %1798, %1797
  %1811 = xor i32 %1810, %1799
  %1812 = lshr i32 %1811, 4
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1814, i8* %1815, align 1
  %1816 = icmp eq i32 %1799, 0
  %1817 = zext i1 %1816 to i8
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1817, i8* %1818, align 1
  %1819 = lshr i32 %1799, 31
  %1820 = trunc i32 %1819 to i8
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1820, i8* %1821, align 1
  %1822 = lshr i32 %1797, 31
  %1823 = lshr i32 %1798, 31
  %1824 = xor i32 %1823, %1822
  %1825 = xor i32 %1819, %1822
  %1826 = add i32 %1825, %1824
  %1827 = icmp eq i32 %1826, 2
  %1828 = zext i1 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1828, i8* %1829, align 1
  store %struct.Memory* %loadMem_480b60, %struct.Memory** %MEMORY
  %loadMem_480b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 33
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 5
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %ECX.i539 = bitcast %union.anon* %1835 to i32*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 7
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %1838 to i64*
  %1839 = load i32, i32* %ECX.i539
  %1840 = zext i32 %1839 to i64
  %1841 = load i64, i64* %PC.i538
  %1842 = add i64 %1841, 3
  store i64 %1842, i64* %PC.i538
  %1843 = shl i64 %1840, 32
  %1844 = ashr exact i64 %1843, 32
  store i64 %1844, i64* %RDX.i540, align 8
  store %struct.Memory* %loadMem_480b67, %struct.Memory** %MEMORY
  %loadMem_480b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 1
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 7
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1855 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1854, i64 0, i64 0
  %XMM0.i537 = bitcast %union.VectorReg* %1855 to %union.vec128_t*
  %1856 = load i64, i64* %RAX.i535
  %1857 = load i64, i64* %RDX.i536
  %1858 = mul i64 %1857, 8
  %1859 = add i64 %1858, %1856
  %1860 = bitcast %union.vec128_t* %XMM0.i537 to i8*
  %1861 = load i64, i64* %PC.i534
  %1862 = add i64 %1861, 5
  store i64 %1862, i64* %PC.i534
  %1863 = bitcast i8* %1860 to double*
  %1864 = load double, double* %1863, align 1
  %1865 = inttoptr i64 %1859 to double*
  store double %1864, double* %1865
  store %struct.Memory* %loadMem_480b6a, %struct.Memory** %MEMORY
  %loadMem_480b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %PC.i533
  %1870 = add i64 %1869, 47
  %1871 = load i64, i64* %PC.i533
  %1872 = add i64 %1871, 5
  store i64 %1872, i64* %PC.i533
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1870, i64* %1873, align 8
  store %struct.Memory* %loadMem_480b6f, %struct.Memory** %MEMORY
  br label %block_.L_480b9e

block_.L_480b74:                                  ; preds = %block_.L_480b30, %block_480b1b
  %loadMem_480b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1878 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1877, i64 0, i64 0
  %YMM0.i532 = bitcast %union.VectorReg* %1878 to %"class.std::bitset"*
  %1879 = bitcast %"class.std::bitset"* %YMM0.i532 to i8*
  %1880 = load i64, i64* %PC.i531
  %1881 = add i64 %1880, 9
  store i64 %1881, i64* %PC.i531
  %1882 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %1883 = bitcast i8* %1879 to double*
  store double %1882, double* %1883, align 1
  %1884 = getelementptr inbounds i8, i8* %1879, i64 8
  %1885 = bitcast i8* %1884 to double*
  store double 0.000000e+00, double* %1885, align 1
  store %struct.Memory* %loadMem_480b74, %struct.Memory** %MEMORY
  %loadMem_480b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %PC.i529
  %1893 = add i64 %1892, 8
  store i64 %1893, i64* %PC.i529
  %1894 = load i64, i64* bitcast (%G_0x724bd8_type* @G_0x724bd8 to i64*)
  store i64 %1894, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_480b7d, %struct.Memory** %MEMORY
  %loadMem_480b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 5
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %PC.i527
  %1902 = add i64 %1901, 7
  store i64 %1902, i64* %PC.i527
  %1903 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_480b85, %struct.Memory** %MEMORY
  %loadMem_480b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 33
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 5
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RCX.i526
  %1912 = load i64, i64* %PC.i525
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC.i525
  %1914 = trunc i64 %1911 to i32
  %1915 = sub i32 %1914, 1
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RCX.i526, align 8
  %1917 = icmp ult i32 %1914, 1
  %1918 = zext i1 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1918, i8* %1919, align 1
  %1920 = and i32 %1915, 255
  %1921 = call i32 @llvm.ctpop.i32(i32 %1920)
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1924, i8* %1925, align 1
  %1926 = xor i64 1, %1911
  %1927 = trunc i64 %1926 to i32
  %1928 = xor i32 %1927, %1915
  %1929 = lshr i32 %1928, 4
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1931, i8* %1932, align 1
  %1933 = icmp eq i32 %1915, 0
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1934, i8* %1935, align 1
  %1936 = lshr i32 %1915, 31
  %1937 = trunc i32 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1937, i8* %1938, align 1
  %1939 = lshr i32 %1914, 31
  %1940 = xor i32 %1936, %1939
  %1941 = add i32 %1940, %1939
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1943, i8* %1944, align 1
  store %struct.Memory* %loadMem_480b8c, %struct.Memory** %MEMORY
  %loadMem_480b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 5
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %RCX.i524
  %1952 = load i64, i64* %PC.i523
  %1953 = add i64 %1952, 7
  store i64 %1953, i64* %PC.i523
  %1954 = trunc i64 %1951 to i32
  %1955 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %1956 = sub i32 %1954, %1955
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %RCX.i524, align 8
  %1958 = icmp ult i32 %1954, %1955
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1959, i8* %1960, align 1
  %1961 = and i32 %1956, 255
  %1962 = call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1965, i8* %1966, align 1
  %1967 = xor i32 %1955, %1954
  %1968 = xor i32 %1967, %1956
  %1969 = lshr i32 %1968, 4
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1971, i8* %1972, align 1
  %1973 = icmp eq i32 %1956, 0
  %1974 = zext i1 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1974, i8* %1975, align 1
  %1976 = lshr i32 %1956, 31
  %1977 = trunc i32 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1977, i8* %1978, align 1
  %1979 = lshr i32 %1954, 31
  %1980 = lshr i32 %1955, 31
  %1981 = xor i32 %1980, %1979
  %1982 = xor i32 %1976, %1979
  %1983 = add i32 %1982, %1981
  %1984 = icmp eq i32 %1983, 2
  %1985 = zext i1 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1985, i8* %1986, align 1
  store %struct.Memory* %loadMem_480b8f, %struct.Memory** %MEMORY
  %loadMem_480b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 5
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %ECX.i521 = bitcast %union.anon* %1992 to i32*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 7
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %1995 to i64*
  %1996 = load i32, i32* %ECX.i521
  %1997 = zext i32 %1996 to i64
  %1998 = load i64, i64* %PC.i520
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i520
  %2000 = shl i64 %1997, 32
  %2001 = ashr exact i64 %2000, 32
  store i64 %2001, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_480b96, %struct.Memory** %MEMORY
  %loadMem_480b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 1
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 7
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2011, i64 0, i64 0
  %XMM0.i519 = bitcast %union.VectorReg* %2012 to %union.vec128_t*
  %2013 = load i64, i64* %RAX.i518
  %2014 = load i64, i64* %RDX.i
  %2015 = mul i64 %2014, 8
  %2016 = add i64 %2015, %2013
  %2017 = bitcast %union.vec128_t* %XMM0.i519 to i8*
  %2018 = load i64, i64* %PC.i517
  %2019 = add i64 %2018, 5
  store i64 %2019, i64* %PC.i517
  %2020 = bitcast i8* %2017 to double*
  %2021 = load double, double* %2020, align 1
  %2022 = inttoptr i64 %2016 to double*
  store double %2021, double* %2022
  store %struct.Memory* %loadMem_480b99, %struct.Memory** %MEMORY
  br label %block_.L_480b9e

block_.L_480b9e:                                  ; preds = %block_.L_480b74, %block_480b45
  %loadMem_480b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2025 to i64*
  %2026 = load i64, i64* %PC.i516
  %2027 = add i64 %2026, 8
  store i64 %2027, i64* %PC.i516
  %2028 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2029, align 1
  %2030 = and i32 %2028, 255
  %2031 = call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2034, i8* %2035, align 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2036, align 1
  %2037 = icmp eq i32 %2028, 0
  %2038 = zext i1 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2038, i8* %2039, align 1
  %2040 = lshr i32 %2028, 31
  %2041 = trunc i32 %2040 to i8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2041, i8* %2042, align 1
  %2043 = lshr i32 %2028, 31
  %2044 = xor i32 %2040, %2043
  %2045 = add i32 %2044, %2043
  %2046 = icmp eq i32 %2045, 2
  %2047 = zext i1 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2047, i8* %2048, align 1
  store %struct.Memory* %loadMem_480b9e, %struct.Memory** %MEMORY
  %loadMem_480ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2051 to i64*
  %2052 = load i64, i64* %PC.i515
  %2053 = add i64 %2052, 46
  %2054 = load i64, i64* %PC.i515
  %2055 = add i64 %2054, 6
  %2056 = load i64, i64* %PC.i515
  %2057 = add i64 %2056, 6
  store i64 %2057, i64* %PC.i515
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2059 = load i8, i8* %2058, align 1
  store i8 %2059, i8* %BRANCH_TAKEN, align 1
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2061 = icmp ne i8 %2059, 0
  %2062 = select i1 %2061, i64 %2053, i64 %2055
  store i64 %2062, i64* %2060, align 8
  store %struct.Memory* %loadMem_480ba6, %struct.Memory** %MEMORY
  %loadBr_480ba6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480ba6 = icmp eq i8 %loadBr_480ba6, 1
  br i1 %cmpBr_480ba6, label %block_.L_480bd4, label %block_480bac

block_480bac:                                     ; preds = %block_.L_480b9e
  %loadMem_480bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 1
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %PC.i513
  %2070 = add i64 %2069, 8
  store i64 %2070, i64* %PC.i513
  %2071 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2071, i64* %RAX.i514, align 8
  store %struct.Memory* %loadMem_480bac, %struct.Memory** %MEMORY
  %loadMem_480bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 1
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 5
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RAX.i511
  %2082 = add i64 %2081, 72564
  %2083 = load i64, i64* %PC.i510
  %2084 = add i64 %2083, 6
  store i64 %2084, i64* %PC.i510
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i512, align 8
  store %struct.Memory* %loadMem_480bb4, %struct.Memory** %MEMORY
  %loadMem_480bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 5
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %RCX.i509
  %2095 = load i64, i64* %PC.i508
  %2096 = add i64 %2095, 8
  store i64 %2096, i64* %PC.i508
  %2097 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %2098 = shl i64 %2094, 32
  %2099 = ashr exact i64 %2098, 32
  %2100 = sext i32 %2097 to i64
  %2101 = mul i64 %2100, %2099
  %2102 = trunc i64 %2101 to i32
  %2103 = and i64 %2101, 4294967295
  store i64 %2103, i64* %RCX.i509, align 8
  %2104 = shl i64 %2101, 32
  %2105 = ashr exact i64 %2104, 32
  %2106 = icmp ne i64 %2105, %2101
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2107, i8* %2108, align 1
  %2109 = and i32 %2102, 255
  %2110 = call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2113, i8* %2114, align 1
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2115, align 1
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2116, align 1
  %2117 = lshr i32 %2102, 31
  %2118 = trunc i32 %2117 to i8
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2118, i8* %2119, align 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2107, i8* %2120, align 1
  store %struct.Memory* %loadMem_480bba, %struct.Memory** %MEMORY
  %loadMem_480bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 5
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RCX.i507
  %2128 = load i64, i64* %PC.i506
  %2129 = add i64 %2128, 7
  store i64 %2129, i64* %PC.i506
  %2130 = trunc i64 %2127 to i32
  %2131 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %2132 = add i32 %2131, %2130
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RCX.i507, align 8
  %2134 = icmp ult i32 %2132, %2130
  %2135 = icmp ult i32 %2132, %2131
  %2136 = or i1 %2134, %2135
  %2137 = zext i1 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2137, i8* %2138, align 1
  %2139 = and i32 %2132, 255
  %2140 = call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2143, i8* %2144, align 1
  %2145 = xor i32 %2131, %2130
  %2146 = xor i32 %2145, %2132
  %2147 = lshr i32 %2146, 4
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2149, i8* %2150, align 1
  %2151 = icmp eq i32 %2132, 0
  %2152 = zext i1 %2151 to i8
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2152, i8* %2153, align 1
  %2154 = lshr i32 %2132, 31
  %2155 = trunc i32 %2154 to i8
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2155, i8* %2156, align 1
  %2157 = lshr i32 %2130, 31
  %2158 = lshr i32 %2131, 31
  %2159 = xor i32 %2154, %2157
  %2160 = xor i32 %2154, %2158
  %2161 = add i32 %2159, %2160
  %2162 = icmp eq i32 %2161, 2
  %2163 = zext i1 %2162 to i8
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2163, i8* %2164, align 1
  store %struct.Memory* %loadMem_480bc2, %struct.Memory** %MEMORY
  %loadMem_480bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %ECX.i504 = bitcast %union.anon* %2170 to i32*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 15
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %RBP.i505
  %2175 = sub i64 %2174, 196
  %2176 = load i32, i32* %ECX.i504
  %2177 = zext i32 %2176 to i64
  %2178 = load i64, i64* %PC.i503
  %2179 = add i64 %2178, 6
  store i64 %2179, i64* %PC.i503
  %2180 = inttoptr i64 %2175 to i32*
  store i32 %2176, i32* %2180
  store %struct.Memory* %loadMem_480bc9, %struct.Memory** %MEMORY
  %loadMem_480bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %PC.i502
  %2185 = add i64 %2184, 43
  %2186 = load i64, i64* %PC.i502
  %2187 = add i64 %2186, 5
  store i64 %2187, i64* %PC.i502
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2185, i64* %2188, align 8
  store %struct.Memory* %loadMem_480bcf, %struct.Memory** %MEMORY
  br label %block_.L_480bfa

block_.L_480bd4:                                  ; preds = %block_.L_480b9e
  %loadMem_480bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %2194 to i64*
  %2195 = load i64, i64* %PC.i500
  %2196 = add i64 %2195, 8
  store i64 %2196, i64* %PC.i500
  %2197 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2197, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_480bd4, %struct.Memory** %MEMORY
  %loadMem_480bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 1
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 5
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %2206 to i64*
  %2207 = load i64, i64* %RAX.i498
  %2208 = add i64 %2207, 72564
  %2209 = load i64, i64* %PC.i497
  %2210 = add i64 %2209, 6
  store i64 %2210, i64* %PC.i497
  %2211 = inttoptr i64 %2208 to i32*
  %2212 = load i32, i32* %2211
  %2213 = zext i32 %2212 to i64
  store i64 %2213, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_480bdc, %struct.Memory** %MEMORY
  %loadMem_480be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 33
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 5
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %2219 to i64*
  %2220 = load i64, i64* %RCX.i496
  %2221 = load i64, i64* %PC.i495
  %2222 = add i64 %2221, 3
  store i64 %2222, i64* %PC.i495
  %2223 = trunc i64 %2220 to i32
  %2224 = sub i32 %2223, 1
  %2225 = zext i32 %2224 to i64
  store i64 %2225, i64* %RCX.i496, align 8
  %2226 = icmp ult i32 %2223, 1
  %2227 = zext i1 %2226 to i8
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2227, i8* %2228, align 1
  %2229 = and i32 %2224, 255
  %2230 = call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2233, i8* %2234, align 1
  %2235 = xor i64 1, %2220
  %2236 = trunc i64 %2235 to i32
  %2237 = xor i32 %2236, %2224
  %2238 = lshr i32 %2237, 4
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2240, i8* %2241, align 1
  %2242 = icmp eq i32 %2224, 0
  %2243 = zext i1 %2242 to i8
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2243, i8* %2244, align 1
  %2245 = lshr i32 %2224, 31
  %2246 = trunc i32 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2246, i8* %2247, align 1
  %2248 = lshr i32 %2223, 31
  %2249 = xor i32 %2245, %2248
  %2250 = add i32 %2249, %2248
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2252, i8* %2253, align 1
  store %struct.Memory* %loadMem_480be2, %struct.Memory** %MEMORY
  %loadMem_480be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 5
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %RCX.i494
  %2261 = load i64, i64* %PC.i493
  %2262 = add i64 %2261, 8
  store i64 %2262, i64* %PC.i493
  %2263 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %2264 = shl i64 %2260, 32
  %2265 = ashr exact i64 %2264, 32
  %2266 = sext i32 %2263 to i64
  %2267 = mul i64 %2266, %2265
  %2268 = trunc i64 %2267 to i32
  %2269 = and i64 %2267, 4294967295
  store i64 %2269, i64* %RCX.i494, align 8
  %2270 = shl i64 %2267, 32
  %2271 = ashr exact i64 %2270, 32
  %2272 = icmp ne i64 %2271, %2267
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2273, i8* %2274, align 1
  %2275 = and i32 %2268, 255
  %2276 = call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2279, i8* %2280, align 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2281, align 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2282, align 1
  %2283 = lshr i32 %2268, 31
  %2284 = trunc i32 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2284, i8* %2285, align 1
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2273, i8* %2286, align 1
  store %struct.Memory* %loadMem_480be5, %struct.Memory** %MEMORY
  %loadMem_480bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 5
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RCX.i492
  %2294 = load i64, i64* %PC.i491
  %2295 = add i64 %2294, 7
  store i64 %2295, i64* %PC.i491
  %2296 = trunc i64 %2293 to i32
  %2297 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %2298 = add i32 %2297, %2296
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RCX.i492, align 8
  %2300 = icmp ult i32 %2298, %2296
  %2301 = icmp ult i32 %2298, %2297
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2303, i8* %2304, align 1
  %2305 = and i32 %2298, 255
  %2306 = call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2309, i8* %2310, align 1
  %2311 = xor i32 %2297, %2296
  %2312 = xor i32 %2311, %2298
  %2313 = lshr i32 %2312, 4
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2315, i8* %2316, align 1
  %2317 = icmp eq i32 %2298, 0
  %2318 = zext i1 %2317 to i8
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2318, i8* %2319, align 1
  %2320 = lshr i32 %2298, 31
  %2321 = trunc i32 %2320 to i8
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2321, i8* %2322, align 1
  %2323 = lshr i32 %2296, 31
  %2324 = lshr i32 %2297, 31
  %2325 = xor i32 %2320, %2323
  %2326 = xor i32 %2320, %2324
  %2327 = add i32 %2325, %2326
  %2328 = icmp eq i32 %2327, 2
  %2329 = zext i1 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2329, i8* %2330, align 1
  store %struct.Memory* %loadMem_480bed, %struct.Memory** %MEMORY
  %loadMem_480bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 5
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %ECX.i489 = bitcast %union.anon* %2336 to i32*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 15
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %RBP.i490
  %2341 = sub i64 %2340, 196
  %2342 = load i32, i32* %ECX.i489
  %2343 = zext i32 %2342 to i64
  %2344 = load i64, i64* %PC.i488
  %2345 = add i64 %2344, 6
  store i64 %2345, i64* %PC.i488
  %2346 = inttoptr i64 %2341 to i32*
  store i32 %2342, i32* %2346
  store %struct.Memory* %loadMem_480bf4, %struct.Memory** %MEMORY
  br label %block_.L_480bfa

block_.L_480bfa:                                  ; preds = %block_.L_480bd4, %block_480bac
  %loadMem_480bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %PC.i487
  %2351 = add i64 %2350, 5
  %2352 = load i64, i64* %PC.i487
  %2353 = add i64 %2352, 5
  store i64 %2353, i64* %PC.i487
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2351, i64* %2354, align 8
  store %struct.Memory* %loadMem_480bfa, %struct.Memory** %MEMORY
  br label %block_.L_480bff

block_.L_480bff:                                  ; preds = %block_.L_480bfa, %block_480944
  %loadMem_480bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RBP.i486
  %2362 = sub i64 %2361, 196
  %2363 = load i64, i64* %PC.i485
  %2364 = add i64 %2363, 7
  store i64 %2364, i64* %PC.i485
  %2365 = inttoptr i64 %2362 to i32*
  %2366 = load i32, i32* %2365
  %2367 = sub i32 %2366, 1
  %2368 = icmp ult i32 %2366, 1
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2369, i8* %2370, align 1
  %2371 = and i32 %2367, 255
  %2372 = call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2375, i8* %2376, align 1
  %2377 = xor i32 %2366, 1
  %2378 = xor i32 %2377, %2367
  %2379 = lshr i32 %2378, 4
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2381, i8* %2382, align 1
  %2383 = icmp eq i32 %2367, 0
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2384, i8* %2385, align 1
  %2386 = lshr i32 %2367, 31
  %2387 = trunc i32 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2387, i8* %2388, align 1
  %2389 = lshr i32 %2366, 31
  %2390 = xor i32 %2386, %2389
  %2391 = add i32 %2390, %2389
  %2392 = icmp eq i32 %2391, 2
  %2393 = zext i1 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2393, i8* %2394, align 1
  store %struct.Memory* %loadMem_480bff, %struct.Memory** %MEMORY
  %loadMem_480c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %PC.i484
  %2399 = add i64 %2398, 16
  %2400 = load i64, i64* %PC.i484
  %2401 = add i64 %2400, 6
  %2402 = load i64, i64* %PC.i484
  %2403 = add i64 %2402, 6
  store i64 %2403, i64* %PC.i484
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2405 = load i8, i8* %2404, align 1
  %2406 = icmp ne i8 %2405, 0
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2408 = load i8, i8* %2407, align 1
  %2409 = icmp ne i8 %2408, 0
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2411 = load i8, i8* %2410, align 1
  %2412 = icmp ne i8 %2411, 0
  %2413 = xor i1 %2409, %2412
  %2414 = or i1 %2406, %2413
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %BRANCH_TAKEN, align 1
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2417 = select i1 %2414, i64 %2399, i64 %2401
  store i64 %2417, i64* %2416, align 8
  store %struct.Memory* %loadMem_480c06, %struct.Memory** %MEMORY
  %loadBr_480c06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480c06 = icmp eq i8 %loadBr_480c06, 1
  br i1 %cmpBr_480c06, label %block_.L_480c16, label %block_480c0c

block_480c0c:                                     ; preds = %block_.L_480bff
  %loadMem_480c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 15
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %RBP.i483
  %2425 = sub i64 %2424, 200
  %2426 = load i64, i64* %PC.i482
  %2427 = add i64 %2426, 10
  store i64 %2427, i64* %PC.i482
  %2428 = inttoptr i64 %2425 to i32*
  store i32 1, i32* %2428
  store %struct.Memory* %loadMem_480c0c, %struct.Memory** %MEMORY
  br label %block_.L_480c16

block_.L_480c16:                                  ; preds = %block_480c0c, %block_.L_480bff
  %loadMem_480c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 1
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %PC.i480
  %2436 = add i64 %2435, 8
  store i64 %2436, i64* %PC.i480
  %2437 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2437, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_480c16, %struct.Memory** %MEMORY
  %loadMem_480c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 1
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 5
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %RAX.i478
  %2448 = add i64 %2447, 72524
  %2449 = load i64, i64* %PC.i477
  %2450 = add i64 %2449, 6
  store i64 %2450, i64* %PC.i477
  %2451 = inttoptr i64 %2448 to i32*
  %2452 = load i32, i32* %2451
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RCX.i479, align 8
  store %struct.Memory* %loadMem_480c1e, %struct.Memory** %MEMORY
  %loadMem_480c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 5
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %ECX.i476 = bitcast %union.anon* %2459 to i32*
  %2460 = load i32, i32* %ECX.i476
  %2461 = zext i32 %2460 to i64
  %2462 = load i64, i64* %PC.i475
  %2463 = add i64 %2462, 7
  store i64 %2463, i64* %PC.i475
  store i32 %2460, i32* bitcast (%G_0x6f9720_type* @G_0x6f9720 to i32*)
  store %struct.Memory* %loadMem_480c24, %struct.Memory** %MEMORY
  %loadMem_480c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i474
  %2471 = sub i64 %2470, 8
  %2472 = load i64, i64* %PC.i473
  %2473 = add i64 %2472, 7
  store i64 %2473, i64* %PC.i473
  %2474 = inttoptr i64 %2471 to i32*
  store i32 19, i32* %2474
  store %struct.Memory* %loadMem_480c2b, %struct.Memory** %MEMORY
  br label %block_.L_480c32

block_.L_480c32:                                  ; preds = %block_480c3c, %block_.L_480c16
  %loadMem_480c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 15
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %RBP.i472
  %2482 = sub i64 %2481, 8
  %2483 = load i64, i64* %PC.i471
  %2484 = add i64 %2483, 4
  store i64 %2484, i64* %PC.i471
  %2485 = inttoptr i64 %2482 to i32*
  %2486 = load i32, i32* %2485
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2487, align 1
  %2488 = and i32 %2486, 255
  %2489 = call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2492, i8* %2493, align 1
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2494, align 1
  %2495 = icmp eq i32 %2486, 0
  %2496 = zext i1 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2496, i8* %2497, align 1
  %2498 = lshr i32 %2486, 31
  %2499 = trunc i32 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2499, i8* %2500, align 1
  %2501 = lshr i32 %2486, 31
  %2502 = xor i32 %2498, %2501
  %2503 = add i32 %2502, %2501
  %2504 = icmp eq i32 %2503, 2
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2505, i8* %2506, align 1
  store %struct.Memory* %loadMem_480c32, %struct.Memory** %MEMORY
  %loadMem_480c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %PC.i470
  %2511 = add i64 %2510, 134
  %2512 = load i64, i64* %PC.i470
  %2513 = add i64 %2512, 6
  %2514 = load i64, i64* %PC.i470
  %2515 = add i64 %2514, 6
  store i64 %2515, i64* %PC.i470
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2517 = load i8, i8* %2516, align 1
  %2518 = icmp ne i8 %2517, 0
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2520 = load i8, i8* %2519, align 1
  %2521 = icmp ne i8 %2520, 0
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2523 = load i8, i8* %2522, align 1
  %2524 = icmp ne i8 %2523, 0
  %2525 = xor i1 %2521, %2524
  %2526 = or i1 %2518, %2525
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %BRANCH_TAKEN, align 1
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2529 = select i1 %2526, i64 %2511, i64 %2513
  store i64 %2529, i64* %2528, align 8
  store %struct.Memory* %loadMem_480c36, %struct.Memory** %MEMORY
  %loadBr_480c36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480c36 = icmp eq i8 %loadBr_480c36, 1
  br i1 %cmpBr_480c36, label %block_.L_480cbc, label %block_480c3c

block_480c3c:                                     ; preds = %block_.L_480c32
  %loadMem_480c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 1
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 15
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %RBP.i469
  %2540 = sub i64 %2539, 8
  %2541 = load i64, i64* %PC.i467
  %2542 = add i64 %2541, 3
  store i64 %2542, i64* %PC.i467
  %2543 = inttoptr i64 %2540 to i32*
  %2544 = load i32, i32* %2543
  %2545 = zext i32 %2544 to i64
  store i64 %2545, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_480c3c, %struct.Memory** %MEMORY
  %loadMem_480c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 1
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %RAX.i466
  %2553 = load i64, i64* %PC.i465
  %2554 = add i64 %2553, 3
  store i64 %2554, i64* %PC.i465
  %2555 = trunc i64 %2552 to i32
  %2556 = sub i32 %2555, 1
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RAX.i466, align 8
  %2558 = icmp ult i32 %2555, 1
  %2559 = zext i1 %2558 to i8
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2559, i8* %2560, align 1
  %2561 = and i32 %2556, 255
  %2562 = call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2565, i8* %2566, align 1
  %2567 = xor i64 1, %2552
  %2568 = trunc i64 %2567 to i32
  %2569 = xor i32 %2568, %2556
  %2570 = lshr i32 %2569, 4
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2572, i8* %2573, align 1
  %2574 = icmp eq i32 %2556, 0
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2575, i8* %2576, align 1
  %2577 = lshr i32 %2556, 31
  %2578 = trunc i32 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2578, i8* %2579, align 1
  %2580 = lshr i32 %2555, 31
  %2581 = xor i32 %2577, %2580
  %2582 = add i32 %2581, %2580
  %2583 = icmp eq i32 %2582, 2
  %2584 = zext i1 %2583 to i8
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2584, i8* %2585, align 1
  store %struct.Memory* %loadMem_480c3f, %struct.Memory** %MEMORY
  %loadMem_480c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 1
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %EAX.i463 = bitcast %union.anon* %2591 to i32*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 5
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %2594 to i64*
  %2595 = load i32, i32* %EAX.i463
  %2596 = zext i32 %2595 to i64
  %2597 = load i64, i64* %PC.i462
  %2598 = add i64 %2597, 3
  store i64 %2598, i64* %PC.i462
  %2599 = shl i64 %2596, 32
  %2600 = ashr exact i64 %2599, 32
  store i64 %2600, i64* %RCX.i464, align 8
  store %struct.Memory* %loadMem_480c42, %struct.Memory** %MEMORY
  %loadMem_480c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 5
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2607, i64 0, i64 0
  %YMM0.i461 = bitcast %union.VectorReg* %2608 to %"class.std::bitset"*
  %2609 = bitcast %"class.std::bitset"* %YMM0.i461 to i8*
  %2610 = load i64, i64* %RCX.i460
  %2611 = mul i64 %2610, 8
  %2612 = add i64 %2611, 7149840
  %2613 = load i64, i64* %PC.i459
  %2614 = add i64 %2613, 9
  store i64 %2614, i64* %PC.i459
  %2615 = inttoptr i64 %2612 to double*
  %2616 = load double, double* %2615
  %2617 = bitcast i8* %2609 to double*
  store double %2616, double* %2617, align 1
  %2618 = getelementptr inbounds i8, i8* %2609, i64 8
  %2619 = bitcast i8* %2618 to double*
  store double 0.000000e+00, double* %2619, align 1
  store %struct.Memory* %loadMem_480c45, %struct.Memory** %MEMORY
  %loadMem_480c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 5
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RBP.i458
  %2630 = sub i64 %2629, 8
  %2631 = load i64, i64* %PC.i456
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %PC.i456
  %2633 = inttoptr i64 %2630 to i32*
  %2634 = load i32, i32* %2633
  %2635 = sext i32 %2634 to i64
  store i64 %2635, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_480c4e, %struct.Memory** %MEMORY
  %loadMem_480c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 5
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2642, i64 0, i64 0
  %XMM0.i455 = bitcast %union.VectorReg* %2643 to %union.vec128_t*
  %2644 = load i64, i64* %RCX.i454
  %2645 = mul i64 %2644, 8
  %2646 = add i64 %2645, 7149840
  %2647 = bitcast %union.vec128_t* %XMM0.i455 to i8*
  %2648 = load i64, i64* %PC.i453
  %2649 = add i64 %2648, 9
  store i64 %2649, i64* %PC.i453
  %2650 = bitcast i8* %2647 to double*
  %2651 = load double, double* %2650, align 1
  %2652 = inttoptr i64 %2646 to double*
  store double %2651, double* %2652
  store %struct.Memory* %loadMem_480c52, %struct.Memory** %MEMORY
  %loadMem_480c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 5
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 15
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %RBP.i452
  %2663 = sub i64 %2662, 8
  %2664 = load i64, i64* %PC.i450
  %2665 = add i64 %2664, 4
  store i64 %2665, i64* %PC.i450
  %2666 = inttoptr i64 %2663 to i32*
  %2667 = load i32, i32* %2666
  %2668 = sext i32 %2667 to i64
  store i64 %2668, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_480c5b, %struct.Memory** %MEMORY
  %loadMem_480c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 5
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2675, i64 0, i64 0
  %YMM0.i449 = bitcast %union.VectorReg* %2676 to %"class.std::bitset"*
  %2677 = bitcast %"class.std::bitset"* %YMM0.i449 to i8*
  %2678 = load i64, i64* %RCX.i448
  %2679 = mul i64 %2678, 8
  %2680 = add i64 %2679, 7149840
  %2681 = load i64, i64* %PC.i447
  %2682 = add i64 %2681, 9
  store i64 %2682, i64* %PC.i447
  %2683 = inttoptr i64 %2680 to double*
  %2684 = load double, double* %2683
  %2685 = bitcast i8* %2677 to double*
  store double %2684, double* %2685, align 1
  %2686 = getelementptr inbounds i8, i8* %2677, i64 8
  %2687 = bitcast i8* %2686 to double*
  store double 0.000000e+00, double* %2687, align 1
  store %struct.Memory* %loadMem_480c5f, %struct.Memory** %MEMORY
  %loadMem_480c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 5
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 15
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %RBP.i446
  %2698 = sub i64 %2697, 8
  %2699 = load i64, i64* %PC.i444
  %2700 = add i64 %2699, 4
  store i64 %2700, i64* %PC.i444
  %2701 = inttoptr i64 %2698 to i32*
  %2702 = load i32, i32* %2701
  %2703 = sext i32 %2702 to i64
  store i64 %2703, i64* %RCX.i445, align 8
  store %struct.Memory* %loadMem_480c68, %struct.Memory** %MEMORY
  %loadMem_480c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 5
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2710, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %2711 to %union.vec128_t*
  %2712 = load i64, i64* %RCX.i442
  %2713 = mul i64 %2712, 8
  %2714 = add i64 %2713, 7161152
  %2715 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %2716 = load i64, i64* %PC.i441
  %2717 = add i64 %2716, 9
  store i64 %2717, i64* %PC.i441
  %2718 = bitcast i8* %2715 to double*
  %2719 = load double, double* %2718, align 1
  %2720 = inttoptr i64 %2714 to double*
  store double %2719, double* %2720
  store %struct.Memory* %loadMem_480c6c, %struct.Memory** %MEMORY
  %loadMem_480c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 33
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 1
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 15
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2729 to i64*
  %2730 = load i64, i64* %RBP.i440
  %2731 = sub i64 %2730, 8
  %2732 = load i64, i64* %PC.i438
  %2733 = add i64 %2732, 3
  store i64 %2733, i64* %PC.i438
  %2734 = inttoptr i64 %2731 to i32*
  %2735 = load i32, i32* %2734
  %2736 = zext i32 %2735 to i64
  store i64 %2736, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_480c75, %struct.Memory** %MEMORY
  %loadMem_480c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 33
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 1
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %2742 to i64*
  %2743 = load i64, i64* %RAX.i437
  %2744 = load i64, i64* %PC.i436
  %2745 = add i64 %2744, 3
  store i64 %2745, i64* %PC.i436
  %2746 = trunc i64 %2743 to i32
  %2747 = sub i32 %2746, 1
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RAX.i437, align 8
  %2749 = icmp ult i32 %2746, 1
  %2750 = zext i1 %2749 to i8
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2750, i8* %2751, align 1
  %2752 = and i32 %2747, 255
  %2753 = call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2756, i8* %2757, align 1
  %2758 = xor i64 1, %2743
  %2759 = trunc i64 %2758 to i32
  %2760 = xor i32 %2759, %2747
  %2761 = lshr i32 %2760, 4
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2763, i8* %2764, align 1
  %2765 = icmp eq i32 %2747, 0
  %2766 = zext i1 %2765 to i8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2766, i8* %2767, align 1
  %2768 = lshr i32 %2747, 31
  %2769 = trunc i32 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2769, i8* %2770, align 1
  %2771 = lshr i32 %2746, 31
  %2772 = xor i32 %2768, %2771
  %2773 = add i32 %2772, %2771
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2775, i8* %2776, align 1
  store %struct.Memory* %loadMem_480c78, %struct.Memory** %MEMORY
  %loadMem_480c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 1
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %EAX.i434 = bitcast %union.anon* %2782 to i32*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 5
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %2785 to i64*
  %2786 = load i32, i32* %EAX.i434
  %2787 = zext i32 %2786 to i64
  %2788 = load i64, i64* %PC.i433
  %2789 = add i64 %2788, 3
  store i64 %2789, i64* %PC.i433
  %2790 = shl i64 %2787, 32
  %2791 = ashr exact i64 %2790, 32
  store i64 %2791, i64* %RCX.i435, align 8
  store %struct.Memory* %loadMem_480c7b, %struct.Memory** %MEMORY
  %loadMem_480c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 33
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 5
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2798, i64 0, i64 0
  %YMM0.i432 = bitcast %union.VectorReg* %2799 to %"class.std::bitset"*
  %2800 = bitcast %"class.std::bitset"* %YMM0.i432 to i8*
  %2801 = load i64, i64* %RCX.i431
  %2802 = mul i64 %2801, 8
  %2803 = add i64 %2802, 7161504
  %2804 = load i64, i64* %PC.i430
  %2805 = add i64 %2804, 9
  store i64 %2805, i64* %PC.i430
  %2806 = inttoptr i64 %2803 to double*
  %2807 = load double, double* %2806
  %2808 = bitcast i8* %2800 to double*
  store double %2807, double* %2808, align 1
  %2809 = getelementptr inbounds i8, i8* %2800, i64 8
  %2810 = bitcast i8* %2809 to double*
  store double 0.000000e+00, double* %2810, align 1
  store %struct.Memory* %loadMem_480c7e, %struct.Memory** %MEMORY
  %loadMem_480c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 5
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 15
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %RBP.i429
  %2821 = sub i64 %2820, 8
  %2822 = load i64, i64* %PC.i427
  %2823 = add i64 %2822, 4
  store i64 %2823, i64* %PC.i427
  %2824 = inttoptr i64 %2821 to i32*
  %2825 = load i32, i32* %2824
  %2826 = sext i32 %2825 to i64
  store i64 %2826, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_480c87, %struct.Memory** %MEMORY
  %loadMem_480c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 5
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2833, i64 0, i64 0
  %XMM0.i426 = bitcast %union.VectorReg* %2834 to %union.vec128_t*
  %2835 = load i64, i64* %RCX.i425
  %2836 = mul i64 %2835, 8
  %2837 = add i64 %2836, 7161504
  %2838 = bitcast %union.vec128_t* %XMM0.i426 to i8*
  %2839 = load i64, i64* %PC.i424
  %2840 = add i64 %2839, 9
  store i64 %2840, i64* %PC.i424
  %2841 = bitcast i8* %2838 to double*
  %2842 = load double, double* %2841, align 1
  %2843 = inttoptr i64 %2837 to double*
  store double %2842, double* %2843
  store %struct.Memory* %loadMem_480c8b, %struct.Memory** %MEMORY
  %loadMem_480c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 5
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 15
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2852 to i64*
  %2853 = load i64, i64* %RBP.i423
  %2854 = sub i64 %2853, 8
  %2855 = load i64, i64* %PC.i421
  %2856 = add i64 %2855, 4
  store i64 %2856, i64* %PC.i421
  %2857 = inttoptr i64 %2854 to i32*
  %2858 = load i32, i32* %2857
  %2859 = sext i32 %2858 to i64
  store i64 %2859, i64* %RCX.i422, align 8
  store %struct.Memory* %loadMem_480c94, %struct.Memory** %MEMORY
  %loadMem_480c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 5
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2866, i64 0, i64 0
  %YMM0.i420 = bitcast %union.VectorReg* %2867 to %"class.std::bitset"*
  %2868 = bitcast %"class.std::bitset"* %YMM0.i420 to i8*
  %2869 = load i64, i64* %RCX.i419
  %2870 = mul i64 %2869, 8
  %2871 = add i64 %2870, 7161504
  %2872 = load i64, i64* %PC.i418
  %2873 = add i64 %2872, 9
  store i64 %2873, i64* %PC.i418
  %2874 = inttoptr i64 %2871 to double*
  %2875 = load double, double* %2874
  %2876 = bitcast i8* %2868 to double*
  store double %2875, double* %2876, align 1
  %2877 = getelementptr inbounds i8, i8* %2868, i64 8
  %2878 = bitcast i8* %2877 to double*
  store double 0.000000e+00, double* %2878, align 1
  store %struct.Memory* %loadMem_480c98, %struct.Memory** %MEMORY
  %loadMem_480ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 5
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 15
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %2887 to i64*
  %2888 = load i64, i64* %RBP.i417
  %2889 = sub i64 %2888, 8
  %2890 = load i64, i64* %PC.i415
  %2891 = add i64 %2890, 4
  store i64 %2891, i64* %PC.i415
  %2892 = inttoptr i64 %2889 to i32*
  %2893 = load i32, i32* %2892
  %2894 = sext i32 %2893 to i64
  store i64 %2894, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_480ca1, %struct.Memory** %MEMORY
  %loadMem_480ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 5
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2901, i64 0, i64 0
  %XMM0.i414 = bitcast %union.VectorReg* %2902 to %union.vec128_t*
  %2903 = load i64, i64* %RCX.i413
  %2904 = mul i64 %2903, 8
  %2905 = add i64 %2904, 7492208
  %2906 = bitcast %union.vec128_t* %XMM0.i414 to i8*
  %2907 = load i64, i64* %PC.i412
  %2908 = add i64 %2907, 9
  store i64 %2908, i64* %PC.i412
  %2909 = bitcast i8* %2906 to double*
  %2910 = load double, double* %2909, align 1
  %2911 = inttoptr i64 %2905 to double*
  store double %2910, double* %2911
  store %struct.Memory* %loadMem_480ca5, %struct.Memory** %MEMORY
  %loadMem_480cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 1
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RBP.i411
  %2922 = sub i64 %2921, 8
  %2923 = load i64, i64* %PC.i409
  %2924 = add i64 %2923, 3
  store i64 %2924, i64* %PC.i409
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_480cae, %struct.Memory** %MEMORY
  %loadMem_480cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RAX.i408
  %2935 = load i64, i64* %PC.i407
  %2936 = add i64 %2935, 3
  store i64 %2936, i64* %PC.i407
  %2937 = trunc i64 %2934 to i32
  %2938 = add i32 -1, %2937
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RAX.i408, align 8
  %2940 = icmp ult i32 %2938, %2937
  %2941 = icmp ult i32 %2938, -1
  %2942 = or i1 %2940, %2941
  %2943 = zext i1 %2942 to i8
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2943, i8* %2944, align 1
  %2945 = and i32 %2938, 255
  %2946 = call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2949, i8* %2950, align 1
  %2951 = xor i64 -1, %2934
  %2952 = trunc i64 %2951 to i32
  %2953 = xor i32 %2952, %2938
  %2954 = lshr i32 %2953, 4
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2956, i8* %2957, align 1
  %2958 = icmp eq i32 %2938, 0
  %2959 = zext i1 %2958 to i8
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2959, i8* %2960, align 1
  %2961 = lshr i32 %2938, 31
  %2962 = trunc i32 %2961 to i8
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2962, i8* %2963, align 1
  %2964 = lshr i32 %2937, 31
  %2965 = xor i32 %2961, %2964
  %2966 = xor i32 %2961, 1
  %2967 = add i32 %2965, %2966
  %2968 = icmp eq i32 %2967, 2
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2969, i8* %2970, align 1
  store %struct.Memory* %loadMem_480cb1, %struct.Memory** %MEMORY
  %loadMem_480cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %2976 to i32*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 15
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %2979 to i64*
  %2980 = load i64, i64* %RBP.i406
  %2981 = sub i64 %2980, 8
  %2982 = load i32, i32* %EAX.i405
  %2983 = zext i32 %2982 to i64
  %2984 = load i64, i64* %PC.i404
  %2985 = add i64 %2984, 3
  store i64 %2985, i64* %PC.i404
  %2986 = inttoptr i64 %2981 to i32*
  store i32 %2982, i32* %2986
  store %struct.Memory* %loadMem_480cb4, %struct.Memory** %MEMORY
  %loadMem_480cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2989 to i64*
  %2990 = load i64, i64* %PC.i403
  %2991 = add i64 %2990, -133
  %2992 = load i64, i64* %PC.i403
  %2993 = add i64 %2992, 5
  store i64 %2993, i64* %PC.i403
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2991, i64* %2994, align 8
  store %struct.Memory* %loadMem_480cb7, %struct.Memory** %MEMORY
  br label %block_.L_480c32

block_.L_480cbc:                                  ; preds = %block_.L_480c32
  %loadMem_480cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 11
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RDI.i402 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %PC.i401
  %3002 = add i64 %3001, 7
  store i64 %3002, i64* %PC.i401
  %3003 = load i32, i32* bitcast (%G_0x6d32cc_type* @G_0x6d32cc to i32*)
  %3004 = zext i32 %3003 to i64
  store i64 %3004, i64* %RDI.i402, align 8
  store %struct.Memory* %loadMem_480cbc, %struct.Memory** %MEMORY
  %loadMem1_480cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %PC.i400
  %3009 = add i64 %3008, -1107
  %3010 = load i64, i64* %PC.i400
  %3011 = add i64 %3010, 5
  %3012 = load i64, i64* %PC.i400
  %3013 = add i64 %3012, 5
  store i64 %3013, i64* %PC.i400
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3015 = load i64, i64* %3014, align 8
  %3016 = add i64 %3015, -8
  %3017 = inttoptr i64 %3016 to i64*
  store i64 %3011, i64* %3017
  store i64 %3016, i64* %3014, align 8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3009, i64* %3018, align 8
  store %struct.Memory* %loadMem1_480cc3, %struct.Memory** %MEMORY
  %loadMem2_480cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480cc3 = load i64, i64* %3
  %call2_480cc3 = call %struct.Memory* @sub_480870.QP2Qstep(%struct.State* %0, i64 %loadPC_480cc3, %struct.Memory* %loadMem2_480cc3)
  store %struct.Memory* %call2_480cc3, %struct.Memory** %MEMORY
  %loadMem_480cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3022, i64 0, i64 0
  %XMM0.i399 = bitcast %union.VectorReg* %3023 to %union.vec128_t*
  %3024 = bitcast %union.vec128_t* %XMM0.i399 to i8*
  %3025 = load i64, i64* %PC.i398
  %3026 = add i64 %3025, 9
  store i64 %3026, i64* %PC.i398
  %3027 = bitcast i8* %3024 to double*
  %3028 = load double, double* %3027, align 1
  store double %3028, double* bitcast (%G_0x6d1910_type* @G_0x6d1910 to double*)
  store %struct.Memory* %loadMem_480cc8, %struct.Memory** %MEMORY
  %loadMem_480cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %PC.i396
  %3036 = add i64 %3035, 8
  store i64 %3036, i64* %PC.i396
  %3037 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3037, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_480cd1, %struct.Memory** %MEMORY
  %loadMem_480cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 33
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 1
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 11
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RDI.i395 = bitcast %union.anon* %3046 to i64*
  %3047 = load i64, i64* %RAX.i394
  %3048 = add i64 %3047, 72620
  %3049 = load i64, i64* %PC.i393
  %3050 = add i64 %3049, 6
  store i64 %3050, i64* %PC.i393
  %3051 = inttoptr i64 %3048 to i32*
  %3052 = load i32, i32* %3051
  %3053 = zext i32 %3052 to i64
  store i64 %3053, i64* %RDI.i395, align 8
  store %struct.Memory* %loadMem_480cd9, %struct.Memory** %MEMORY
  %loadMem_480cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 1
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %PC.i391
  %3061 = add i64 %3060, 8
  store i64 %3061, i64* %PC.i391
  %3062 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3062, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_480cdf, %struct.Memory** %MEMORY
  %loadMem_480ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 11
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %EDI.i389 = bitcast %union.anon* %3068 to i32*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 1
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %3071 to i64*
  %3072 = load i32, i32* %EDI.i389
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %RAX.i390
  %3075 = add i64 %3074, 72608
  %3076 = load i64, i64* %PC.i388
  %3077 = add i64 %3076, 6
  store i64 %3077, i64* %PC.i388
  %3078 = inttoptr i64 %3075 to i32*
  %3079 = load i32, i32* %3078
  %3080 = sub i32 %3072, %3079
  %3081 = icmp ult i32 %3072, %3079
  %3082 = zext i1 %3081 to i8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3082, i8* %3083, align 1
  %3084 = and i32 %3080, 255
  %3085 = call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3088, i8* %3089, align 1
  %3090 = xor i32 %3079, %3072
  %3091 = xor i32 %3090, %3080
  %3092 = lshr i32 %3091, 4
  %3093 = trunc i32 %3092 to i8
  %3094 = and i8 %3093, 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3094, i8* %3095, align 1
  %3096 = icmp eq i32 %3080, 0
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3097, i8* %3098, align 1
  %3099 = lshr i32 %3080, 31
  %3100 = trunc i32 %3099 to i8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3100, i8* %3101, align 1
  %3102 = lshr i32 %3072, 31
  %3103 = lshr i32 %3079, 31
  %3104 = xor i32 %3103, %3102
  %3105 = xor i32 %3099, %3102
  %3106 = add i32 %3105, %3104
  %3107 = icmp eq i32 %3106, 2
  %3108 = zext i1 %3107 to i8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3108, i8* %3109, align 1
  store %struct.Memory* %loadMem_480ce7, %struct.Memory** %MEMORY
  %loadMem_480ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %PC.i387
  %3114 = add i64 %3113, 57
  %3115 = load i64, i64* %PC.i387
  %3116 = add i64 %3115, 6
  %3117 = load i64, i64* %PC.i387
  %3118 = add i64 %3117, 6
  store i64 %3118, i64* %PC.i387
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3120 = load i8, i8* %3119, align 1
  %3121 = icmp eq i8 %3120, 0
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %BRANCH_TAKEN, align 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3124 = select i1 %3121, i64 %3114, i64 %3116
  store i64 %3124, i64* %3123, align 8
  store %struct.Memory* %loadMem_480ced, %struct.Memory** %MEMORY
  %loadBr_480ced = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480ced = icmp eq i8 %loadBr_480ced, 1
  br i1 %cmpBr_480ced, label %block_.L_480d26, label %block_480cf3

block_480cf3:                                     ; preds = %block_.L_480cbc
  %loadMem_480cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3128, i64 0, i64 0
  %YMM0.i386 = bitcast %union.VectorReg* %3129 to %"class.std::bitset"*
  %3130 = bitcast %"class.std::bitset"* %YMM0.i386 to i8*
  %3131 = load i64, i64* %PC.i385
  %3132 = add i64 %3131, ptrtoint (%G_0x30b65__rip__type* @G_0x30b65__rip_ to i64)
  %3133 = load i64, i64* %PC.i385
  %3134 = add i64 %3133, 8
  store i64 %3134, i64* %PC.i385
  %3135 = inttoptr i64 %3132 to double*
  %3136 = load double, double* %3135
  %3137 = bitcast i8* %3130 to double*
  store double %3136, double* %3137, align 1
  %3138 = getelementptr inbounds i8, i8* %3130, i64 8
  %3139 = bitcast i8* %3138 to double*
  store double 0.000000e+00, double* %3139, align 1
  store %struct.Memory* %loadMem_480cf3, %struct.Memory** %MEMORY
  %loadMem_480cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 1
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %PC.i383
  %3147 = add i64 %3146, 8
  store i64 %3147, i64* %PC.i383
  %3148 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3148, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_480cfb, %struct.Memory** %MEMORY
  %loadMem_480d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 1
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3155, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %3156 to %"class.std::bitset"*
  %3157 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %3158 = load i64, i64* %RAX.i381
  %3159 = add i64 %3158, 72528
  %3160 = load i64, i64* %PC.i380
  %3161 = add i64 %3160, 8
  store i64 %3161, i64* %PC.i380
  %3162 = inttoptr i64 %3159 to i32*
  %3163 = load i32, i32* %3162
  %3164 = sitofp i32 %3163 to double
  %3165 = bitcast i8* %3157 to double*
  store double %3164, double* %3165, align 1
  store %struct.Memory* %loadMem_480d03, %struct.Memory** %MEMORY
  %loadMem_480d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3169, i64 0, i64 1
  %YMM1.i378 = bitcast %union.VectorReg* %3170 to %"class.std::bitset"*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3171, i64 0, i64 0
  %XMM0.i379 = bitcast %union.VectorReg* %3172 to %union.vec128_t*
  %3173 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %3174 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %3175 = bitcast %union.vec128_t* %XMM0.i379 to i8*
  %3176 = load i64, i64* %PC.i377
  %3177 = add i64 %3176, 4
  store i64 %3177, i64* %PC.i377
  %3178 = bitcast i8* %3174 to double*
  %3179 = load double, double* %3178, align 1
  %3180 = getelementptr inbounds i8, i8* %3174, i64 8
  %3181 = bitcast i8* %3180 to i64*
  %3182 = load i64, i64* %3181, align 1
  %3183 = bitcast i8* %3175 to double*
  %3184 = load double, double* %3183, align 1
  %3185 = fmul double %3179, %3184
  %3186 = bitcast i8* %3173 to double*
  store double %3185, double* %3186, align 1
  %3187 = getelementptr inbounds i8, i8* %3173, i64 8
  %3188 = bitcast i8* %3187 to i64*
  store i64 %3182, i64* %3188, align 1
  store %struct.Memory* %loadMem_480d0b, %struct.Memory** %MEMORY
  %loadMem_480d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3193 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3192, i64 0, i64 1
  %YMM1.i376 = bitcast %union.VectorReg* %3193 to %"class.std::bitset"*
  %3194 = bitcast %"class.std::bitset"* %YMM1.i376 to i8*
  %3195 = bitcast %"class.std::bitset"* %YMM1.i376 to i8*
  %3196 = load i64, i64* %PC.i375
  %3197 = add i64 %3196, 9
  store i64 %3197, i64* %PC.i375
  %3198 = bitcast i8* %3195 to double*
  %3199 = load double, double* %3198, align 1
  %3200 = getelementptr inbounds i8, i8* %3195, i64 8
  %3201 = bitcast i8* %3200 to i64*
  %3202 = load i64, i64* %3201, align 1
  %3203 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %3204 = fdiv double %3199, %3203
  %3205 = bitcast i8* %3194 to double*
  store double %3204, double* %3205, align 1
  %3206 = getelementptr inbounds i8, i8* %3194, i64 8
  %3207 = bitcast i8* %3206 to i64*
  store i64 %3202, i64* %3207, align 1
  store %struct.Memory* %loadMem_480d0f, %struct.Memory** %MEMORY
  %loadMem_480d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3211, i64 0, i64 1
  %XMM1.i374 = bitcast %union.VectorReg* %3212 to %union.vec128_t*
  %3213 = bitcast %union.vec128_t* %XMM1.i374 to i8*
  %3214 = load i64, i64* %PC.i373
  %3215 = add i64 %3214, 9
  store i64 %3215, i64* %PC.i373
  %3216 = bitcast i8* %3213 to double*
  %3217 = load double, double* %3216, align 1
  store double %3217, double* bitcast (%G_0x6d46a0_type* @G_0x6d46a0 to double*)
  store %struct.Memory* %loadMem_480d18, %struct.Memory** %MEMORY
  %loadMem_480d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %PC.i372
  %3222 = add i64 %3221, 51
  %3223 = load i64, i64* %PC.i372
  %3224 = add i64 %3223, 5
  store i64 %3224, i64* %PC.i372
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3222, i64* %3225, align 8
  store %struct.Memory* %loadMem_480d21, %struct.Memory** %MEMORY
  br label %block_.L_480d54

block_.L_480d26:                                  ; preds = %block_.L_480cbc
  %loadMem_480d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3229, i64 0, i64 0
  %YMM0.i371 = bitcast %union.VectorReg* %3230 to %"class.std::bitset"*
  %3231 = bitcast %"class.std::bitset"* %YMM0.i371 to i8*
  %3232 = load i64, i64* %PC.i370
  %3233 = add i64 %3232, ptrtoint (%G_0x30b32__rip__type* @G_0x30b32__rip_ to i64)
  %3234 = load i64, i64* %PC.i370
  %3235 = add i64 %3234, 8
  store i64 %3235, i64* %PC.i370
  %3236 = inttoptr i64 %3233 to double*
  %3237 = load double, double* %3236
  %3238 = bitcast i8* %3231 to double*
  store double %3237, double* %3238, align 1
  %3239 = getelementptr inbounds i8, i8* %3231, i64 8
  %3240 = bitcast i8* %3239 to double*
  store double 0.000000e+00, double* %3240, align 1
  store %struct.Memory* %loadMem_480d26, %struct.Memory** %MEMORY
  %loadMem_480d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 1
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %PC.i368
  %3248 = add i64 %3247, 8
  store i64 %3248, i64* %PC.i368
  %3249 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3249, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_480d2e, %struct.Memory** %MEMORY
  %loadMem_480d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 1
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3256, i64 0, i64 1
  %YMM1.i367 = bitcast %union.VectorReg* %3257 to %"class.std::bitset"*
  %3258 = bitcast %"class.std::bitset"* %YMM1.i367 to i8*
  %3259 = load i64, i64* %RAX.i366
  %3260 = add i64 %3259, 72536
  %3261 = load i64, i64* %PC.i365
  %3262 = add i64 %3261, 8
  store i64 %3262, i64* %PC.i365
  %3263 = inttoptr i64 %3260 to i32*
  %3264 = load i32, i32* %3263
  %3265 = sitofp i32 %3264 to double
  %3266 = bitcast i8* %3258 to double*
  store double %3265, double* %3266, align 1
  store %struct.Memory* %loadMem_480d36, %struct.Memory** %MEMORY
  %loadMem_480d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3270, i64 0, i64 1
  %YMM1.i363 = bitcast %union.VectorReg* %3271 to %"class.std::bitset"*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3272, i64 0, i64 0
  %XMM0.i364 = bitcast %union.VectorReg* %3273 to %union.vec128_t*
  %3274 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %3275 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %3276 = bitcast %union.vec128_t* %XMM0.i364 to i8*
  %3277 = load i64, i64* %PC.i362
  %3278 = add i64 %3277, 4
  store i64 %3278, i64* %PC.i362
  %3279 = bitcast i8* %3275 to double*
  %3280 = load double, double* %3279, align 1
  %3281 = getelementptr inbounds i8, i8* %3275, i64 8
  %3282 = bitcast i8* %3281 to i64*
  %3283 = load i64, i64* %3282, align 1
  %3284 = bitcast i8* %3276 to double*
  %3285 = load double, double* %3284, align 1
  %3286 = fmul double %3280, %3285
  %3287 = bitcast i8* %3274 to double*
  store double %3286, double* %3287, align 1
  %3288 = getelementptr inbounds i8, i8* %3274, i64 8
  %3289 = bitcast i8* %3288 to i64*
  store i64 %3283, i64* %3289, align 1
  store %struct.Memory* %loadMem_480d3e, %struct.Memory** %MEMORY
  %loadMem_480d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3294 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3293, i64 0, i64 1
  %YMM1.i361 = bitcast %union.VectorReg* %3294 to %"class.std::bitset"*
  %3295 = bitcast %"class.std::bitset"* %YMM1.i361 to i8*
  %3296 = bitcast %"class.std::bitset"* %YMM1.i361 to i8*
  %3297 = load i64, i64* %PC.i360
  %3298 = add i64 %3297, 9
  store i64 %3298, i64* %PC.i360
  %3299 = bitcast i8* %3296 to double*
  %3300 = load double, double* %3299, align 1
  %3301 = getelementptr inbounds i8, i8* %3296, i64 8
  %3302 = bitcast i8* %3301 to i64*
  %3303 = load i64, i64* %3302, align 1
  %3304 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %3305 = fdiv double %3300, %3304
  %3306 = bitcast i8* %3295 to double*
  store double %3305, double* %3306, align 1
  %3307 = getelementptr inbounds i8, i8* %3295, i64 8
  %3308 = bitcast i8* %3307 to i64*
  store i64 %3303, i64* %3308, align 1
  store %struct.Memory* %loadMem_480d42, %struct.Memory** %MEMORY
  %loadMem_480d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3312, i64 0, i64 1
  %XMM1.i359 = bitcast %union.VectorReg* %3313 to %union.vec128_t*
  %3314 = bitcast %union.vec128_t* %XMM1.i359 to i8*
  %3315 = load i64, i64* %PC.i358
  %3316 = add i64 %3315, 9
  store i64 %3316, i64* %PC.i358
  %3317 = bitcast i8* %3314 to double*
  %3318 = load double, double* %3317, align 1
  store double %3318, double* bitcast (%G_0x6d46a0_type* @G_0x6d46a0 to double*)
  store %struct.Memory* %loadMem_480d4b, %struct.Memory** %MEMORY
  br label %block_.L_480d54

block_.L_480d54:                                  ; preds = %block_.L_480d26, %block_480cf3
  %loadMem_480d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3322, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %3323 to %"class.std::bitset"*
  %3324 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %3325 = load i64, i64* %PC.i356
  %3326 = add i64 %3325, 9
  store i64 %3326, i64* %PC.i356
  %3327 = load double, double* bitcast (%G_0x6d1910_type* @G_0x6d1910 to double*)
  %3328 = bitcast i8* %3324 to double*
  store double %3327, double* %3328, align 1
  %3329 = getelementptr inbounds i8, i8* %3324, i64 8
  %3330 = bitcast i8* %3329 to double*
  store double 0.000000e+00, double* %3330, align 1
  store %struct.Memory* %loadMem_480d54, %struct.Memory** %MEMORY
  %loadMem_480d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3334, i64 0, i64 0
  %XMM0.i355 = bitcast %union.VectorReg* %3335 to %union.vec128_t*
  %3336 = bitcast %union.vec128_t* %XMM0.i355 to i8*
  %3337 = load i64, i64* %PC.i354
  %3338 = add i64 %3337, 9
  store i64 %3338, i64* %PC.i354
  %3339 = bitcast i8* %3336 to double*
  %3340 = load double, double* %3339, align 1
  store double %3340, double* bitcast (%G_0x6d4540_type* @G_0x6d4540 to double*)
  store %struct.Memory* %loadMem_480d5d, %struct.Memory** %MEMORY
  %loadMem_480d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3344, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %3345 to %"class.std::bitset"*
  %3346 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %3347 = load i64, i64* %PC.i352
  %3348 = add i64 %3347, 9
  store i64 %3348, i64* %PC.i352
  %3349 = load double, double* bitcast (%G_0x6d46a0_type* @G_0x6d46a0 to double*)
  %3350 = bitcast i8* %3346 to double*
  store double %3349, double* %3350, align 1
  %3351 = getelementptr inbounds i8, i8* %3346, i64 8
  %3352 = bitcast i8* %3351 to double*
  store double 0.000000e+00, double* %3352, align 1
  store %struct.Memory* %loadMem_480d66, %struct.Memory** %MEMORY
  %loadMem_480d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3357 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3356, i64 0, i64 0
  %XMM0.i351 = bitcast %union.VectorReg* %3357 to %union.vec128_t*
  %3358 = bitcast %union.vec128_t* %XMM0.i351 to i8*
  %3359 = load i64, i64* %PC.i350
  %3360 = add i64 %3359, 9
  store i64 %3360, i64* %PC.i350
  %3361 = bitcast i8* %3358 to double*
  %3362 = load double, double* %3361, align 1
  store double %3362, double* bitcast (%G_0x725270_type* @G_0x725270 to double*)
  store %struct.Memory* %loadMem_480d6f, %struct.Memory** %MEMORY
  %loadMem_480d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3366, i64 0, i64 0
  %YMM0.i349 = bitcast %union.VectorReg* %3367 to %"class.std::bitset"*
  %3368 = bitcast %"class.std::bitset"* %YMM0.i349 to i8*
  %3369 = load i64, i64* %PC.i348
  %3370 = add i64 %3369, 9
  store i64 %3370, i64* %PC.i348
  %3371 = load double, double* bitcast (%G_0x726420_type* @G_0x726420 to double*)
  %3372 = bitcast i8* %3368 to double*
  store double %3371, double* %3372, align 1
  %3373 = getelementptr inbounds i8, i8* %3368, i64 8
  %3374 = bitcast i8* %3373 to double*
  store double 0.000000e+00, double* %3374, align 1
  store %struct.Memory* %loadMem_480d78, %struct.Memory** %MEMORY
  %loadMem_480d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3377 to i64*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3379 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3378, i64 0, i64 0
  %XMM0.i347 = bitcast %union.VectorReg* %3379 to %union.vec128_t*
  %3380 = bitcast %union.vec128_t* %XMM0.i347 to i8*
  %3381 = load i64, i64* %PC.i346
  %3382 = add i64 %3381, 9
  store i64 %3382, i64* %PC.i346
  %3383 = bitcast i8* %3380 to double*
  %3384 = load double, double* %3383, align 1
  store double %3384, double* bitcast (%G_0x723640_type* @G_0x723640 to double*)
  store %struct.Memory* %loadMem_480d81, %struct.Memory** %MEMORY
  %loadMem_480d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3388, i64 0, i64 0
  %YMM0.i345 = bitcast %union.VectorReg* %3389 to %"class.std::bitset"*
  %3390 = bitcast %"class.std::bitset"* %YMM0.i345 to i8*
  %3391 = load i64, i64* %PC.i344
  %3392 = add i64 %3391, 9
  store i64 %3392, i64* %PC.i344
  %3393 = load double, double* bitcast (%G_0x6f9358_type* @G_0x6f9358 to double*)
  %3394 = bitcast i8* %3390 to double*
  store double %3393, double* %3394, align 1
  %3395 = getelementptr inbounds i8, i8* %3390, i64 8
  %3396 = bitcast i8* %3395 to double*
  store double 0.000000e+00, double* %3396, align 1
  store %struct.Memory* %loadMem_480d8a, %struct.Memory** %MEMORY
  %loadMem_480d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3401 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3400, i64 0, i64 0
  %XMM0.i343 = bitcast %union.VectorReg* %3401 to %union.vec128_t*
  %3402 = bitcast %union.vec128_t* %XMM0.i343 to i8*
  %3403 = load i64, i64* %PC.i342
  %3404 = add i64 %3403, 9
  store i64 %3404, i64* %PC.i342
  %3405 = bitcast i8* %3402 to double*
  %3406 = load double, double* %3405, align 1
  store double %3406, double* bitcast (%G_0x6d33e0_type* @G_0x6d33e0 to double*)
  store %struct.Memory* %loadMem_480d93, %struct.Memory** %MEMORY
  %loadMem_480d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 33
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3409 to i64*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3410, i64 0, i64 0
  %YMM0.i341 = bitcast %union.VectorReg* %3411 to %"class.std::bitset"*
  %3412 = bitcast %"class.std::bitset"* %YMM0.i341 to i8*
  %3413 = load i64, i64* %PC.i340
  %3414 = add i64 %3413, 9
  store i64 %3414, i64* %PC.i340
  %3415 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %3416 = bitcast i8* %3412 to double*
  store double %3415, double* %3416, align 1
  %3417 = getelementptr inbounds i8, i8* %3412, i64 8
  %3418 = bitcast i8* %3417 to double*
  store double 0.000000e+00, double* %3418, align 1
  store %struct.Memory* %loadMem_480d9c, %struct.Memory** %MEMORY
  %loadMem_480da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3422, i64 0, i64 0
  %XMM0.i337 = bitcast %union.VectorReg* %3423 to %union.vec128_t*
  %3424 = bitcast %union.vec128_t* %XMM0.i337 to i8*
  %3425 = load i64, i64* %PC.i336
  %3426 = add i64 %3425, 9
  store i64 %3426, i64* %PC.i336
  %3427 = bitcast i8* %3424 to double*
  %3428 = load double, double* %3427, align 1
  %3429 = load double, double* bitcast (%G_0x710830_type* @G_0x710830 to double*)
  %3430 = fcmp uno double %3428, %3429
  br i1 %3430, label %3431, label %3443

; <label>:3431:                                   ; preds = %block_.L_480d54
  %3432 = fadd double %3428, %3429
  %3433 = bitcast double %3432 to i64
  %3434 = and i64 %3433, 9221120237041090560
  %3435 = icmp eq i64 %3434, 9218868437227405312
  %3436 = and i64 %3433, 2251799813685247
  %3437 = icmp ne i64 %3436, 0
  %3438 = and i1 %3435, %3437
  br i1 %3438, label %3439, label %3449

; <label>:3439:                                   ; preds = %3431
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3441 = load i64, i64* %3440, align 8
  %3442 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3441, %struct.Memory* %loadMem_480da5)
  br label %routine_ucomisd_0x710830___xmm0.exit

; <label>:3443:                                   ; preds = %block_.L_480d54
  %3444 = fcmp ogt double %3428, %3429
  br i1 %3444, label %3449, label %3445

; <label>:3445:                                   ; preds = %3443
  %3446 = fcmp olt double %3428, %3429
  br i1 %3446, label %3449, label %3447

; <label>:3447:                                   ; preds = %3445
  %3448 = fcmp oeq double %3428, %3429
  br i1 %3448, label %3449, label %3456

; <label>:3449:                                   ; preds = %3447, %3445, %3443, %3431
  %3450 = phi i8 [ 0, %3443 ], [ 0, %3445 ], [ 1, %3447 ], [ 1, %3431 ]
  %3451 = phi i8 [ 0, %3443 ], [ 0, %3445 ], [ 0, %3447 ], [ 1, %3431 ]
  %3452 = phi i8 [ 0, %3443 ], [ 1, %3445 ], [ 0, %3447 ], [ 1, %3431 ]
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3450, i8* %3453, align 1
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3451, i8* %3454, align 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3452, i8* %3455, align 1
  br label %3456

; <label>:3456:                                   ; preds = %3449, %3447
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3457, align 1
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3458, align 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3459, align 1
  br label %routine_ucomisd_0x710830___xmm0.exit

routine_ucomisd_0x710830___xmm0.exit:             ; preds = %3439, %3456
  %3460 = phi %struct.Memory* [ %3442, %3439 ], [ %loadMem_480da5, %3456 ]
  store %struct.Memory* %3460, %struct.Memory** %MEMORY
  %loadMem_480dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3463 to i64*
  %3464 = load i64, i64* %PC.i335
  %3465 = add i64 %3464, 51
  %3466 = load i64, i64* %PC.i335
  %3467 = add i64 %3466, 6
  %3468 = load i64, i64* %PC.i335
  %3469 = add i64 %3468, 6
  store i64 %3469, i64* %PC.i335
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3471 = load i8, i8* %3470, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3473 = load i8, i8* %3472, align 1
  %3474 = or i8 %3473, %3471
  %3475 = icmp ne i8 %3474, 0
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %BRANCH_TAKEN, align 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3478 = select i1 %3475, i64 %3465, i64 %3467
  store i64 %3478, i64* %3477, align 8
  store %struct.Memory* %loadMem_480dae, %struct.Memory** %MEMORY
  %loadBr_480dae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480dae = icmp eq i8 %loadBr_480dae, 1
  br i1 %cmpBr_480dae, label %block_.L_480de1, label %block_480db4

block_480db4:                                     ; preds = %routine_ucomisd_0x710830___xmm0.exit
  %loadMem_480db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3482, i64 0, i64 0
  %YMM0.i334 = bitcast %union.VectorReg* %3483 to %"class.std::bitset"*
  %3484 = bitcast %"class.std::bitset"* %YMM0.i334 to i8*
  %3485 = load i64, i64* %PC.i333
  %3486 = add i64 %3485, ptrtoint (%G_0x30bdc__rip__type* @G_0x30bdc__rip_ to i64)
  %3487 = load i64, i64* %PC.i333
  %3488 = add i64 %3487, 8
  store i64 %3488, i64* %PC.i333
  %3489 = inttoptr i64 %3486 to double*
  %3490 = load double, double* %3489
  %3491 = bitcast i8* %3484 to double*
  store double %3490, double* %3491, align 1
  %3492 = getelementptr inbounds i8, i8* %3484, i64 8
  %3493 = bitcast i8* %3492 to double*
  store double 0.000000e+00, double* %3493, align 1
  store %struct.Memory* %loadMem_480db4, %struct.Memory** %MEMORY
  %loadMem_480dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3497, i64 0, i64 1
  %YMM1.i332 = bitcast %union.VectorReg* %3498 to %"class.std::bitset"*
  %3499 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %3500 = load i64, i64* %PC.i331
  %3501 = add i64 %3500, 9
  store i64 %3501, i64* %PC.i331
  %3502 = load double, double* bitcast (%G_0x710830_type* @G_0x710830 to double*)
  %3503 = bitcast i8* %3499 to double*
  store double %3502, double* %3503, align 1
  %3504 = getelementptr inbounds i8, i8* %3499, i64 8
  %3505 = bitcast i8* %3504 to double*
  store double 0.000000e+00, double* %3505, align 1
  store %struct.Memory* %loadMem_480dbc, %struct.Memory** %MEMORY
  %loadMem_480dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3510 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3509, i64 0, i64 1
  %YMM1.i330 = bitcast %union.VectorReg* %3510 to %"class.std::bitset"*
  %3511 = bitcast %"class.std::bitset"* %YMM1.i330 to i8*
  %3512 = bitcast %"class.std::bitset"* %YMM1.i330 to i8*
  %3513 = load i64, i64* %PC.i329
  %3514 = add i64 %3513, 9
  store i64 %3514, i64* %PC.i329
  %3515 = bitcast i8* %3512 to double*
  %3516 = load double, double* %3515, align 1
  %3517 = getelementptr inbounds i8, i8* %3512, i64 8
  %3518 = bitcast i8* %3517 to i64*
  %3519 = load i64, i64* %3518, align 1
  %3520 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %3521 = fdiv double %3516, %3520
  %3522 = bitcast i8* %3511 to double*
  store double %3521, double* %3522, align 1
  %3523 = getelementptr inbounds i8, i8* %3511, i64 8
  %3524 = bitcast i8* %3523 to i64*
  store i64 %3519, i64* %3524, align 1
  store %struct.Memory* %loadMem_480dc5, %struct.Memory** %MEMORY
  %loadMem_480dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 33
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3528, i64 0, i64 1
  %YMM1.i327 = bitcast %union.VectorReg* %3529 to %"class.std::bitset"*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3530, i64 0, i64 0
  %XMM0.i328 = bitcast %union.VectorReg* %3531 to %union.vec128_t*
  %3532 = bitcast %"class.std::bitset"* %YMM1.i327 to i8*
  %3533 = bitcast %"class.std::bitset"* %YMM1.i327 to i8*
  %3534 = bitcast %union.vec128_t* %XMM0.i328 to i8*
  %3535 = load i64, i64* %PC.i326
  %3536 = add i64 %3535, 4
  store i64 %3536, i64* %PC.i326
  %3537 = bitcast i8* %3533 to double*
  %3538 = load double, double* %3537, align 1
  %3539 = getelementptr inbounds i8, i8* %3533, i64 8
  %3540 = bitcast i8* %3539 to i64*
  %3541 = load i64, i64* %3540, align 1
  %3542 = bitcast i8* %3534 to double*
  %3543 = load double, double* %3542, align 1
  %3544 = fmul double %3538, %3543
  %3545 = bitcast i8* %3532 to double*
  store double %3544, double* %3545, align 1
  %3546 = getelementptr inbounds i8, i8* %3532, i64 8
  %3547 = bitcast i8* %3546 to i64*
  store i64 %3541, i64* %3547, align 1
  store %struct.Memory* %loadMem_480dce, %struct.Memory** %MEMORY
  %loadMem_480dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 1
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3554, i64 0, i64 1
  %XMM1.i325 = bitcast %union.VectorReg* %3555 to %union.vec128_t*
  %3556 = bitcast %union.vec128_t* %XMM1.i325 to i8*
  %3557 = load i64, i64* %PC.i323
  %3558 = add i64 %3557, 4
  store i64 %3558, i64* %PC.i323
  %3559 = bitcast i8* %3556 to double*
  %3560 = load double, double* %3559, align 1
  %3561 = call double @llvm.trunc.f64(double %3560)
  %3562 = call double @llvm.fabs.f64(double %3561)
  %3563 = fcmp ogt double %3562, 0x41DFFFFFFFC00000
  %3564 = fptosi double %3561 to i32
  %3565 = zext i32 %3564 to i64
  %3566 = select i1 %3563, i64 2147483648, i64 %3565
  store i64 %3566, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_480dd2, %struct.Memory** %MEMORY
  %loadMem_480dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 1
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %3572 to i32*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 15
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %RBP.i322
  %3577 = sub i64 %3576, 204
  %3578 = load i32, i32* %EAX.i321
  %3579 = zext i32 %3578 to i64
  %3580 = load i64, i64* %PC.i320
  %3581 = add i64 %3580, 6
  store i64 %3581, i64* %PC.i320
  %3582 = inttoptr i64 %3577 to i32*
  store i32 %3578, i32* %3582
  store %struct.Memory* %loadMem_480dd6, %struct.Memory** %MEMORY
  %loadMem_480ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3585 to i64*
  %3586 = load i64, i64* %PC.i319
  %3587 = add i64 %3586, 45
  %3588 = load i64, i64* %PC.i319
  %3589 = add i64 %3588, 5
  store i64 %3589, i64* %PC.i319
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3587, i64* %3590, align 8
  store %struct.Memory* %loadMem_480ddc, %struct.Memory** %MEMORY
  br label %block_.L_480e09

block_.L_480de1:                                  ; preds = %routine_ucomisd_0x710830___xmm0.exit
  %loadMem_480de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3594, i64 0, i64 0
  %YMM0.i318 = bitcast %union.VectorReg* %3595 to %"class.std::bitset"*
  %3596 = bitcast %"class.std::bitset"* %YMM0.i318 to i8*
  %3597 = load i64, i64* %PC.i317
  %3598 = add i64 %3597, ptrtoint (%G_0x30baf__rip__type* @G_0x30baf__rip_ to i64)
  %3599 = load i64, i64* %PC.i317
  %3600 = add i64 %3599, 8
  store i64 %3600, i64* %PC.i317
  %3601 = inttoptr i64 %3598 to double*
  %3602 = load double, double* %3601
  %3603 = bitcast i8* %3596 to double*
  store double %3602, double* %3603, align 1
  %3604 = getelementptr inbounds i8, i8* %3596, i64 8
  %3605 = bitcast i8* %3604 to double*
  store double 0.000000e+00, double* %3605, align 1
  store %struct.Memory* %loadMem_480de1, %struct.Memory** %MEMORY
  %loadMem_480de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3609, i64 0, i64 1
  %YMM1.i316 = bitcast %union.VectorReg* %3610 to %"class.std::bitset"*
  %3611 = bitcast %"class.std::bitset"* %YMM1.i316 to i8*
  %3612 = load i64, i64* %PC.i315
  %3613 = add i64 %3612, 9
  store i64 %3613, i64* %PC.i315
  %3614 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %3615 = bitcast i8* %3611 to double*
  store double %3614, double* %3615, align 1
  %3616 = getelementptr inbounds i8, i8* %3611, i64 8
  %3617 = bitcast i8* %3616 to double*
  store double 0.000000e+00, double* %3617, align 1
  store %struct.Memory* %loadMem_480de9, %struct.Memory** %MEMORY
  %loadMem_480df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 33
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3621, i64 0, i64 1
  %YMM1.i314 = bitcast %union.VectorReg* %3622 to %"class.std::bitset"*
  %3623 = bitcast %"class.std::bitset"* %YMM1.i314 to i8*
  %3624 = bitcast %"class.std::bitset"* %YMM1.i314 to i8*
  %3625 = load i64, i64* %PC.i313
  %3626 = add i64 %3625, 9
  store i64 %3626, i64* %PC.i313
  %3627 = bitcast i8* %3624 to double*
  %3628 = load double, double* %3627, align 1
  %3629 = getelementptr inbounds i8, i8* %3624, i64 8
  %3630 = bitcast i8* %3629 to i64*
  %3631 = load i64, i64* %3630, align 1
  %3632 = load double, double* bitcast (%G_0x710830_type* @G_0x710830 to double*)
  %3633 = fdiv double %3628, %3632
  %3634 = bitcast i8* %3623 to double*
  store double %3633, double* %3634, align 1
  %3635 = getelementptr inbounds i8, i8* %3623, i64 8
  %3636 = bitcast i8* %3635 to i64*
  store i64 %3631, i64* %3636, align 1
  store %struct.Memory* %loadMem_480df2, %struct.Memory** %MEMORY
  %loadMem_480dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3640, i64 0, i64 1
  %YMM1.i311 = bitcast %union.VectorReg* %3641 to %"class.std::bitset"*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3642, i64 0, i64 0
  %XMM0.i312 = bitcast %union.VectorReg* %3643 to %union.vec128_t*
  %3644 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %3645 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %3646 = bitcast %union.vec128_t* %XMM0.i312 to i8*
  %3647 = load i64, i64* %PC.i310
  %3648 = add i64 %3647, 4
  store i64 %3648, i64* %PC.i310
  %3649 = bitcast i8* %3645 to double*
  %3650 = load double, double* %3649, align 1
  %3651 = getelementptr inbounds i8, i8* %3645, i64 8
  %3652 = bitcast i8* %3651 to i64*
  %3653 = load i64, i64* %3652, align 1
  %3654 = bitcast i8* %3646 to double*
  %3655 = load double, double* %3654, align 1
  %3656 = fmul double %3650, %3655
  %3657 = bitcast i8* %3644 to double*
  store double %3656, double* %3657, align 1
  %3658 = getelementptr inbounds i8, i8* %3644, i64 8
  %3659 = bitcast i8* %3658 to i64*
  store i64 %3653, i64* %3659, align 1
  store %struct.Memory* %loadMem_480dfb, %struct.Memory** %MEMORY
  %loadMem_480dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 33
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 1
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3666, i64 0, i64 1
  %XMM1.i309 = bitcast %union.VectorReg* %3667 to %union.vec128_t*
  %3668 = bitcast %union.vec128_t* %XMM1.i309 to i8*
  %3669 = load i64, i64* %PC.i307
  %3670 = add i64 %3669, 4
  store i64 %3670, i64* %PC.i307
  %3671 = bitcast i8* %3668 to double*
  %3672 = load double, double* %3671, align 1
  %3673 = call double @llvm.trunc.f64(double %3672)
  %3674 = call double @llvm.fabs.f64(double %3673)
  %3675 = fcmp ogt double %3674, 0x41DFFFFFFFC00000
  %3676 = fptosi double %3673 to i32
  %3677 = zext i32 %3676 to i64
  %3678 = select i1 %3675, i64 2147483648, i64 %3677
  store i64 %3678, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_480dff, %struct.Memory** %MEMORY
  %loadMem_480e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 1
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %3684 to i32*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i306
  %3689 = sub i64 %3688, 204
  %3690 = load i32, i32* %EAX.i305
  %3691 = zext i32 %3690 to i64
  %3692 = load i64, i64* %PC.i304
  %3693 = add i64 %3692, 6
  store i64 %3693, i64* %PC.i304
  %3694 = inttoptr i64 %3689 to i32*
  store i32 %3690, i32* %3694
  store %struct.Memory* %loadMem_480e03, %struct.Memory** %MEMORY
  br label %block_.L_480e09

block_.L_480e09:                                  ; preds = %block_.L_480de1, %block_480db4
  %loadMem_480e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 1
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 15
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %RBP.i303
  %3705 = sub i64 %3704, 204
  %3706 = load i64, i64* %PC.i301
  %3707 = add i64 %3706, 6
  store i64 %3707, i64* %PC.i301
  %3708 = inttoptr i64 %3705 to i32*
  %3709 = load i32, i32* %3708
  %3710 = zext i32 %3709 to i64
  store i64 %3710, i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_480e09, %struct.Memory** %MEMORY
  %loadMem_480e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 33
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 1
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %3716 to i32*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 15
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %3719 to i64*
  %3720 = load i64, i64* %RBP.i300
  %3721 = sub i64 %3720, 4
  %3722 = load i32, i32* %EAX.i299
  %3723 = zext i32 %3722 to i64
  %3724 = load i64, i64* %PC.i298
  %3725 = add i64 %3724, 3
  store i64 %3725, i64* %PC.i298
  %3726 = inttoptr i64 %3721 to i32*
  store i32 %3722, i32* %3726
  store %struct.Memory* %loadMem_480e0f, %struct.Memory** %MEMORY
  %loadMem_480e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 33
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3729 to i64*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 15
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %3732 to i64*
  %3733 = load i64, i64* %RBP.i297
  %3734 = sub i64 %3733, 4
  %3735 = load i64, i64* %PC.i296
  %3736 = add i64 %3735, 4
  store i64 %3736, i64* %PC.i296
  %3737 = inttoptr i64 %3734 to i32*
  %3738 = load i32, i32* %3737
  %3739 = sub i32 %3738, 1
  %3740 = icmp ult i32 %3738, 1
  %3741 = zext i1 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3741, i8* %3742, align 1
  %3743 = and i32 %3739, 255
  %3744 = call i32 @llvm.ctpop.i32(i32 %3743)
  %3745 = trunc i32 %3744 to i8
  %3746 = and i8 %3745, 1
  %3747 = xor i8 %3746, 1
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3747, i8* %3748, align 1
  %3749 = xor i32 %3738, 1
  %3750 = xor i32 %3749, %3739
  %3751 = lshr i32 %3750, 4
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3753, i8* %3754, align 1
  %3755 = icmp eq i32 %3739, 0
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3756, i8* %3757, align 1
  %3758 = lshr i32 %3739, 31
  %3759 = trunc i32 %3758 to i8
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3759, i8* %3760, align 1
  %3761 = lshr i32 %3738, 31
  %3762 = xor i32 %3758, %3761
  %3763 = add i32 %3762, %3761
  %3764 = icmp eq i32 %3763, 2
  %3765 = zext i1 %3764 to i8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3765, i8* %3766, align 1
  store %struct.Memory* %loadMem_480e12, %struct.Memory** %MEMORY
  %loadMem_480e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %PC.i295
  %3771 = add i64 %3770, 22
  %3772 = load i64, i64* %PC.i295
  %3773 = add i64 %3772, 6
  %3774 = load i64, i64* %PC.i295
  %3775 = add i64 %3774, 6
  store i64 %3775, i64* %PC.i295
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3777 = load i8, i8* %3776, align 1
  %3778 = icmp ne i8 %3777, 0
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3780 = load i8, i8* %3779, align 1
  %3781 = icmp ne i8 %3780, 0
  %3782 = xor i1 %3778, %3781
  %3783 = xor i1 %3782, true
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %BRANCH_TAKEN, align 1
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3786 = select i1 %3782, i64 %3773, i64 %3771
  store i64 %3786, i64* %3785, align 8
  store %struct.Memory* %loadMem_480e16, %struct.Memory** %MEMORY
  %loadBr_480e16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480e16 = icmp eq i8 %loadBr_480e16, 1
  br i1 %cmpBr_480e16, label %block_.L_480e2c, label %block_480e1c

block_480e1c:                                     ; preds = %block_.L_480e09
  %loadMem_480e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 1
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %PC.i293
  %3794 = add i64 %3793, 5
  store i64 %3794, i64* %PC.i293
  store i64 1, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_480e1c, %struct.Memory** %MEMORY
  %loadMem_480e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 1
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %EAX.i291 = bitcast %union.anon* %3800 to i32*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 15
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RBP.i292
  %3805 = sub i64 %3804, 208
  %3806 = load i32, i32* %EAX.i291
  %3807 = zext i32 %3806 to i64
  %3808 = load i64, i64* %PC.i290
  %3809 = add i64 %3808, 6
  store i64 %3809, i64* %PC.i290
  %3810 = inttoptr i64 %3805 to i32*
  store i32 %3806, i32* %3810
  store %struct.Memory* %loadMem_480e21, %struct.Memory** %MEMORY
  %loadMem_480e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %PC.i289
  %3815 = add i64 %3814, 14
  %3816 = load i64, i64* %PC.i289
  %3817 = add i64 %3816, 5
  store i64 %3817, i64* %PC.i289
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3815, i64* %3818, align 8
  store %struct.Memory* %loadMem_480e27, %struct.Memory** %MEMORY
  br label %block_.L_480e35

block_.L_480e2c:                                  ; preds = %block_.L_480e09
  %loadMem_480e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 1
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 15
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3827 to i64*
  %3828 = load i64, i64* %RBP.i288
  %3829 = sub i64 %3828, 4
  %3830 = load i64, i64* %PC.i286
  %3831 = add i64 %3830, 3
  store i64 %3831, i64* %PC.i286
  %3832 = inttoptr i64 %3829 to i32*
  %3833 = load i32, i32* %3832
  %3834 = zext i32 %3833 to i64
  store i64 %3834, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_480e2c, %struct.Memory** %MEMORY
  %loadMem_480e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 1
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %EAX.i284 = bitcast %union.anon* %3840 to i32*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %RBP.i285
  %3845 = sub i64 %3844, 208
  %3846 = load i32, i32* %EAX.i284
  %3847 = zext i32 %3846 to i64
  %3848 = load i64, i64* %PC.i283
  %3849 = add i64 %3848, 6
  store i64 %3849, i64* %PC.i283
  %3850 = inttoptr i64 %3845 to i32*
  store i32 %3846, i32* %3850
  store %struct.Memory* %loadMem_480e2f, %struct.Memory** %MEMORY
  br label %block_.L_480e35

block_.L_480e35:                                  ; preds = %block_.L_480e2c, %block_480e1c
  %loadMem_480e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 1
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 15
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RBP.i282
  %3861 = sub i64 %3860, 208
  %3862 = load i64, i64* %PC.i280
  %3863 = add i64 %3862, 6
  store i64 %3863, i64* %PC.i280
  %3864 = inttoptr i64 %3861 to i32*
  %3865 = load i32, i32* %3864
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_480e35, %struct.Memory** %MEMORY
  %loadMem_480e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 1
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %EAX.i278 = bitcast %union.anon* %3872 to i32*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 15
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3875 to i64*
  %3876 = load i64, i64* %RBP.i279
  %3877 = sub i64 %3876, 4
  %3878 = load i32, i32* %EAX.i278
  %3879 = zext i32 %3878 to i64
  %3880 = load i64, i64* %PC.i277
  %3881 = add i64 %3880, 3
  store i64 %3881, i64* %PC.i277
  %3882 = inttoptr i64 %3877 to i32*
  store i32 %3878, i32* %3882
  store %struct.Memory* %loadMem_480e3b, %struct.Memory** %MEMORY
  %loadMem_480e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 1
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 15
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RBP.i276
  %3893 = sub i64 %3892, 4
  %3894 = load i64, i64* %PC.i274
  %3895 = add i64 %3894, 3
  store i64 %3895, i64* %PC.i274
  %3896 = inttoptr i64 %3893 to i32*
  %3897 = load i32, i32* %3896
  %3898 = zext i32 %3897 to i64
  store i64 %3898, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_480e3e, %struct.Memory** %MEMORY
  %loadMem_480e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 1
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %EAX.i272 = bitcast %union.anon* %3904 to i32*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 15
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %3907 to i64*
  %3908 = load i32, i32* %EAX.i272
  %3909 = zext i32 %3908 to i64
  %3910 = load i64, i64* %RBP.i273
  %3911 = sub i64 %3910, 196
  %3912 = load i64, i64* %PC.i271
  %3913 = add i64 %3912, 6
  store i64 %3913, i64* %PC.i271
  %3914 = inttoptr i64 %3911 to i32*
  %3915 = load i32, i32* %3914
  %3916 = sub i32 %3908, %3915
  %3917 = icmp ult i32 %3908, %3915
  %3918 = zext i1 %3917 to i8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3918, i8* %3919, align 1
  %3920 = and i32 %3916, 255
  %3921 = call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3924, i8* %3925, align 1
  %3926 = xor i32 %3915, %3908
  %3927 = xor i32 %3926, %3916
  %3928 = lshr i32 %3927, 4
  %3929 = trunc i32 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3930, i8* %3931, align 1
  %3932 = icmp eq i32 %3916, 0
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3933, i8* %3934, align 1
  %3935 = lshr i32 %3916, 31
  %3936 = trunc i32 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i32 %3908, 31
  %3939 = lshr i32 %3915, 31
  %3940 = xor i32 %3939, %3938
  %3941 = xor i32 %3935, %3938
  %3942 = add i32 %3941, %3940
  %3943 = icmp eq i32 %3942, 2
  %3944 = zext i1 %3943 to i8
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3944, i8* %3945, align 1
  store %struct.Memory* %loadMem_480e41, %struct.Memory** %MEMORY
  %loadMem_480e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %PC.i270
  %3950 = add i64 %3949, 20
  %3951 = load i64, i64* %PC.i270
  %3952 = add i64 %3951, 6
  %3953 = load i64, i64* %PC.i270
  %3954 = add i64 %3953, 6
  store i64 %3954, i64* %PC.i270
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3956 = load i8, i8* %3955, align 1
  %3957 = icmp ne i8 %3956, 0
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3959 = load i8, i8* %3958, align 1
  %3960 = icmp ne i8 %3959, 0
  %3961 = xor i1 %3957, %3960
  %3962 = xor i1 %3961, true
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %BRANCH_TAKEN, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3965 = select i1 %3961, i64 %3952, i64 %3950
  store i64 %3965, i64* %3964, align 8
  store %struct.Memory* %loadMem_480e47, %struct.Memory** %MEMORY
  %loadBr_480e47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480e47 = icmp eq i8 %loadBr_480e47, 1
  br i1 %cmpBr_480e47, label %block_.L_480e5b, label %block_480e4d

block_480e4d:                                     ; preds = %block_.L_480e35
  %loadMem_480e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 1
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 15
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RBP.i269
  %3976 = sub i64 %3975, 4
  %3977 = load i64, i64* %PC.i267
  %3978 = add i64 %3977, 3
  store i64 %3978, i64* %PC.i267
  %3979 = inttoptr i64 %3976 to i32*
  %3980 = load i32, i32* %3979
  %3981 = zext i32 %3980 to i64
  store i64 %3981, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_480e4d, %struct.Memory** %MEMORY
  %loadMem_480e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 1
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %3987 to i32*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 15
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %3990 to i64*
  %3991 = load i64, i64* %RBP.i266
  %3992 = sub i64 %3991, 212
  %3993 = load i32, i32* %EAX.i265
  %3994 = zext i32 %3993 to i64
  %3995 = load i64, i64* %PC.i264
  %3996 = add i64 %3995, 6
  store i64 %3996, i64* %PC.i264
  %3997 = inttoptr i64 %3992 to i32*
  store i32 %3993, i32* %3997
  store %struct.Memory* %loadMem_480e50, %struct.Memory** %MEMORY
  %loadMem_480e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4000 to i64*
  %4001 = load i64, i64* %PC.i263
  %4002 = add i64 %4001, 17
  %4003 = load i64, i64* %PC.i263
  %4004 = add i64 %4003, 5
  store i64 %4004, i64* %PC.i263
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4002, i64* %4005, align 8
  store %struct.Memory* %loadMem_480e56, %struct.Memory** %MEMORY
  br label %block_.L_480e67

block_.L_480e5b:                                  ; preds = %block_.L_480e35
  %loadMem_480e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 15
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %RBP.i262
  %4016 = sub i64 %4015, 196
  %4017 = load i64, i64* %PC.i260
  %4018 = add i64 %4017, 6
  store i64 %4018, i64* %PC.i260
  %4019 = inttoptr i64 %4016 to i32*
  %4020 = load i32, i32* %4019
  %4021 = zext i32 %4020 to i64
  store i64 %4021, i64* %RAX.i261, align 8
  store %struct.Memory* %loadMem_480e5b, %struct.Memory** %MEMORY
  %loadMem_480e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 1
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %4027 to i32*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 15
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %RBP.i259
  %4032 = sub i64 %4031, 212
  %4033 = load i32, i32* %EAX.i258
  %4034 = zext i32 %4033 to i64
  %4035 = load i64, i64* %PC.i257
  %4036 = add i64 %4035, 6
  store i64 %4036, i64* %PC.i257
  %4037 = inttoptr i64 %4032 to i32*
  store i32 %4033, i32* %4037
  store %struct.Memory* %loadMem_480e61, %struct.Memory** %MEMORY
  br label %block_.L_480e67

block_.L_480e67:                                  ; preds = %block_.L_480e5b, %block_480e4d
  %loadMem_480e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 1
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 15
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %RBP.i256
  %4048 = sub i64 %4047, 212
  %4049 = load i64, i64* %PC.i254
  %4050 = add i64 %4049, 6
  store i64 %4050, i64* %PC.i254
  %4051 = inttoptr i64 %4048 to i32*
  %4052 = load i32, i32* %4051
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_480e67, %struct.Memory** %MEMORY
  %loadMem_480e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 1
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %EAX.i252 = bitcast %union.anon* %4059 to i32*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i253
  %4064 = sub i64 %4063, 4
  %4065 = load i32, i32* %EAX.i252
  %4066 = zext i32 %4065 to i64
  %4067 = load i64, i64* %PC.i251
  %4068 = add i64 %4067, 3
  store i64 %4068, i64* %PC.i251
  %4069 = inttoptr i64 %4064 to i32*
  store i32 %4065, i32* %4069
  store %struct.Memory* %loadMem_480e6d, %struct.Memory** %MEMORY
  %loadMem_480e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 1
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 15
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RBP.i250
  %4080 = sub i64 %4079, 4
  %4081 = load i64, i64* %PC.i248
  %4082 = add i64 %4081, 3
  store i64 %4082, i64* %PC.i248
  %4083 = inttoptr i64 %4080 to i32*
  %4084 = load i32, i32* %4083
  %4085 = zext i32 %4084 to i64
  store i64 %4085, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_480e70, %struct.Memory** %MEMORY
  %loadMem_480e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 33
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 5
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %4091 to i64*
  %4092 = load i64, i64* %PC.i246
  %4093 = add i64 %4092, 7
  store i64 %4093, i64* %PC.i246
  %4094 = load i32, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  %4095 = zext i32 %4094 to i64
  store i64 %4095, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_480e73, %struct.Memory** %MEMORY
  %loadMem_480e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 33
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %4098 to i64*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 5
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4101 to i64*
  %4102 = load i64, i64* %RCX.i
  %4103 = load i64, i64* %PC.i245
  %4104 = add i64 %4103, 3
  store i64 %4104, i64* %PC.i245
  %4105 = trunc i64 %4102 to i32
  %4106 = add i32 1, %4105
  %4107 = zext i32 %4106 to i64
  store i64 %4107, i64* %RCX.i, align 8
  %4108 = icmp ult i32 %4106, %4105
  %4109 = icmp ult i32 %4106, 1
  %4110 = or i1 %4108, %4109
  %4111 = zext i1 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4111, i8* %4112, align 1
  %4113 = and i32 %4106, 255
  %4114 = call i32 @llvm.ctpop.i32(i32 %4113)
  %4115 = trunc i32 %4114 to i8
  %4116 = and i8 %4115, 1
  %4117 = xor i8 %4116, 1
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4117, i8* %4118, align 1
  %4119 = xor i64 1, %4102
  %4120 = trunc i64 %4119 to i32
  %4121 = xor i32 %4120, %4106
  %4122 = lshr i32 %4121, 4
  %4123 = trunc i32 %4122 to i8
  %4124 = and i8 %4123, 1
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4124, i8* %4125, align 1
  %4126 = icmp eq i32 %4106, 0
  %4127 = zext i1 %4126 to i8
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4127, i8* %4128, align 1
  %4129 = lshr i32 %4106, 31
  %4130 = trunc i32 %4129 to i8
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4130, i8* %4131, align 1
  %4132 = lshr i32 %4105, 31
  %4133 = xor i32 %4129, %4132
  %4134 = add i32 %4133, %4129
  %4135 = icmp eq i32 %4134, 2
  %4136 = zext i1 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4136, i8* %4137, align 1
  store %struct.Memory* %loadMem_480e7a, %struct.Memory** %MEMORY
  %loadMem_480e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 33
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 1
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %4143 to i32*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 5
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4146 to i32*
  %4147 = load i32, i32* %EAX.i244
  %4148 = zext i32 %4147 to i64
  %4149 = load i32, i32* %ECX.i
  %4150 = zext i32 %4149 to i64
  %4151 = load i64, i64* %PC.i243
  %4152 = add i64 %4151, 2
  store i64 %4152, i64* %PC.i243
  %4153 = sub i32 %4147, %4149
  %4154 = icmp ult i32 %4147, %4149
  %4155 = zext i1 %4154 to i8
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4155, i8* %4156, align 1
  %4157 = and i32 %4153, 255
  %4158 = call i32 @llvm.ctpop.i32(i32 %4157)
  %4159 = trunc i32 %4158 to i8
  %4160 = and i8 %4159, 1
  %4161 = xor i8 %4160, 1
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4161, i8* %4162, align 1
  %4163 = xor i64 %4150, %4148
  %4164 = trunc i64 %4163 to i32
  %4165 = xor i32 %4164, %4153
  %4166 = lshr i32 %4165, 4
  %4167 = trunc i32 %4166 to i8
  %4168 = and i8 %4167, 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4168, i8* %4169, align 1
  %4170 = icmp eq i32 %4153, 0
  %4171 = zext i1 %4170 to i8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4171, i8* %4172, align 1
  %4173 = lshr i32 %4153, 31
  %4174 = trunc i32 %4173 to i8
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4174, i8* %4175, align 1
  %4176 = lshr i32 %4147, 31
  %4177 = lshr i32 %4149, 31
  %4178 = xor i32 %4177, %4176
  %4179 = xor i32 %4173, %4176
  %4180 = add i32 %4179, %4178
  %4181 = icmp eq i32 %4180, 2
  %4182 = zext i1 %4181 to i8
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4182, i8* %4183, align 1
  store %struct.Memory* %loadMem_480e7d, %struct.Memory** %MEMORY
  %loadMem_480e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %PC.i242
  %4188 = add i64 %4187, 20
  %4189 = load i64, i64* %PC.i242
  %4190 = add i64 %4189, 6
  %4191 = load i64, i64* %PC.i242
  %4192 = add i64 %4191, 6
  store i64 %4192, i64* %PC.i242
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4194 = load i8, i8* %4193, align 1
  %4195 = icmp ne i8 %4194, 0
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4197 = load i8, i8* %4196, align 1
  %4198 = icmp ne i8 %4197, 0
  %4199 = xor i1 %4195, %4198
  %4200 = xor i1 %4199, true
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %BRANCH_TAKEN, align 1
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4203 = select i1 %4199, i64 %4190, i64 %4188
  store i64 %4203, i64* %4202, align 8
  store %struct.Memory* %loadMem_480e7f, %struct.Memory** %MEMORY
  %loadBr_480e7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480e7f = icmp eq i8 %loadBr_480e7f, 1
  br i1 %cmpBr_480e7f, label %block_.L_480e93, label %block_480e85

block_480e85:                                     ; preds = %block_.L_480e67
  %loadMem_480e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 1
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %4209 to i64*
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 15
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4212 to i64*
  %4213 = load i64, i64* %RBP.i241
  %4214 = sub i64 %4213, 4
  %4215 = load i64, i64* %PC.i239
  %4216 = add i64 %4215, 3
  store i64 %4216, i64* %PC.i239
  %4217 = inttoptr i64 %4214 to i32*
  %4218 = load i32, i32* %4217
  %4219 = zext i32 %4218 to i64
  store i64 %4219, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_480e85, %struct.Memory** %MEMORY
  %loadMem_480e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 1
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %4225 to i32*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 15
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %RBP.i238
  %4230 = sub i64 %4229, 216
  %4231 = load i32, i32* %EAX.i237
  %4232 = zext i32 %4231 to i64
  %4233 = load i64, i64* %PC.i236
  %4234 = add i64 %4233, 6
  store i64 %4234, i64* %PC.i236
  %4235 = inttoptr i64 %4230 to i32*
  store i32 %4231, i32* %4235
  store %struct.Memory* %loadMem_480e88, %struct.Memory** %MEMORY
  %loadMem_480e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4238 to i64*
  %4239 = load i64, i64* %PC.i235
  %4240 = add i64 %4239, 21
  %4241 = load i64, i64* %PC.i235
  %4242 = add i64 %4241, 5
  store i64 %4242, i64* %PC.i235
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4240, i64* %4243, align 8
  store %struct.Memory* %loadMem_480e8e, %struct.Memory** %MEMORY
  br label %block_.L_480ea3

block_.L_480e93:                                  ; preds = %block_.L_480e67
  %loadMem_480e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %PC.i233
  %4251 = add i64 %4250, 7
  store i64 %4251, i64* %PC.i233
  %4252 = load i32, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  %4253 = zext i32 %4252 to i64
  store i64 %4253, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_480e93, %struct.Memory** %MEMORY
  %loadMem_480e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 1
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RAX.i232
  %4261 = load i64, i64* %PC.i231
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i231
  %4263 = trunc i64 %4260 to i32
  %4264 = add i32 1, %4263
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RAX.i232, align 8
  %4266 = icmp ult i32 %4264, %4263
  %4267 = icmp ult i32 %4264, 1
  %4268 = or i1 %4266, %4267
  %4269 = zext i1 %4268 to i8
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4269, i8* %4270, align 1
  %4271 = and i32 %4264, 255
  %4272 = call i32 @llvm.ctpop.i32(i32 %4271)
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4275, i8* %4276, align 1
  %4277 = xor i64 1, %4260
  %4278 = trunc i64 %4277 to i32
  %4279 = xor i32 %4278, %4264
  %4280 = lshr i32 %4279, 4
  %4281 = trunc i32 %4280 to i8
  %4282 = and i8 %4281, 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4282, i8* %4283, align 1
  %4284 = icmp eq i32 %4264, 0
  %4285 = zext i1 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4285, i8* %4286, align 1
  %4287 = lshr i32 %4264, 31
  %4288 = trunc i32 %4287 to i8
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4288, i8* %4289, align 1
  %4290 = lshr i32 %4263, 31
  %4291 = xor i32 %4287, %4290
  %4292 = add i32 %4291, %4287
  %4293 = icmp eq i32 %4292, 2
  %4294 = zext i1 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4294, i8* %4295, align 1
  store %struct.Memory* %loadMem_480e9a, %struct.Memory** %MEMORY
  %loadMem_480e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 1
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %4301 to i32*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 15
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RBP.i230
  %4306 = sub i64 %4305, 216
  %4307 = load i32, i32* %EAX.i229
  %4308 = zext i32 %4307 to i64
  %4309 = load i64, i64* %PC.i228
  %4310 = add i64 %4309, 6
  store i64 %4310, i64* %PC.i228
  %4311 = inttoptr i64 %4306 to i32*
  store i32 %4307, i32* %4311
  store %struct.Memory* %loadMem_480e9d, %struct.Memory** %MEMORY
  br label %block_.L_480ea3

block_.L_480ea3:                                  ; preds = %block_.L_480e93, %block_480e85
  %loadMem_480ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 1
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 15
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RBP.i227
  %4322 = sub i64 %4321, 216
  %4323 = load i64, i64* %PC.i225
  %4324 = add i64 %4323, 6
  store i64 %4324, i64* %PC.i225
  %4325 = inttoptr i64 %4322 to i32*
  %4326 = load i32, i32* %4325
  %4327 = zext i32 %4326 to i64
  store i64 %4327, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_480ea3, %struct.Memory** %MEMORY
  %loadMem_480ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 1
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %EAX.i223 = bitcast %union.anon* %4333 to i32*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 15
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %4336 to i64*
  %4337 = load i64, i64* %RBP.i224
  %4338 = sub i64 %4337, 4
  %4339 = load i32, i32* %EAX.i223
  %4340 = zext i32 %4339 to i64
  %4341 = load i64, i64* %PC.i222
  %4342 = add i64 %4341, 3
  store i64 %4342, i64* %PC.i222
  %4343 = inttoptr i64 %4338 to i32*
  store i32 %4339, i32* %4343
  store %struct.Memory* %loadMem_480ea9, %struct.Memory** %MEMORY
  %loadMem_480eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 15
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %4349 to i64*
  %4350 = load i64, i64* %RBP.i221
  %4351 = sub i64 %4350, 4
  %4352 = load i64, i64* %PC.i220
  %4353 = add i64 %4352, 4
  store i64 %4353, i64* %PC.i220
  %4354 = inttoptr i64 %4351 to i32*
  %4355 = load i32, i32* %4354
  %4356 = sub i32 %4355, 20
  %4357 = icmp ult i32 %4355, 20
  %4358 = zext i1 %4357 to i8
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4358, i8* %4359, align 1
  %4360 = and i32 %4356, 255
  %4361 = call i32 @llvm.ctpop.i32(i32 %4360)
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  %4364 = xor i8 %4363, 1
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4364, i8* %4365, align 1
  %4366 = xor i32 %4355, 20
  %4367 = xor i32 %4366, %4356
  %4368 = lshr i32 %4367, 4
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4370, i8* %4371, align 1
  %4372 = icmp eq i32 %4356, 0
  %4373 = zext i1 %4372 to i8
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4373, i8* %4374, align 1
  %4375 = lshr i32 %4356, 31
  %4376 = trunc i32 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4376, i8* %4377, align 1
  %4378 = lshr i32 %4355, 31
  %4379 = xor i32 %4375, %4378
  %4380 = add i32 %4379, %4378
  %4381 = icmp eq i32 %4380, 2
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4382, i8* %4383, align 1
  store %struct.Memory* %loadMem_480eac, %struct.Memory** %MEMORY
  %loadMem_480eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4386 to i64*
  %4387 = load i64, i64* %PC.i219
  %4388 = add i64 %4387, 20
  %4389 = load i64, i64* %PC.i219
  %4390 = add i64 %4389, 6
  %4391 = load i64, i64* %PC.i219
  %4392 = add i64 %4391, 6
  store i64 %4392, i64* %PC.i219
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4394 = load i8, i8* %4393, align 1
  %4395 = icmp ne i8 %4394, 0
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4397 = load i8, i8* %4396, align 1
  %4398 = icmp ne i8 %4397, 0
  %4399 = xor i1 %4395, %4398
  %4400 = xor i1 %4399, true
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %BRANCH_TAKEN, align 1
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4403 = select i1 %4399, i64 %4390, i64 %4388
  store i64 %4403, i64* %4402, align 8
  store %struct.Memory* %loadMem_480eb0, %struct.Memory** %MEMORY
  %loadBr_480eb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480eb0 = icmp eq i8 %loadBr_480eb0, 1
  br i1 %cmpBr_480eb0, label %block_.L_480ec4, label %block_480eb6

block_480eb6:                                     ; preds = %block_.L_480ea3
  %loadMem_480eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 33
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 1
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %4409 to i64*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 15
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %4412 to i64*
  %4413 = load i64, i64* %RBP.i218
  %4414 = sub i64 %4413, 4
  %4415 = load i64, i64* %PC.i216
  %4416 = add i64 %4415, 3
  store i64 %4416, i64* %PC.i216
  %4417 = inttoptr i64 %4414 to i32*
  %4418 = load i32, i32* %4417
  %4419 = zext i32 %4418 to i64
  store i64 %4419, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_480eb6, %struct.Memory** %MEMORY
  %loadMem_480eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 33
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4422 to i64*
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 1
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %4425 to i32*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 15
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %4428 to i64*
  %4429 = load i64, i64* %RBP.i215
  %4430 = sub i64 %4429, 220
  %4431 = load i32, i32* %EAX.i214
  %4432 = zext i32 %4431 to i64
  %4433 = load i64, i64* %PC.i213
  %4434 = add i64 %4433, 6
  store i64 %4434, i64* %PC.i213
  %4435 = inttoptr i64 %4430 to i32*
  store i32 %4431, i32* %4435
  store %struct.Memory* %loadMem_480eb9, %struct.Memory** %MEMORY
  %loadMem_480ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %PC.i212
  %4440 = add i64 %4439, 21
  %4441 = load i64, i64* %PC.i212
  %4442 = add i64 %4441, 5
  store i64 %4442, i64* %PC.i212
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4440, i64* %4443, align 8
  store %struct.Memory* %loadMem_480ebf, %struct.Memory** %MEMORY
  br label %block_.L_480ed4

block_.L_480ec4:                                  ; preds = %block_.L_480ea3
  %loadMem_480ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 1
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %4449 to i64*
  %4450 = load i64, i64* %PC.i210
  %4451 = add i64 %4450, 5
  store i64 %4451, i64* %PC.i210
  store i64 20, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_480ec4, %struct.Memory** %MEMORY
  %loadMem_480ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 1
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %4457 to i32*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 15
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %4460 to i64*
  %4461 = load i64, i64* %RBP.i209
  %4462 = sub i64 %4461, 220
  %4463 = load i32, i32* %EAX.i208
  %4464 = zext i32 %4463 to i64
  %4465 = load i64, i64* %PC.i207
  %4466 = add i64 %4465, 6
  store i64 %4466, i64* %PC.i207
  %4467 = inttoptr i64 %4462 to i32*
  store i32 %4463, i32* %4467
  store %struct.Memory* %loadMem_480ec9, %struct.Memory** %MEMORY
  %loadMem_480ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 33
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %PC.i206
  %4472 = add i64 %4471, 5
  %4473 = load i64, i64* %PC.i206
  %4474 = add i64 %4473, 5
  store i64 %4474, i64* %PC.i206
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4472, i64* %4475, align 8
  store %struct.Memory* %loadMem_480ecf, %struct.Memory** %MEMORY
  br label %block_.L_480ed4

block_.L_480ed4:                                  ; preds = %block_.L_480ec4, %block_480eb6
  %loadMem_480ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 33
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 1
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %4481 to i64*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 15
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %4484 to i64*
  %4485 = load i64, i64* %RBP.i205
  %4486 = sub i64 %4485, 220
  %4487 = load i64, i64* %PC.i203
  %4488 = add i64 %4487, 6
  store i64 %4488, i64* %PC.i203
  %4489 = inttoptr i64 %4486 to i32*
  %4490 = load i32, i32* %4489
  %4491 = zext i32 %4490 to i64
  store i64 %4491, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_480ed4, %struct.Memory** %MEMORY
  %loadMem_480eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 33
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %4494 to i64*
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 1
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %4497 to i32*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 15
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %4500 to i64*
  %4501 = load i64, i64* %RBP.i202
  %4502 = sub i64 %4501, 4
  %4503 = load i32, i32* %EAX.i201
  %4504 = zext i32 %4503 to i64
  %4505 = load i64, i64* %PC.i200
  %4506 = add i64 %4505, 3
  store i64 %4506, i64* %PC.i200
  %4507 = inttoptr i64 %4502 to i32*
  store i32 %4503, i32* %4507
  store %struct.Memory* %loadMem_480eda, %struct.Memory** %MEMORY
  %loadMem_480edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 33
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 1
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 15
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %4516 to i64*
  %4517 = load i64, i64* %RBP.i199
  %4518 = sub i64 %4517, 4
  %4519 = load i64, i64* %PC.i197
  %4520 = add i64 %4519, 3
  store i64 %4520, i64* %PC.i197
  %4521 = inttoptr i64 %4518 to i32*
  %4522 = load i32, i32* %4521
  %4523 = zext i32 %4522 to i64
  store i64 %4523, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_480edd, %struct.Memory** %MEMORY
  %loadMem_480ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 1
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %4529 to i32*
  %4530 = load i32, i32* %EAX.i196
  %4531 = zext i32 %4530 to i64
  %4532 = load i64, i64* %PC.i195
  %4533 = add i64 %4532, 7
  store i64 %4533, i64* %PC.i195
  store i32 %4530, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  store %struct.Memory* %loadMem_480ee0, %struct.Memory** %MEMORY
  %loadMem_480ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 33
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 15
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %4539 to i64*
  %4540 = load i64, i64* %RBP.i194
  %4541 = sub i64 %4540, 8
  %4542 = load i64, i64* %PC.i193
  %4543 = add i64 %4542, 7
  store i64 %4543, i64* %PC.i193
  %4544 = inttoptr i64 %4541 to i32*
  store i32 0, i32* %4544
  store %struct.Memory* %loadMem_480ee7, %struct.Memory** %MEMORY
  br label %block_.L_480eee

block_.L_480eee:                                  ; preds = %block_480ef8, %block_.L_480ed4
  %loadMem_480eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 33
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 15
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %4550 to i64*
  %4551 = load i64, i64* %RBP.i192
  %4552 = sub i64 %4551, 8
  %4553 = load i64, i64* %PC.i191
  %4554 = add i64 %4553, 4
  store i64 %4554, i64* %PC.i191
  %4555 = inttoptr i64 %4552 to i32*
  %4556 = load i32, i32* %4555
  %4557 = sub i32 %4556, 20
  %4558 = icmp ult i32 %4556, 20
  %4559 = zext i1 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4559, i8* %4560, align 1
  %4561 = and i32 %4557, 255
  %4562 = call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4565, i8* %4566, align 1
  %4567 = xor i32 %4556, 20
  %4568 = xor i32 %4567, %4557
  %4569 = lshr i32 %4568, 4
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4571, i8* %4572, align 1
  %4573 = icmp eq i32 %4557, 0
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4574, i8* %4575, align 1
  %4576 = lshr i32 %4557, 31
  %4577 = trunc i32 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4577, i8* %4578, align 1
  %4579 = lshr i32 %4556, 31
  %4580 = xor i32 %4576, %4579
  %4581 = add i32 %4580, %4579
  %4582 = icmp eq i32 %4581, 2
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4583, i8* %4584, align 1
  store %struct.Memory* %loadMem_480eee, %struct.Memory** %MEMORY
  %loadMem_480ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4587 to i64*
  %4588 = load i64, i64* %PC.i190
  %4589 = add i64 %4588, 35
  %4590 = load i64, i64* %PC.i190
  %4591 = add i64 %4590, 6
  %4592 = load i64, i64* %PC.i190
  %4593 = add i64 %4592, 6
  store i64 %4593, i64* %PC.i190
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4595 = load i8, i8* %4594, align 1
  %4596 = icmp ne i8 %4595, 0
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4598 = load i8, i8* %4597, align 1
  %4599 = icmp ne i8 %4598, 0
  %4600 = xor i1 %4596, %4599
  %4601 = xor i1 %4600, true
  %4602 = zext i1 %4601 to i8
  store i8 %4602, i8* %BRANCH_TAKEN, align 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4604 = select i1 %4600, i64 %4591, i64 %4589
  store i64 %4604, i64* %4603, align 8
  store %struct.Memory* %loadMem_480ef2, %struct.Memory** %MEMORY
  %loadBr_480ef2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480ef2 = icmp eq i8 %loadBr_480ef2, 1
  br i1 %cmpBr_480ef2, label %block_.L_480f15, label %block_480ef8

block_480ef8:                                     ; preds = %block_.L_480eee
  %loadMem_480ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 1
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 15
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RBP.i189
  %4615 = sub i64 %4614, 8
  %4616 = load i64, i64* %PC.i187
  %4617 = add i64 %4616, 4
  store i64 %4617, i64* %PC.i187
  %4618 = inttoptr i64 %4615 to i32*
  %4619 = load i32, i32* %4618
  %4620 = sext i32 %4619 to i64
  store i64 %4620, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_480ef8, %struct.Memory** %MEMORY
  %loadMem_480efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 1
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %4626 to i64*
  %4627 = load i64, i64* %RAX.i186
  %4628 = mul i64 %4627, 4
  %4629 = add i64 %4628, 7487024
  %4630 = load i64, i64* %PC.i185
  %4631 = add i64 %4630, 11
  store i64 %4631, i64* %PC.i185
  %4632 = inttoptr i64 %4629 to i32*
  store i32 0, i32* %4632
  store %struct.Memory* %loadMem_480efc, %struct.Memory** %MEMORY
  %loadMem_480f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 33
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 1
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 15
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %4641 to i64*
  %4642 = load i64, i64* %RBP.i184
  %4643 = sub i64 %4642, 8
  %4644 = load i64, i64* %PC.i182
  %4645 = add i64 %4644, 3
  store i64 %4645, i64* %PC.i182
  %4646 = inttoptr i64 %4643 to i32*
  %4647 = load i32, i32* %4646
  %4648 = zext i32 %4647 to i64
  store i64 %4648, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_480f07, %struct.Memory** %MEMORY
  %loadMem_480f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4651 to i64*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 1
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %4654 to i64*
  %4655 = load i64, i64* %RAX.i181
  %4656 = load i64, i64* %PC.i180
  %4657 = add i64 %4656, 3
  store i64 %4657, i64* %PC.i180
  %4658 = trunc i64 %4655 to i32
  %4659 = add i32 1, %4658
  %4660 = zext i32 %4659 to i64
  store i64 %4660, i64* %RAX.i181, align 8
  %4661 = icmp ult i32 %4659, %4658
  %4662 = icmp ult i32 %4659, 1
  %4663 = or i1 %4661, %4662
  %4664 = zext i1 %4663 to i8
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4664, i8* %4665, align 1
  %4666 = and i32 %4659, 255
  %4667 = call i32 @llvm.ctpop.i32(i32 %4666)
  %4668 = trunc i32 %4667 to i8
  %4669 = and i8 %4668, 1
  %4670 = xor i8 %4669, 1
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4670, i8* %4671, align 1
  %4672 = xor i64 1, %4655
  %4673 = trunc i64 %4672 to i32
  %4674 = xor i32 %4673, %4659
  %4675 = lshr i32 %4674, 4
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4677, i8* %4678, align 1
  %4679 = icmp eq i32 %4659, 0
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4680, i8* %4681, align 1
  %4682 = lshr i32 %4659, 31
  %4683 = trunc i32 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4683, i8* %4684, align 1
  %4685 = lshr i32 %4658, 31
  %4686 = xor i32 %4682, %4685
  %4687 = add i32 %4686, %4682
  %4688 = icmp eq i32 %4687, 2
  %4689 = zext i1 %4688 to i8
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4689, i8* %4690, align 1
  store %struct.Memory* %loadMem_480f0a, %struct.Memory** %MEMORY
  %loadMem_480f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 1
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %EAX.i178 = bitcast %union.anon* %4696 to i32*
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 15
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %4699 to i64*
  %4700 = load i64, i64* %RBP.i179
  %4701 = sub i64 %4700, 8
  %4702 = load i32, i32* %EAX.i178
  %4703 = zext i32 %4702 to i64
  %4704 = load i64, i64* %PC.i177
  %4705 = add i64 %4704, 3
  store i64 %4705, i64* %PC.i177
  %4706 = inttoptr i64 %4701 to i32*
  store i32 %4702, i32* %4706
  store %struct.Memory* %loadMem_480f0d, %struct.Memory** %MEMORY
  %loadMem_480f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %PC.i176
  %4711 = add i64 %4710, -34
  %4712 = load i64, i64* %PC.i176
  %4713 = add i64 %4712, 5
  store i64 %4713, i64* %PC.i176
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4711, i64* %4714, align 8
  store %struct.Memory* %loadMem_480f10, %struct.Memory** %MEMORY
  br label %block_.L_480eee

block_.L_480f15:                                  ; preds = %block_.L_480eee
  %loadMem_480f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 11
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 15
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RBP.i175
  %4725 = sub i64 %4724, 4
  %4726 = load i64, i64* %PC.i173
  %4727 = add i64 %4726, 3
  store i64 %4727, i64* %PC.i173
  %4728 = inttoptr i64 %4725 to i32*
  %4729 = load i32, i32* %4728
  %4730 = zext i32 %4729 to i64
  store i64 %4730, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_480f15, %struct.Memory** %MEMORY
  %loadMem1_480f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %PC.i172
  %4735 = add i64 %4734, 584
  %4736 = load i64, i64* %PC.i172
  %4737 = add i64 %4736, 5
  %4738 = load i64, i64* %PC.i172
  %4739 = add i64 %4738, 5
  store i64 %4739, i64* %PC.i172
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4741 = load i64, i64* %4740, align 8
  %4742 = add i64 %4741, -8
  %4743 = inttoptr i64 %4742 to i64*
  store i64 %4737, i64* %4743
  store i64 %4742, i64* %4740, align 8
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4735, i64* %4744, align 8
  store %struct.Memory* %loadMem1_480f18, %struct.Memory** %MEMORY
  %loadMem2_480f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480f18 = load i64, i64* %3
  %call2_480f18 = call %struct.Memory* @sub_481160.RCModelEstimator(%struct.State* %0, i64 %loadPC_480f18, %struct.Memory* %loadMem2_480f18)
  store %struct.Memory* %call2_480f18, %struct.Memory** %MEMORY
  %loadMem_480f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 33
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 11
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %PC.i170
  %4752 = add i64 %4751, 7
  store i64 %4752, i64* %PC.i170
  %4753 = load i32, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  %4754 = zext i32 %4753 to i64
  store i64 %4754, i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_480f1d, %struct.Memory** %MEMORY
  %loadMem_480f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 11
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4760 to i32*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 15
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4763 to i64*
  %4764 = load i64, i64* %RBP.i169
  %4765 = sub i64 %4764, 4
  %4766 = load i32, i32* %EDI.i
  %4767 = zext i32 %4766 to i64
  %4768 = load i64, i64* %PC.i168
  %4769 = add i64 %4768, 3
  store i64 %4769, i64* %PC.i168
  %4770 = inttoptr i64 %4765 to i32*
  store i32 %4766, i32* %4770
  store %struct.Memory* %loadMem_480f24, %struct.Memory** %MEMORY
  %loadMem_480f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 15
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %4776 to i64*
  %4777 = load i64, i64* %RBP.i167
  %4778 = sub i64 %4777, 8
  %4779 = load i64, i64* %PC.i166
  %4780 = add i64 %4779, 7
  store i64 %4780, i64* %PC.i166
  %4781 = inttoptr i64 %4778 to i32*
  store i32 0, i32* %4781
  store %struct.Memory* %loadMem_480f27, %struct.Memory** %MEMORY
  br label %block_.L_480f2e

block_.L_480f2e:                                  ; preds = %block_480f3a, %block_.L_480f15
  %loadMem_480f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 33
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 1
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 15
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RBP.i165
  %4792 = sub i64 %4791, 8
  %4793 = load i64, i64* %PC.i163
  %4794 = add i64 %4793, 3
  store i64 %4794, i64* %PC.i163
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = zext i32 %4796 to i64
  store i64 %4797, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_480f2e, %struct.Memory** %MEMORY
  %loadMem_480f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 33
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4800 to i64*
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 1
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %4803 to i32*
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 15
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %4806 to i64*
  %4807 = load i32, i32* %EAX.i161
  %4808 = zext i32 %4807 to i64
  %4809 = load i64, i64* %RBP.i162
  %4810 = sub i64 %4809, 4
  %4811 = load i64, i64* %PC.i160
  %4812 = add i64 %4811, 3
  store i64 %4812, i64* %PC.i160
  %4813 = inttoptr i64 %4810 to i32*
  %4814 = load i32, i32* %4813
  %4815 = sub i32 %4807, %4814
  %4816 = icmp ult i32 %4807, %4814
  %4817 = zext i1 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4817, i8* %4818, align 1
  %4819 = and i32 %4815, 255
  %4820 = call i32 @llvm.ctpop.i32(i32 %4819)
  %4821 = trunc i32 %4820 to i8
  %4822 = and i8 %4821, 1
  %4823 = xor i8 %4822, 1
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4823, i8* %4824, align 1
  %4825 = xor i32 %4814, %4807
  %4826 = xor i32 %4825, %4815
  %4827 = lshr i32 %4826, 4
  %4828 = trunc i32 %4827 to i8
  %4829 = and i8 %4828, 1
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4829, i8* %4830, align 1
  %4831 = icmp eq i32 %4815, 0
  %4832 = zext i1 %4831 to i8
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4832, i8* %4833, align 1
  %4834 = lshr i32 %4815, 31
  %4835 = trunc i32 %4834 to i8
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4835, i8* %4836, align 1
  %4837 = lshr i32 %4807, 31
  %4838 = lshr i32 %4814, 31
  %4839 = xor i32 %4838, %4837
  %4840 = xor i32 %4834, %4837
  %4841 = add i32 %4840, %4839
  %4842 = icmp eq i32 %4841, 2
  %4843 = zext i1 %4842 to i8
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4843, i8* %4844, align 1
  store %struct.Memory* %loadMem_480f31, %struct.Memory** %MEMORY
  %loadMem_480f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %PC.i159
  %4849 = add i64 %4848, 153
  %4850 = load i64, i64* %PC.i159
  %4851 = add i64 %4850, 6
  %4852 = load i64, i64* %PC.i159
  %4853 = add i64 %4852, 6
  store i64 %4853, i64* %PC.i159
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4855 = load i8, i8* %4854, align 1
  %4856 = icmp ne i8 %4855, 0
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4858 = load i8, i8* %4857, align 1
  %4859 = icmp ne i8 %4858, 0
  %4860 = xor i1 %4856, %4859
  %4861 = xor i1 %4860, true
  %4862 = zext i1 %4861 to i8
  store i8 %4862, i8* %BRANCH_TAKEN, align 1
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4864 = select i1 %4860, i64 %4851, i64 %4849
  store i64 %4864, i64* %4863, align 8
  store %struct.Memory* %loadMem_480f34, %struct.Memory** %MEMORY
  %loadBr_480f34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480f34 = icmp eq i8 %loadBr_480f34, 1
  br i1 %cmpBr_480f34, label %block_.L_480fcd, label %block_480f3a

block_480f3a:                                     ; preds = %block_.L_480f2e
  %loadMem_480f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4868, i64 0, i64 0
  %YMM0.i158 = bitcast %union.VectorReg* %4869 to %"class.std::bitset"*
  %4870 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %4871 = load i64, i64* %PC.i157
  %4872 = add i64 %4871, 9
  store i64 %4872, i64* %PC.i157
  %4873 = load double, double* bitcast (%G_0x723640_type* @G_0x723640 to double*)
  %4874 = bitcast i8* %4870 to double*
  store double %4873, double* %4874, align 1
  %4875 = getelementptr inbounds i8, i8* %4870, i64 8
  %4876 = bitcast i8* %4875 to double*
  store double 0.000000e+00, double* %4876, align 1
  store %struct.Memory* %loadMem_480f3a, %struct.Memory** %MEMORY
  %loadMem_480f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 1
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 15
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %RBP.i156
  %4887 = sub i64 %4886, 8
  %4888 = load i64, i64* %PC.i154
  %4889 = add i64 %4888, 4
  store i64 %4889, i64* %PC.i154
  %4890 = inttoptr i64 %4887 to i32*
  %4891 = load i32, i32* %4890
  %4892 = sext i32 %4891 to i64
  store i64 %4892, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_480f43, %struct.Memory** %MEMORY
  %loadMem_480f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 1
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4899, i64 0, i64 0
  %YMM0.i153 = bitcast %union.VectorReg* %4900 to %"class.std::bitset"*
  %4901 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %4902 = bitcast %"class.std::bitset"* %YMM0.i153 to i8*
  %4903 = load i64, i64* %RAX.i152
  %4904 = mul i64 %4903, 8
  %4905 = add i64 %4904, 7161152
  %4906 = load i64, i64* %PC.i151
  %4907 = add i64 %4906, 9
  store i64 %4907, i64* %PC.i151
  %4908 = bitcast i8* %4902 to double*
  %4909 = load double, double* %4908, align 1
  %4910 = getelementptr inbounds i8, i8* %4902, i64 8
  %4911 = bitcast i8* %4910 to i64*
  %4912 = load i64, i64* %4911, align 1
  %4913 = inttoptr i64 %4905 to double*
  %4914 = load double, double* %4913
  %4915 = fdiv double %4909, %4914
  %4916 = bitcast i8* %4901 to double*
  store double %4915, double* %4916, align 1
  %4917 = getelementptr inbounds i8, i8* %4901, i64 8
  %4918 = bitcast i8* %4917 to i64*
  store i64 %4912, i64* %4918, align 1
  store %struct.Memory* %loadMem_480f47, %struct.Memory** %MEMORY
  %loadMem_480f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4922, i64 0, i64 1
  %YMM1.i150 = bitcast %union.VectorReg* %4923 to %"class.std::bitset"*
  %4924 = bitcast %"class.std::bitset"* %YMM1.i150 to i8*
  %4925 = load i64, i64* %PC.i149
  %4926 = add i64 %4925, 9
  store i64 %4926, i64* %PC.i149
  %4927 = load double, double* bitcast (%G_0x6d33e0_type* @G_0x6d33e0 to double*)
  %4928 = bitcast i8* %4924 to double*
  store double %4927, double* %4928, align 1
  %4929 = getelementptr inbounds i8, i8* %4924, i64 8
  %4930 = bitcast i8* %4929 to double*
  store double 0.000000e+00, double* %4930, align 1
  store %struct.Memory* %loadMem_480f50, %struct.Memory** %MEMORY
  %loadMem_480f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4933 to i64*
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 1
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 15
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %4939 to i64*
  %4940 = load i64, i64* %RBP.i148
  %4941 = sub i64 %4940, 8
  %4942 = load i64, i64* %PC.i146
  %4943 = add i64 %4942, 4
  store i64 %4943, i64* %PC.i146
  %4944 = inttoptr i64 %4941 to i32*
  %4945 = load i32, i32* %4944
  %4946 = sext i32 %4945 to i64
  store i64 %4946, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_480f59, %struct.Memory** %MEMORY
  %loadMem_480f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 33
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 1
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %4952 to i64*
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4953, i64 0, i64 2
  %YMM2.i145 = bitcast %union.VectorReg* %4954 to %"class.std::bitset"*
  %4955 = bitcast %"class.std::bitset"* %YMM2.i145 to i8*
  %4956 = load i64, i64* %RAX.i144
  %4957 = mul i64 %4956, 8
  %4958 = add i64 %4957, 7161152
  %4959 = load i64, i64* %PC.i143
  %4960 = add i64 %4959, 9
  store i64 %4960, i64* %PC.i143
  %4961 = inttoptr i64 %4958 to double*
  %4962 = load double, double* %4961
  %4963 = bitcast i8* %4955 to double*
  store double %4962, double* %4963, align 1
  %4964 = getelementptr inbounds i8, i8* %4955, i64 8
  %4965 = bitcast i8* %4964 to double*
  store double 0.000000e+00, double* %4965, align 1
  store %struct.Memory* %loadMem_480f5d, %struct.Memory** %MEMORY
  %loadMem_480f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 1
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 15
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RBP.i142
  %4976 = sub i64 %4975, 8
  %4977 = load i64, i64* %PC.i140
  %4978 = add i64 %4977, 4
  store i64 %4978, i64* %PC.i140
  %4979 = inttoptr i64 %4976 to i32*
  %4980 = load i32, i32* %4979
  %4981 = sext i32 %4980 to i64
  store i64 %4981, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_480f66, %struct.Memory** %MEMORY
  %loadMem_480f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 33
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 1
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %4987 to i64*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4989 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4988, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4989 to %"class.std::bitset"*
  %4990 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4991 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4992 = load i64, i64* %RAX.i139
  %4993 = mul i64 %4992, 8
  %4994 = add i64 %4993, 7161152
  %4995 = load i64, i64* %PC.i138
  %4996 = add i64 %4995, 9
  store i64 %4996, i64* %PC.i138
  %4997 = bitcast i8* %4991 to double*
  %4998 = load double, double* %4997, align 1
  %4999 = getelementptr inbounds i8, i8* %4991, i64 8
  %5000 = bitcast i8* %4999 to i64*
  %5001 = load i64, i64* %5000, align 1
  %5002 = inttoptr i64 %4994 to double*
  %5003 = load double, double* %5002
  %5004 = fmul double %4998, %5003
  %5005 = bitcast i8* %4990 to double*
  store double %5004, double* %5005, align 1
  %5006 = getelementptr inbounds i8, i8* %4990, i64 8
  %5007 = bitcast i8* %5006 to i64*
  store i64 %5001, i64* %5007, align 1
  store %struct.Memory* %loadMem_480f6a, %struct.Memory** %MEMORY
  %loadMem_480f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5011, i64 0, i64 1
  %YMM1.i137 = bitcast %union.VectorReg* %5012 to %"class.std::bitset"*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5013, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %5014 to %union.vec128_t*
  %5015 = bitcast %"class.std::bitset"* %YMM1.i137 to i8*
  %5016 = bitcast %"class.std::bitset"* %YMM1.i137 to i8*
  %5017 = bitcast %union.vec128_t* %XMM2.i to i8*
  %5018 = load i64, i64* %PC.i136
  %5019 = add i64 %5018, 4
  store i64 %5019, i64* %PC.i136
  %5020 = bitcast i8* %5016 to double*
  %5021 = load double, double* %5020, align 1
  %5022 = getelementptr inbounds i8, i8* %5016, i64 8
  %5023 = bitcast i8* %5022 to i64*
  %5024 = load i64, i64* %5023, align 1
  %5025 = bitcast i8* %5017 to double*
  %5026 = load double, double* %5025, align 1
  %5027 = fdiv double %5021, %5026
  %5028 = bitcast i8* %5015 to double*
  store double %5027, double* %5028, align 1
  %5029 = getelementptr inbounds i8, i8* %5015, i64 8
  %5030 = bitcast i8* %5029 to i64*
  store i64 %5024, i64* %5030, align 1
  store %struct.Memory* %loadMem_480f73, %struct.Memory** %MEMORY
  %loadMem_480f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5035 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5034, i64 0, i64 0
  %YMM0.i134 = bitcast %union.VectorReg* %5035 to %"class.std::bitset"*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5037 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5036, i64 0, i64 1
  %XMM1.i135 = bitcast %union.VectorReg* %5037 to %union.vec128_t*
  %5038 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %5039 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %5040 = bitcast %union.vec128_t* %XMM1.i135 to i8*
  %5041 = load i64, i64* %PC.i133
  %5042 = add i64 %5041, 4
  store i64 %5042, i64* %PC.i133
  %5043 = bitcast i8* %5039 to double*
  %5044 = load double, double* %5043, align 1
  %5045 = getelementptr inbounds i8, i8* %5039, i64 8
  %5046 = bitcast i8* %5045 to i64*
  %5047 = load i64, i64* %5046, align 1
  %5048 = bitcast i8* %5040 to double*
  %5049 = load double, double* %5048, align 1
  %5050 = fadd double %5044, %5049
  %5051 = bitcast i8* %5038 to double*
  store double %5050, double* %5051, align 1
  %5052 = getelementptr inbounds i8, i8* %5038, i64 8
  %5053 = bitcast i8* %5052 to i64*
  store i64 %5047, i64* %5053, align 1
  store %struct.Memory* %loadMem_480f77, %struct.Memory** %MEMORY
  %loadMem_480f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 1
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 15
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %5062 to i64*
  %5063 = load i64, i64* %RBP.i132
  %5064 = sub i64 %5063, 8
  %5065 = load i64, i64* %PC.i130
  %5066 = add i64 %5065, 4
  store i64 %5066, i64* %PC.i130
  %5067 = inttoptr i64 %5064 to i32*
  %5068 = load i32, i32* %5067
  %5069 = sext i32 %5068 to i64
  store i64 %5069, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_480f7b, %struct.Memory** %MEMORY
  %loadMem_480f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 1
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5076, i64 0, i64 0
  %YMM0.i129 = bitcast %union.VectorReg* %5077 to %"class.std::bitset"*
  %5078 = bitcast %"class.std::bitset"* %YMM0.i129 to i8*
  %5079 = bitcast %"class.std::bitset"* %YMM0.i129 to i8*
  %5080 = load i64, i64* %RAX.i128
  %5081 = mul i64 %5080, 8
  %5082 = add i64 %5081, 7492208
  %5083 = load i64, i64* %PC.i127
  %5084 = add i64 %5083, 9
  store i64 %5084, i64* %PC.i127
  %5085 = bitcast i8* %5079 to double*
  %5086 = load double, double* %5085, align 1
  %5087 = getelementptr inbounds i8, i8* %5079, i64 8
  %5088 = bitcast i8* %5087 to i64*
  %5089 = load i64, i64* %5088, align 1
  %5090 = inttoptr i64 %5082 to double*
  %5091 = load double, double* %5090
  %5092 = fsub double %5086, %5091
  %5093 = bitcast i8* %5078 to double*
  store double %5092, double* %5093, align 1
  %5094 = getelementptr inbounds i8, i8* %5078, i64 8
  %5095 = bitcast i8* %5094 to i64*
  store i64 %5089, i64* %5095, align 1
  store %struct.Memory* %loadMem_480f7f, %struct.Memory** %MEMORY
  %loadMem_480f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 33
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 1
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 15
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RBP.i126
  %5106 = sub i64 %5105, 8
  %5107 = load i64, i64* %PC.i124
  %5108 = add i64 %5107, 4
  store i64 %5108, i64* %PC.i124
  %5109 = inttoptr i64 %5106 to i32*
  %5110 = load i32, i32* %5109
  %5111 = sext i32 %5110 to i64
  store i64 %5111, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_480f88, %struct.Memory** %MEMORY
  %loadMem_480f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 1
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 15
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5121, i64 0, i64 0
  %XMM0.i123 = bitcast %union.VectorReg* %5122 to %union.vec128_t*
  %5123 = load i64, i64* %RBP.i122
  %5124 = load i64, i64* %RAX.i121
  %5125 = mul i64 %5124, 8
  %5126 = add i64 %5123, -176
  %5127 = add i64 %5126, %5125
  %5128 = bitcast %union.vec128_t* %XMM0.i123 to i8*
  %5129 = load i64, i64* %PC.i120
  %5130 = add i64 %5129, 9
  store i64 %5130, i64* %PC.i120
  %5131 = bitcast i8* %5128 to double*
  %5132 = load double, double* %5131, align 1
  %5133 = inttoptr i64 %5127 to double*
  store double %5132, double* %5133
  store %struct.Memory* %loadMem_480f8c, %struct.Memory** %MEMORY
  %loadMem_480f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 1
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 15
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %5142 to i64*
  %5143 = load i64, i64* %RBP.i119
  %5144 = sub i64 %5143, 8
  %5145 = load i64, i64* %PC.i117
  %5146 = add i64 %5145, 4
  store i64 %5146, i64* %PC.i117
  %5147 = inttoptr i64 %5144 to i32*
  %5148 = load i32, i32* %5147
  %5149 = sext i32 %5148 to i64
  store i64 %5149, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_480f95, %struct.Memory** %MEMORY
  %loadMem_480f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 1
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 15
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5159, i64 0, i64 0
  %YMM0.i116 = bitcast %union.VectorReg* %5160 to %"class.std::bitset"*
  %5161 = bitcast %"class.std::bitset"* %YMM0.i116 to i8*
  %5162 = load i64, i64* %RBP.i115
  %5163 = load i64, i64* %RAX.i114
  %5164 = mul i64 %5163, 8
  %5165 = add i64 %5162, -176
  %5166 = add i64 %5165, %5164
  %5167 = load i64, i64* %PC.i113
  %5168 = add i64 %5167, 9
  store i64 %5168, i64* %PC.i113
  %5169 = inttoptr i64 %5166 to double*
  %5170 = load double, double* %5169
  %5171 = bitcast i8* %5161 to double*
  store double %5170, double* %5171, align 1
  %5172 = getelementptr inbounds i8, i8* %5161, i64 8
  %5173 = bitcast i8* %5172 to double*
  store double 0.000000e+00, double* %5173, align 1
  store %struct.Memory* %loadMem_480f99, %struct.Memory** %MEMORY
  %loadMem_480fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5176 to i64*
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 1
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 15
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %RBP.i112
  %5184 = sub i64 %5183, 8
  %5185 = load i64, i64* %PC.i110
  %5186 = add i64 %5185, 4
  store i64 %5186, i64* %PC.i110
  %5187 = inttoptr i64 %5184 to i32*
  %5188 = load i32, i32* %5187
  %5189 = sext i32 %5188 to i64
  store i64 %5189, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_480fa2, %struct.Memory** %MEMORY
  %loadMem_480fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 33
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5192 to i64*
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 1
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 15
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5199, i64 0, i64 0
  %YMM0.i109 = bitcast %union.VectorReg* %5200 to %"class.std::bitset"*
  %5201 = bitcast %"class.std::bitset"* %YMM0.i109 to i8*
  %5202 = bitcast %"class.std::bitset"* %YMM0.i109 to i8*
  %5203 = load i64, i64* %RBP.i108
  %5204 = load i64, i64* %RAX.i107
  %5205 = mul i64 %5204, 8
  %5206 = add i64 %5203, -176
  %5207 = add i64 %5206, %5205
  %5208 = load i64, i64* %PC.i106
  %5209 = add i64 %5208, 9
  store i64 %5209, i64* %PC.i106
  %5210 = bitcast i8* %5202 to double*
  %5211 = load double, double* %5210, align 1
  %5212 = getelementptr inbounds i8, i8* %5202, i64 8
  %5213 = bitcast i8* %5212 to i64*
  %5214 = load i64, i64* %5213, align 1
  %5215 = inttoptr i64 %5207 to double*
  %5216 = load double, double* %5215
  %5217 = fmul double %5211, %5216
  %5218 = bitcast i8* %5201 to double*
  store double %5217, double* %5218, align 1
  %5219 = getelementptr inbounds i8, i8* %5201, i64 8
  %5220 = bitcast i8* %5219 to i64*
  store i64 %5214, i64* %5220, align 1
  store %struct.Memory* %loadMem_480fa6, %struct.Memory** %MEMORY
  %loadMem_480faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 33
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5223 to i64*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 15
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5227, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %5228 to %"class.std::bitset"*
  %5229 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %5230 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %5231 = load i64, i64* %RBP.i104
  %5232 = sub i64 %5231, 184
  %5233 = load i64, i64* %PC.i103
  %5234 = add i64 %5233, 8
  store i64 %5234, i64* %PC.i103
  %5235 = bitcast i8* %5230 to double*
  %5236 = load double, double* %5235, align 1
  %5237 = getelementptr inbounds i8, i8* %5230, i64 8
  %5238 = bitcast i8* %5237 to i64*
  %5239 = load i64, i64* %5238, align 1
  %5240 = inttoptr i64 %5232 to double*
  %5241 = load double, double* %5240
  %5242 = fadd double %5236, %5241
  %5243 = bitcast i8* %5229 to double*
  store double %5242, double* %5243, align 1
  %5244 = getelementptr inbounds i8, i8* %5229, i64 8
  %5245 = bitcast i8* %5244 to i64*
  store i64 %5239, i64* %5245, align 1
  store %struct.Memory* %loadMem_480faf, %struct.Memory** %MEMORY
  %loadMem_480fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 33
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5248 to i64*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 15
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %5251 to i64*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5252, i64 0, i64 0
  %XMM0.i102 = bitcast %union.VectorReg* %5253 to %union.vec128_t*
  %5254 = load i64, i64* %RBP.i101
  %5255 = sub i64 %5254, 184
  %5256 = bitcast %union.vec128_t* %XMM0.i102 to i8*
  %5257 = load i64, i64* %PC.i100
  %5258 = add i64 %5257, 8
  store i64 %5258, i64* %PC.i100
  %5259 = bitcast i8* %5256 to double*
  %5260 = load double, double* %5259, align 1
  %5261 = inttoptr i64 %5255 to double*
  store double %5260, double* %5261
  store %struct.Memory* %loadMem_480fb7, %struct.Memory** %MEMORY
  %loadMem_480fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5264 to i64*
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5266 = getelementptr inbounds %struct.GPR, %struct.GPR* %5265, i32 0, i32 1
  %5267 = getelementptr inbounds %struct.Reg, %struct.Reg* %5266, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %5267 to i64*
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 15
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %5270 to i64*
  %5271 = load i64, i64* %RBP.i99
  %5272 = sub i64 %5271, 8
  %5273 = load i64, i64* %PC.i97
  %5274 = add i64 %5273, 3
  store i64 %5274, i64* %PC.i97
  %5275 = inttoptr i64 %5272 to i32*
  %5276 = load i32, i32* %5275
  %5277 = zext i32 %5276 to i64
  store i64 %5277, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_480fbf, %struct.Memory** %MEMORY
  %loadMem_480fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 33
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5280 to i64*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 1
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %5283 to i64*
  %5284 = load i64, i64* %RAX.i96
  %5285 = load i64, i64* %PC.i95
  %5286 = add i64 %5285, 3
  store i64 %5286, i64* %PC.i95
  %5287 = trunc i64 %5284 to i32
  %5288 = add i32 1, %5287
  %5289 = zext i32 %5288 to i64
  store i64 %5289, i64* %RAX.i96, align 8
  %5290 = icmp ult i32 %5288, %5287
  %5291 = icmp ult i32 %5288, 1
  %5292 = or i1 %5290, %5291
  %5293 = zext i1 %5292 to i8
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5293, i8* %5294, align 1
  %5295 = and i32 %5288, 255
  %5296 = call i32 @llvm.ctpop.i32(i32 %5295)
  %5297 = trunc i32 %5296 to i8
  %5298 = and i8 %5297, 1
  %5299 = xor i8 %5298, 1
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5299, i8* %5300, align 1
  %5301 = xor i64 1, %5284
  %5302 = trunc i64 %5301 to i32
  %5303 = xor i32 %5302, %5288
  %5304 = lshr i32 %5303, 4
  %5305 = trunc i32 %5304 to i8
  %5306 = and i8 %5305, 1
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5306, i8* %5307, align 1
  %5308 = icmp eq i32 %5288, 0
  %5309 = zext i1 %5308 to i8
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5309, i8* %5310, align 1
  %5311 = lshr i32 %5288, 31
  %5312 = trunc i32 %5311 to i8
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5312, i8* %5313, align 1
  %5314 = lshr i32 %5287, 31
  %5315 = xor i32 %5311, %5314
  %5316 = add i32 %5315, %5311
  %5317 = icmp eq i32 %5316, 2
  %5318 = zext i1 %5317 to i8
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5318, i8* %5319, align 1
  store %struct.Memory* %loadMem_480fc2, %struct.Memory** %MEMORY
  %loadMem_480fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 1
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %5325 to i32*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 15
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RBP.i94
  %5330 = sub i64 %5329, 8
  %5331 = load i32, i32* %EAX.i93
  %5332 = zext i32 %5331 to i64
  %5333 = load i64, i64* %PC.i92
  %5334 = add i64 %5333, 3
  store i64 %5334, i64* %PC.i92
  %5335 = inttoptr i64 %5330 to i32*
  store i32 %5331, i32* %5335
  store %struct.Memory* %loadMem_480fc5, %struct.Memory** %MEMORY
  %loadMem_480fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5338 to i64*
  %5339 = load i64, i64* %PC.i91
  %5340 = add i64 %5339, -154
  %5341 = load i64, i64* %PC.i91
  %5342 = add i64 %5341, 5
  store i64 %5342, i64* %PC.i91
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5340, i64* %5343, align 8
  store %struct.Memory* %loadMem_480fc8, %struct.Memory** %MEMORY
  br label %block_.L_480f2e

block_.L_480fcd:                                  ; preds = %block_.L_480f2e
  %loadMem_480fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 33
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5346 to i64*
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 15
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %5349 to i64*
  %5350 = load i64, i64* %RBP.i90
  %5351 = sub i64 %5350, 4
  %5352 = load i64, i64* %PC.i89
  %5353 = add i64 %5352, 4
  store i64 %5353, i64* %PC.i89
  %5354 = inttoptr i64 %5351 to i32*
  %5355 = load i32, i32* %5354
  %5356 = sub i32 %5355, 2
  %5357 = icmp ult i32 %5355, 2
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5358, i8* %5359, align 1
  %5360 = and i32 %5356, 255
  %5361 = call i32 @llvm.ctpop.i32(i32 %5360)
  %5362 = trunc i32 %5361 to i8
  %5363 = and i8 %5362, 1
  %5364 = xor i8 %5363, 1
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5364, i8* %5365, align 1
  %5366 = xor i32 %5355, 2
  %5367 = xor i32 %5366, %5356
  %5368 = lshr i32 %5367, 4
  %5369 = trunc i32 %5368 to i8
  %5370 = and i8 %5369, 1
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5370, i8* %5371, align 1
  %5372 = icmp eq i32 %5356, 0
  %5373 = zext i1 %5372 to i8
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5373, i8* %5374, align 1
  %5375 = lshr i32 %5356, 31
  %5376 = trunc i32 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5376, i8* %5377, align 1
  %5378 = lshr i32 %5355, 31
  %5379 = xor i32 %5375, %5378
  %5380 = add i32 %5379, %5378
  %5381 = icmp eq i32 %5380, 2
  %5382 = zext i1 %5381 to i8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5382, i8* %5383, align 1
  store %struct.Memory* %loadMem_480fcd, %struct.Memory** %MEMORY
  %loadMem_480fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %PC.i88
  %5388 = add i64 %5387, 22
  %5389 = load i64, i64* %PC.i88
  %5390 = add i64 %5389, 6
  %5391 = load i64, i64* %PC.i88
  %5392 = add i64 %5391, 6
  store i64 %5392, i64* %PC.i88
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5394 = load i8, i8* %5393, align 1
  %5395 = icmp eq i8 %5394, 0
  %5396 = zext i1 %5395 to i8
  store i8 %5396, i8* %BRANCH_TAKEN, align 1
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5398 = select i1 %5395, i64 %5388, i64 %5390
  store i64 %5398, i64* %5397, align 8
  store %struct.Memory* %loadMem_480fd1, %struct.Memory** %MEMORY
  %loadBr_480fd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_480fd1 = icmp eq i8 %loadBr_480fd1, 1
  br i1 %cmpBr_480fd1, label %block_.L_480fe7, label %block_480fd7

block_480fd7:                                     ; preds = %block_.L_480fcd
  %loadMem_480fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 33
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5401 to i64*
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5402, i64 0, i64 0
  %YMM0.i86 = bitcast %union.VectorReg* %5403 to %"class.std::bitset"*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5404, i64 0, i64 0
  %XMM0.i87 = bitcast %union.VectorReg* %5405 to %union.vec128_t*
  %5406 = bitcast %"class.std::bitset"* %YMM0.i86 to i8*
  %5407 = bitcast %"class.std::bitset"* %YMM0.i86 to i8*
  %5408 = bitcast %union.vec128_t* %XMM0.i87 to i8*
  %5409 = load i64, i64* %PC.i85
  %5410 = add i64 %5409, 3
  store i64 %5410, i64* %PC.i85
  %5411 = bitcast i8* %5407 to i64*
  %5412 = load i64, i64* %5411, align 1
  %5413 = getelementptr inbounds i8, i8* %5407, i64 8
  %5414 = bitcast i8* %5413 to i64*
  %5415 = load i64, i64* %5414, align 1
  %5416 = bitcast i8* %5408 to i64*
  %5417 = load i64, i64* %5416, align 1
  %5418 = getelementptr inbounds i8, i8* %5408, i64 8
  %5419 = bitcast i8* %5418 to i64*
  %5420 = load i64, i64* %5419, align 1
  %5421 = xor i64 %5417, %5412
  %5422 = xor i64 %5420, %5415
  %5423 = trunc i64 %5421 to i32
  %5424 = lshr i64 %5421, 32
  %5425 = trunc i64 %5424 to i32
  %5426 = bitcast i8* %5406 to i32*
  store i32 %5423, i32* %5426, align 1
  %5427 = getelementptr inbounds i8, i8* %5406, i64 4
  %5428 = bitcast i8* %5427 to i32*
  store i32 %5425, i32* %5428, align 1
  %5429 = trunc i64 %5422 to i32
  %5430 = getelementptr inbounds i8, i8* %5406, i64 8
  %5431 = bitcast i8* %5430 to i32*
  store i32 %5429, i32* %5431, align 1
  %5432 = lshr i64 %5422, 32
  %5433 = trunc i64 %5432 to i32
  %5434 = getelementptr inbounds i8, i8* %5406, i64 12
  %5435 = bitcast i8* %5434 to i32*
  store i32 %5433, i32* %5435, align 1
  store %struct.Memory* %loadMem_480fd7, %struct.Memory** %MEMORY
  %loadMem_480fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 33
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 15
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5442, i64 0, i64 0
  %XMM0.i84 = bitcast %union.VectorReg* %5443 to %union.vec128_t*
  %5444 = load i64, i64* %RBP.i83
  %5445 = sub i64 %5444, 232
  %5446 = bitcast %union.vec128_t* %XMM0.i84 to i8*
  %5447 = load i64, i64* %PC.i82
  %5448 = add i64 %5447, 8
  store i64 %5448, i64* %PC.i82
  %5449 = bitcast i8* %5446 to double*
  %5450 = load double, double* %5449, align 1
  %5451 = inttoptr i64 %5445 to double*
  store double %5450, double* %5451
  store %struct.Memory* %loadMem_480fda, %struct.Memory** %MEMORY
  %loadMem_480fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %PC.i81
  %5456 = add i64 %5455, 35
  %5457 = load i64, i64* %PC.i81
  %5458 = add i64 %5457, 5
  store i64 %5458, i64* %PC.i81
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5456, i64* %5459, align 8
  store %struct.Memory* %loadMem_480fe2, %struct.Memory** %MEMORY
  br label %block_.L_481005

block_.L_480fe7:                                  ; preds = %block_.L_480fcd
  %loadMem_480fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 15
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5466, i64 0, i64 0
  %YMM0.i80 = bitcast %union.VectorReg* %5467 to %"class.std::bitset"*
  %5468 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %5469 = load i64, i64* %RBP.i79
  %5470 = sub i64 %5469, 184
  %5471 = load i64, i64* %PC.i78
  %5472 = add i64 %5471, 8
  store i64 %5472, i64* %PC.i78
  %5473 = inttoptr i64 %5470 to double*
  %5474 = load double, double* %5473
  %5475 = bitcast i8* %5468 to double*
  store double %5474, double* %5475, align 1
  %5476 = getelementptr inbounds i8, i8* %5468, i64 8
  %5477 = bitcast i8* %5476 to double*
  store double 0.000000e+00, double* %5477, align 1
  store %struct.Memory* %loadMem_480fe7, %struct.Memory** %MEMORY
  %loadMem_480fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 15
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5484, i64 0, i64 1
  %YMM1.i77 = bitcast %union.VectorReg* %5485 to %"class.std::bitset"*
  %5486 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %5487 = load i64, i64* %RBP.i76
  %5488 = sub i64 %5487, 4
  %5489 = load i64, i64* %PC.i75
  %5490 = add i64 %5489, 5
  store i64 %5490, i64* %PC.i75
  %5491 = inttoptr i64 %5488 to i32*
  %5492 = load i32, i32* %5491
  %5493 = sitofp i32 %5492 to double
  %5494 = bitcast i8* %5486 to double*
  store double %5493, double* %5494, align 1
  store %struct.Memory* %loadMem_480fef, %struct.Memory** %MEMORY
  %loadMem_480ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 33
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5498, i64 0, i64 0
  %YMM0.i73 = bitcast %union.VectorReg* %5499 to %"class.std::bitset"*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5501 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5500, i64 0, i64 1
  %XMM1.i74 = bitcast %union.VectorReg* %5501 to %union.vec128_t*
  %5502 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %5503 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %5504 = bitcast %union.vec128_t* %XMM1.i74 to i8*
  %5505 = load i64, i64* %PC.i72
  %5506 = add i64 %5505, 4
  store i64 %5506, i64* %PC.i72
  %5507 = bitcast i8* %5503 to double*
  %5508 = load double, double* %5507, align 1
  %5509 = getelementptr inbounds i8, i8* %5503, i64 8
  %5510 = bitcast i8* %5509 to i64*
  %5511 = load i64, i64* %5510, align 1
  %5512 = bitcast i8* %5504 to double*
  %5513 = load double, double* %5512, align 1
  %5514 = fdiv double %5508, %5513
  %5515 = bitcast i8* %5502 to double*
  store double %5514, double* %5515, align 1
  %5516 = getelementptr inbounds i8, i8* %5502, i64 8
  %5517 = bitcast i8* %5516 to i64*
  store i64 %5511, i64* %5517, align 1
  store %struct.Memory* %loadMem_480ff4, %struct.Memory** %MEMORY
  %loadMem1_480ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 33
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5520 to i64*
  %5521 = load i64, i64* %PC.i71
  %5522 = add i64 %5521, -523784
  %5523 = load i64, i64* %PC.i71
  %5524 = add i64 %5523, 5
  %5525 = load i64, i64* %PC.i71
  %5526 = add i64 %5525, 5
  store i64 %5526, i64* %PC.i71
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5528 = load i64, i64* %5527, align 8
  %5529 = add i64 %5528, -8
  %5530 = inttoptr i64 %5529 to i64*
  store i64 %5524, i64* %5530
  store i64 %5529, i64* %5527, align 8
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5522, i64* %5531, align 8
  store %struct.Memory* %loadMem1_480ff8, %struct.Memory** %MEMORY
  %loadMem2_480ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_480ff8 = load i64, i64* %3
  %call2_480ff8 = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_480ff8, %struct.Memory* %loadMem2_480ff8)
  store %struct.Memory* %call2_480ff8, %struct.Memory** %MEMORY
  %loadMem_480ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 15
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %5537 to i64*
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5538, i64 0, i64 0
  %XMM0.i70 = bitcast %union.VectorReg* %5539 to %union.vec128_t*
  %5540 = load i64, i64* %RBP.i69
  %5541 = sub i64 %5540, 232
  %5542 = bitcast %union.vec128_t* %XMM0.i70 to i8*
  %5543 = load i64, i64* %PC.i68
  %5544 = add i64 %5543, 8
  store i64 %5544, i64* %PC.i68
  %5545 = bitcast i8* %5542 to double*
  %5546 = load double, double* %5545, align 1
  %5547 = inttoptr i64 %5541 to double*
  store double %5546, double* %5547
  store %struct.Memory* %loadMem_480ffd, %struct.Memory** %MEMORY
  br label %block_.L_481005

block_.L_481005:                                  ; preds = %block_.L_480fe7, %block_480fd7
  %loadMem_481005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 33
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5550 to i64*
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 15
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5554, i64 0, i64 0
  %YMM0.i67 = bitcast %union.VectorReg* %5555 to %"class.std::bitset"*
  %5556 = bitcast %"class.std::bitset"* %YMM0.i67 to i8*
  %5557 = load i64, i64* %RBP.i66
  %5558 = sub i64 %5557, 232
  %5559 = load i64, i64* %PC.i65
  %5560 = add i64 %5559, 8
  store i64 %5560, i64* %PC.i65
  %5561 = inttoptr i64 %5558 to double*
  %5562 = load double, double* %5561
  %5563 = bitcast i8* %5556 to double*
  store double %5562, double* %5563, align 1
  %5564 = getelementptr inbounds i8, i8* %5556, i64 8
  %5565 = bitcast i8* %5564 to double*
  store double 0.000000e+00, double* %5565, align 1
  store %struct.Memory* %loadMem_481005, %struct.Memory** %MEMORY
  %loadMem_48100d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 15
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5572, i64 0, i64 0
  %XMM0.i64 = bitcast %union.VectorReg* %5573 to %union.vec128_t*
  %5574 = load i64, i64* %RBP.i63
  %5575 = sub i64 %5574, 192
  %5576 = bitcast %union.vec128_t* %XMM0.i64 to i8*
  %5577 = load i64, i64* %PC.i62
  %5578 = add i64 %5577, 8
  store i64 %5578, i64* %PC.i62
  %5579 = bitcast i8* %5576 to double*
  %5580 = load double, double* %5579, align 1
  %5581 = inttoptr i64 %5575 to double*
  store double %5580, double* %5581
  store %struct.Memory* %loadMem_48100d, %struct.Memory** %MEMORY
  %loadMem_481015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 33
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 15
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %RBP.i61
  %5589 = sub i64 %5588, 8
  %5590 = load i64, i64* %PC.i60
  %5591 = add i64 %5590, 7
  store i64 %5591, i64* %PC.i60
  %5592 = inttoptr i64 %5589 to i32*
  store i32 0, i32* %5592
  store %struct.Memory* %loadMem_481015, %struct.Memory** %MEMORY
  br label %block_.L_48101c

block_.L_48101c:                                  ; preds = %block_.L_481062, %block_.L_481005
  %loadMem_48101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 1
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 15
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %5601 to i64*
  %5602 = load i64, i64* %RBP.i59
  %5603 = sub i64 %5602, 8
  %5604 = load i64, i64* %PC.i57
  %5605 = add i64 %5604, 3
  store i64 %5605, i64* %PC.i57
  %5606 = inttoptr i64 %5603 to i32*
  %5607 = load i32, i32* %5606
  %5608 = zext i32 %5607 to i64
  store i64 %5608, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_48101c, %struct.Memory** %MEMORY
  %loadMem_48101f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 33
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5611 to i64*
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 1
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %EAX.i55 = bitcast %union.anon* %5614 to i32*
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 15
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %5617 to i64*
  %5618 = load i32, i32* %EAX.i55
  %5619 = zext i32 %5618 to i64
  %5620 = load i64, i64* %RBP.i56
  %5621 = sub i64 %5620, 4
  %5622 = load i64, i64* %PC.i54
  %5623 = add i64 %5622, 3
  store i64 %5623, i64* %PC.i54
  %5624 = inttoptr i64 %5621 to i32*
  %5625 = load i32, i32* %5624
  %5626 = sub i32 %5618, %5625
  %5627 = icmp ult i32 %5618, %5625
  %5628 = zext i1 %5627 to i8
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5628, i8* %5629, align 1
  %5630 = and i32 %5626, 255
  %5631 = call i32 @llvm.ctpop.i32(i32 %5630)
  %5632 = trunc i32 %5631 to i8
  %5633 = and i8 %5632, 1
  %5634 = xor i8 %5633, 1
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5634, i8* %5635, align 1
  %5636 = xor i32 %5625, %5618
  %5637 = xor i32 %5636, %5626
  %5638 = lshr i32 %5637, 4
  %5639 = trunc i32 %5638 to i8
  %5640 = and i8 %5639, 1
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5640, i8* %5641, align 1
  %5642 = icmp eq i32 %5626, 0
  %5643 = zext i1 %5642 to i8
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5643, i8* %5644, align 1
  %5645 = lshr i32 %5626, 31
  %5646 = trunc i32 %5645 to i8
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5646, i8* %5647, align 1
  %5648 = lshr i32 %5618, 31
  %5649 = lshr i32 %5625, 31
  %5650 = xor i32 %5649, %5648
  %5651 = xor i32 %5645, %5648
  %5652 = add i32 %5651, %5650
  %5653 = icmp eq i32 %5652, 2
  %5654 = zext i1 %5653 to i8
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5654, i8* %5655, align 1
  store %struct.Memory* %loadMem_48101f, %struct.Memory** %MEMORY
  %loadMem_481022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5658 to i64*
  %5659 = load i64, i64* %PC.i53
  %5660 = add i64 %5659, 78
  %5661 = load i64, i64* %PC.i53
  %5662 = add i64 %5661, 6
  %5663 = load i64, i64* %PC.i53
  %5664 = add i64 %5663, 6
  store i64 %5664, i64* %PC.i53
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5666 = load i8, i8* %5665, align 1
  %5667 = icmp ne i8 %5666, 0
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5669 = load i8, i8* %5668, align 1
  %5670 = icmp ne i8 %5669, 0
  %5671 = xor i1 %5667, %5670
  %5672 = xor i1 %5671, true
  %5673 = zext i1 %5672 to i8
  store i8 %5673, i8* %BRANCH_TAKEN, align 1
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5675 = select i1 %5671, i64 %5662, i64 %5660
  store i64 %5675, i64* %5674, align 8
  store %struct.Memory* %loadMem_481022, %struct.Memory** %MEMORY
  %loadBr_481022 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_481022 = icmp eq i8 %loadBr_481022, 1
  br i1 %cmpBr_481022, label %block_.L_481070, label %block_481028

block_481028:                                     ; preds = %block_.L_48101c
  %loadMem_481028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 33
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5678 to i64*
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 1
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %5681 to i64*
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 15
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %5684 to i64*
  %5685 = load i64, i64* %RBP.i52
  %5686 = sub i64 %5685, 8
  %5687 = load i64, i64* %PC.i50
  %5688 = add i64 %5687, 4
  store i64 %5688, i64* %PC.i50
  %5689 = inttoptr i64 %5686 to i32*
  %5690 = load i32, i32* %5689
  %5691 = sext i32 %5690 to i64
  store i64 %5691, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_481028, %struct.Memory** %MEMORY
  %loadMem_48102c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 33
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5694 to i64*
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 1
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %5697 to i64*
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 15
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5701, i64 0, i64 0
  %YMM0.i49 = bitcast %union.VectorReg* %5702 to %"class.std::bitset"*
  %5703 = bitcast %"class.std::bitset"* %YMM0.i49 to i8*
  %5704 = load i64, i64* %RBP.i48
  %5705 = load i64, i64* %RAX.i47
  %5706 = mul i64 %5705, 8
  %5707 = add i64 %5704, -176
  %5708 = add i64 %5707, %5706
  %5709 = load i64, i64* %PC.i46
  %5710 = add i64 %5709, 9
  store i64 %5710, i64* %PC.i46
  %5711 = inttoptr i64 %5708 to double*
  %5712 = load double, double* %5711
  %5713 = bitcast i8* %5703 to double*
  store double %5712, double* %5713, align 1
  %5714 = getelementptr inbounds i8, i8* %5703, i64 8
  %5715 = bitcast i8* %5714 to double*
  store double 0.000000e+00, double* %5715, align 1
  store %struct.Memory* %loadMem_48102c, %struct.Memory** %MEMORY
  %loadMem_481035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 33
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5719, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5720 to %"class.std::bitset"*
  %5721 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5722 = load i64, i64* %PC.i45
  %5723 = add i64 %5722, ptrtoint (%G_0x3c784__rip__type* @G_0x3c784__rip_ to i64)
  %5724 = load i64, i64* %PC.i45
  %5725 = add i64 %5724, 7
  store i64 %5725, i64* %PC.i45
  %5726 = inttoptr i64 %5723 to float*
  %5727 = load float, float* %5726
  %5728 = add i64 %5723, 4
  %5729 = inttoptr i64 %5728 to float*
  %5730 = load float, float* %5729
  %5731 = add i64 %5723, 8
  %5732 = inttoptr i64 %5731 to float*
  %5733 = load float, float* %5732
  %5734 = add i64 %5723, 12
  %5735 = inttoptr i64 %5734 to float*
  %5736 = load float, float* %5735
  %5737 = bitcast i8* %5721 to float*
  store float %5727, float* %5737, align 1
  %5738 = getelementptr inbounds i8, i8* %5721, i64 4
  %5739 = bitcast i8* %5738 to float*
  store float %5730, float* %5739, align 1
  %5740 = getelementptr inbounds i8, i8* %5721, i64 8
  %5741 = bitcast i8* %5740 to float*
  store float %5733, float* %5741, align 1
  %5742 = getelementptr inbounds i8, i8* %5721, i64 12
  %5743 = bitcast i8* %5742 to float*
  store float %5736, float* %5743, align 1
  store %struct.Memory* %loadMem_481035, %struct.Memory** %MEMORY
  %loadMem_48103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 33
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5746 to i64*
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5747, i64 0, i64 0
  %YMM0.i44 = bitcast %union.VectorReg* %5748 to %"class.std::bitset"*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5749, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5750 to %union.vec128_t*
  %5751 = bitcast %"class.std::bitset"* %YMM0.i44 to i8*
  %5752 = bitcast %"class.std::bitset"* %YMM0.i44 to i8*
  %5753 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5754 = load i64, i64* %PC.i43
  %5755 = add i64 %5754, 4
  store i64 %5755, i64* %PC.i43
  %5756 = bitcast i8* %5752 to i64*
  %5757 = load i64, i64* %5756, align 1
  %5758 = getelementptr inbounds i8, i8* %5752, i64 8
  %5759 = bitcast i8* %5758 to i64*
  %5760 = load i64, i64* %5759, align 1
  %5761 = bitcast i8* %5753 to i64*
  %5762 = load i64, i64* %5761, align 1
  %5763 = getelementptr inbounds i8, i8* %5753, i64 8
  %5764 = bitcast i8* %5763 to i64*
  %5765 = load i64, i64* %5764, align 1
  %5766 = and i64 %5762, %5757
  %5767 = and i64 %5765, %5760
  %5768 = trunc i64 %5766 to i32
  %5769 = lshr i64 %5766, 32
  %5770 = trunc i64 %5769 to i32
  %5771 = bitcast i8* %5751 to i32*
  store i32 %5768, i32* %5771, align 1
  %5772 = getelementptr inbounds i8, i8* %5751, i64 4
  %5773 = bitcast i8* %5772 to i32*
  store i32 %5770, i32* %5773, align 1
  %5774 = trunc i64 %5767 to i32
  %5775 = getelementptr inbounds i8, i8* %5751, i64 8
  %5776 = bitcast i8* %5775 to i32*
  store i32 %5774, i32* %5776, align 1
  %5777 = lshr i64 %5767, 32
  %5778 = trunc i64 %5777 to i32
  %5779 = getelementptr inbounds i8, i8* %5751, i64 12
  %5780 = bitcast i8* %5779 to i32*
  store i32 %5778, i32* %5780, align 1
  store %struct.Memory* %loadMem_48103c, %struct.Memory** %MEMORY
  %loadMem_481040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 33
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 15
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5787, i64 0, i64 0
  %XMM0.i39 = bitcast %union.VectorReg* %5788 to %union.vec128_t*
  %5789 = bitcast %union.vec128_t* %XMM0.i39 to i8*
  %5790 = load i64, i64* %RBP.i38
  %5791 = sub i64 %5790, 192
  %5792 = load i64, i64* %PC.i37
  %5793 = add i64 %5792, 8
  store i64 %5793, i64* %PC.i37
  %5794 = bitcast i8* %5789 to double*
  %5795 = load double, double* %5794, align 1
  %5796 = inttoptr i64 %5791 to double*
  %5797 = load double, double* %5796
  %5798 = fcmp uno double %5795, %5797
  br i1 %5798, label %5799, label %5811

; <label>:5799:                                   ; preds = %block_481028
  %5800 = fadd double %5795, %5797
  %5801 = bitcast double %5800 to i64
  %5802 = and i64 %5801, 9221120237041090560
  %5803 = icmp eq i64 %5802, 9218868437227405312
  %5804 = and i64 %5801, 2251799813685247
  %5805 = icmp ne i64 %5804, 0
  %5806 = and i1 %5803, %5805
  br i1 %5806, label %5807, label %5817

; <label>:5807:                                   ; preds = %5799
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5809 = load i64, i64* %5808, align 8
  %5810 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5809, %struct.Memory* %loadMem_481040)
  br label %routine_ucomisd_MINUS0xc0__rbp____xmm0.exit

; <label>:5811:                                   ; preds = %block_481028
  %5812 = fcmp ogt double %5795, %5797
  br i1 %5812, label %5817, label %5813

; <label>:5813:                                   ; preds = %5811
  %5814 = fcmp olt double %5795, %5797
  br i1 %5814, label %5817, label %5815

; <label>:5815:                                   ; preds = %5813
  %5816 = fcmp oeq double %5795, %5797
  br i1 %5816, label %5817, label %5824

; <label>:5817:                                   ; preds = %5815, %5813, %5811, %5799
  %5818 = phi i8 [ 0, %5811 ], [ 0, %5813 ], [ 1, %5815 ], [ 1, %5799 ]
  %5819 = phi i8 [ 0, %5811 ], [ 0, %5813 ], [ 0, %5815 ], [ 1, %5799 ]
  %5820 = phi i8 [ 0, %5811 ], [ 1, %5813 ], [ 0, %5815 ], [ 1, %5799 ]
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5818, i8* %5821, align 1
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5819, i8* %5822, align 1
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5820, i8* %5823, align 1
  br label %5824

; <label>:5824:                                   ; preds = %5817, %5815
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5825, align 1
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5826, align 1
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5827, align 1
  br label %routine_ucomisd_MINUS0xc0__rbp____xmm0.exit

routine_ucomisd_MINUS0xc0__rbp____xmm0.exit:      ; preds = %5807, %5824
  %5828 = phi %struct.Memory* [ %5810, %5807 ], [ %loadMem_481040, %5824 ]
  store %struct.Memory* %5828, %struct.Memory** %MEMORY
  %loadMem_481048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 33
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5831 to i64*
  %5832 = load i64, i64* %PC.i36
  %5833 = add i64 %5832, 21
  %5834 = load i64, i64* %PC.i36
  %5835 = add i64 %5834, 6
  %5836 = load i64, i64* %PC.i36
  %5837 = add i64 %5836, 6
  store i64 %5837, i64* %PC.i36
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5839 = load i8, i8* %5838, align 1
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5841 = load i8, i8* %5840, align 1
  %5842 = or i8 %5841, %5839
  %5843 = icmp ne i8 %5842, 0
  %5844 = zext i1 %5843 to i8
  store i8 %5844, i8* %BRANCH_TAKEN, align 1
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5846 = select i1 %5843, i64 %5833, i64 %5835
  store i64 %5846, i64* %5845, align 8
  store %struct.Memory* %loadMem_481048, %struct.Memory** %MEMORY
  %loadBr_481048 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_481048 = icmp eq i8 %loadBr_481048, 1
  br i1 %cmpBr_481048, label %block_.L_48105d, label %block_48104e

block_48104e:                                     ; preds = %routine_ucomisd_MINUS0xc0__rbp____xmm0.exit
  %loadMem_48104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 33
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5849 to i64*
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5851 = getelementptr inbounds %struct.GPR, %struct.GPR* %5850, i32 0, i32 1
  %5852 = getelementptr inbounds %struct.Reg, %struct.Reg* %5851, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %5852 to i64*
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 15
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5855 to i64*
  %5856 = load i64, i64* %RBP.i35
  %5857 = sub i64 %5856, 8
  %5858 = load i64, i64* %PC.i33
  %5859 = add i64 %5858, 4
  store i64 %5859, i64* %PC.i33
  %5860 = inttoptr i64 %5857 to i32*
  %5861 = load i32, i32* %5860
  %5862 = sext i32 %5861 to i64
  store i64 %5862, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_48104e, %struct.Memory** %MEMORY
  %loadMem_481052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 33
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5865 to i64*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 1
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %5868 to i64*
  %5869 = load i64, i64* %RAX.i32
  %5870 = mul i64 %5869, 4
  %5871 = add i64 %5870, 7487024
  %5872 = load i64, i64* %PC.i31
  %5873 = add i64 %5872, 11
  store i64 %5873, i64* %PC.i31
  %5874 = inttoptr i64 %5871 to i32*
  store i32 1, i32* %5874
  store %struct.Memory* %loadMem_481052, %struct.Memory** %MEMORY
  br label %block_.L_48105d

block_.L_48105d:                                  ; preds = %block_48104e, %routine_ucomisd_MINUS0xc0__rbp____xmm0.exit
  %loadMem_48105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5876 = getelementptr inbounds %struct.GPR, %struct.GPR* %5875, i32 0, i32 33
  %5877 = getelementptr inbounds %struct.Reg, %struct.Reg* %5876, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5877 to i64*
  %5878 = load i64, i64* %PC.i30
  %5879 = add i64 %5878, 5
  %5880 = load i64, i64* %PC.i30
  %5881 = add i64 %5880, 5
  store i64 %5881, i64* %PC.i30
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5879, i64* %5882, align 8
  store %struct.Memory* %loadMem_48105d, %struct.Memory** %MEMORY
  br label %block_.L_481062

block_.L_481062:                                  ; preds = %block_.L_48105d
  %loadMem_481062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 1
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 15
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %5891 to i64*
  %5892 = load i64, i64* %RBP.i29
  %5893 = sub i64 %5892, 8
  %5894 = load i64, i64* %PC.i27
  %5895 = add i64 %5894, 3
  store i64 %5895, i64* %PC.i27
  %5896 = inttoptr i64 %5893 to i32*
  %5897 = load i32, i32* %5896
  %5898 = zext i32 %5897 to i64
  store i64 %5898, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_481062, %struct.Memory** %MEMORY
  %loadMem_481065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 33
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5901 to i64*
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 1
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5904 to i64*
  %5905 = load i64, i64* %RAX.i26
  %5906 = load i64, i64* %PC.i25
  %5907 = add i64 %5906, 3
  store i64 %5907, i64* %PC.i25
  %5908 = trunc i64 %5905 to i32
  %5909 = add i32 1, %5908
  %5910 = zext i32 %5909 to i64
  store i64 %5910, i64* %RAX.i26, align 8
  %5911 = icmp ult i32 %5909, %5908
  %5912 = icmp ult i32 %5909, 1
  %5913 = or i1 %5911, %5912
  %5914 = zext i1 %5913 to i8
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5914, i8* %5915, align 1
  %5916 = and i32 %5909, 255
  %5917 = call i32 @llvm.ctpop.i32(i32 %5916)
  %5918 = trunc i32 %5917 to i8
  %5919 = and i8 %5918, 1
  %5920 = xor i8 %5919, 1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5920, i8* %5921, align 1
  %5922 = xor i64 1, %5905
  %5923 = trunc i64 %5922 to i32
  %5924 = xor i32 %5923, %5909
  %5925 = lshr i32 %5924, 4
  %5926 = trunc i32 %5925 to i8
  %5927 = and i8 %5926, 1
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5927, i8* %5928, align 1
  %5929 = icmp eq i32 %5909, 0
  %5930 = zext i1 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5930, i8* %5931, align 1
  %5932 = lshr i32 %5909, 31
  %5933 = trunc i32 %5932 to i8
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5933, i8* %5934, align 1
  %5935 = lshr i32 %5908, 31
  %5936 = xor i32 %5932, %5935
  %5937 = add i32 %5936, %5932
  %5938 = icmp eq i32 %5937, 2
  %5939 = zext i1 %5938 to i8
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5939, i8* %5940, align 1
  store %struct.Memory* %loadMem_481065, %struct.Memory** %MEMORY
  %loadMem_481068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5943 to i64*
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 1
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5946 to i32*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 15
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %RBP.i24
  %5951 = sub i64 %5950, 8
  %5952 = load i32, i32* %EAX.i
  %5953 = zext i32 %5952 to i64
  %5954 = load i64, i64* %PC.i23
  %5955 = add i64 %5954, 3
  store i64 %5955, i64* %PC.i23
  %5956 = inttoptr i64 %5951 to i32*
  store i32 %5952, i32* %5956
  store %struct.Memory* %loadMem_481068, %struct.Memory** %MEMORY
  %loadMem_48106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 33
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5959 to i64*
  %5960 = load i64, i64* %PC.i22
  %5961 = add i64 %5960, -79
  %5962 = load i64, i64* %PC.i22
  %5963 = add i64 %5962, 5
  store i64 %5963, i64* %PC.i22
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5961, i64* %5964, align 8
  store %struct.Memory* %loadMem_48106b, %struct.Memory** %MEMORY
  br label %block_.L_48101c

block_.L_481070:                                  ; preds = %block_.L_48101c
  %loadMem_481070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 33
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5967 to i64*
  %5968 = load i64, i64* %PC.i21
  %5969 = add i64 %5968, 11
  store i64 %5969, i64* %PC.i21
  store i32 0, i32* bitcast (%G_0x723e30_type* @G_0x723e30 to i32*)
  store %struct.Memory* %loadMem_481070, %struct.Memory** %MEMORY
  %loadMem_48107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 33
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 11
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 15
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %5978 to i64*
  %5979 = load i64, i64* %RBP.i20
  %5980 = sub i64 %5979, 4
  %5981 = load i64, i64* %PC.i19
  %5982 = add i64 %5981, 3
  store i64 %5982, i64* %PC.i19
  %5983 = inttoptr i64 %5980 to i32*
  %5984 = load i32, i32* %5983
  %5985 = zext i32 %5984 to i64
  store i64 %5985, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_48107b, %struct.Memory** %MEMORY
  %loadMem1_48107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 33
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5988 to i64*
  %5989 = load i64, i64* %PC.i18
  %5990 = add i64 %5989, 226
  %5991 = load i64, i64* %PC.i18
  %5992 = add i64 %5991, 5
  %5993 = load i64, i64* %PC.i18
  %5994 = add i64 %5993, 5
  store i64 %5994, i64* %PC.i18
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5996 = load i64, i64* %5995, align 8
  %5997 = add i64 %5996, -8
  %5998 = inttoptr i64 %5997 to i64*
  store i64 %5992, i64* %5998
  store i64 %5997, i64* %5995, align 8
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5990, i64* %5999, align 8
  store %struct.Memory* %loadMem1_48107e, %struct.Memory** %MEMORY
  %loadMem2_48107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48107e = load i64, i64* %3
  %call2_48107e = call %struct.Memory* @sub_481160.RCModelEstimator(%struct.State* %0, i64 %loadPC_48107e, %struct.Memory* %loadMem2_48107e)
  store %struct.Memory* %call2_48107e, %struct.Memory** %MEMORY
  %loadMem_481083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 15
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %6005 to i64*
  %6006 = load i64, i64* %RBP.i17
  %6007 = sub i64 %6006, 200
  %6008 = load i64, i64* %PC.i16
  %6009 = add i64 %6008, 7
  store i64 %6009, i64* %PC.i16
  %6010 = inttoptr i64 %6007 to i32*
  %6011 = load i32, i32* %6010
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6012, align 1
  %6013 = and i32 %6011, 255
  %6014 = call i32 @llvm.ctpop.i32(i32 %6013)
  %6015 = trunc i32 %6014 to i8
  %6016 = and i8 %6015, 1
  %6017 = xor i8 %6016, 1
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6017, i8* %6018, align 1
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6019, align 1
  %6020 = icmp eq i32 %6011, 0
  %6021 = zext i1 %6020 to i8
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6021, i8* %6022, align 1
  %6023 = lshr i32 %6011, 31
  %6024 = trunc i32 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6024, i8* %6025, align 1
  %6026 = lshr i32 %6011, 31
  %6027 = xor i32 %6023, %6026
  %6028 = add i32 %6027, %6026
  %6029 = icmp eq i32 %6028, 2
  %6030 = zext i1 %6029 to i8
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6030, i8* %6031, align 1
  store %struct.Memory* %loadMem_481083, %struct.Memory** %MEMORY
  %loadMem_48108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 33
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6034 to i64*
  %6035 = load i64, i64* %PC.i15
  %6036 = add i64 %6035, 16
  %6037 = load i64, i64* %PC.i15
  %6038 = add i64 %6037, 6
  %6039 = load i64, i64* %PC.i15
  %6040 = add i64 %6039, 6
  store i64 %6040, i64* %PC.i15
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6042 = load i8, i8* %6041, align 1
  store i8 %6042, i8* %BRANCH_TAKEN, align 1
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6044 = icmp ne i8 %6042, 0
  %6045 = select i1 %6044, i64 %6036, i64 %6038
  store i64 %6045, i64* %6043, align 8
  store %struct.Memory* %loadMem_48108a, %struct.Memory** %MEMORY
  %loadBr_48108a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48108a = icmp eq i8 %loadBr_48108a, 1
  br i1 %cmpBr_48108a, label %block_.L_48109a, label %block_481090

block_481090:                                     ; preds = %block_.L_481070
  %loadMem1_481090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6048 to i64*
  %6049 = load i64, i64* %PC.i14
  %6050 = add i64 %6049, 1072
  %6051 = load i64, i64* %PC.i14
  %6052 = add i64 %6051, 5
  %6053 = load i64, i64* %PC.i14
  %6054 = add i64 %6053, 5
  store i64 %6054, i64* %PC.i14
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6056 = load i64, i64* %6055, align 8
  %6057 = add i64 %6056, -8
  %6058 = inttoptr i64 %6057 to i64*
  store i64 %6052, i64* %6058
  store i64 %6057, i64* %6055, align 8
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6050, i64* %6059, align 8
  store %struct.Memory* %loadMem1_481090, %struct.Memory** %MEMORY
  %loadMem2_481090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_481090 = load i64, i64* %3
  %call2_481090 = call %struct.Memory* @sub_4814c0.updateMADModel(%struct.State* %0, i64 %loadPC_481090, %struct.Memory* %loadMem2_481090)
  store %struct.Memory* %call2_481090, %struct.Memory** %MEMORY
  %loadMem_481095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 33
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6062 to i64*
  %6063 = load i64, i64* %PC.i13
  %6064 = add i64 %6063, 46
  %6065 = load i64, i64* %PC.i13
  %6066 = add i64 %6065, 5
  store i64 %6066, i64* %PC.i13
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6064, i64* %6067, align 8
  store %struct.Memory* %loadMem_481095, %struct.Memory** %MEMORY
  br label %block_.L_4810c3

block_.L_48109a:                                  ; preds = %block_.L_481070
  %loadMem_48109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 33
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6070 to i64*
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 1
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %6073 to i64*
  %6074 = load i64, i64* %PC.i11
  %6075 = add i64 %6074, 8
  store i64 %6075, i64* %PC.i11
  %6076 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6076, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_48109a, %struct.Memory** %MEMORY
  %loadMem_4810a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 1
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %RAX.i
  %6084 = add i64 %6083, 24
  %6085 = load i64, i64* %PC.i10
  %6086 = add i64 %6085, 4
  store i64 %6086, i64* %PC.i10
  %6087 = inttoptr i64 %6084 to i32*
  %6088 = load i32, i32* %6087
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6089, align 1
  %6090 = and i32 %6088, 255
  %6091 = call i32 @llvm.ctpop.i32(i32 %6090)
  %6092 = trunc i32 %6091 to i8
  %6093 = and i8 %6092, 1
  %6094 = xor i8 %6093, 1
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6094, i8* %6095, align 1
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6096, align 1
  %6097 = icmp eq i32 %6088, 0
  %6098 = zext i1 %6097 to i8
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6098, i8* %6099, align 1
  %6100 = lshr i32 %6088, 31
  %6101 = trunc i32 %6100 to i8
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6101, i8* %6102, align 1
  %6103 = lshr i32 %6088, 31
  %6104 = xor i32 %6100, %6103
  %6105 = add i32 %6104, %6103
  %6106 = icmp eq i32 %6105, 2
  %6107 = zext i1 %6106 to i8
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6107, i8* %6108, align 1
  store %struct.Memory* %loadMem_4810a2, %struct.Memory** %MEMORY
  %loadMem_4810a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 33
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6111 to i64*
  %6112 = load i64, i64* %PC.i9
  %6113 = add i64 %6112, 24
  %6114 = load i64, i64* %PC.i9
  %6115 = add i64 %6114, 6
  %6116 = load i64, i64* %PC.i9
  %6117 = add i64 %6116, 6
  store i64 %6117, i64* %PC.i9
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6119 = load i8, i8* %6118, align 1
  %6120 = icmp eq i8 %6119, 0
  %6121 = zext i1 %6120 to i8
  store i8 %6121, i8* %BRANCH_TAKEN, align 1
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6123 = select i1 %6120, i64 %6113, i64 %6115
  store i64 %6123, i64* %6122, align 8
  store %struct.Memory* %loadMem_4810a6, %struct.Memory** %MEMORY
  %loadBr_4810a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4810a6 = icmp eq i8 %loadBr_4810a6, 1
  br i1 %cmpBr_4810a6, label %block_.L_4810be, label %block_4810ac

block_4810ac:                                     ; preds = %block_.L_48109a
  %loadMem_4810ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6128 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6127, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %6128 to %"class.std::bitset"*
  %6129 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6130 = load i64, i64* %PC.i8
  %6131 = add i64 %6130, 9
  store i64 %6131, i64* %PC.i8
  %6132 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %6133 = bitcast i8* %6129 to double*
  store double %6132, double* %6133, align 1
  %6134 = getelementptr inbounds i8, i8* %6129, i64 8
  %6135 = bitcast i8* %6134 to double*
  store double 0.000000e+00, double* %6135, align 1
  store %struct.Memory* %loadMem_4810ac, %struct.Memory** %MEMORY
  %loadMem_4810b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6139, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %6140 to %union.vec128_t*
  %6141 = bitcast %union.vec128_t* %XMM0.i to i8*
  %6142 = load i64, i64* %PC.i7
  %6143 = add i64 %6142, 9
  store i64 %6143, i64* %PC.i7
  %6144 = bitcast i8* %6141 to double*
  %6145 = load double, double* %6144, align 1
  store double %6145, double* bitcast (%G_0x6cd300_type* @G_0x6cd300 to double*)
  store %struct.Memory* %loadMem_4810b5, %struct.Memory** %MEMORY
  br label %block_.L_4810be

block_.L_4810be:                                  ; preds = %block_4810ac, %block_.L_48109a
  %loadMem_4810be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 33
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6148 to i64*
  %6149 = load i64, i64* %PC.i6
  %6150 = add i64 %6149, 5
  %6151 = load i64, i64* %PC.i6
  %6152 = add i64 %6151, 5
  store i64 %6152, i64* %PC.i6
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6150, i64* %6153, align 8
  store %struct.Memory* %loadMem_4810be, %struct.Memory** %MEMORY
  br label %block_.L_4810c3

block_.L_4810c3:                                  ; preds = %block_.L_4810be, %block_481090
  %loadMem_4810c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 33
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %PC.i5
  %6158 = add i64 %6157, 5
  %6159 = load i64, i64* %PC.i5
  %6160 = add i64 %6159, 5
  store i64 %6160, i64* %PC.i5
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6158, i64* %6161, align 8
  store %struct.Memory* %loadMem_4810c3, %struct.Memory** %MEMORY
  br label %block_.L_4810c8

block_.L_4810c8:                                  ; preds = %block_.L_4810c3, %entry
  %loadMem_4810c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 33
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6164 to i64*
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 13
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6167 to i64*
  %6168 = load i64, i64* %RSP.i
  %6169 = load i64, i64* %PC.i4
  %6170 = add i64 %6169, 7
  store i64 %6170, i64* %PC.i4
  %6171 = add i64 240, %6168
  store i64 %6171, i64* %RSP.i, align 8
  %6172 = icmp ult i64 %6171, %6168
  %6173 = icmp ult i64 %6171, 240
  %6174 = or i1 %6172, %6173
  %6175 = zext i1 %6174 to i8
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6175, i8* %6176, align 1
  %6177 = trunc i64 %6171 to i32
  %6178 = and i32 %6177, 255
  %6179 = call i32 @llvm.ctpop.i32(i32 %6178)
  %6180 = trunc i32 %6179 to i8
  %6181 = and i8 %6180, 1
  %6182 = xor i8 %6181, 1
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6182, i8* %6183, align 1
  %6184 = xor i64 240, %6168
  %6185 = xor i64 %6184, %6171
  %6186 = lshr i64 %6185, 4
  %6187 = trunc i64 %6186 to i8
  %6188 = and i8 %6187, 1
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6188, i8* %6189, align 1
  %6190 = icmp eq i64 %6171, 0
  %6191 = zext i1 %6190 to i8
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6191, i8* %6192, align 1
  %6193 = lshr i64 %6171, 63
  %6194 = trunc i64 %6193 to i8
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6194, i8* %6195, align 1
  %6196 = lshr i64 %6168, 63
  %6197 = xor i64 %6193, %6196
  %6198 = add i64 %6197, %6193
  %6199 = icmp eq i64 %6198, 2
  %6200 = zext i1 %6199 to i8
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6200, i8* %6201, align 1
  store %struct.Memory* %loadMem_4810c8, %struct.Memory** %MEMORY
  %loadMem_4810cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 33
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 15
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6207 to i64*
  %6208 = load i64, i64* %PC.i2
  %6209 = add i64 %6208, 1
  store i64 %6209, i64* %PC.i2
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6211 = load i64, i64* %6210, align 8
  %6212 = add i64 %6211, 8
  %6213 = inttoptr i64 %6211 to i64*
  %6214 = load i64, i64* %6213
  store i64 %6214, i64* %RBP.i3, align 8
  store i64 %6212, i64* %6210, align 8
  store %struct.Memory* %loadMem_4810cf, %struct.Memory** %MEMORY
  %loadMem_4810d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 33
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6217 to i64*
  %6218 = load i64, i64* %PC.i1
  %6219 = add i64 %6218, 1
  store i64 %6219, i64* %PC.i1
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6222 = load i64, i64* %6221, align 8
  %6223 = inttoptr i64 %6222 to i64*
  %6224 = load i64, i64* %6223
  store i64 %6224, i64* %6220, align 8
  %6225 = add i64 %6222, 8
  store i64 %6225, i64* %6221, align 8
  store %struct.Memory* %loadMem_4810d0, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4810d0
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

define %struct.Memory* @routine_subq__0xf0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 240
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 240
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
  %23 = xor i64 240, %9
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4810c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 72608
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

define %struct.Memory* @routine_jne_.L_48096b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.ComputeFrameMAD(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__0x6d1280(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b74__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480bff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2884
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_4809d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4809d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x30eab__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30eab__rip__type* @G_0x30eab__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x11b60__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_cvtsi2sdl_0x11bac__rax____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movsd__xmm1__0x6d1280(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480a00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x11b60__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_cvtsi2sdl_0x11bac__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x11b60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 72544
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6f80a0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x6f9688___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x721a90(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x721a90(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
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

define %struct.Memory* @routine_jle_.L_480b06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x30e4a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30e4a__rip__type* @G_0x30e4a__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x30e1a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30e1a__rip__type* @G_0x30e1a__rip_ to i64)
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

define %struct.Memory* @routine_movl_0x6d32d8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x721a90___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_imull__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RAX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x11b54__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 72532
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0x721a90___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
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

define %struct.Memory* @routine_movl__eax__0x6d32d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x722c78(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x722c78_type* @G_0x722c78 to i32*)
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

define %struct.Memory* @routine_jne_.L_480aad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x723698(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x723698_type* @G_0x723698 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480b01(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x30dd3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30dd3__rip__type* @G_0x30dd3__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x30da3__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30da3__rip__type* @G_0x30da3__rip_ to i64)
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

define %struct.Memory* @routine_imull_0x721a90___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %12 to i64
  %16 = mul i64 %15, %14
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %RAX, align 8
  %19 = shl i64 %16, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp ne i64 %20, %16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %17, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = lshr i32 %17, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x722c78___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x722c78_type* @G_0x722c78 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x6f9688___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %12 to i64
  %16 = mul i64 %15, %14
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %RCX, align 8
  %19 = shl i64 %16, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp ne i64 %20, %16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %17, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = lshr i32 %17, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %35, align 1
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

define %struct.Memory* @routine_cvtsi2sdl_0x6f80a0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480b06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2880
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_480b30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_480b74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_480b74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x6d1280___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x723630___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x723630_type* @G_0x723630 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480b9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x724bd8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x724bd8_type* @G_0x724bd8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x6f9688(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x6f9688_type* @G_0x6f9688 to i32*)
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

define %struct.Memory* @routine_je_.L_480bd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull_0x6f80a0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %12 to i64
  %16 = mul i64 %15, %14
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %RCX, align 8
  %19 = shl i64 %16, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp ne i64 %20, %16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %17, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = lshr i32 %17, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x721a90___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0x721a90_type* @G_0x721a90 to i32*)
  %14 = add i32 %13, %12
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %12
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %12
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %12, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480bfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jle_.L_480c16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b4c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72524
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x6f9720(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6f9720_type* @G_0x6f9720 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x13__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 19, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jle_.L_480cbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d1910___rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 7149840
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to double*
  %18 = load double, double* %17
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to double*
  store double 0.000000e+00, double* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6d1910___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = mul i64 %11, 8
  %13 = add i64 %12, 7149840
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = bitcast i8* %14 to double*
  %18 = load double, double* %17, align 1
  %19 = inttoptr i64 %13 to double*
  store double %18, double* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6d4540___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = mul i64 %11, 8
  %13 = add i64 %12, 7161152
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = bitcast i8* %14 to double*
  %18 = load double, double* %17, align 1
  %19 = inttoptr i64 %13 to double*
  store double %18, double* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d46a0___rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 7161504
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to double*
  %18 = load double, double* %17
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to double*
  store double 0.000000e+00, double* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6d46a0___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = mul i64 %11, 8
  %13 = add i64 %12, 7161504
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = bitcast i8* %14 to double*
  %18 = load double, double* %17, align 1
  %19 = inttoptr i64 %13 to double*
  store double %18, double* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x725270___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = mul i64 %11, 8
  %13 = add i64 %12, 7492208
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = bitcast i8* %14 to double*
  %18 = load double, double* %17, align 1
  %19 = inttoptr i64 %13 to double*
  store double %18, double* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480c32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x6d32cc___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x6d32cc_type* @G_0x6d32cc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.QP2Qstep(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__0x6d1910(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d1910_type* @G_0x6d1910 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11bac__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x11ba0__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 72608
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

define %struct.Memory* @routine_jne_.L_480d26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x30b65__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30b65__rip__type* @G_0x30b65__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x11b50__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_divsd_0x6d1280___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6d46a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d46a0_type* @G_0x6d46a0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480d54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x30b32__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30b32__rip__type* @G_0x30b32__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x11b58__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d1910___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d1910_type* @G_0x6d1910 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6d4540(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d4540_type* @G_0x6d4540 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d46a0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d46a0_type* @G_0x6d46a0 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x725270(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x725270_type* @G_0x725270 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x726420___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x726420_type* @G_0x726420 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x723640(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x723640_type* @G_0x723640 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6f9358___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6f9358_type* @G_0x6f9358 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6d33e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d33e0_type* @G_0x6d33e0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_0x710830___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  %13 = load double, double* bitcast (%G_0x710830_type* @G_0x710830 to double*)
  %14 = fcmp uno double %12, %13
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %block_400488
  %16 = fadd double %12, %13
  %17 = bitcast double %16 to i64
  %18 = and i64 %17, 9221120237041090560
  %19 = icmp eq i64 %18, 9218868437227405312
  %20 = and i64 %17, 2251799813685247
  %21 = icmp ne i64 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %33

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %25, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = fcmp ogt double %12, %13
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %27
  %30 = fcmp olt double %12, %13
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %29
  %32 = fcmp oeq double %12, %13
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %31, %29, %27, %15
  %34 = phi i8 [ 0, %27 ], [ 0, %29 ], [ 1, %31 ], [ 1, %15 ]
  %35 = phi i8 [ 0, %27 ], [ 0, %29 ], [ 0, %31 ], [ 1, %15 ]
  %36 = phi i8 [ 0, %27 ], [ 1, %29 ], [ 0, %31 ], [ 1, %15 ]
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %36, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %33, %31
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %43, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %23, %40
  %44 = phi %struct.Memory* [ %26, %23 ], [ %2, %40 ]
  ret %struct.Memory* %44
}

define %struct.Memory* @routine_jbe_.L_480de1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x30bdc__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30bdc__rip__type* @G_0x30bdc__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x710830___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x710830_type* @G_0x710830 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
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

define %struct.Memory* @routine_jmpq_.L_480e09(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x30baf__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x30baf__rip__type* @G_0x30baf__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x6d1280___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d1280_type* @G_0x6d1280 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x710830___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x710830_type* @G_0x710830 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
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

define %struct.Memory* @routine_jge_.L_480e2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_480e35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 196
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

define %struct.Memory* @routine_jge_.L_480e5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_480e67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x724bd0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_480e93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_480ea3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x724bd0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x14__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jge_.L_480ec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_480ed4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x724bd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x14__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 20
  %16 = icmp ult i32 %14, 20
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
  %25 = xor i32 %14, 20
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

define %struct.Memory* @routine_jge_.L_480f15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x723e30___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 7487024
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 0, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_480eee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.RCModelEstimator(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x724bd0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_480fcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x723640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x723640_type* @G_0x723640 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x6d4540___rax_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, 7161152
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = bitcast i8* %12 to double*
  %19 = load double, double* %18, align 1
  %20 = getelementptr inbounds i8, i8* %12, i64 8
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 1
  %23 = inttoptr i64 %15 to double*
  %24 = load double, double* %23
  %25 = fdiv double %19, %24
  %26 = bitcast i8* %11 to double*
  store double %25, double* %26, align 1
  %27 = getelementptr inbounds i8, i8* %11, i64 8
  %28 = bitcast i8* %27 to i64*
  store i64 %22, i64* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d33e0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d33e0_type* @G_0x6d33e0 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d4540___rax_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 7161152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to double*
  %18 = load double, double* %17
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to double*
  store double 0.000000e+00, double* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x6d4540___rax_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, 7161152
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = bitcast i8* %12 to double*
  %19 = load double, double* %18, align 1
  %20 = getelementptr inbounds i8, i8* %12, i64 8
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 1
  %23 = inttoptr i64 %15 to double*
  %24 = load double, double* %23
  %25 = fmul double %19, %24
  %26 = bitcast i8* %11 to double*
  store double %25, double* %26, align 1
  %27 = getelementptr inbounds i8, i8* %11, i64 8
  %28 = bitcast i8* %27 to i64*
  store i64 %22, i64* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x725270___rax_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, 7492208
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = bitcast i8* %12 to double*
  %19 = load double, double* %18, align 1
  %20 = getelementptr inbounds i8, i8* %12, i64 8
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 1
  %23 = inttoptr i64 %15 to double*
  %24 = load double, double* %23
  %25 = fsub double %19, %24
  %26 = bitcast i8* %11 to double*
  store double %25, double* %26, align 1
  %27 = getelementptr inbounds i8, i8* %11, i64 8
  %28 = bitcast i8* %27 to i64*
  store i64 %22, i64* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp__rax_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 8
  %17 = add i64 %14, -176
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to double*
  %23 = load double, double* %22, align 1
  %24 = inttoptr i64 %18 to double*
  store double %23, double* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp__rax_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -176
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to double*
  %23 = load double, double* %22
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 8
  %26 = bitcast i8* %25 to double*
  store double 0.000000e+00, double* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0xb0__rbp__rax_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -176
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to double*
  %24 = load double, double* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 1
  %28 = inttoptr i64 %20 to double*
  %29 = load double, double* %28
  %30 = fmul double %24, %29
  %31 = bitcast i8* %14 to double*
  store double %30, double* %31, align 1
  %32 = getelementptr inbounds i8, i8* %14, i64 8
  %33 = bitcast i8* %32 to i64*
  store i64 %27, i64* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_jmpq_.L_480f2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
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

define %struct.Memory* @routine_jne_.L_480fe7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 232
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_481005(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_481070(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movaps_0x3c784__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3c784__rip__type* @G_0x3c784__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_ucomisd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %13 to double*
  %19 = load double, double* %18
  %20 = fcmp uno double %17, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd double %17, %19
  %23 = bitcast double %22 to i64
  %24 = and i64 %23, 9221120237041090560
  %25 = icmp eq i64 %24, 9218868437227405312
  %26 = and i64 %23, 2251799813685247
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt double %17, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt double %17, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq double %17, %19
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %37, %35, %33, %21
  %40 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 1, %37 ], [ 1, %21 ]
  %41 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 0, %37 ], [ 1, %21 ]
  %42 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 0, %37 ], [ 1, %21 ]
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %39, %37
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %49, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jbe_.L_48105d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x723e30___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 7487024
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 1, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_481062(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48101c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__0x723e30(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x723e30_type* @G_0x723e30 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_48109a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.updateMADModel(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4810c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4810be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__0x6cd300(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6cd300_type* @G_0x6cd300 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4810c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xf0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 240, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 240
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
  %25 = xor i64 240, %9
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
