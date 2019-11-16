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
%G_0x35123__rip__type = type <{ [8 x i8] }>
%G_0x35157__rip__type = type <{ [8 x i8] }>
%G_0x3515f__rip__type = type <{ [8 x i8] }>
%G_0x35167__rip__type = type <{ [8 x i8] }>
%G_0x351a0__rip__type = type <{ [8 x i8] }>
%G_0x351ac__rip__type = type <{ [8 x i8] }>
%G_0x351b0__rip__type = type <{ [8 x i8] }>
%G_0x3528e__rip__type = type <{ [8 x i8] }>
%G_0x352d3__rip__type = type <{ [8 x i8] }>
%G_0x3534a__rip__type = type <{ [8 x i8] }>
%G_0x35366__rip__type = type <{ [8 x i8] }>
%G_0x35406__rip__type = type <{ [8 x i8] }>
%G_0x35409__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cc5d8_type = type <{ [4 x i8] }>
%G_0x6ccf88_type = type <{ [16 x i8] }>
%G_0x6cd3a0_type = type <{ [16 x i8] }>
%G_0x6cea40_type = type <{ [16 x i8] }>
%G_0x6cfc68_type = type <{ [16 x i8] }>
%G_0x6d1fb0_type = type <{ [16 x i8] }>
%G_0x6d2190_type = type <{ [4 x i8] }>
%G_0x6d2eb8_type = type <{ [4 x i8] }>
%G_0x6d32d8_type = type <{ [4 x i8] }>
%G_0x6d45f0_type = type <{ [16 x i8] }>
%G_0x6d4748_type = type <{ [16 x i8] }>
%G_0x6f6f80_type = type <{ [16 x i8] }>
%G_0x6f80a0_type = type <{ [4 x i8] }>
%G_0x6f80c8_type = type <{ [4 x i8] }>
%G_0x6f8ed8_type = type <{ [4 x i8] }>
%G_0x6f9358_type = type <{ [16 x i8] }>
%G_0x6f9720_type = type <{ [4 x i8] }>
%G_0x70fce4_type = type <{ [4 x i8] }>
%G_0x710364_type = type <{ [4 x i8] }>
%G_0x710798_type = type <{ [16 x i8] }>
%G_0x722c78_type = type <{ [4 x i8] }>
%G_0x722fe0_type = type <{ [16 x i8] }>
%G_0x723648_type = type <{ [16 x i8] }>
%G_0x7242f4_type = type <{ [4 x i8] }>
%G_0x724744_type = type <{ [4 x i8] }>
%G_0x724bd0_type = type <{ [4 x i8] }>
%G_0x725570_type = type <{ [16 x i8] }>
%G_0x726420_type = type <{ [16 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0C\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x35123__rip_ = global %G_0x35123__rip__type zeroinitializer
@G_0x35157__rip_ = global %G_0x35157__rip__type zeroinitializer
@G_0x3515f__rip_ = global %G_0x3515f__rip__type zeroinitializer
@G_0x35167__rip_ = global %G_0x35167__rip__type zeroinitializer
@G_0x351a0__rip_ = global %G_0x351a0__rip__type zeroinitializer
@G_0x351ac__rip_ = global %G_0x351ac__rip__type zeroinitializer
@G_0x351b0__rip_ = global %G_0x351b0__rip__type zeroinitializer
@G_0x3528e__rip_ = global %G_0x3528e__rip__type zeroinitializer
@G_0x352d3__rip_ = global %G_0x352d3__rip__type zeroinitializer
@G_0x3534a__rip_ = global %G_0x3534a__rip__type zeroinitializer
@G_0x35366__rip_ = global %G_0x35366__rip__type zeroinitializer
@G_0x35406__rip_ = global %G_0x35406__rip__type zeroinitializer
@G_0x35409__rip_ = global %G_0x35409__rip__type zeroinitializer
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cc5d8 = global %G_0x6cc5d8_type zeroinitializer
@G_0x6ccf88 = global %G_0x6ccf88_type zeroinitializer
@G_0x6cd3a0 = global %G_0x6cd3a0_type zeroinitializer
@G_0x6cea40 = global %G_0x6cea40_type zeroinitializer
@G_0x6cfc68 = global %G_0x6cfc68_type zeroinitializer
@G_0x6d1fb0 = global %G_0x6d1fb0_type zeroinitializer
@G_0x6d2190 = global %G_0x6d2190_type zeroinitializer
@G_0x6d2eb8 = global %G_0x6d2eb8_type zeroinitializer
@G_0x6d32d8 = global %G_0x6d32d8_type zeroinitializer
@G_0x6d45f0 = global %G_0x6d45f0_type zeroinitializer
@G_0x6d4748 = global %G_0x6d4748_type zeroinitializer
@G_0x6f6f80 = global %G_0x6f6f80_type zeroinitializer
@G_0x6f80a0 = global %G_0x6f80a0_type zeroinitializer
@G_0x6f80c8 = global %G_0x6f80c8_type zeroinitializer
@G_0x6f8ed8 = global %G_0x6f8ed8_type zeroinitializer
@G_0x6f9358 = global %G_0x6f9358_type zeroinitializer
@G_0x6f9720 = global %G_0x6f9720_type zeroinitializer
@G_0x70fce4 = global %G_0x70fce4_type zeroinitializer
@G_0x710364 = global %G_0x710364_type zeroinitializer
@G_0x710798 = global %G_0x710798_type zeroinitializer
@G_0x722c78 = global %G_0x722c78_type zeroinitializer
@G_0x722fe0 = global %G_0x722fe0_type zeroinitializer
@G_0x723648 = global %G_0x723648_type zeroinitializer
@G_0x7242f4 = global %G_0x7242f4_type zeroinitializer
@G_0x724744 = global %G_0x724744_type zeroinitializer
@G_0x724bd0 = global %G_0x724bd0_type zeroinitializer
@G_0x725570 = global %G_0x725570_type zeroinitializer
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

; Function Attrs: alwaysinline
define %struct.Memory* @rc_init_seq(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47c370 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47c370, %struct.Memory** %MEMORY
  %loadMem_47c371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i18
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i18
  store i64 %26, i64* %RBP.i19, align 8
  store %struct.Memory* %loadMem_47c371, %struct.Memory** %MEMORY
  %loadMem_47c374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i32
  %36 = add i64 %35, 5
  store i64 %36, i64* %PC.i32
  store i64 256, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_47c374, %struct.Memory** %MEMORY
  %loadMem_47c379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 33
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %39 to i64*
  %40 = load i64, i64* %PC.i48
  %41 = add i64 %40, 11
  store i64 %41, i64* %PC.i48
  store i32 0, i32* bitcast (%G_0x6d2190_type* @G_0x6d2190 to i32*)
  store %struct.Memory* %loadMem_47c379, %struct.Memory** %MEMORY
  %loadMem_47c384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %44 to i64*
  %45 = load i64, i64* %PC.i151
  %46 = add i64 %45, 11
  store i64 %46, i64* %PC.i151
  store i32 0, i32* bitcast (%G_0x6d2eb8_type* @G_0x6d2eb8 to i32*)
  store %struct.Memory* %loadMem_47c384, %struct.Memory** %MEMORY
  %loadMem_47c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 33
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %PC.i297
  %54 = add i64 %53, 8
  store i64 %54, i64* %PC.i297
  %55 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %55, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_47c38f, %struct.Memory** %MEMORY
  %loadMem_47c397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %57 = getelementptr inbounds %struct.GPR, %struct.GPR* %56, i32 0, i32 33
  %58 = getelementptr inbounds %struct.Reg, %struct.Reg* %57, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %58 to i64*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %63 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %62, i64 0, i64 0
  %YMM0.i347 = bitcast %union.VectorReg* %63 to %"class.std::bitset"*
  %64 = bitcast %"class.std::bitset"* %YMM0.i347 to i8*
  %65 = load i64, i64* %RCX.i346
  %66 = add i64 %65, 3240
  %67 = load i64, i64* %PC.i345
  %68 = add i64 %67, 8
  store i64 %68, i64* %PC.i345
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69
  %71 = sitofp i32 %70 to double
  %72 = bitcast i8* %64 to double*
  store double %71, double* %72, align 1
  store %struct.Memory* %loadMem_47c397, %struct.Memory** %MEMORY
  %loadMem_47c39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 33
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %75 to i64*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %77 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %76, i64 0, i64 0
  %XMM0.i409 = bitcast %union.VectorReg* %77 to %union.vec128_t*
  %78 = bitcast %union.vec128_t* %XMM0.i409 to i8*
  %79 = load i64, i64* %PC.i408
  %80 = add i64 %79, 9
  store i64 %80, i64* %PC.i408
  %81 = bitcast i8* %78 to double*
  %82 = load double, double* %81, align 1
  store double %82, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  store %struct.Memory* %loadMem_47c39f, %struct.Memory** %MEMORY
  %loadMem_47c3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %PC.i406
  %90 = add i64 %89, 8
  store i64 %90, i64* %PC.i406
  %91 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %91, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_47c3a8, %struct.Memory** %MEMORY
  %loadMem_47c3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %99 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %98, i64 0, i64 0
  %YMM0.i405 = bitcast %union.VectorReg* %99 to %"class.std::bitset"*
  %100 = bitcast %"class.std::bitset"* %YMM0.i405 to i8*
  %101 = load i64, i64* %RCX.i404
  %102 = add i64 %101, 48
  %103 = load i64, i64* %PC.i403
  %104 = add i64 %103, 5
  store i64 %104, i64* %PC.i403
  %105 = inttoptr i64 %102 to float*
  %106 = load float, float* %105
  %107 = bitcast i8* %100 to float*
  store float %106, float* %107, align 1
  %108 = getelementptr inbounds i8, i8* %100, i64 4
  %109 = bitcast i8* %108 to float*
  store float 0.000000e+00, float* %109, align 1
  %110 = getelementptr inbounds i8, i8* %100, i64 8
  %111 = bitcast i8* %110 to float*
  store float 0.000000e+00, float* %111, align 1
  %112 = getelementptr inbounds i8, i8* %100, i64 12
  %113 = bitcast i8* %112 to float*
  store float 0.000000e+00, float* %113, align 1
  store %struct.Memory* %loadMem_47c3b0, %struct.Memory** %MEMORY
  %loadMem_47c3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %119 to i64*
  %120 = load i64, i64* %PC.i401
  %121 = add i64 %120, 8
  store i64 %121, i64* %PC.i401
  %122 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %122, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_47c3b5, %struct.Memory** %MEMORY
  %loadMem_47c3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RCX.i399
  %133 = add i64 %132, 1236
  %134 = load i64, i64* %PC.i398
  %135 = add i64 %134, 6
  store i64 %135, i64* %PC.i398
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_47c3bd, %struct.Memory** %MEMORY
  %loadMem_47c3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %RDX.i397
  %146 = load i64, i64* %PC.i396
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC.i396
  %148 = trunc i64 %145 to i32
  %149 = add i32 1, %148
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RDX.i397, align 8
  %151 = icmp ult i32 %149, %148
  %152 = icmp ult i32 %149, 1
  %153 = or i1 %151, %152
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %154, i8* %155, align 1
  %156 = and i32 %149, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %160, i8* %161, align 1
  %162 = xor i64 1, %145
  %163 = trunc i64 %162 to i32
  %164 = xor i32 %163, %149
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %167, i8* %168, align 1
  %169 = icmp eq i32 %149, 0
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %170, i8* %171, align 1
  %172 = lshr i32 %149, 31
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %173, i8* %174, align 1
  %175 = lshr i32 %148, 31
  %176 = xor i32 %172, %175
  %177 = add i32 %176, %172
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %179, i8* %180, align 1
  store %struct.Memory* %loadMem_47c3c3, %struct.Memory** %MEMORY
  %loadMem_47c3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %EDX.i394 = bitcast %union.anon* %186 to i32*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %187, i64 0, i64 1
  %YMM1.i395 = bitcast %union.VectorReg* %188 to %"class.std::bitset"*
  %189 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %190 = load i32, i32* %EDX.i394
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %PC.i393
  %193 = add i64 %192, 4
  store i64 %193, i64* %PC.i393
  %194 = bitcast i8* %189 to <2 x i32>*
  %195 = load <2 x i32>, <2 x i32>* %194, align 1
  %196 = getelementptr inbounds i8, i8* %189, i64 8
  %197 = bitcast i8* %196 to <2 x i32>*
  %198 = load <2 x i32>, <2 x i32>* %197, align 1
  %199 = sitofp i32 %190 to float
  %200 = bitcast i8* %189 to float*
  store float %199, float* %200, align 1
  %201 = extractelement <2 x i32> %195, i32 1
  %202 = getelementptr inbounds i8, i8* %189, i64 4
  %203 = bitcast i8* %202 to i32*
  store i32 %201, i32* %203, align 1
  %204 = extractelement <2 x i32> %198, i32 0
  %205 = bitcast i8* %196 to i32*
  store i32 %204, i32* %205, align 1
  %206 = extractelement <2 x i32> %198, i32 1
  %207 = getelementptr inbounds i8, i8* %189, i64 12
  %208 = bitcast i8* %207 to i32*
  store i32 %206, i32* %208, align 1
  store %struct.Memory* %loadMem_47c3c6, %struct.Memory** %MEMORY
  %loadMem_47c3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %212, i64 0, i64 0
  %YMM0.i391 = bitcast %union.VectorReg* %213 to %"class.std::bitset"*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %214, i64 0, i64 1
  %XMM1.i392 = bitcast %union.VectorReg* %215 to %union.vec128_t*
  %216 = bitcast %"class.std::bitset"* %YMM0.i391 to i8*
  %217 = bitcast %"class.std::bitset"* %YMM0.i391 to i8*
  %218 = bitcast %union.vec128_t* %XMM1.i392 to i8*
  %219 = load i64, i64* %PC.i390
  %220 = add i64 %219, 4
  store i64 %220, i64* %PC.i390
  %221 = bitcast i8* %217 to <2 x float>*
  %222 = load <2 x float>, <2 x float>* %221, align 1
  %223 = getelementptr inbounds i8, i8* %217, i64 8
  %224 = bitcast i8* %223 to <2 x i32>*
  %225 = load <2 x i32>, <2 x i32>* %224, align 1
  %226 = bitcast i8* %218 to <2 x float>*
  %227 = load <2 x float>, <2 x float>* %226, align 1
  %228 = extractelement <2 x float> %222, i32 0
  %229 = extractelement <2 x float> %227, i32 0
  %230 = fmul float %228, %229
  %231 = bitcast i8* %216 to float*
  store float %230, float* %231, align 1
  %232 = bitcast <2 x float> %222 to <2 x i32>
  %233 = extractelement <2 x i32> %232, i32 1
  %234 = getelementptr inbounds i8, i8* %216, i64 4
  %235 = bitcast i8* %234 to i32*
  store i32 %233, i32* %235, align 1
  %236 = extractelement <2 x i32> %225, i32 0
  %237 = getelementptr inbounds i8, i8* %216, i64 8
  %238 = bitcast i8* %237 to i32*
  store i32 %236, i32* %238, align 1
  %239 = extractelement <2 x i32> %225, i32 1
  %240 = getelementptr inbounds i8, i8* %216, i64 12
  %241 = bitcast i8* %240 to i32*
  store i32 %239, i32* %241, align 1
  store %struct.Memory* %loadMem_47c3ca, %struct.Memory** %MEMORY
  %loadMem_47c3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %PC.i388
  %249 = add i64 %248, 8
  store i64 %249, i64* %PC.i388
  %250 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %250, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_47c3ce, %struct.Memory** %MEMORY
  %loadMem_47c3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 7
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RDX.i387 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RCX.i386
  %261 = add i64 %260, 20
  %262 = load i64, i64* %PC.i385
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC.i385
  %264 = inttoptr i64 %261 to i32*
  %265 = load i32, i32* %264
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RDX.i387, align 8
  store %struct.Memory* %loadMem_47c3d6, %struct.Memory** %MEMORY
  %loadMem_47c3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %RDX.i384
  %274 = load i64, i64* %PC.i383
  %275 = add i64 %274, 3
  store i64 %275, i64* %PC.i383
  %276 = trunc i64 %273 to i32
  %277 = add i32 1, %276
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RDX.i384, align 8
  %279 = icmp ult i32 %277, %276
  %280 = icmp ult i32 %277, 1
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %282, i8* %283, align 1
  %284 = and i32 %277, 255
  %285 = call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %288, i8* %289, align 1
  %290 = xor i64 1, %273
  %291 = trunc i64 %290 to i32
  %292 = xor i32 %291, %277
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %295, i8* %296, align 1
  %297 = icmp eq i32 %277, 0
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %298, i8* %299, align 1
  %300 = lshr i32 %277, 31
  %301 = trunc i32 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %301, i8* %302, align 1
  %303 = lshr i32 %276, 31
  %304 = xor i32 %300, %303
  %305 = add i32 %304, %300
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %308, align 1
  store %struct.Memory* %loadMem_47c3d9, %struct.Memory** %MEMORY
  %loadMem_47c3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 7
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %EDX.i381 = bitcast %union.anon* %314 to i32*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %315, i64 0, i64 1
  %YMM1.i382 = bitcast %union.VectorReg* %316 to %"class.std::bitset"*
  %317 = bitcast %"class.std::bitset"* %YMM1.i382 to i8*
  %318 = load i32, i32* %EDX.i381
  %319 = zext i32 %318 to i64
  %320 = load i64, i64* %PC.i380
  %321 = add i64 %320, 4
  store i64 %321, i64* %PC.i380
  %322 = bitcast i8* %317 to <2 x i32>*
  %323 = load <2 x i32>, <2 x i32>* %322, align 1
  %324 = getelementptr inbounds i8, i8* %317, i64 8
  %325 = bitcast i8* %324 to <2 x i32>*
  %326 = load <2 x i32>, <2 x i32>* %325, align 1
  %327 = sitofp i32 %318 to float
  %328 = bitcast i8* %317 to float*
  store float %327, float* %328, align 1
  %329 = extractelement <2 x i32> %323, i32 1
  %330 = getelementptr inbounds i8, i8* %317, i64 4
  %331 = bitcast i8* %330 to i32*
  store i32 %329, i32* %331, align 1
  %332 = extractelement <2 x i32> %326, i32 0
  %333 = bitcast i8* %324 to i32*
  store i32 %332, i32* %333, align 1
  %334 = extractelement <2 x i32> %326, i32 1
  %335 = getelementptr inbounds i8, i8* %317, i64 12
  %336 = bitcast i8* %335 to i32*
  store i32 %334, i32* %336, align 1
  store %struct.Memory* %loadMem_47c3dc, %struct.Memory** %MEMORY
  %loadMem_47c3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %340, i64 0, i64 0
  %YMM0.i378 = bitcast %union.VectorReg* %341 to %"class.std::bitset"*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %342, i64 0, i64 1
  %XMM1.i379 = bitcast %union.VectorReg* %343 to %union.vec128_t*
  %344 = bitcast %"class.std::bitset"* %YMM0.i378 to i8*
  %345 = bitcast %"class.std::bitset"* %YMM0.i378 to i8*
  %346 = bitcast %union.vec128_t* %XMM1.i379 to i8*
  %347 = load i64, i64* %PC.i377
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC.i377
  %349 = bitcast i8* %345 to <2 x float>*
  %350 = load <2 x float>, <2 x float>* %349, align 1
  %351 = getelementptr inbounds i8, i8* %345, i64 8
  %352 = bitcast i8* %351 to <2 x i32>*
  %353 = load <2 x i32>, <2 x i32>* %352, align 1
  %354 = bitcast i8* %346 to <2 x float>*
  %355 = load <2 x float>, <2 x float>* %354, align 1
  %356 = extractelement <2 x float> %350, i32 0
  %357 = extractelement <2 x float> %355, i32 0
  %358 = fdiv float %356, %357
  %359 = bitcast i8* %344 to float*
  store float %358, float* %359, align 1
  %360 = bitcast <2 x float> %350 to <2 x i32>
  %361 = extractelement <2 x i32> %360, i32 1
  %362 = getelementptr inbounds i8, i8* %344, i64 4
  %363 = bitcast i8* %362 to i32*
  store i32 %361, i32* %363, align 1
  %364 = extractelement <2 x i32> %353, i32 0
  %365 = getelementptr inbounds i8, i8* %344, i64 8
  %366 = bitcast i8* %365 to i32*
  store i32 %364, i32* %366, align 1
  %367 = extractelement <2 x i32> %353, i32 1
  %368 = getelementptr inbounds i8, i8* %344, i64 12
  %369 = bitcast i8* %368 to i32*
  store i32 %367, i32* %369, align 1
  store %struct.Memory* %loadMem_47c3e0, %struct.Memory** %MEMORY
  %loadMem_47c3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %373, i64 0, i64 0
  %YMM0.i375 = bitcast %union.VectorReg* %374 to %"class.std::bitset"*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %375, i64 0, i64 0
  %XMM0.i376 = bitcast %union.VectorReg* %376 to %union.vec128_t*
  %377 = bitcast %"class.std::bitset"* %YMM0.i375 to i8*
  %378 = bitcast %union.vec128_t* %XMM0.i376 to i8*
  %379 = load i64, i64* %PC.i374
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC.i374
  %381 = bitcast i8* %378 to <2 x float>*
  %382 = load <2 x float>, <2 x float>* %381, align 1
  %383 = extractelement <2 x float> %382, i32 0
  %384 = fpext float %383 to double
  %385 = bitcast i8* %377 to double*
  store double %384, double* %385, align 1
  store %struct.Memory* %loadMem_47c3e4, %struct.Memory** %MEMORY
  %loadMem_47c3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %389, i64 0, i64 0
  %XMM0.i373 = bitcast %union.VectorReg* %390 to %union.vec128_t*
  %391 = bitcast %union.vec128_t* %XMM0.i373 to i8*
  %392 = load i64, i64* %PC.i372
  %393 = add i64 %392, 9
  store i64 %393, i64* %PC.i372
  %394 = bitcast i8* %391 to double*
  %395 = load double, double* %394, align 1
  store double %395, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*)
  store %struct.Memory* %loadMem_47c3e8, %struct.Memory** %MEMORY
  %loadMem_47c3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %399, i64 0, i64 0
  %YMM0.i371 = bitcast %union.VectorReg* %400 to %"class.std::bitset"*
  %401 = bitcast %"class.std::bitset"* %YMM0.i371 to i8*
  %402 = load i64, i64* %PC.i370
  %403 = add i64 %402, 9
  store i64 %403, i64* %PC.i370
  %404 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %405 = bitcast i8* %401 to double*
  store double %404, double* %405, align 1
  %406 = getelementptr inbounds i8, i8* %401, i64 8
  %407 = bitcast i8* %406 to double*
  store double 0.000000e+00, double* %407, align 1
  store %struct.Memory* %loadMem_47c3f1, %struct.Memory** %MEMORY
  %loadMem_47c3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %411, i64 0, i64 0
  %XMM0.i369 = bitcast %union.VectorReg* %412 to %union.vec128_t*
  %413 = bitcast %union.vec128_t* %XMM0.i369 to i8*
  %414 = load i64, i64* %PC.i368
  %415 = add i64 %414, 9
  store i64 %415, i64* %PC.i368
  %416 = bitcast i8* %413 to double*
  %417 = load double, double* %416, align 1
  store double %417, double* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to double*)
  store %struct.Memory* %loadMem_47c3fa, %struct.Memory** %MEMORY
  %loadMem_47c403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %PC.i366
  %425 = add i64 %424, 8
  store i64 %425, i64* %PC.i366
  %426 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %426, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_47c403, %struct.Memory** %MEMORY
  %loadMem_47c40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 7
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RDX.i365 = bitcast %union.anon* %435 to i64*
  %436 = load i64, i64* %RCX.i364
  %437 = add i64 %436, 60
  %438 = load i64, i64* %PC.i363
  %439 = add i64 %438, 3
  store i64 %439, i64* %PC.i363
  %440 = inttoptr i64 %437 to i32*
  %441 = load i32, i32* %440
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RDX.i365, align 8
  store %struct.Memory* %loadMem_47c40b, %struct.Memory** %MEMORY
  %loadMem_47c40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 5
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %PC.i361
  %450 = add i64 %449, 8
  store i64 %450, i64* %PC.i361
  %451 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %451, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_47c40e, %struct.Memory** %MEMORY
  %loadMem_47c416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 7
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %RDX.i360
  %462 = load i64, i64* %RCX.i359
  %463 = add i64 %462, 52
  %464 = load i64, i64* %PC.i358
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC.i358
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466
  %468 = shl i64 %461, 32
  %469 = ashr exact i64 %468, 32
  %470 = sext i32 %467 to i64
  %471 = mul i64 %470, %469
  %472 = trunc i64 %471 to i32
  %473 = and i64 %471, 4294967295
  store i64 %473, i64* %RDX.i360, align 8
  %474 = shl i64 %471, 32
  %475 = ashr exact i64 %474, 32
  %476 = icmp ne i64 %475, %471
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %477, i8* %478, align 1
  %479 = and i32 %472, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %485, align 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %486, align 1
  %487 = lshr i32 %472, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %477, i8* %490, align 1
  store %struct.Memory* %loadMem_47c416, %struct.Memory** %MEMORY
  %loadMem_47c41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %496 to i32*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i357
  %501 = sub i64 %500, 44
  %502 = load i32, i32* %EAX.i356
  %503 = zext i32 %502 to i64
  %504 = load i64, i64* %PC.i355
  %505 = add i64 %504, 3
  store i64 %505, i64* %PC.i355
  %506 = inttoptr i64 %501 to i32*
  store i32 %502, i32* %506
  store %struct.Memory* %loadMem_47c41a, %struct.Memory** %MEMORY
  %loadMem_47c41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 7
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %EDX.i353 = bitcast %union.anon* %512 to i32*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %515 to i64*
  %516 = load i32, i32* %EDX.i353
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %PC.i352
  %519 = add i64 %518, 2
  store i64 %519, i64* %PC.i352
  %520 = and i64 %517, 4294967295
  store i64 %520, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_47c41d, %struct.Memory** %MEMORY
  %loadMem_47c41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %PC.i351
  %525 = add i64 %524, 1
  store i64 %525, i64* %PC.i351
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %528 = bitcast %union.anon* %527 to i32*
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = lshr i64 %530, 32
  store i64 %531, i64* %526, align 8
  store %struct.Memory* %loadMem_47c41f, %struct.Memory** %MEMORY
  %loadMem_47c420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 9
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RSI.i349 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 15
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %RBP.i350
  %542 = sub i64 %541, 44
  %543 = load i64, i64* %PC.i348
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC.i348
  %545 = inttoptr i64 %542 to i32*
  %546 = load i32, i32* %545
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RSI.i349, align 8
  store %struct.Memory* %loadMem_47c420, %struct.Memory** %MEMORY
  %loadMem_47c423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 9
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %ESI.i343 = bitcast %union.anon* %553 to i32*
  %554 = load i32, i32* %ESI.i343
  %555 = zext i32 %554 to i64
  %556 = load i64, i64* %PC.i342
  %557 = add i64 %556, 2
  store i64 %557, i64* %PC.i342
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %559 = bitcast %union.anon* %558 to i32*
  %560 = load i32, i32* %559, align 8
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %563 = bitcast %union.anon* %562 to i32*
  %564 = load i32, i32* %563, align 8
  %565 = zext i32 %564 to i64
  %566 = shl i64 %555, 32
  %567 = ashr exact i64 %566, 32
  %568 = shl i64 %565, 32
  %569 = or i64 %568, %561
  %570 = sdiv i64 %569, %567
  %571 = shl i64 %570, 32
  %572 = ashr exact i64 %571, 32
  %573 = icmp eq i64 %570, %572
  br i1 %573, label %578, label %574

; <label>:574:                                    ; preds = %entry
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %576, %struct.Memory* %loadMem_47c423)
  br label %routine_idivl__esi.exit344

; <label>:578:                                    ; preds = %entry
  %579 = srem i64 %569, %567
  %580 = getelementptr inbounds %union.anon, %union.anon* %558, i64 0, i32 0
  %581 = and i64 %570, 4294967295
  store i64 %581, i64* %580, align 8
  %582 = getelementptr inbounds %union.anon, %union.anon* %562, i64 0, i32 0
  %583 = and i64 %579, 4294967295
  store i64 %583, i64* %582, align 8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %584, align 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %585, align 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %586, align 1
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %587, align 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %588, align 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %589, align 1
  br label %routine_idivl__esi.exit344

routine_idivl__esi.exit344:                       ; preds = %574, %578
  %590 = phi %struct.Memory* [ %577, %574 ], [ %loadMem_47c423, %578 ]
  store %struct.Memory* %590, %struct.Memory** %MEMORY
  %loadMem_47c425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 5
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %PC.i340
  %598 = add i64 %597, 8
  store i64 %598, i64* %PC.i340
  %599 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %599, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_47c425, %struct.Memory** %MEMORY
  %loadMem_47c42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %605 to i32*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 5
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RCX.i339
  %610 = add i64 %609, 72608
  %611 = load i32, i32* %EAX.i338
  %612 = zext i32 %611 to i64
  %613 = load i64, i64* %PC.i337
  %614 = add i64 %613, 6
  store i64 %614, i64* %PC.i337
  %615 = inttoptr i64 %610 to i32*
  store i32 %611, i32* %615
  store %struct.Memory* %loadMem_47c42d, %struct.Memory** %MEMORY
  %loadMem_47c433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 5
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %PC.i335
  %623 = add i64 %622, 8
  store i64 %623, i64* %PC.i335
  %624 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %624, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_47c433, %struct.Memory** %MEMORY
  %loadMem_47c43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 5
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %RCX.i334
  %635 = add i64 %634, 3248
  %636 = load i64, i64* %PC.i332
  %637 = add i64 %636, 6
  store i64 %637, i64* %PC.i332
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_47c43b, %struct.Memory** %MEMORY
  %loadMem_47c441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 5
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %PC.i330
  %648 = add i64 %647, 8
  store i64 %648, i64* %PC.i330
  %649 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %649, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_47c441, %struct.Memory** %MEMORY
  %loadMem_47c449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %655 to i32*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 5
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %658 to i64*
  %659 = load i32, i32* %EAX.i328
  %660 = zext i32 %659 to i64
  %661 = load i64, i64* %RCX.i329
  %662 = add i64 %661, 72608
  %663 = load i64, i64* %PC.i327
  %664 = add i64 %663, 6
  store i64 %664, i64* %PC.i327
  %665 = inttoptr i64 %662 to i32*
  %666 = load i32, i32* %665
  %667 = sub i32 %659, %666
  %668 = icmp ult i32 %659, %666
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %669, i8* %670, align 1
  %671 = and i32 %667, 255
  %672 = call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %675, i8* %676, align 1
  %677 = xor i32 %666, %659
  %678 = xor i32 %677, %667
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %681, i8* %682, align 1
  %683 = icmp eq i32 %667, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1
  %686 = lshr i32 %667, 31
  %687 = trunc i32 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1
  %689 = lshr i32 %659, 31
  %690 = lshr i32 %666, 31
  %691 = xor i32 %690, %689
  %692 = xor i32 %686, %689
  %693 = add i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %695, i8* %696, align 1
  store %struct.Memory* %loadMem_47c449, %struct.Memory** %MEMORY
  %loadMem_47c44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %PC.i326
  %701 = add i64 %700, 34
  %702 = load i64, i64* %PC.i326
  %703 = add i64 %702, 6
  %704 = load i64, i64* %PC.i326
  %705 = add i64 %704, 6
  store i64 %705, i64* %PC.i326
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %707 = load i8, i8* %706, align 1
  %708 = icmp ne i8 %707, 0
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %710 = load i8, i8* %709, align 1
  %711 = icmp ne i8 %710, 0
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %713 = load i8, i8* %712, align 1
  %714 = icmp ne i8 %713, 0
  %715 = xor i1 %711, %714
  %716 = or i1 %708, %715
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %BRANCH_TAKEN, align 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %719 = select i1 %716, i64 %701, i64 %703
  store i64 %719, i64* %718, align 8
  store %struct.Memory* %loadMem_47c44f, %struct.Memory** %MEMORY
  %loadBr_47c44f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c44f = icmp eq i8 %loadBr_47c44f, 1
  br i1 %cmpBr_47c44f, label %block_.L_47c471, label %block_47c455

block_47c455:                                     ; preds = %routine_idivl__esi.exit344
  %loadMem_47c455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %PC.i324
  %727 = add i64 %726, 8
  store i64 %727, i64* %PC.i324
  %728 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %728, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_47c455, %struct.Memory** %MEMORY
  %loadMem_47c45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 5
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RAX.i322
  %739 = add i64 %738, 72608
  %740 = load i64, i64* %PC.i321
  %741 = add i64 %740, 6
  store i64 %741, i64* %PC.i321
  %742 = inttoptr i64 %739 to i32*
  %743 = load i32, i32* %742
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_47c45d, %struct.Memory** %MEMORY
  %loadMem_47c463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 1
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %PC.i319
  %752 = add i64 %751, 8
  store i64 %752, i64* %PC.i319
  %753 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %753, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_47c463, %struct.Memory** %MEMORY
  %loadMem_47c46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 5
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %ECX.i317 = bitcast %union.anon* %759 to i32*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RAX.i318
  %764 = add i64 %763, 3248
  %765 = load i32, i32* %ECX.i317
  %766 = zext i32 %765 to i64
  %767 = load i64, i64* %PC.i316
  %768 = add i64 %767, 6
  store i64 %768, i64* %PC.i316
  %769 = inttoptr i64 %764 to i32*
  store i32 %765, i32* %769
  store %struct.Memory* %loadMem_47c46b, %struct.Memory** %MEMORY
  br label %block_.L_47c471

block_.L_47c471:                                  ; preds = %block_47c455, %routine_idivl__esi.exit344
  %loadMem_47c471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %775 to i64*
  %776 = load i64, i64* %PC.i314
  %777 = add i64 %776, 8
  store i64 %777, i64* %PC.i314
  %778 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %778, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_47c471, %struct.Memory** %MEMORY
  %loadMem_47c479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 1
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 5
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %RAX.i312
  %789 = add i64 %788, 3248
  %790 = load i64, i64* %PC.i311
  %791 = add i64 %790, 6
  store i64 %791, i64* %PC.i311
  %792 = inttoptr i64 %789 to i32*
  %793 = load i32, i32* %792
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_47c479, %struct.Memory** %MEMORY
  %loadMem_47c47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %PC.i309
  %802 = add i64 %801, 8
  store i64 %802, i64* %PC.i309
  %803 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %803, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_47c47f, %struct.Memory** %MEMORY
  %loadMem_47c487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %809 to i32*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 1
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %812 to i64*
  %813 = load i32, i32* %ECX.i
  %814 = zext i32 %813 to i64
  %815 = load i64, i64* %RAX.i308
  %816 = add i64 %815, 72608
  %817 = load i64, i64* %PC.i307
  %818 = add i64 %817, 6
  store i64 %818, i64* %PC.i307
  %819 = inttoptr i64 %816 to i32*
  %820 = load i32, i32* %819
  %821 = sub i32 %813, %820
  %822 = icmp ult i32 %813, %820
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %823, i8* %824, align 1
  %825 = and i32 %821, 255
  %826 = call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %829, i8* %830, align 1
  %831 = xor i32 %820, %813
  %832 = xor i32 %831, %821
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %835, i8* %836, align 1
  %837 = icmp eq i32 %821, 0
  %838 = zext i1 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %838, i8* %839, align 1
  %840 = lshr i32 %821, 31
  %841 = trunc i32 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %841, i8* %842, align 1
  %843 = lshr i32 %813, 31
  %844 = lshr i32 %820, 31
  %845 = xor i32 %844, %843
  %846 = xor i32 %840, %843
  %847 = add i32 %846, %845
  %848 = icmp eq i32 %847, 2
  %849 = zext i1 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %849, i8* %850, align 1
  store %struct.Memory* %loadMem_47c487, %struct.Memory** %MEMORY
  %loadMem_47c48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %PC.i306
  %855 = add i64 %854, 42
  %856 = load i64, i64* %PC.i306
  %857 = add i64 %856, 6
  %858 = load i64, i64* %PC.i306
  %859 = add i64 %858, 6
  store i64 %859, i64* %PC.i306
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %861 = load i8, i8* %860, align 1
  %862 = icmp ne i8 %861, 0
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %864 = load i8, i8* %863, align 1
  %865 = icmp ne i8 %864, 0
  %866 = xor i1 %862, %865
  %867 = xor i1 %866, true
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %BRANCH_TAKEN, align 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %870 = select i1 %866, i64 %857, i64 %855
  store i64 %870, i64* %869, align 8
  store %struct.Memory* %loadMem_47c48d, %struct.Memory** %MEMORY
  %loadBr_47c48d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c48d = icmp eq i8 %loadBr_47c48d, 1
  br i1 %cmpBr_47c48d, label %block_.L_47c4b7, label %block_47c493

block_47c493:                                     ; preds = %block_.L_47c471
  %loadMem_47c493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %PC.i304
  %878 = add i64 %877, 8
  store i64 %878, i64* %PC.i304
  %879 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %879, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_47c493, %struct.Memory** %MEMORY
  %loadMem_47c49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 1
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RAX.i303
  %887 = add i64 %886, 72608
  %888 = load i64, i64* %PC.i302
  %889 = add i64 %888, 6
  store i64 %889, i64* %PC.i302
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_47c49b, %struct.Memory** %MEMORY
  %loadMem_47c4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 5
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %PC.i300
  %900 = add i64 %899, 8
  store i64 %900, i64* %PC.i300
  %901 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %901, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_47c4a1, %struct.Memory** %MEMORY
  %loadMem_47c4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %PC.i299
  %906 = add i64 %905, 1
  store i64 %906, i64* %PC.i299
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %909 = bitcast %union.anon* %908 to i32*
  %910 = load i32, i32* %909, align 8
  %911 = sext i32 %910 to i64
  %912 = lshr i64 %911, 32
  store i64 %912, i64* %907, align 8
  store %struct.Memory* %loadMem_47c4a9, %struct.Memory** %MEMORY
  %loadMem_47c4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 5
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RCX.i296
  %920 = add i64 %919, 3248
  %921 = load i64, i64* %PC.i295
  %922 = add i64 %921, 6
  store i64 %922, i64* %PC.i295
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %924 = bitcast %union.anon* %923 to i32*
  %925 = load i32, i32* %924, align 8
  %926 = zext i32 %925 to i64
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %928 = bitcast %union.anon* %927 to i32*
  %929 = load i32, i32* %928, align 8
  %930 = zext i32 %929 to i64
  %931 = inttoptr i64 %920 to i32*
  %932 = load i32, i32* %931
  %933 = sext i32 %932 to i64
  %934 = shl i64 %930, 32
  %935 = or i64 %934, %926
  %936 = sdiv i64 %935, %933
  %937 = shl i64 %936, 32
  %938 = ashr exact i64 %937, 32
  %939 = icmp eq i64 %936, %938
  br i1 %939, label %944, label %940

; <label>:940:                                    ; preds = %block_47c493
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %942 = load i64, i64* %941, align 8
  %943 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %942, %struct.Memory* %loadMem_47c4aa)
  br label %routine_idivl_0xcb0__rcx_.exit

; <label>:944:                                    ; preds = %block_47c493
  %945 = srem i64 %935, %933
  %946 = getelementptr inbounds %union.anon, %union.anon* %923, i64 0, i32 0
  %947 = and i64 %936, 4294967295
  store i64 %947, i64* %946, align 8
  %948 = getelementptr inbounds %union.anon, %union.anon* %927, i64 0, i32 0
  %949 = and i64 %945, 4294967295
  store i64 %949, i64* %948, align 8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %950, align 1
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %951, align 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %952, align 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %954, align 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %955, align 1
  br label %routine_idivl_0xcb0__rcx_.exit

routine_idivl_0xcb0__rcx_.exit:                   ; preds = %940, %944
  %956 = phi %struct.Memory* [ %943, %940 ], [ %loadMem_47c4aa, %944 ]
  store %struct.Memory* %956, %struct.Memory** %MEMORY
  %loadMem_47c4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 33
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 1
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %962 to i32*
  %963 = load i32, i32* %EAX.i294
  %964 = zext i32 %963 to i64
  %965 = load i64, i64* %PC.i293
  %966 = add i64 %965, 7
  store i64 %966, i64* %PC.i293
  store i32 %963, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  store %struct.Memory* %loadMem_47c4b0, %struct.Memory** %MEMORY
  br label %block_.L_47c4b7

block_.L_47c4b7:                                  ; preds = %routine_idivl_0xcb0__rcx_.exit, %block_.L_47c471
  %loadMem_47c4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %970, i64 0, i64 0
  %YMM0.i292 = bitcast %union.VectorReg* %971 to %"class.std::bitset"*
  %972 = bitcast %"class.std::bitset"* %YMM0.i292 to i8*
  %973 = load i64, i64* %PC.i291
  %974 = add i64 %973, ptrtoint (%G_0x35409__rip__type* @G_0x35409__rip_ to i64)
  %975 = load i64, i64* %PC.i291
  %976 = add i64 %975, 8
  store i64 %976, i64* %PC.i291
  %977 = inttoptr i64 %974 to double*
  %978 = load double, double* %977
  %979 = bitcast i8* %972 to double*
  store double %978, double* %979, align 1
  %980 = getelementptr inbounds i8, i8* %972, i64 8
  %981 = bitcast i8* %980 to double*
  store double 0.000000e+00, double* %981, align 1
  store %struct.Memory* %loadMem_47c4b7, %struct.Memory** %MEMORY
  %loadMem_47c4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %985, i64 0, i64 1
  %YMM1.i289 = bitcast %union.VectorReg* %986 to %"class.std::bitset"*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %988 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %987, i64 0, i64 1
  %XMM1.i290 = bitcast %union.VectorReg* %988 to %union.vec128_t*
  %989 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %990 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %991 = bitcast %union.vec128_t* %XMM1.i290 to i8*
  %992 = load i64, i64* %PC.i288
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC.i288
  %994 = bitcast i8* %990 to i64*
  %995 = load i64, i64* %994, align 1
  %996 = getelementptr inbounds i8, i8* %990, i64 8
  %997 = bitcast i8* %996 to i64*
  %998 = load i64, i64* %997, align 1
  %999 = bitcast i8* %991 to i64*
  %1000 = load i64, i64* %999, align 1
  %1001 = getelementptr inbounds i8, i8* %991, i64 8
  %1002 = bitcast i8* %1001 to i64*
  %1003 = load i64, i64* %1002, align 1
  %1004 = xor i64 %1000, %995
  %1005 = xor i64 %1003, %998
  %1006 = trunc i64 %1004 to i32
  %1007 = lshr i64 %1004, 32
  %1008 = trunc i64 %1007 to i32
  %1009 = bitcast i8* %989 to i32*
  store i32 %1006, i32* %1009, align 1
  %1010 = getelementptr inbounds i8, i8* %989, i64 4
  %1011 = bitcast i8* %1010 to i32*
  store i32 %1008, i32* %1011, align 1
  %1012 = trunc i64 %1005 to i32
  %1013 = getelementptr inbounds i8, i8* %989, i64 8
  %1014 = bitcast i8* %1013 to i32*
  store i32 %1012, i32* %1014, align 1
  %1015 = lshr i64 %1005, 32
  %1016 = trunc i64 %1015 to i32
  %1017 = getelementptr inbounds i8, i8* %989, i64 12
  %1018 = bitcast i8* %1017 to i32*
  store i32 %1016, i32* %1018, align 1
  store %struct.Memory* %loadMem_47c4bf, %struct.Memory** %MEMORY
  %loadMem_47c4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1022, i64 0, i64 2
  %YMM2.i287 = bitcast %union.VectorReg* %1023 to %"class.std::bitset"*
  %1024 = bitcast %"class.std::bitset"* %YMM2.i287 to i8*
  %1025 = load i64, i64* %PC.i286
  %1026 = add i64 %1025, ptrtoint (%G_0x35406__rip__type* @G_0x35406__rip_ to i64)
  %1027 = load i64, i64* %PC.i286
  %1028 = add i64 %1027, 8
  store i64 %1028, i64* %PC.i286
  %1029 = inttoptr i64 %1026 to double*
  %1030 = load double, double* %1029
  %1031 = bitcast i8* %1024 to double*
  store double %1030, double* %1031, align 1
  %1032 = getelementptr inbounds i8, i8* %1024, i64 8
  %1033 = bitcast i8* %1032 to double*
  store double 0.000000e+00, double* %1033, align 1
  store %struct.Memory* %loadMem_47c4c2, %struct.Memory** %MEMORY
  %loadMem_47c4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1037, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %1038 to %"class.std::bitset"*
  %1039 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %1040 = load i64, i64* %PC.i285
  %1041 = add i64 %1040, ptrtoint (%G_0x35366__rip__type* @G_0x35366__rip_ to i64)
  %1042 = load i64, i64* %PC.i285
  %1043 = add i64 %1042, 8
  store i64 %1043, i64* %PC.i285
  %1044 = inttoptr i64 %1041 to double*
  %1045 = load double, double* %1044
  %1046 = bitcast i8* %1039 to double*
  store double %1045, double* %1046, align 1
  %1047 = getelementptr inbounds i8, i8* %1039, i64 8
  %1048 = bitcast i8* %1047 to double*
  store double 0.000000e+00, double* %1048, align 1
  store %struct.Memory* %loadMem_47c4ca, %struct.Memory** %MEMORY
  %loadMem_47c4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1053 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1052, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %1053 to %union.vec128_t*
  %1054 = bitcast %union.vec128_t* %XMM3.i to i8*
  %1055 = load i64, i64* %PC.i284
  %1056 = add i64 %1055, 9
  store i64 %1056, i64* %PC.i284
  %1057 = bitcast i8* %1054 to double*
  %1058 = load double, double* %1057, align 1
  store double %1058, double* bitcast (%G_0x723648_type* @G_0x723648 to double*)
  store %struct.Memory* %loadMem_47c4d2, %struct.Memory** %MEMORY
  %loadMem_47c4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1062, i64 0, i64 2
  %YMM2.i283 = bitcast %union.VectorReg* %1063 to %"class.std::bitset"*
  %1064 = bitcast %"class.std::bitset"* %YMM2.i283 to i8*
  %1065 = bitcast %"class.std::bitset"* %YMM2.i283 to i8*
  %1066 = load i64, i64* %PC.i282
  %1067 = add i64 %1066, 9
  store i64 %1067, i64* %PC.i282
  %1068 = bitcast i8* %1065 to double*
  %1069 = load double, double* %1068, align 1
  %1070 = getelementptr inbounds i8, i8* %1065, i64 8
  %1071 = bitcast i8* %1070 to i64*
  %1072 = load i64, i64* %1071, align 1
  %1073 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %1074 = fmul double %1069, %1073
  %1075 = bitcast i8* %1064 to double*
  store double %1074, double* %1075, align 1
  %1076 = getelementptr inbounds i8, i8* %1064, i64 8
  %1077 = bitcast i8* %1076 to i64*
  store i64 %1072, i64* %1077, align 1
  store %struct.Memory* %loadMem_47c4db, %struct.Memory** %MEMORY
  %loadMem_47c4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1082 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1081, i64 0, i64 2
  %XMM2.i281 = bitcast %union.VectorReg* %1082 to %union.vec128_t*
  %1083 = bitcast %union.vec128_t* %XMM2.i281 to i8*
  %1084 = load i64, i64* %PC.i280
  %1085 = add i64 %1084, 9
  store i64 %1085, i64* %PC.i280
  %1086 = bitcast i8* %1083 to double*
  %1087 = load double, double* %1086, align 1
  store double %1087, double* bitcast (%G_0x6d4748_type* @G_0x6d4748 to double*)
  store %struct.Memory* %loadMem_47c4e4, %struct.Memory** %MEMORY
  %loadMem_47c4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1091, i64 0, i64 1
  %XMM1.i279 = bitcast %union.VectorReg* %1092 to %union.vec128_t*
  %1093 = bitcast %union.vec128_t* %XMM1.i279 to i8*
  %1094 = load i64, i64* %PC.i278
  %1095 = add i64 %1094, 9
  store i64 %1095, i64* %PC.i278
  %1096 = bitcast i8* %1093 to double*
  %1097 = load double, double* %1096, align 1
  store double %1097, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*)
  store %struct.Memory* %loadMem_47c4ed, %struct.Memory** %MEMORY
  %loadMem_47c4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1101, i64 0, i64 1
  %YMM1.i277 = bitcast %union.VectorReg* %1102 to %"class.std::bitset"*
  %1103 = bitcast %"class.std::bitset"* %YMM1.i277 to i8*
  %1104 = load i64, i64* %PC.i276
  %1105 = add i64 %1104, 9
  store i64 %1105, i64* %PC.i276
  %1106 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*)
  %1107 = bitcast i8* %1103 to double*
  store double %1106, double* %1107, align 1
  %1108 = getelementptr inbounds i8, i8* %1103, i64 8
  %1109 = bitcast i8* %1108 to double*
  store double 0.000000e+00, double* %1109, align 1
  store %struct.Memory* %loadMem_47c4f6, %struct.Memory** %MEMORY
  %loadMem_47c4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1113, i64 0, i64 1
  %XMM1.i275 = bitcast %union.VectorReg* %1114 to %union.vec128_t*
  %1115 = bitcast %union.vec128_t* %XMM1.i275 to i8*
  %1116 = load i64, i64* %PC.i274
  %1117 = add i64 %1116, 9
  store i64 %1117, i64* %PC.i274
  %1118 = bitcast i8* %1115 to double*
  %1119 = load double, double* %1118, align 1
  store double %1119, double* bitcast (%G_0x722fe0_type* @G_0x722fe0 to double*)
  store %struct.Memory* %loadMem_47c4ff, %struct.Memory** %MEMORY
  %loadMem_47c508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1123, i64 0, i64 0
  %YMM0.i273 = bitcast %union.VectorReg* %1124 to %"class.std::bitset"*
  %1125 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %1126 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %1127 = load i64, i64* %PC.i272
  %1128 = add i64 %1127, 9
  store i64 %1128, i64* %PC.i272
  %1129 = bitcast i8* %1126 to double*
  %1130 = load double, double* %1129, align 1
  %1131 = getelementptr inbounds i8, i8* %1126, i64 8
  %1132 = bitcast i8* %1131 to i64*
  %1133 = load i64, i64* %1132, align 1
  %1134 = load double, double* bitcast (%G_0x6d4748_type* @G_0x6d4748 to double*)
  %1135 = fmul double %1130, %1134
  %1136 = bitcast i8* %1125 to double*
  store double %1135, double* %1136, align 1
  %1137 = getelementptr inbounds i8, i8* %1125, i64 8
  %1138 = bitcast i8* %1137 to i64*
  store i64 %1133, i64* %1138, align 1
  store %struct.Memory* %loadMem_47c508, %struct.Memory** %MEMORY
  %loadMem_47c511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1142, i64 0, i64 0
  %XMM0.i271 = bitcast %union.VectorReg* %1143 to %union.vec128_t*
  %1144 = bitcast %union.vec128_t* %XMM0.i271 to i8*
  %1145 = load i64, i64* %PC.i270
  %1146 = add i64 %1145, 9
  store i64 %1146, i64* %PC.i270
  %1147 = bitcast i8* %1144 to double*
  %1148 = load double, double* %1147, align 1
  store double %1148, double* inttoptr (i64 7303032 to double*)
  store %struct.Memory* %loadMem_47c511, %struct.Memory** %MEMORY
  %loadMem_47c51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %PC.i269
  %1153 = add i64 %1152, 11
  store i64 %1153, i64* %PC.i269
  store i32 0, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  store %struct.Memory* %loadMem_47c51a, %struct.Memory** %MEMORY
  %loadMem_47c525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %PC.i268
  %1158 = add i64 %1157, 11
  store i64 %1158, i64* %PC.i268
  store i32 0, i32* bitcast (%G_0x7242f4_type* @G_0x7242f4 to i32*)
  store %struct.Memory* %loadMem_47c525, %struct.Memory** %MEMORY
  %loadMem_47c530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %PC.i266
  %1166 = add i64 %1165, 8
  store i64 %1166, i64* %PC.i266
  %1167 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1167, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_47c530, %struct.Memory** %MEMORY
  %loadMem_47c538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %1173 to i64*
  %1174 = load i64, i64* %RAX.i265
  %1175 = add i64 %1174, 72560
  %1176 = load i64, i64* %PC.i264
  %1177 = add i64 %1176, 10
  store i64 %1177, i64* %PC.i264
  %1178 = inttoptr i64 %1175 to i32*
  store i32 0, i32* %1178
  store %struct.Memory* %loadMem_47c538, %struct.Memory** %MEMORY
  %loadMem_47c542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %PC.i262
  %1186 = add i64 %1185, 8
  store i64 %1186, i64* %PC.i262
  %1187 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1187, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_47c542, %struct.Memory** %MEMORY
  %loadMem_47c54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RAX.i261
  %1195 = add i64 %1194, 72564
  %1196 = load i64, i64* %PC.i260
  %1197 = add i64 %1196, 10
  store i64 %1197, i64* %PC.i260
  %1198 = inttoptr i64 %1195 to i32*
  store i32 0, i32* %1198
  store %struct.Memory* %loadMem_47c54a, %struct.Memory** %MEMORY
  %loadMem_47c554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %PC.i258
  %1206 = add i64 %1205, 8
  store i64 %1206, i64* %PC.i258
  %1207 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1207, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_47c554, %struct.Memory** %MEMORY
  %loadMem_47c55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 1
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %RAX.i257
  %1215 = add i64 %1214, 72568
  %1216 = load i64, i64* %PC.i256
  %1217 = add i64 %1216, 10
  store i64 %1217, i64* %PC.i256
  %1218 = inttoptr i64 %1215 to i32*
  store i32 0, i32* %1218
  store %struct.Memory* %loadMem_47c55c, %struct.Memory** %MEMORY
  %loadMem_47c566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %PC.i255
  %1223 = add i64 %1222, 11
  store i64 %1223, i64* %PC.i255
  store i32 0, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*)
  store %struct.Memory* %loadMem_47c566, %struct.Memory** %MEMORY
  %loadMem_47c571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 1
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %PC.i253
  %1231 = add i64 %1230, 8
  store i64 %1231, i64* %PC.i253
  %1232 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1232, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_47c571, %struct.Memory** %MEMORY
  %loadMem_47c579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RAX.i252
  %1240 = add i64 %1239, 1236
  %1241 = load i64, i64* %PC.i251
  %1242 = add i64 %1241, 7
  store i64 %1242, i64* %PC.i251
  %1243 = inttoptr i64 %1240 to i32*
  %1244 = load i32, i32* %1243
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1245, align 1
  %1246 = and i32 %1244, 255
  %1247 = call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1250, i8* %1251, align 1
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1252, align 1
  %1253 = icmp eq i32 %1244, 0
  %1254 = zext i1 %1253 to i8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1254, i8* %1255, align 1
  %1256 = lshr i32 %1244, 31
  %1257 = trunc i32 %1256 to i8
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1257, i8* %1258, align 1
  %1259 = lshr i32 %1244, 31
  %1260 = xor i32 %1256, %1259
  %1261 = add i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1263, i8* %1264, align 1
  store %struct.Memory* %loadMem_47c579, %struct.Memory** %MEMORY
  %loadMem_47c580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %PC.i250
  %1269 = add i64 %1268, 45
  %1270 = load i64, i64* %PC.i250
  %1271 = add i64 %1270, 6
  %1272 = load i64, i64* %PC.i250
  %1273 = add i64 %1272, 6
  store i64 %1273, i64* %PC.i250
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1275 = load i8, i8* %1274, align 1
  %1276 = icmp ne i8 %1275, 0
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1278 = load i8, i8* %1277, align 1
  %1279 = icmp ne i8 %1278, 0
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1281 = load i8, i8* %1280, align 1
  %1282 = icmp ne i8 %1281, 0
  %1283 = xor i1 %1279, %1282
  %1284 = or i1 %1276, %1283
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %BRANCH_TAKEN, align 1
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1287 = select i1 %1284, i64 %1269, i64 %1271
  store i64 %1287, i64* %1286, align 8
  store %struct.Memory* %loadMem_47c580, %struct.Memory** %MEMORY
  %loadBr_47c580 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c580 = icmp eq i8 %loadBr_47c580, 1
  br i1 %cmpBr_47c580, label %block_.L_47c5ad, label %block_47c586

block_47c586:                                     ; preds = %block_.L_47c4b7
  %loadMem_47c586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1291, i64 0, i64 0
  %YMM0.i249 = bitcast %union.VectorReg* %1292 to %"class.std::bitset"*
  %1293 = bitcast %"class.std::bitset"* %YMM0.i249 to i8*
  %1294 = load i64, i64* %PC.i248
  %1295 = add i64 %1294, ptrtoint (%G_0x3534a__rip__type* @G_0x3534a__rip_ to i64)
  %1296 = load i64, i64* %PC.i248
  %1297 = add i64 %1296, 8
  store i64 %1297, i64* %PC.i248
  %1298 = inttoptr i64 %1295 to double*
  %1299 = load double, double* %1298
  %1300 = bitcast i8* %1293 to double*
  store double %1299, double* %1300, align 1
  %1301 = getelementptr inbounds i8, i8* %1293, i64 8
  %1302 = bitcast i8* %1301 to double*
  store double 0.000000e+00, double* %1302, align 1
  store %struct.Memory* %loadMem_47c586, %struct.Memory** %MEMORY
  %loadMem_47c58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1306, i64 0, i64 1
  %YMM1.i247 = bitcast %union.VectorReg* %1307 to %"class.std::bitset"*
  %1308 = bitcast %"class.std::bitset"* %YMM1.i247 to i8*
  %1309 = load i64, i64* %PC.i246
  %1310 = add i64 %1309, ptrtoint (%G_0x3534a__rip__type* @G_0x3534a__rip_ to i64)
  %1311 = load i64, i64* %PC.i246
  %1312 = add i64 %1311, 8
  store i64 %1312, i64* %PC.i246
  %1313 = inttoptr i64 %1310 to double*
  %1314 = load double, double* %1313
  %1315 = bitcast i8* %1308 to double*
  store double %1314, double* %1315, align 1
  %1316 = getelementptr inbounds i8, i8* %1308, i64 8
  %1317 = bitcast i8* %1316 to double*
  store double 0.000000e+00, double* %1317, align 1
  store %struct.Memory* %loadMem_47c58e, %struct.Memory** %MEMORY
  %loadMem_47c596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1321, i64 0, i64 1
  %XMM1.i245 = bitcast %union.VectorReg* %1322 to %union.vec128_t*
  %1323 = bitcast %union.vec128_t* %XMM1.i245 to i8*
  %1324 = load i64, i64* %PC.i244
  %1325 = add i64 %1324, 9
  store i64 %1325, i64* %PC.i244
  %1326 = bitcast i8* %1323 to double*
  %1327 = load double, double* %1326, align 1
  store double %1327, double* bitcast (%G_0x725570_type* @G_0x725570 to double*)
  store %struct.Memory* %loadMem_47c596, %struct.Memory** %MEMORY
  %loadMem_47c59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1331, i64 0, i64 0
  %XMM0.i243 = bitcast %union.VectorReg* %1332 to %union.vec128_t*
  %1333 = bitcast %union.vec128_t* %XMM0.i243 to i8*
  %1334 = load i64, i64* %PC.i242
  %1335 = add i64 %1334, 9
  store i64 %1335, i64* %PC.i242
  %1336 = bitcast i8* %1333 to double*
  %1337 = load double, double* %1336, align 1
  store double %1337, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*)
  store %struct.Memory* %loadMem_47c59f, %struct.Memory** %MEMORY
  %loadMem_47c5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %PC.i241
  %1342 = add i64 %1341, 31
  %1343 = load i64, i64* %PC.i241
  %1344 = add i64 %1343, 5
  store i64 %1344, i64* %PC.i241
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1342, i64* %1345, align 8
  store %struct.Memory* %loadMem_47c5a8, %struct.Memory** %MEMORY
  br label %block_.L_47c5c7

block_.L_47c5ad:                                  ; preds = %block_.L_47c4b7
  %loadMem_47c5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1349, i64 0, i64 0
  %YMM0.i240 = bitcast %union.VectorReg* %1350 to %"class.std::bitset"*
  %1351 = bitcast %"class.std::bitset"* %YMM0.i240 to i8*
  %1352 = load i64, i64* %PC.i239
  %1353 = add i64 %1352, ptrtoint (%G_0x352d3__rip__type* @G_0x352d3__rip_ to i64)
  %1354 = load i64, i64* %PC.i239
  %1355 = add i64 %1354, 8
  store i64 %1355, i64* %PC.i239
  %1356 = inttoptr i64 %1353 to double*
  %1357 = load double, double* %1356
  %1358 = bitcast i8* %1351 to double*
  store double %1357, double* %1358, align 1
  %1359 = getelementptr inbounds i8, i8* %1351, i64 8
  %1360 = bitcast i8* %1359 to double*
  store double 0.000000e+00, double* %1360, align 1
  store %struct.Memory* %loadMem_47c5ad, %struct.Memory** %MEMORY
  %loadMem_47c5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1364, i64 0, i64 0
  %XMM0.i238 = bitcast %union.VectorReg* %1365 to %union.vec128_t*
  %1366 = bitcast %union.vec128_t* %XMM0.i238 to i8*
  %1367 = load i64, i64* %PC.i237
  %1368 = add i64 %1367, 9
  store i64 %1368, i64* %PC.i237
  %1369 = bitcast i8* %1366 to double*
  %1370 = load double, double* %1369, align 1
  store double %1370, double* bitcast (%G_0x725570_type* @G_0x725570 to double*)
  store %struct.Memory* %loadMem_47c5b5, %struct.Memory** %MEMORY
  %loadMem_47c5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1374, i64 0, i64 0
  %XMM0.i236 = bitcast %union.VectorReg* %1375 to %union.vec128_t*
  %1376 = bitcast %union.vec128_t* %XMM0.i236 to i8*
  %1377 = load i64, i64* %PC.i235
  %1378 = add i64 %1377, 9
  store i64 %1378, i64* %PC.i235
  %1379 = bitcast i8* %1376 to double*
  %1380 = load double, double* %1379, align 1
  store double %1380, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*)
  store %struct.Memory* %loadMem_47c5be, %struct.Memory** %MEMORY
  br label %block_.L_47c5c7

block_.L_47c5c7:                                  ; preds = %block_.L_47c5ad, %block_47c586
  %loadMem_47c5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1384, i64 0, i64 0
  %YMM0.i233 = bitcast %union.VectorReg* %1385 to %"class.std::bitset"*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1386, i64 0, i64 0
  %XMM0.i234 = bitcast %union.VectorReg* %1387 to %union.vec128_t*
  %1388 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %1389 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %1390 = bitcast %union.vec128_t* %XMM0.i234 to i8*
  %1391 = load i64, i64* %PC.i232
  %1392 = add i64 %1391, 3
  store i64 %1392, i64* %PC.i232
  %1393 = bitcast i8* %1389 to i64*
  %1394 = load i64, i64* %1393, align 1
  %1395 = getelementptr inbounds i8, i8* %1389, i64 8
  %1396 = bitcast i8* %1395 to i64*
  %1397 = load i64, i64* %1396, align 1
  %1398 = bitcast i8* %1390 to i64*
  %1399 = load i64, i64* %1398, align 1
  %1400 = getelementptr inbounds i8, i8* %1390, i64 8
  %1401 = bitcast i8* %1400 to i64*
  %1402 = load i64, i64* %1401, align 1
  %1403 = xor i64 %1399, %1394
  %1404 = xor i64 %1402, %1397
  %1405 = trunc i64 %1403 to i32
  %1406 = lshr i64 %1403, 32
  %1407 = trunc i64 %1406 to i32
  %1408 = bitcast i8* %1388 to i32*
  store i32 %1405, i32* %1408, align 1
  %1409 = getelementptr inbounds i8, i8* %1388, i64 4
  %1410 = bitcast i8* %1409 to i32*
  store i32 %1407, i32* %1410, align 1
  %1411 = trunc i64 %1404 to i32
  %1412 = getelementptr inbounds i8, i8* %1388, i64 8
  %1413 = bitcast i8* %1412 to i32*
  store i32 %1411, i32* %1413, align 1
  %1414 = lshr i64 %1404, 32
  %1415 = trunc i64 %1414 to i32
  %1416 = getelementptr inbounds i8, i8* %1388, i64 12
  %1417 = bitcast i8* %1416 to i32*
  store i32 %1415, i32* %1417, align 1
  store %struct.Memory* %loadMem_47c5c7, %struct.Memory** %MEMORY
  %loadMem_47c5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1421, i64 0, i64 1
  %YMM1.i231 = bitcast %union.VectorReg* %1422 to %"class.std::bitset"*
  %1423 = bitcast %"class.std::bitset"* %YMM1.i231 to i8*
  %1424 = load i64, i64* %PC.i230
  %1425 = add i64 %1424, ptrtoint (%G_0x3528e__rip__type* @G_0x3528e__rip_ to i64)
  %1426 = load i64, i64* %PC.i230
  %1427 = add i64 %1426, 8
  store i64 %1427, i64* %PC.i230
  %1428 = inttoptr i64 %1425 to double*
  %1429 = load double, double* %1428
  %1430 = bitcast i8* %1423 to double*
  store double %1429, double* %1430, align 1
  %1431 = getelementptr inbounds i8, i8* %1423, i64 8
  %1432 = bitcast i8* %1431 to double*
  store double 0.000000e+00, double* %1432, align 1
  store %struct.Memory* %loadMem_47c5ca, %struct.Memory** %MEMORY
  %loadMem_47c5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %PC.i229
  %1437 = add i64 %1436, 11
  store i64 %1437, i64* %PC.i229
  store i32 0, i32* bitcast (%G_0x6f9720_type* @G_0x6f9720 to i32*)
  store %struct.Memory* %loadMem_47c5d2, %struct.Memory** %MEMORY
  %loadMem_47c5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1441, i64 0, i64 2
  %YMM2.i227 = bitcast %union.VectorReg* %1442 to %"class.std::bitset"*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1443, i64 0, i64 1
  %XMM1.i228 = bitcast %union.VectorReg* %1444 to %union.vec128_t*
  %1445 = bitcast %"class.std::bitset"* %YMM2.i227 to i8*
  %1446 = bitcast %union.vec128_t* %XMM1.i228 to i8*
  %1447 = load i64, i64* %PC.i226
  %1448 = add i64 %1447, 3
  store i64 %1448, i64* %PC.i226
  %1449 = bitcast i8* %1446 to <2 x i32>*
  %1450 = load <2 x i32>, <2 x i32>* %1449, align 1
  %1451 = getelementptr inbounds i8, i8* %1446, i64 8
  %1452 = bitcast i8* %1451 to <2 x i32>*
  %1453 = load <2 x i32>, <2 x i32>* %1452, align 1
  %1454 = extractelement <2 x i32> %1450, i32 0
  %1455 = bitcast i8* %1445 to i32*
  store i32 %1454, i32* %1455, align 1
  %1456 = extractelement <2 x i32> %1450, i32 1
  %1457 = getelementptr inbounds i8, i8* %1445, i64 4
  %1458 = bitcast i8* %1457 to i32*
  store i32 %1456, i32* %1458, align 1
  %1459 = extractelement <2 x i32> %1453, i32 0
  %1460 = getelementptr inbounds i8, i8* %1445, i64 8
  %1461 = bitcast i8* %1460 to i32*
  store i32 %1459, i32* %1461, align 1
  %1462 = extractelement <2 x i32> %1453, i32 1
  %1463 = getelementptr inbounds i8, i8* %1445, i64 12
  %1464 = bitcast i8* %1463 to i32*
  store i32 %1462, i32* %1464, align 1
  store %struct.Memory* %loadMem_47c5dd, %struct.Memory** %MEMORY
  %loadMem_47c5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1468, i64 0, i64 2
  %YMM2.i225 = bitcast %union.VectorReg* %1469 to %"class.std::bitset"*
  %1470 = bitcast %"class.std::bitset"* %YMM2.i225 to i8*
  %1471 = bitcast %"class.std::bitset"* %YMM2.i225 to i8*
  %1472 = load i64, i64* %PC.i224
  %1473 = add i64 %1472, 9
  store i64 %1473, i64* %PC.i224
  %1474 = bitcast i8* %1471 to double*
  %1475 = load double, double* %1474, align 1
  %1476 = getelementptr inbounds i8, i8* %1471, i64 8
  %1477 = bitcast i8* %1476 to i64*
  %1478 = load i64, i64* %1477, align 1
  %1479 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %1480 = fmul double %1475, %1479
  %1481 = bitcast i8* %1470 to double*
  store double %1480, double* %1481, align 1
  %1482 = getelementptr inbounds i8, i8* %1470, i64 8
  %1483 = bitcast i8* %1482 to i64*
  store i64 %1478, i64* %1483, align 1
  store %struct.Memory* %loadMem_47c5e0, %struct.Memory** %MEMORY
  %loadMem_47c5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1487, i64 0, i64 2
  %XMM2.i223 = bitcast %union.VectorReg* %1488 to %union.vec128_t*
  %1489 = bitcast %union.vec128_t* %XMM2.i223 to i8*
  %1490 = load i64, i64* %PC.i222
  %1491 = add i64 %1490, 9
  store i64 %1491, i64* %PC.i222
  %1492 = bitcast i8* %1489 to double*
  %1493 = load double, double* %1492, align 1
  store double %1493, double* bitcast (%G_0x726420_type* @G_0x726420 to double*)
  store %struct.Memory* %loadMem_47c5e9, %struct.Memory** %MEMORY
  %loadMem_47c5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1497, i64 0, i64 0
  %XMM0.i221 = bitcast %union.VectorReg* %1498 to %union.vec128_t*
  %1499 = bitcast %union.vec128_t* %XMM0.i221 to i8*
  %1500 = load i64, i64* %PC.i220
  %1501 = add i64 %1500, 9
  store i64 %1501, i64* %PC.i220
  %1502 = bitcast i8* %1499 to double*
  %1503 = load double, double* %1502, align 1
  store double %1503, double* bitcast (%G_0x6f9358_type* @G_0x6f9358 to double*)
  store %struct.Memory* %loadMem_47c5f2, %struct.Memory** %MEMORY
  %loadMem_47c5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1507, i64 0, i64 1
  %XMM1.i219 = bitcast %union.VectorReg* %1508 to %union.vec128_t*
  %1509 = bitcast %union.vec128_t* %XMM1.i219 to i8*
  %1510 = load i64, i64* %PC.i218
  %1511 = add i64 %1510, 9
  store i64 %1511, i64* %PC.i218
  %1512 = bitcast i8* %1509 to double*
  %1513 = load double, double* %1512, align 1
  store double %1513, double* bitcast (%G_0x6cfc68_type* @G_0x6cfc68 to double*)
  store %struct.Memory* %loadMem_47c5fb, %struct.Memory** %MEMORY
  %loadMem_47c604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1517, i64 0, i64 0
  %XMM0.i217 = bitcast %union.VectorReg* %1518 to %union.vec128_t*
  %1519 = bitcast %union.vec128_t* %XMM0.i217 to i8*
  %1520 = load i64, i64* %PC.i216
  %1521 = add i64 %1520, 9
  store i64 %1521, i64* %PC.i216
  %1522 = bitcast i8* %1519 to double*
  %1523 = load double, double* %1522, align 1
  store double %1523, double* bitcast (%G_0x710798_type* @G_0x710798 to double*)
  store %struct.Memory* %loadMem_47c604, %struct.Memory** %MEMORY
  %loadMem_47c60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 15
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %RBP.i215
  %1531 = sub i64 %1530, 40
  %1532 = load i64, i64* %PC.i214
  %1533 = add i64 %1532, 7
  store i64 %1533, i64* %PC.i214
  %1534 = inttoptr i64 %1531 to i32*
  store i32 0, i32* %1534
  store %struct.Memory* %loadMem_47c60d, %struct.Memory** %MEMORY
  br label %block_.L_47c614

block_.L_47c614:                                  ; preds = %block_47c61e, %block_.L_47c5c7
  %loadMem_47c614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 15
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RBP.i213
  %1542 = sub i64 %1541, 40
  %1543 = load i64, i64* %PC.i212
  %1544 = add i64 %1543, 4
  store i64 %1544, i64* %PC.i212
  %1545 = inttoptr i64 %1542 to i32*
  %1546 = load i32, i32* %1545
  %1547 = sub i32 %1546, 20
  %1548 = icmp ult i32 %1546, 20
  %1549 = zext i1 %1548 to i8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1549, i8* %1550, align 1
  %1551 = and i32 %1547, 255
  %1552 = call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1555, i8* %1556, align 1
  %1557 = xor i32 %1546, 20
  %1558 = xor i32 %1557, %1547
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1561, i8* %1562, align 1
  %1563 = icmp eq i32 %1547, 0
  %1564 = zext i1 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i32 %1547, 31
  %1567 = trunc i32 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1567, i8* %1568, align 1
  %1569 = lshr i32 %1546, 31
  %1570 = xor i32 %1566, %1569
  %1571 = add i32 %1570, %1569
  %1572 = icmp eq i32 %1571, 2
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1573, i8* %1574, align 1
  store %struct.Memory* %loadMem_47c614, %struct.Memory** %MEMORY
  %loadMem_47c618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %PC.i211
  %1579 = add i64 %1578, 62
  %1580 = load i64, i64* %PC.i211
  %1581 = add i64 %1580, 6
  %1582 = load i64, i64* %PC.i211
  %1583 = add i64 %1582, 6
  store i64 %1583, i64* %PC.i211
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1585 = load i8, i8* %1584, align 1
  %1586 = icmp ne i8 %1585, 0
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1588 = load i8, i8* %1587, align 1
  %1589 = icmp ne i8 %1588, 0
  %1590 = xor i1 %1586, %1589
  %1591 = xor i1 %1590, true
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %BRANCH_TAKEN, align 1
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1594 = select i1 %1590, i64 %1581, i64 %1579
  store i64 %1594, i64* %1593, align 8
  store %struct.Memory* %loadMem_47c618, %struct.Memory** %MEMORY
  %loadBr_47c618 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c618 = icmp eq i8 %loadBr_47c618, 1
  br i1 %cmpBr_47c618, label %block_.L_47c656, label %block_47c61e

block_47c61e:                                     ; preds = %block_.L_47c614
  %loadMem_47c61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1599 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1598, i64 0, i64 0
  %YMM0.i209 = bitcast %union.VectorReg* %1599 to %"class.std::bitset"*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1600, i64 0, i64 0
  %XMM0.i210 = bitcast %union.VectorReg* %1601 to %union.vec128_t*
  %1602 = bitcast %"class.std::bitset"* %YMM0.i209 to i8*
  %1603 = bitcast %"class.std::bitset"* %YMM0.i209 to i8*
  %1604 = bitcast %union.vec128_t* %XMM0.i210 to i8*
  %1605 = load i64, i64* %PC.i208
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %PC.i208
  %1607 = bitcast i8* %1603 to i64*
  %1608 = load i64, i64* %1607, align 1
  %1609 = getelementptr inbounds i8, i8* %1603, i64 8
  %1610 = bitcast i8* %1609 to i64*
  %1611 = load i64, i64* %1610, align 1
  %1612 = bitcast i8* %1604 to i64*
  %1613 = load i64, i64* %1612, align 1
  %1614 = getelementptr inbounds i8, i8* %1604, i64 8
  %1615 = bitcast i8* %1614 to i64*
  %1616 = load i64, i64* %1615, align 1
  %1617 = xor i64 %1613, %1608
  %1618 = xor i64 %1616, %1611
  %1619 = trunc i64 %1617 to i32
  %1620 = lshr i64 %1617, 32
  %1621 = trunc i64 %1620 to i32
  %1622 = bitcast i8* %1602 to i32*
  store i32 %1619, i32* %1622, align 1
  %1623 = getelementptr inbounds i8, i8* %1602, i64 4
  %1624 = bitcast i8* %1623 to i32*
  store i32 %1621, i32* %1624, align 1
  %1625 = trunc i64 %1618 to i32
  %1626 = getelementptr inbounds i8, i8* %1602, i64 8
  %1627 = bitcast i8* %1626 to i32*
  store i32 %1625, i32* %1627, align 1
  %1628 = lshr i64 %1618, 32
  %1629 = trunc i64 %1628 to i32
  %1630 = getelementptr inbounds i8, i8* %1602, i64 12
  %1631 = bitcast i8* %1630 to i32*
  store i32 %1629, i32* %1631, align 1
  store %struct.Memory* %loadMem_47c61e, %struct.Memory** %MEMORY
  %loadMem_47c621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 1
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 15
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RBP.i207
  %1642 = sub i64 %1641, 40
  %1643 = load i64, i64* %PC.i205
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %PC.i205
  %1645 = inttoptr i64 %1642 to i32*
  %1646 = load i32, i32* %1645
  %1647 = sext i32 %1646 to i64
  store i64 %1647, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_47c621, %struct.Memory** %MEMORY
  %loadMem_47c625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 1
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1654, i64 0, i64 0
  %XMM0.i204 = bitcast %union.VectorReg* %1655 to %union.vec128_t*
  %1656 = load i64, i64* %RAX.i203
  %1657 = mul i64 %1656, 8
  %1658 = add i64 %1657, 7149840
  %1659 = bitcast %union.vec128_t* %XMM0.i204 to i8*
  %1660 = load i64, i64* %PC.i202
  %1661 = add i64 %1660, 9
  store i64 %1661, i64* %PC.i202
  %1662 = bitcast i8* %1659 to double*
  %1663 = load double, double* %1662, align 1
  %1664 = inttoptr i64 %1658 to double*
  store double %1663, double* %1664
  store %struct.Memory* %loadMem_47c625, %struct.Memory** %MEMORY
  %loadMem_47c62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RBP.i201
  %1675 = sub i64 %1674, 40
  %1676 = load i64, i64* %PC.i199
  %1677 = add i64 %1676, 4
  store i64 %1677, i64* %PC.i199
  %1678 = inttoptr i64 %1675 to i32*
  %1679 = load i32, i32* %1678
  %1680 = sext i32 %1679 to i64
  store i64 %1680, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_47c62e, %struct.Memory** %MEMORY
  %loadMem_47c632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 1
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1687, i64 0, i64 0
  %XMM0.i198 = bitcast %union.VectorReg* %1688 to %union.vec128_t*
  %1689 = load i64, i64* %RAX.i197
  %1690 = mul i64 %1689, 8
  %1691 = add i64 %1690, 7161504
  %1692 = bitcast %union.vec128_t* %XMM0.i198 to i8*
  %1693 = load i64, i64* %PC.i196
  %1694 = add i64 %1693, 9
  store i64 %1694, i64* %PC.i196
  %1695 = bitcast i8* %1692 to double*
  %1696 = load double, double* %1695, align 1
  %1697 = inttoptr i64 %1691 to double*
  store double %1696, double* %1697
  store %struct.Memory* %loadMem_47c632, %struct.Memory** %MEMORY
  %loadMem_47c63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 15
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RBP.i195
  %1708 = sub i64 %1707, 40
  %1709 = load i64, i64* %PC.i193
  %1710 = add i64 %1709, 4
  store i64 %1710, i64* %PC.i193
  %1711 = inttoptr i64 %1708 to i32*
  %1712 = load i32, i32* %1711
  %1713 = sext i32 %1712 to i64
  store i64 %1713, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_47c63b, %struct.Memory** %MEMORY
  %loadMem_47c63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 1
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1720, i64 0, i64 0
  %XMM0.i192 = bitcast %union.VectorReg* %1721 to %union.vec128_t*
  %1722 = load i64, i64* %RAX.i191
  %1723 = mul i64 %1722, 8
  %1724 = add i64 %1723, 7131904
  %1725 = bitcast %union.vec128_t* %XMM0.i192 to i8*
  %1726 = load i64, i64* %PC.i190
  %1727 = add i64 %1726, 9
  store i64 %1727, i64* %PC.i190
  %1728 = bitcast i8* %1725 to double*
  %1729 = load double, double* %1728, align 1
  %1730 = inttoptr i64 %1724 to double*
  store double %1729, double* %1730
  store %struct.Memory* %loadMem_47c63f, %struct.Memory** %MEMORY
  %loadMem_47c648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 1
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 15
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %1739 to i64*
  %1740 = load i64, i64* %RBP.i189
  %1741 = sub i64 %1740, 40
  %1742 = load i64, i64* %PC.i187
  %1743 = add i64 %1742, 3
  store i64 %1743, i64* %PC.i187
  %1744 = inttoptr i64 %1741 to i32*
  %1745 = load i32, i32* %1744
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_47c648, %struct.Memory** %MEMORY
  %loadMem_47c64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 1
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %RAX.i186
  %1754 = load i64, i64* %PC.i185
  %1755 = add i64 %1754, 3
  store i64 %1755, i64* %PC.i185
  %1756 = trunc i64 %1753 to i32
  %1757 = add i32 1, %1756
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RAX.i186, align 8
  %1759 = icmp ult i32 %1757, %1756
  %1760 = icmp ult i32 %1757, 1
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1762, i8* %1763, align 1
  %1764 = and i32 %1757, 255
  %1765 = call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1768, i8* %1769, align 1
  %1770 = xor i64 1, %1753
  %1771 = trunc i64 %1770 to i32
  %1772 = xor i32 %1771, %1757
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1775, i8* %1776, align 1
  %1777 = icmp eq i32 %1757, 0
  %1778 = zext i1 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1778, i8* %1779, align 1
  %1780 = lshr i32 %1757, 31
  %1781 = trunc i32 %1780 to i8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1781, i8* %1782, align 1
  %1783 = lshr i32 %1756, 31
  %1784 = xor i32 %1780, %1783
  %1785 = add i32 %1784, %1780
  %1786 = icmp eq i32 %1785, 2
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1787, i8* %1788, align 1
  store %struct.Memory* %loadMem_47c64b, %struct.Memory** %MEMORY
  %loadMem_47c64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 1
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %1794 to i32*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 15
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RBP.i184
  %1799 = sub i64 %1798, 40
  %1800 = load i32, i32* %EAX.i183
  %1801 = zext i32 %1800 to i64
  %1802 = load i64, i64* %PC.i182
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i182
  %1804 = inttoptr i64 %1799 to i32*
  store i32 %1800, i32* %1804
  store %struct.Memory* %loadMem_47c64e, %struct.Memory** %MEMORY
  %loadMem_47c651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %PC.i181
  %1809 = add i64 %1808, -61
  %1810 = load i64, i64* %PC.i181
  %1811 = add i64 %1810, 5
  store i64 %1811, i64* %PC.i181
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1809, i64* %1812, align 8
  store %struct.Memory* %loadMem_47c651, %struct.Memory** %MEMORY
  br label %block_.L_47c614

block_.L_47c656:                                  ; preds = %block_.L_47c614
  %loadMem_47c656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1817 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1816, i64 0, i64 0
  %YMM0.i179 = bitcast %union.VectorReg* %1817 to %"class.std::bitset"*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1818, i64 0, i64 0
  %XMM0.i180 = bitcast %union.VectorReg* %1819 to %union.vec128_t*
  %1820 = bitcast %"class.std::bitset"* %YMM0.i179 to i8*
  %1821 = bitcast %"class.std::bitset"* %YMM0.i179 to i8*
  %1822 = bitcast %union.vec128_t* %XMM0.i180 to i8*
  %1823 = load i64, i64* %PC.i178
  %1824 = add i64 %1823, 3
  store i64 %1824, i64* %PC.i178
  %1825 = bitcast i8* %1821 to i64*
  %1826 = load i64, i64* %1825, align 1
  %1827 = getelementptr inbounds i8, i8* %1821, i64 8
  %1828 = bitcast i8* %1827 to i64*
  %1829 = load i64, i64* %1828, align 1
  %1830 = bitcast i8* %1822 to i64*
  %1831 = load i64, i64* %1830, align 1
  %1832 = getelementptr inbounds i8, i8* %1822, i64 8
  %1833 = bitcast i8* %1832 to i64*
  %1834 = load i64, i64* %1833, align 1
  %1835 = xor i64 %1831, %1826
  %1836 = xor i64 %1834, %1829
  %1837 = trunc i64 %1835 to i32
  %1838 = lshr i64 %1835, 32
  %1839 = trunc i64 %1838 to i32
  %1840 = bitcast i8* %1820 to i32*
  store i32 %1837, i32* %1840, align 1
  %1841 = getelementptr inbounds i8, i8* %1820, i64 4
  %1842 = bitcast i8* %1841 to i32*
  store i32 %1839, i32* %1842, align 1
  %1843 = trunc i64 %1836 to i32
  %1844 = getelementptr inbounds i8, i8* %1820, i64 8
  %1845 = bitcast i8* %1844 to i32*
  store i32 %1843, i32* %1845, align 1
  %1846 = lshr i64 %1836, 32
  %1847 = trunc i64 %1846 to i32
  %1848 = getelementptr inbounds i8, i8* %1820, i64 12
  %1849 = bitcast i8* %1848 to i32*
  store i32 %1847, i32* %1849, align 1
  store %struct.Memory* %loadMem_47c656, %struct.Memory** %MEMORY
  %loadMem_47c659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1853, i64 0, i64 0
  %XMM0.i177 = bitcast %union.VectorReg* %1854 to %union.vec128_t*
  %1855 = bitcast %union.vec128_t* %XMM0.i177 to i8*
  %1856 = load i64, i64* %PC.i176
  %1857 = add i64 %1856, 9
  store i64 %1857, i64* %PC.i176
  %1858 = bitcast i8* %1855 to double*
  %1859 = load double, double* %1858, align 1
  store double %1859, double* bitcast (%G_0x6cd3a0_type* @G_0x6cd3a0 to double*)
  store %struct.Memory* %loadMem_47c659, %struct.Memory** %MEMORY
  %loadMem_47c662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i175
  %1864 = add i64 %1863, 11
  store i64 %1864, i64* %PC.i175
  store i32 2, i32* bitcast (%G_0x6f80c8_type* @G_0x6f80c8 to i32*)
  store %struct.Memory* %loadMem_47c662, %struct.Memory** %MEMORY
  %loadMem_47c66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %PC.i174
  %1869 = add i64 %1868, 11
  store i64 %1869, i64* %PC.i174
  store i32 0, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  store %struct.Memory* %loadMem_47c66d, %struct.Memory** %MEMORY
  %loadMem_47c678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %PC.i173
  %1874 = add i64 %1873, 11
  store i64 %1874, i64* %PC.i173
  store i32 0, i32* bitcast (%G_0x722c78_type* @G_0x722c78 to i32*)
  store %struct.Memory* %loadMem_47c678, %struct.Memory** %MEMORY
  %loadMem_47c683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %PC.i172
  %1879 = add i64 %1878, 8
  store i64 %1879, i64* %PC.i172
  %1880 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %1881 = sub i32 %1880, 9
  %1882 = icmp ult i32 %1880, 9
  %1883 = zext i1 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1883, i8* %1884, align 1
  %1885 = and i32 %1881, 255
  %1886 = call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1889, i8* %1890, align 1
  %1891 = xor i32 %1880, 9
  %1892 = xor i32 %1891, %1881
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1895, i8* %1896, align 1
  %1897 = icmp eq i32 %1881, 0
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1898, i8* %1899, align 1
  %1900 = lshr i32 %1881, 31
  %1901 = trunc i32 %1900 to i8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1901, i8* %1902, align 1
  %1903 = lshr i32 %1880, 31
  %1904 = xor i32 %1900, %1903
  %1905 = add i32 %1904, %1903
  %1906 = icmp eq i32 %1905, 2
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1907, i8* %1908, align 1
  store %struct.Memory* %loadMem_47c683, %struct.Memory** %MEMORY
  %loadMem_47c68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1911 to i64*
  %1912 = load i64, i64* %PC.i171
  %1913 = add i64 %1912, 22
  %1914 = load i64, i64* %PC.i171
  %1915 = add i64 %1914, 6
  %1916 = load i64, i64* %PC.i171
  %1917 = add i64 %1916, 6
  store i64 %1917, i64* %PC.i171
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1919 = load i8, i8* %1918, align 1
  %1920 = icmp ne i8 %1919, 0
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1922 = load i8, i8* %1921, align 1
  %1923 = icmp ne i8 %1922, 0
  %1924 = xor i1 %1920, %1923
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %BRANCH_TAKEN, align 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1927 = select i1 %1924, i64 %1913, i64 %1915
  store i64 %1927, i64* %1926, align 8
  store %struct.Memory* %loadMem_47c68b, %struct.Memory** %MEMORY
  %loadBr_47c68b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c68b = icmp eq i8 %loadBr_47c68b, 1
  br i1 %cmpBr_47c68b, label %block_.L_47c6a1, label %block_47c691

block_47c691:                                     ; preds = %block_.L_47c656
  %loadMem_47c691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1930 to i64*
  %1931 = load i64, i64* %PC.i170
  %1932 = add i64 %1931, 11
  store i64 %1932, i64* %PC.i170
  store i32 1, i32* bitcast (%G_0x70fce4_type* @G_0x70fce4 to i32*)
  store %struct.Memory* %loadMem_47c691, %struct.Memory** %MEMORY
  %loadMem_47c69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1935 to i64*
  %1936 = load i64, i64* %PC.i169
  %1937 = add i64 %1936, 16
  %1938 = load i64, i64* %PC.i169
  %1939 = add i64 %1938, 5
  store i64 %1939, i64* %PC.i169
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1937, i64* %1940, align 8
  store %struct.Memory* %loadMem_47c69c, %struct.Memory** %MEMORY
  br label %block_.L_47c6ac

block_.L_47c6a1:                                  ; preds = %block_.L_47c656
  %loadMem_47c6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %PC.i168
  %1945 = add i64 %1944, 11
  store i64 %1945, i64* %PC.i168
  store i32 2, i32* bitcast (%G_0x70fce4_type* @G_0x70fce4 to i32*)
  store %struct.Memory* %loadMem_47c6a1, %struct.Memory** %MEMORY
  br label %block_.L_47c6ac

block_.L_47c6ac:                                  ; preds = %block_.L_47c6a1, %block_47c691
  %loadMem_47c6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1949, i64 0, i64 0
  %YMM0.i167 = bitcast %union.VectorReg* %1950 to %"class.std::bitset"*
  %1951 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %1952 = load i64, i64* %PC.i166
  %1953 = add i64 %1952, ptrtoint (%G_0x351ac__rip__type* @G_0x351ac__rip_ to i64)
  %1954 = load i64, i64* %PC.i166
  %1955 = add i64 %1954, 8
  store i64 %1955, i64* %PC.i166
  %1956 = inttoptr i64 %1953 to double*
  %1957 = load double, double* %1956
  %1958 = bitcast i8* %1951 to double*
  store double %1957, double* %1958, align 1
  %1959 = getelementptr inbounds i8, i8* %1951, i64 8
  %1960 = bitcast i8* %1959 to double*
  store double 0.000000e+00, double* %1960, align 1
  store %struct.Memory* %loadMem_47c6ac, %struct.Memory** %MEMORY
  %loadMem_47c6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %PC.i164
  %1968 = add i64 %1967, 5
  store i64 %1968, i64* %PC.i164
  store i64 16, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_47c6b4, %struct.Memory** %MEMORY
  %loadMem_47c6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 33
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 5
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %1974 to i64*
  %1975 = load i64, i64* %PC.i162
  %1976 = add i64 %1975, 8
  store i64 %1976, i64* %PC.i162
  %1977 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1977, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_47c6b9, %struct.Memory** %MEMORY
  %loadMem_47c6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 33
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 5
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 7
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1986 to i64*
  %1987 = load i64, i64* %RCX.i161
  %1988 = add i64 %1987, 52
  %1989 = load i64, i64* %PC.i160
  %1990 = add i64 %1989, 3
  store i64 %1990, i64* %PC.i160
  %1991 = inttoptr i64 %1988 to i32*
  %1992 = load i32, i32* %1991
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_47c6c1, %struct.Memory** %MEMORY
  %loadMem_47c6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 1
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %1999 to i32*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RBP.i159
  %2004 = sub i64 %2003, 48
  %2005 = load i32, i32* %EAX.i158
  %2006 = zext i32 %2005 to i64
  %2007 = load i64, i64* %PC.i157
  %2008 = add i64 %2007, 3
  store i64 %2008, i64* %PC.i157
  %2009 = inttoptr i64 %2004 to i32*
  store i32 %2005, i32* %2009
  store %struct.Memory* %loadMem_47c6c4, %struct.Memory** %MEMORY
  %loadMem_47c6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 7
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2015 to i32*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 1
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %2018 to i64*
  %2019 = load i32, i32* %EDX.i
  %2020 = zext i32 %2019 to i64
  %2021 = load i64, i64* %PC.i155
  %2022 = add i64 %2021, 2
  store i64 %2022, i64* %PC.i155
  %2023 = and i64 %2020, 4294967295
  store i64 %2023, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_47c6c7, %struct.Memory** %MEMORY
  %loadMem_47c6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2026 to i64*
  %2027 = load i64, i64* %PC.i154
  %2028 = add i64 %2027, 1
  store i64 %2028, i64* %PC.i154
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2031 = bitcast %union.anon* %2030 to i32*
  %2032 = load i32, i32* %2031, align 8
  %2033 = sext i32 %2032 to i64
  %2034 = lshr i64 %2033, 32
  store i64 %2034, i64* %2029, align 8
  store %struct.Memory* %loadMem_47c6c9, %struct.Memory** %MEMORY
  %loadMem_47c6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 9
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 15
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RBP.i153
  %2045 = sub i64 %2044, 48
  %2046 = load i64, i64* %PC.i152
  %2047 = add i64 %2046, 3
  store i64 %2047, i64* %PC.i152
  %2048 = inttoptr i64 %2045 to i32*
  %2049 = load i32, i32* %2048
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_47c6ca, %struct.Memory** %MEMORY
  %loadMem_47c6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 9
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2056 to i32*
  %2057 = load i32, i32* %ESI.i
  %2058 = zext i32 %2057 to i64
  %2059 = load i64, i64* %PC.i150
  %2060 = add i64 %2059, 2
  store i64 %2060, i64* %PC.i150
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2062 = bitcast %union.anon* %2061 to i32*
  %2063 = load i32, i32* %2062, align 8
  %2064 = zext i32 %2063 to i64
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2066 = bitcast %union.anon* %2065 to i32*
  %2067 = load i32, i32* %2066, align 8
  %2068 = zext i32 %2067 to i64
  %2069 = shl i64 %2058, 32
  %2070 = ashr exact i64 %2069, 32
  %2071 = shl i64 %2068, 32
  %2072 = or i64 %2071, %2064
  %2073 = sdiv i64 %2072, %2070
  %2074 = shl i64 %2073, 32
  %2075 = ashr exact i64 %2074, 32
  %2076 = icmp eq i64 %2073, %2075
  br i1 %2076, label %2081, label %2077

; <label>:2077:                                   ; preds = %block_.L_47c6ac
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2079 = load i64, i64* %2078, align 8
  %2080 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2079, %struct.Memory* %loadMem_47c6cd)
  br label %routine_idivl__esi.exit

; <label>:2081:                                   ; preds = %block_.L_47c6ac
  %2082 = srem i64 %2072, %2070
  %2083 = getelementptr inbounds %union.anon, %union.anon* %2061, i64 0, i32 0
  %2084 = and i64 %2073, 4294967295
  store i64 %2084, i64* %2083, align 8
  %2085 = getelementptr inbounds %union.anon, %union.anon* %2065, i64 0, i32 0
  %2086 = and i64 %2082, 4294967295
  store i64 %2086, i64* %2085, align 8
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2087, align 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2088, align 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2089, align 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2090, align 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2091, align 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2092, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2077, %2081
  %2093 = phi %struct.Memory* [ %2080, %2077 ], [ %loadMem_47c6cd, %2081 ]
  store %struct.Memory* %2093, %struct.Memory** %MEMORY
  %loadMem_47c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %2099 to i32*
  %2100 = load i32, i32* %EAX.i149
  %2101 = zext i32 %2100 to i64
  %2102 = load i64, i64* %PC.i148
  %2103 = add i64 %2102, 7
  store i64 %2103, i64* %PC.i148
  store i32 %2100, i32* bitcast (%G_0x6f8ed8_type* @G_0x6f8ed8 to i32*)
  store %struct.Memory* %loadMem_47c6cf, %struct.Memory** %MEMORY
  %loadMem_47c6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 5
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %PC.i146
  %2111 = add i64 %2110, 8
  store i64 %2111, i64* %PC.i146
  %2112 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2112, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_47c6d6, %struct.Memory** %MEMORY
  %loadMem_47c6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 5
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RCX.i145
  %2120 = add i64 %2119, 72600
  %2121 = load i64, i64* %PC.i144
  %2122 = add i64 %2121, 10
  store i64 %2122, i64* %PC.i144
  %2123 = inttoptr i64 %2120 to i32*
  store i32 0, i32* %2123
  store %struct.Memory* %loadMem_47c6de, %struct.Memory** %MEMORY
  %loadMem_47c6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %PC.i143
  %2128 = add i64 %2127, 11
  store i64 %2128, i64* %PC.i143
  store i32 51, i32* bitcast (%G_0x724744_type* @G_0x724744 to i32*)
  store %struct.Memory* %loadMem_47c6e8, %struct.Memory** %MEMORY
  %loadMem_47c6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2131 to i64*
  %2132 = load i64, i64* %PC.i142
  %2133 = add i64 %2132, 11
  store i64 %2133, i64* %PC.i142
  store i32 0, i32* bitcast (%G_0x710364_type* @G_0x710364 to i32*)
  store %struct.Memory* %loadMem_47c6f3, %struct.Memory** %MEMORY
  %loadMem_47c6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 33
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2137, i64 0, i64 0
  %YMM0.i141 = bitcast %union.VectorReg* %2138 to %"class.std::bitset"*
  %2139 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %2140 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %2141 = load i64, i64* %PC.i140
  %2142 = add i64 %2141, 9
  store i64 %2142, i64* %PC.i140
  %2143 = bitcast i8* %2140 to double*
  %2144 = load double, double* %2143, align 1
  %2145 = getelementptr inbounds i8, i8* %2140, i64 8
  %2146 = bitcast i8* %2145 to i64*
  %2147 = load i64, i64* %2146, align 1
  %2148 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %2149 = fmul double %2144, %2148
  %2150 = bitcast i8* %2139 to double*
  store double %2149, double* %2150, align 1
  %2151 = getelementptr inbounds i8, i8* %2139, i64 8
  %2152 = bitcast i8* %2151 to i64*
  store i64 %2147, i64* %2152, align 1
  store %struct.Memory* %loadMem_47c6fe, %struct.Memory** %MEMORY
  %loadMem_47c707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2156, i64 0, i64 1
  %YMM1.i139 = bitcast %union.VectorReg* %2157 to %"class.std::bitset"*
  %2158 = bitcast %"class.std::bitset"* %YMM1.i139 to i8*
  %2159 = load i64, i64* %PC.i138
  %2160 = add i64 %2159, 9
  store i64 %2160, i64* %PC.i138
  %2161 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*)
  %2162 = bitcast i8* %2158 to double*
  store double %2161, double* %2162, align 1
  %2163 = getelementptr inbounds i8, i8* %2158, i64 8
  %2164 = bitcast i8* %2163 to double*
  store double 0.000000e+00, double* %2164, align 1
  store %struct.Memory* %loadMem_47c707, %struct.Memory** %MEMORY
  %loadMem_47c710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %PC.i136
  %2172 = add i64 %2171, 8
  store i64 %2172, i64* %PC.i136
  %2173 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2173, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_47c710, %struct.Memory** %MEMORY
  %loadMem_47c718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 5
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2180, i64 0, i64 2
  %YMM2.i135 = bitcast %union.VectorReg* %2181 to %"class.std::bitset"*
  %2182 = bitcast %"class.std::bitset"* %YMM2.i135 to i8*
  %2183 = load i64, i64* %RCX.i134
  %2184 = add i64 %2183, 52
  %2185 = load i64, i64* %PC.i133
  %2186 = add i64 %2185, 5
  store i64 %2186, i64* %PC.i133
  %2187 = inttoptr i64 %2184 to i32*
  %2188 = load i32, i32* %2187
  %2189 = sitofp i32 %2188 to double
  %2190 = bitcast i8* %2182 to double*
  store double %2189, double* %2190, align 1
  store %struct.Memory* %loadMem_47c718, %struct.Memory** %MEMORY
  %loadMem_47c71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2194, i64 0, i64 1
  %YMM1.i131 = bitcast %union.VectorReg* %2195 to %"class.std::bitset"*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2196, i64 0, i64 2
  %XMM2.i132 = bitcast %union.VectorReg* %2197 to %union.vec128_t*
  %2198 = bitcast %"class.std::bitset"* %YMM1.i131 to i8*
  %2199 = bitcast %"class.std::bitset"* %YMM1.i131 to i8*
  %2200 = bitcast %union.vec128_t* %XMM2.i132 to i8*
  %2201 = load i64, i64* %PC.i130
  %2202 = add i64 %2201, 4
  store i64 %2202, i64* %PC.i130
  %2203 = bitcast i8* %2199 to double*
  %2204 = load double, double* %2203, align 1
  %2205 = getelementptr inbounds i8, i8* %2199, i64 8
  %2206 = bitcast i8* %2205 to i64*
  %2207 = load i64, i64* %2206, align 1
  %2208 = bitcast i8* %2200 to double*
  %2209 = load double, double* %2208, align 1
  %2210 = fmul double %2204, %2209
  %2211 = bitcast i8* %2198 to double*
  store double %2210, double* %2211, align 1
  %2212 = getelementptr inbounds i8, i8* %2198, i64 8
  %2213 = bitcast i8* %2212 to i64*
  store i64 %2207, i64* %2213, align 1
  store %struct.Memory* %loadMem_47c71d, %struct.Memory** %MEMORY
  %loadMem_47c721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 33
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 5
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %2219 to i64*
  %2220 = load i64, i64* %PC.i128
  %2221 = add i64 %2220, 8
  store i64 %2221, i64* %PC.i128
  %2222 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2222, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_47c721, %struct.Memory** %MEMORY
  %loadMem_47c729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 5
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2229, i64 0, i64 2
  %YMM2.i127 = bitcast %union.VectorReg* %2230 to %"class.std::bitset"*
  %2231 = bitcast %"class.std::bitset"* %YMM2.i127 to i8*
  %2232 = load i64, i64* %RCX.i126
  %2233 = add i64 %2232, 60
  %2234 = load i64, i64* %PC.i125
  %2235 = add i64 %2234, 5
  store i64 %2235, i64* %PC.i125
  %2236 = inttoptr i64 %2233 to i32*
  %2237 = load i32, i32* %2236
  %2238 = sitofp i32 %2237 to double
  %2239 = bitcast i8* %2231 to double*
  store double %2238, double* %2239, align 1
  store %struct.Memory* %loadMem_47c729, %struct.Memory** %MEMORY
  %loadMem_47c72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2243, i64 0, i64 1
  %YMM1.i123 = bitcast %union.VectorReg* %2244 to %"class.std::bitset"*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2245, i64 0, i64 2
  %XMM2.i124 = bitcast %union.VectorReg* %2246 to %union.vec128_t*
  %2247 = bitcast %"class.std::bitset"* %YMM1.i123 to i8*
  %2248 = bitcast %"class.std::bitset"* %YMM1.i123 to i8*
  %2249 = bitcast %union.vec128_t* %XMM2.i124 to i8*
  %2250 = load i64, i64* %PC.i122
  %2251 = add i64 %2250, 4
  store i64 %2251, i64* %PC.i122
  %2252 = bitcast i8* %2248 to double*
  %2253 = load double, double* %2252, align 1
  %2254 = getelementptr inbounds i8, i8* %2248, i64 8
  %2255 = bitcast i8* %2254 to i64*
  %2256 = load i64, i64* %2255, align 1
  %2257 = bitcast i8* %2249 to double*
  %2258 = load double, double* %2257, align 1
  %2259 = fmul double %2253, %2258
  %2260 = bitcast i8* %2247 to double*
  store double %2259, double* %2260, align 1
  %2261 = getelementptr inbounds i8, i8* %2247, i64 8
  %2262 = bitcast i8* %2261 to i64*
  store i64 %2256, i64* %2262, align 1
  store %struct.Memory* %loadMem_47c72e, %struct.Memory** %MEMORY
  %loadMem_47c732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2266, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %2267 to %"class.std::bitset"*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2268, i64 0, i64 1
  %XMM1.i121 = bitcast %union.VectorReg* %2269 to %union.vec128_t*
  %2270 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2271 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2272 = bitcast %union.vec128_t* %XMM1.i121 to i8*
  %2273 = load i64, i64* %PC.i119
  %2274 = add i64 %2273, 4
  store i64 %2274, i64* %PC.i119
  %2275 = bitcast i8* %2271 to double*
  %2276 = load double, double* %2275, align 1
  %2277 = getelementptr inbounds i8, i8* %2271, i64 8
  %2278 = bitcast i8* %2277 to i64*
  %2279 = load i64, i64* %2278, align 1
  %2280 = bitcast i8* %2272 to double*
  %2281 = load double, double* %2280, align 1
  %2282 = fdiv double %2276, %2281
  %2283 = bitcast i8* %2270 to double*
  store double %2282, double* %2283, align 1
  %2284 = getelementptr inbounds i8, i8* %2270, i64 8
  %2285 = bitcast i8* %2284 to i64*
  store i64 %2279, i64* %2285, align 1
  store %struct.Memory* %loadMem_47c732, %struct.Memory** %MEMORY
  %loadMem_47c736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 15
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2292, i64 0, i64 0
  %XMM0.i118 = bitcast %union.VectorReg* %2293 to %union.vec128_t*
  %2294 = load i64, i64* %RBP.i117
  %2295 = sub i64 %2294, 32
  %2296 = bitcast %union.vec128_t* %XMM0.i118 to i8*
  %2297 = load i64, i64* %PC.i116
  %2298 = add i64 %2297, 5
  store i64 %2298, i64* %PC.i116
  %2299 = bitcast i8* %2296 to double*
  %2300 = load double, double* %2299, align 1
  %2301 = inttoptr i64 %2295 to double*
  store double %2300, double* %2301
  store %struct.Memory* %loadMem_47c736, %struct.Memory** %MEMORY
  %loadMem_47c73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 5
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %PC.i114
  %2309 = add i64 %2308, 8
  store i64 %2309, i64* %PC.i114
  %2310 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2310, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_47c73b, %struct.Memory** %MEMORY
  %loadMem_47c743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 5
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %RCX.i113
  %2318 = add i64 %2317, 52
  %2319 = load i64, i64* %PC.i112
  %2320 = add i64 %2319, 7
  store i64 %2320, i64* %PC.i112
  %2321 = inttoptr i64 %2318 to i32*
  %2322 = load i32, i32* %2321
  %2323 = sub i32 %2322, 176
  %2324 = icmp ult i32 %2322, 176
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2325, i8* %2326, align 1
  %2327 = and i32 %2323, 255
  %2328 = call i32 @llvm.ctpop.i32(i32 %2327)
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2331, i8* %2332, align 1
  %2333 = xor i32 %2322, 176
  %2334 = xor i32 %2333, %2323
  %2335 = lshr i32 %2334, 4
  %2336 = trunc i32 %2335 to i8
  %2337 = and i8 %2336, 1
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2337, i8* %2338, align 1
  %2339 = icmp eq i32 %2323, 0
  %2340 = zext i1 %2339 to i8
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2340, i8* %2341, align 1
  %2342 = lshr i32 %2323, 31
  %2343 = trunc i32 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2343, i8* %2344, align 1
  %2345 = lshr i32 %2322, 31
  %2346 = xor i32 %2342, %2345
  %2347 = add i32 %2346, %2345
  %2348 = icmp eq i32 %2347, 2
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2349, i8* %2350, align 1
  store %struct.Memory* %loadMem_47c743, %struct.Memory** %MEMORY
  %loadMem_47c74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %PC.i111
  %2355 = add i64 %2354, 50
  %2356 = load i64, i64* %PC.i111
  %2357 = add i64 %2356, 6
  %2358 = load i64, i64* %PC.i111
  %2359 = add i64 %2358, 6
  store i64 %2359, i64* %PC.i111
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2361 = load i8, i8* %2360, align 1
  %2362 = icmp eq i8 %2361, 0
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %BRANCH_TAKEN, align 1
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2365 = select i1 %2362, i64 %2355, i64 %2357
  store i64 %2365, i64* %2364, align 8
  store %struct.Memory* %loadMem_47c74a, %struct.Memory** %MEMORY
  %loadBr_47c74a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c74a = icmp eq i8 %loadBr_47c74a, 1
  br i1 %cmpBr_47c74a, label %block_.L_47c77c, label %block_47c750

block_47c750:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_47c750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2369, i64 0, i64 0
  %YMM0.i110 = bitcast %union.VectorReg* %2370 to %"class.std::bitset"*
  %2371 = bitcast %"class.std::bitset"* %YMM0.i110 to i8*
  %2372 = load i64, i64* %PC.i109
  %2373 = add i64 %2372, ptrtoint (%G_0x351a0__rip__type* @G_0x351a0__rip_ to i64)
  %2374 = load i64, i64* %PC.i109
  %2375 = add i64 %2374, 8
  store i64 %2375, i64* %PC.i109
  %2376 = inttoptr i64 %2373 to double*
  %2377 = load double, double* %2376
  %2378 = bitcast i8* %2371 to double*
  store double %2377, double* %2378, align 1
  %2379 = getelementptr inbounds i8, i8* %2371, i64 8
  %2380 = bitcast i8* %2379 to double*
  store double 0.000000e+00, double* %2380, align 1
  store %struct.Memory* %loadMem_47c750, %struct.Memory** %MEMORY
  %loadMem_47c758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2384, i64 0, i64 1
  %YMM1.i108 = bitcast %union.VectorReg* %2385 to %"class.std::bitset"*
  %2386 = bitcast %"class.std::bitset"* %YMM1.i108 to i8*
  %2387 = load i64, i64* %PC.i107
  %2388 = add i64 %2387, ptrtoint (%G_0x351b0__rip__type* @G_0x351b0__rip_ to i64)
  %2389 = load i64, i64* %PC.i107
  %2390 = add i64 %2389, 8
  store i64 %2390, i64* %PC.i107
  %2391 = inttoptr i64 %2388 to double*
  %2392 = load double, double* %2391
  %2393 = bitcast i8* %2386 to double*
  store double %2392, double* %2393, align 1
  %2394 = getelementptr inbounds i8, i8* %2386, i64 8
  %2395 = bitcast i8* %2394 to double*
  store double 0.000000e+00, double* %2395, align 1
  store %struct.Memory* %loadMem_47c758, %struct.Memory** %MEMORY
  %loadMem_47c760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2399, i64 0, i64 2
  %YMM2.i106 = bitcast %union.VectorReg* %2400 to %"class.std::bitset"*
  %2401 = bitcast %"class.std::bitset"* %YMM2.i106 to i8*
  %2402 = load i64, i64* %PC.i105
  %2403 = add i64 %2402, ptrtoint (%G_0x351b0__rip__type* @G_0x351b0__rip_ to i64)
  %2404 = load i64, i64* %PC.i105
  %2405 = add i64 %2404, 8
  store i64 %2405, i64* %PC.i105
  %2406 = inttoptr i64 %2403 to double*
  %2407 = load double, double* %2406
  %2408 = bitcast i8* %2401 to double*
  store double %2407, double* %2408, align 1
  %2409 = getelementptr inbounds i8, i8* %2401, i64 8
  %2410 = bitcast i8* %2409 to double*
  store double 0.000000e+00, double* %2410, align 1
  store %struct.Memory* %loadMem_47c760, %struct.Memory** %MEMORY
  %loadMem_47c768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 15
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2417, i64 0, i64 2
  %XMM2.i104 = bitcast %union.VectorReg* %2418 to %union.vec128_t*
  %2419 = load i64, i64* %RBP.i103
  %2420 = sub i64 %2419, 8
  %2421 = bitcast %union.vec128_t* %XMM2.i104 to i8*
  %2422 = load i64, i64* %PC.i102
  %2423 = add i64 %2422, 5
  store i64 %2423, i64* %PC.i102
  %2424 = bitcast i8* %2421 to double*
  %2425 = load double, double* %2424, align 1
  %2426 = inttoptr i64 %2420 to double*
  store double %2425, double* %2426
  store %struct.Memory* %loadMem_47c768, %struct.Memory** %MEMORY
  %loadMem_47c76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2433, i64 0, i64 1
  %XMM1.i101 = bitcast %union.VectorReg* %2434 to %union.vec128_t*
  %2435 = load i64, i64* %RBP.i100
  %2436 = sub i64 %2435, 16
  %2437 = bitcast %union.vec128_t* %XMM1.i101 to i8*
  %2438 = load i64, i64* %PC.i99
  %2439 = add i64 %2438, 5
  store i64 %2439, i64* %PC.i99
  %2440 = bitcast i8* %2437 to double*
  %2441 = load double, double* %2440, align 1
  %2442 = inttoptr i64 %2436 to double*
  store double %2441, double* %2442
  store %struct.Memory* %loadMem_47c76d, %struct.Memory** %MEMORY
  %loadMem_47c772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 15
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2449, i64 0, i64 0
  %XMM0.i98 = bitcast %union.VectorReg* %2450 to %union.vec128_t*
  %2451 = load i64, i64* %RBP.i97
  %2452 = sub i64 %2451, 24
  %2453 = bitcast %union.vec128_t* %XMM0.i98 to i8*
  %2454 = load i64, i64* %PC.i96
  %2455 = add i64 %2454, 5
  store i64 %2455, i64* %PC.i96
  %2456 = bitcast i8* %2453 to double*
  %2457 = load double, double* %2456, align 1
  %2458 = inttoptr i64 %2452 to double*
  store double %2457, double* %2458
  store %struct.Memory* %loadMem_47c772, %struct.Memory** %MEMORY
  %loadMem_47c777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2461 to i64*
  %2462 = load i64, i64* %PC.i95
  %2463 = add i64 %2462, 114
  %2464 = load i64, i64* %PC.i95
  %2465 = add i64 %2464, 5
  store i64 %2465, i64* %PC.i95
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2463, i64* %2466, align 8
  store %struct.Memory* %loadMem_47c777, %struct.Memory** %MEMORY
  br label %block_.L_47c7e9

block_.L_47c77c:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_47c77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 1
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %PC.i93
  %2474 = add i64 %2473, 8
  store i64 %2474, i64* %PC.i93
  %2475 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2475, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_47c77c, %struct.Memory** %MEMORY
  %loadMem_47c784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %RAX.i92
  %2483 = add i64 %2482, 52
  %2484 = load i64, i64* %PC.i91
  %2485 = add i64 %2484, 7
  store i64 %2485, i64* %PC.i91
  %2486 = inttoptr i64 %2483 to i32*
  %2487 = load i32, i32* %2486
  %2488 = sub i32 %2487, 352
  %2489 = icmp ult i32 %2487, 352
  %2490 = zext i1 %2489 to i8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2490, i8* %2491, align 1
  %2492 = and i32 %2488, 255
  %2493 = call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2496, i8* %2497, align 1
  %2498 = xor i32 %2487, 352
  %2499 = xor i32 %2498, %2488
  %2500 = lshr i32 %2499, 4
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2502, i8* %2503, align 1
  %2504 = icmp eq i32 %2488, 0
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2505, i8* %2506, align 1
  %2507 = lshr i32 %2488, 31
  %2508 = trunc i32 %2507 to i8
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2508, i8* %2509, align 1
  %2510 = lshr i32 %2487, 31
  %2511 = xor i32 %2507, %2510
  %2512 = add i32 %2511, %2510
  %2513 = icmp eq i32 %2512, 2
  %2514 = zext i1 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2514, i8* %2515, align 1
  store %struct.Memory* %loadMem_47c784, %struct.Memory** %MEMORY
  %loadMem_47c78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %PC.i90
  %2520 = add i64 %2519, 50
  %2521 = load i64, i64* %PC.i90
  %2522 = add i64 %2521, 6
  %2523 = load i64, i64* %PC.i90
  %2524 = add i64 %2523, 6
  store i64 %2524, i64* %PC.i90
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2526 = load i8, i8* %2525, align 1
  %2527 = icmp eq i8 %2526, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %BRANCH_TAKEN, align 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2530 = select i1 %2527, i64 %2520, i64 %2522
  store i64 %2530, i64* %2529, align 8
  store %struct.Memory* %loadMem_47c78b, %struct.Memory** %MEMORY
  %loadBr_47c78b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c78b = icmp eq i8 %loadBr_47c78b, 1
  br i1 %cmpBr_47c78b, label %block_.L_47c7bd, label %block_47c791

block_47c791:                                     ; preds = %block_.L_47c77c
  %loadMem_47c791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2534, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %2535 to %"class.std::bitset"*
  %2536 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %2537 = load i64, i64* %PC.i88
  %2538 = add i64 %2537, ptrtoint (%G_0x35167__rip__type* @G_0x35167__rip_ to i64)
  %2539 = load i64, i64* %PC.i88
  %2540 = add i64 %2539, 8
  store i64 %2540, i64* %PC.i88
  %2541 = inttoptr i64 %2538 to double*
  %2542 = load double, double* %2541
  %2543 = bitcast i8* %2536 to double*
  store double %2542, double* %2543, align 1
  %2544 = getelementptr inbounds i8, i8* %2536, i64 8
  %2545 = bitcast i8* %2544 to double*
  store double 0.000000e+00, double* %2545, align 1
  store %struct.Memory* %loadMem_47c791, %struct.Memory** %MEMORY
  %loadMem_47c799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2549, i64 0, i64 1
  %YMM1.i87 = bitcast %union.VectorReg* %2550 to %"class.std::bitset"*
  %2551 = bitcast %"class.std::bitset"* %YMM1.i87 to i8*
  %2552 = load i64, i64* %PC.i86
  %2553 = add i64 %2552, ptrtoint (%G_0x35157__rip__type* @G_0x35157__rip_ to i64)
  %2554 = load i64, i64* %PC.i86
  %2555 = add i64 %2554, 8
  store i64 %2555, i64* %PC.i86
  %2556 = inttoptr i64 %2553 to double*
  %2557 = load double, double* %2556
  %2558 = bitcast i8* %2551 to double*
  store double %2557, double* %2558, align 1
  %2559 = getelementptr inbounds i8, i8* %2551, i64 8
  %2560 = bitcast i8* %2559 to double*
  store double 0.000000e+00, double* %2560, align 1
  store %struct.Memory* %loadMem_47c799, %struct.Memory** %MEMORY
  %loadMem_47c7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2564, i64 0, i64 2
  %YMM2.i85 = bitcast %union.VectorReg* %2565 to %"class.std::bitset"*
  %2566 = bitcast %"class.std::bitset"* %YMM2.i85 to i8*
  %2567 = load i64, i64* %PC.i84
  %2568 = add i64 %2567, ptrtoint (%G_0x3515f__rip__type* @G_0x3515f__rip_ to i64)
  %2569 = load i64, i64* %PC.i84
  %2570 = add i64 %2569, 8
  store i64 %2570, i64* %PC.i84
  %2571 = inttoptr i64 %2568 to double*
  %2572 = load double, double* %2571
  %2573 = bitcast i8* %2566 to double*
  store double %2572, double* %2573, align 1
  %2574 = getelementptr inbounds i8, i8* %2566, i64 8
  %2575 = bitcast i8* %2574 to double*
  store double 0.000000e+00, double* %2575, align 1
  store %struct.Memory* %loadMem_47c7a1, %struct.Memory** %MEMORY
  %loadMem_47c7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 15
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2583 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2582, i64 0, i64 2
  %XMM2.i83 = bitcast %union.VectorReg* %2583 to %union.vec128_t*
  %2584 = load i64, i64* %RBP.i82
  %2585 = sub i64 %2584, 8
  %2586 = bitcast %union.vec128_t* %XMM2.i83 to i8*
  %2587 = load i64, i64* %PC.i81
  %2588 = add i64 %2587, 5
  store i64 %2588, i64* %PC.i81
  %2589 = bitcast i8* %2586 to double*
  %2590 = load double, double* %2589, align 1
  %2591 = inttoptr i64 %2585 to double*
  store double %2590, double* %2591
  store %struct.Memory* %loadMem_47c7a9, %struct.Memory** %MEMORY
  %loadMem_47c7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 15
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2599 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2598, i64 0, i64 1
  %XMM1.i80 = bitcast %union.VectorReg* %2599 to %union.vec128_t*
  %2600 = load i64, i64* %RBP.i79
  %2601 = sub i64 %2600, 16
  %2602 = bitcast %union.vec128_t* %XMM1.i80 to i8*
  %2603 = load i64, i64* %PC.i78
  %2604 = add i64 %2603, 5
  store i64 %2604, i64* %PC.i78
  %2605 = bitcast i8* %2602 to double*
  %2606 = load double, double* %2605, align 1
  %2607 = inttoptr i64 %2601 to double*
  store double %2606, double* %2607
  store %struct.Memory* %loadMem_47c7ae, %struct.Memory** %MEMORY
  %loadMem_47c7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2614, i64 0, i64 0
  %XMM0.i77 = bitcast %union.VectorReg* %2615 to %union.vec128_t*
  %2616 = load i64, i64* %RBP.i76
  %2617 = sub i64 %2616, 24
  %2618 = bitcast %union.vec128_t* %XMM0.i77 to i8*
  %2619 = load i64, i64* %PC.i75
  %2620 = add i64 %2619, 5
  store i64 %2620, i64* %PC.i75
  %2621 = bitcast i8* %2618 to double*
  %2622 = load double, double* %2621, align 1
  %2623 = inttoptr i64 %2617 to double*
  store double %2622, double* %2623
  store %struct.Memory* %loadMem_47c7b3, %struct.Memory** %MEMORY
  %loadMem_47c7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %PC.i74
  %2628 = add i64 %2627, 44
  %2629 = load i64, i64* %PC.i74
  %2630 = add i64 %2629, 5
  store i64 %2630, i64* %PC.i74
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2628, i64* %2631, align 8
  store %struct.Memory* %loadMem_47c7b8, %struct.Memory** %MEMORY
  br label %block_.L_47c7e4

block_.L_47c7bd:                                  ; preds = %block_.L_47c77c
  %loadMem_47c7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2635, i64 0, i64 0
  %YMM0.i73 = bitcast %union.VectorReg* %2636 to %"class.std::bitset"*
  %2637 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %2638 = load i64, i64* %PC.i72
  %2639 = add i64 %2638, ptrtoint (%G_0x35123__rip__type* @G_0x35123__rip_ to i64)
  %2640 = load i64, i64* %PC.i72
  %2641 = add i64 %2640, 8
  store i64 %2641, i64* %PC.i72
  %2642 = inttoptr i64 %2639 to double*
  %2643 = load double, double* %2642
  %2644 = bitcast i8* %2637 to double*
  store double %2643, double* %2644, align 1
  %2645 = getelementptr inbounds i8, i8* %2637, i64 8
  %2646 = bitcast i8* %2645 to double*
  store double 0.000000e+00, double* %2646, align 1
  store %struct.Memory* %loadMem_47c7bd, %struct.Memory** %MEMORY
  %loadMem_47c7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2650, i64 0, i64 1
  %YMM1.i71 = bitcast %union.VectorReg* %2651 to %"class.std::bitset"*
  %2652 = bitcast %"class.std::bitset"* %YMM1.i71 to i8*
  %2653 = load i64, i64* %PC.i70
  %2654 = add i64 %2653, ptrtoint (%G_0x35123__rip__type* @G_0x35123__rip_ to i64)
  %2655 = load i64, i64* %PC.i70
  %2656 = add i64 %2655, 8
  store i64 %2656, i64* %PC.i70
  %2657 = inttoptr i64 %2654 to double*
  %2658 = load double, double* %2657
  %2659 = bitcast i8* %2652 to double*
  store double %2658, double* %2659, align 1
  %2660 = getelementptr inbounds i8, i8* %2652, i64 8
  %2661 = bitcast i8* %2660 to double*
  store double 0.000000e+00, double* %2661, align 1
  store %struct.Memory* %loadMem_47c7c5, %struct.Memory** %MEMORY
  %loadMem_47c7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2665, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2666 to %"class.std::bitset"*
  %2667 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2668 = load i64, i64* %PC.i69
  %2669 = add i64 %2668, ptrtoint (%G_0x35123__rip__type* @G_0x35123__rip_ to i64)
  %2670 = load i64, i64* %PC.i69
  %2671 = add i64 %2670, 8
  store i64 %2671, i64* %PC.i69
  %2672 = inttoptr i64 %2669 to double*
  %2673 = load double, double* %2672
  %2674 = bitcast i8* %2667 to double*
  store double %2673, double* %2674, align 1
  %2675 = getelementptr inbounds i8, i8* %2667, i64 8
  %2676 = bitcast i8* %2675 to double*
  store double 0.000000e+00, double* %2676, align 1
  store %struct.Memory* %loadMem_47c7cd, %struct.Memory** %MEMORY
  %loadMem_47c7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2683, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2684 to %union.vec128_t*
  %2685 = load i64, i64* %RBP.i68
  %2686 = sub i64 %2685, 8
  %2687 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2688 = load i64, i64* %PC.i67
  %2689 = add i64 %2688, 5
  store i64 %2689, i64* %PC.i67
  %2690 = bitcast i8* %2687 to double*
  %2691 = load double, double* %2690, align 1
  %2692 = inttoptr i64 %2686 to double*
  store double %2691, double* %2692
  store %struct.Memory* %loadMem_47c7d5, %struct.Memory** %MEMORY
  %loadMem_47c7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 15
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2699, i64 0, i64 1
  %XMM1.i66 = bitcast %union.VectorReg* %2700 to %union.vec128_t*
  %2701 = load i64, i64* %RBP.i65
  %2702 = sub i64 %2701, 16
  %2703 = bitcast %union.vec128_t* %XMM1.i66 to i8*
  %2704 = load i64, i64* %PC.i64
  %2705 = add i64 %2704, 5
  store i64 %2705, i64* %PC.i64
  %2706 = bitcast i8* %2703 to double*
  %2707 = load double, double* %2706, align 1
  %2708 = inttoptr i64 %2702 to double*
  store double %2707, double* %2708
  store %struct.Memory* %loadMem_47c7da, %struct.Memory** %MEMORY
  %loadMem_47c7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 33
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 15
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2715, i64 0, i64 0
  %XMM0.i63 = bitcast %union.VectorReg* %2716 to %union.vec128_t*
  %2717 = load i64, i64* %RBP.i62
  %2718 = sub i64 %2717, 24
  %2719 = bitcast %union.vec128_t* %XMM0.i63 to i8*
  %2720 = load i64, i64* %PC.i61
  %2721 = add i64 %2720, 5
  store i64 %2721, i64* %PC.i61
  %2722 = bitcast i8* %2719 to double*
  %2723 = load double, double* %2722, align 1
  %2724 = inttoptr i64 %2718 to double*
  store double %2723, double* %2724
  store %struct.Memory* %loadMem_47c7df, %struct.Memory** %MEMORY
  br label %block_.L_47c7e4

block_.L_47c7e4:                                  ; preds = %block_.L_47c7bd, %block_47c791
  %loadMem_47c7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2727 to i64*
  %2728 = load i64, i64* %PC.i60
  %2729 = add i64 %2728, 5
  %2730 = load i64, i64* %PC.i60
  %2731 = add i64 %2730, 5
  store i64 %2731, i64* %PC.i60
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2729, i64* %2732, align 8
  store %struct.Memory* %loadMem_47c7e4, %struct.Memory** %MEMORY
  br label %block_.L_47c7e9

block_.L_47c7e9:                                  ; preds = %block_.L_47c7e4, %block_47c750
  %loadMem_47c7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 1
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %PC.i58
  %2740 = add i64 %2739, 8
  store i64 %2740, i64* %PC.i58
  %2741 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2741, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_47c7e9, %struct.Memory** %MEMORY
  %loadMem_47c7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %RAX.i57
  %2749 = add i64 %2748, 3244
  %2750 = load i64, i64* %PC.i56
  %2751 = add i64 %2750, 7
  store i64 %2751, i64* %PC.i56
  %2752 = inttoptr i64 %2749 to i32*
  %2753 = load i32, i32* %2752
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2754, align 1
  %2755 = and i32 %2753, 255
  %2756 = call i32 @llvm.ctpop.i32(i32 %2755)
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  %2759 = xor i8 %2758, 1
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2759, i8* %2760, align 1
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2761, align 1
  %2762 = icmp eq i32 %2753, 0
  %2763 = zext i1 %2762 to i8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2763, i8* %2764, align 1
  %2765 = lshr i32 %2753, 31
  %2766 = trunc i32 %2765 to i8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2766, i8* %2767, align 1
  %2768 = lshr i32 %2753, 31
  %2769 = xor i32 %2765, %2768
  %2770 = add i32 %2769, %2768
  %2771 = icmp eq i32 %2770, 2
  %2772 = zext i1 %2771 to i8
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2772, i8* %2773, align 1
  store %struct.Memory* %loadMem_47c7f1, %struct.Memory** %MEMORY
  %loadMem_47c7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 33
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %PC.i55
  %2778 = add i64 %2777, 136
  %2779 = load i64, i64* %PC.i55
  %2780 = add i64 %2779, 6
  %2781 = load i64, i64* %PC.i55
  %2782 = add i64 %2781, 6
  store i64 %2782, i64* %PC.i55
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2784 = load i8, i8* %2783, align 1
  %2785 = icmp eq i8 %2784, 0
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %BRANCH_TAKEN, align 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2788 = select i1 %2785, i64 %2778, i64 %2780
  store i64 %2788, i64* %2787, align 8
  store %struct.Memory* %loadMem_47c7f8, %struct.Memory** %MEMORY
  %loadBr_47c7f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c7f8 = icmp eq i8 %loadBr_47c7f8, 1
  br i1 %cmpBr_47c7f8, label %block_.L_47c880, label %block_47c7fe

block_47c7fe:                                     ; preds = %block_.L_47c7e9
  %loadMem_47c7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 15
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2795, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %2796 to %"class.std::bitset"*
  %2797 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %2798 = load i64, i64* %RBP.i53
  %2799 = sub i64 %2798, 32
  %2800 = load i64, i64* %PC.i52
  %2801 = add i64 %2800, 5
  store i64 %2801, i64* %PC.i52
  %2802 = inttoptr i64 %2799 to double*
  %2803 = load double, double* %2802
  %2804 = bitcast i8* %2797 to double*
  store double %2803, double* %2804, align 1
  %2805 = getelementptr inbounds i8, i8* %2797, i64 8
  %2806 = bitcast i8* %2805 to double*
  store double 0.000000e+00, double* %2806, align 1
  store %struct.Memory* %loadMem_47c7fe, %struct.Memory** %MEMORY
  %loadMem_47c803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 15
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2814 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2813, i64 0, i64 1
  %YMM1.i51 = bitcast %union.VectorReg* %2814 to %"class.std::bitset"*
  %2815 = bitcast %"class.std::bitset"* %YMM1.i51 to i8*
  %2816 = load i64, i64* %RBP.i50
  %2817 = sub i64 %2816, 8
  %2818 = load i64, i64* %PC.i49
  %2819 = add i64 %2818, 5
  store i64 %2819, i64* %PC.i49
  %2820 = inttoptr i64 %2817 to double*
  %2821 = load double, double* %2820
  %2822 = bitcast i8* %2815 to double*
  store double %2821, double* %2822, align 1
  %2823 = getelementptr inbounds i8, i8* %2815, i64 8
  %2824 = bitcast i8* %2823 to double*
  store double 0.000000e+00, double* %2824, align 1
  store %struct.Memory* %loadMem_47c803, %struct.Memory** %MEMORY
  %loadMem_47c808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2828, i64 0, i64 0
  %XMM0.i45 = bitcast %union.VectorReg* %2829 to %union.vec128_t*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2830, i64 0, i64 1
  %XMM1.i46 = bitcast %union.VectorReg* %2831 to %union.vec128_t*
  %2832 = bitcast %union.vec128_t* %XMM1.i46 to i8*
  %2833 = bitcast %union.vec128_t* %XMM0.i45 to i8*
  %2834 = load i64, i64* %PC.i44
  %2835 = add i64 %2834, 4
  store i64 %2835, i64* %PC.i44
  %2836 = bitcast i8* %2832 to double*
  %2837 = load double, double* %2836, align 1
  %2838 = bitcast i8* %2833 to double*
  %2839 = load double, double* %2838, align 1
  %2840 = fcmp uno double %2837, %2839
  br i1 %2840, label %2841, label %2853

; <label>:2841:                                   ; preds = %block_47c7fe
  %2842 = fadd double %2837, %2839
  %2843 = bitcast double %2842 to i64
  %2844 = and i64 %2843, 9221120237041090560
  %2845 = icmp eq i64 %2844, 9218868437227405312
  %2846 = and i64 %2843, 2251799813685247
  %2847 = icmp ne i64 %2846, 0
  %2848 = and i1 %2845, %2847
  br i1 %2848, label %2849, label %2859

; <label>:2849:                                   ; preds = %2841
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2851 = load i64, i64* %2850, align 8
  %2852 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2851, %struct.Memory* %loadMem_47c808)
  br label %routine_ucomisd__xmm0___xmm1.exit47

; <label>:2853:                                   ; preds = %block_47c7fe
  %2854 = fcmp ogt double %2837, %2839
  br i1 %2854, label %2859, label %2855

; <label>:2855:                                   ; preds = %2853
  %2856 = fcmp olt double %2837, %2839
  br i1 %2856, label %2859, label %2857

; <label>:2857:                                   ; preds = %2855
  %2858 = fcmp oeq double %2837, %2839
  br i1 %2858, label %2859, label %2866

; <label>:2859:                                   ; preds = %2857, %2855, %2853, %2841
  %2860 = phi i8 [ 0, %2853 ], [ 0, %2855 ], [ 1, %2857 ], [ 1, %2841 ]
  %2861 = phi i8 [ 0, %2853 ], [ 0, %2855 ], [ 0, %2857 ], [ 1, %2841 ]
  %2862 = phi i8 [ 0, %2853 ], [ 1, %2855 ], [ 0, %2857 ], [ 1, %2841 ]
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2860, i8* %2863, align 1
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2861, i8* %2864, align 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2862, i8* %2865, align 1
  br label %2866

; <label>:2866:                                   ; preds = %2859, %2857
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2867, align 1
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2868, align 1
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2869, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit47

routine_ucomisd__xmm0___xmm1.exit47:              ; preds = %2849, %2866
  %2870 = phi %struct.Memory* [ %2852, %2849 ], [ %loadMem_47c808, %2866 ]
  store %struct.Memory* %2870, %struct.Memory** %MEMORY
  %loadMem_47c80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i43
  %2875 = add i64 %2874, 18
  %2876 = load i64, i64* %PC.i43
  %2877 = add i64 %2876, 6
  %2878 = load i64, i64* %PC.i43
  %2879 = add i64 %2878, 6
  store i64 %2879, i64* %PC.i43
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2881 = load i8, i8* %2880, align 1
  store i8 %2881, i8* %BRANCH_TAKEN, align 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2883 = icmp ne i8 %2881, 0
  %2884 = select i1 %2883, i64 %2875, i64 %2877
  store i64 %2884, i64* %2882, align 8
  store %struct.Memory* %loadMem_47c80c, %struct.Memory** %MEMORY
  %loadBr_47c80c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c80c = icmp eq i8 %loadBr_47c80c, 1
  br i1 %cmpBr_47c80c, label %block_.L_47c81e, label %block_47c812

block_47c812:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit47
  %loadMem_47c812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 15
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %RBP.i42
  %2892 = sub i64 %2891, 36
  %2893 = load i64, i64* %PC.i41
  %2894 = add i64 %2893, 7
  store i64 %2894, i64* %PC.i41
  %2895 = inttoptr i64 %2892 to i32*
  store i32 35, i32* %2895
  store %struct.Memory* %loadMem_47c812, %struct.Memory** %MEMORY
  %loadMem_47c819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %PC.i40
  %2900 = add i64 %2899, 86
  %2901 = load i64, i64* %PC.i40
  %2902 = add i64 %2901, 5
  store i64 %2902, i64* %PC.i40
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2900, i64* %2903, align 8
  store %struct.Memory* %loadMem_47c819, %struct.Memory** %MEMORY
  br label %block_.L_47c86f

block_.L_47c81e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit47
  %loadMem_47c81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 15
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2910, i64 0, i64 0
  %YMM0.i39 = bitcast %union.VectorReg* %2911 to %"class.std::bitset"*
  %2912 = bitcast %"class.std::bitset"* %YMM0.i39 to i8*
  %2913 = load i64, i64* %RBP.i38
  %2914 = sub i64 %2913, 32
  %2915 = load i64, i64* %PC.i37
  %2916 = add i64 %2915, 5
  store i64 %2916, i64* %PC.i37
  %2917 = inttoptr i64 %2914 to double*
  %2918 = load double, double* %2917
  %2919 = bitcast i8* %2912 to double*
  store double %2918, double* %2919, align 1
  %2920 = getelementptr inbounds i8, i8* %2912, i64 8
  %2921 = bitcast i8* %2920 to double*
  store double 0.000000e+00, double* %2921, align 1
  store %struct.Memory* %loadMem_47c81e, %struct.Memory** %MEMORY
  %loadMem_47c823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 15
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2929 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2928, i64 0, i64 1
  %YMM1.i36 = bitcast %union.VectorReg* %2929 to %"class.std::bitset"*
  %2930 = bitcast %"class.std::bitset"* %YMM1.i36 to i8*
  %2931 = load i64, i64* %RBP.i35
  %2932 = sub i64 %2931, 16
  %2933 = load i64, i64* %PC.i34
  %2934 = add i64 %2933, 5
  store i64 %2934, i64* %PC.i34
  %2935 = inttoptr i64 %2932 to double*
  %2936 = load double, double* %2935
  %2937 = bitcast i8* %2930 to double*
  store double %2936, double* %2937, align 1
  %2938 = getelementptr inbounds i8, i8* %2930, i64 8
  %2939 = bitcast i8* %2938 to double*
  store double 0.000000e+00, double* %2939, align 1
  store %struct.Memory* %loadMem_47c823, %struct.Memory** %MEMORY
  %loadMem_47c828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2943, i64 0, i64 0
  %XMM0.i29 = bitcast %union.VectorReg* %2944 to %union.vec128_t*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2945, i64 0, i64 1
  %XMM1.i30 = bitcast %union.VectorReg* %2946 to %union.vec128_t*
  %2947 = bitcast %union.vec128_t* %XMM1.i30 to i8*
  %2948 = bitcast %union.vec128_t* %XMM0.i29 to i8*
  %2949 = load i64, i64* %PC.i28
  %2950 = add i64 %2949, 4
  store i64 %2950, i64* %PC.i28
  %2951 = bitcast i8* %2947 to double*
  %2952 = load double, double* %2951, align 1
  %2953 = bitcast i8* %2948 to double*
  %2954 = load double, double* %2953, align 1
  %2955 = fcmp uno double %2952, %2954
  br i1 %2955, label %2956, label %2968

; <label>:2956:                                   ; preds = %block_.L_47c81e
  %2957 = fadd double %2952, %2954
  %2958 = bitcast double %2957 to i64
  %2959 = and i64 %2958, 9221120237041090560
  %2960 = icmp eq i64 %2959, 9218868437227405312
  %2961 = and i64 %2958, 2251799813685247
  %2962 = icmp ne i64 %2961, 0
  %2963 = and i1 %2960, %2962
  br i1 %2963, label %2964, label %2974

; <label>:2964:                                   ; preds = %2956
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2966 = load i64, i64* %2965, align 8
  %2967 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2966, %struct.Memory* %loadMem_47c828)
  br label %routine_ucomisd__xmm0___xmm1.exit31

; <label>:2968:                                   ; preds = %block_.L_47c81e
  %2969 = fcmp ogt double %2952, %2954
  br i1 %2969, label %2974, label %2970

; <label>:2970:                                   ; preds = %2968
  %2971 = fcmp olt double %2952, %2954
  br i1 %2971, label %2974, label %2972

; <label>:2972:                                   ; preds = %2970
  %2973 = fcmp oeq double %2952, %2954
  br i1 %2973, label %2974, label %2981

; <label>:2974:                                   ; preds = %2972, %2970, %2968, %2956
  %2975 = phi i8 [ 0, %2968 ], [ 0, %2970 ], [ 1, %2972 ], [ 1, %2956 ]
  %2976 = phi i8 [ 0, %2968 ], [ 0, %2970 ], [ 0, %2972 ], [ 1, %2956 ]
  %2977 = phi i8 [ 0, %2968 ], [ 1, %2970 ], [ 0, %2972 ], [ 1, %2956 ]
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2975, i8* %2978, align 1
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2976, i8* %2979, align 1
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2977, i8* %2980, align 1
  br label %2981

; <label>:2981:                                   ; preds = %2974, %2972
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2982, align 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2983, align 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2984, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit31

routine_ucomisd__xmm0___xmm1.exit31:              ; preds = %2964, %2981
  %2985 = phi %struct.Memory* [ %2967, %2964 ], [ %loadMem_47c828, %2981 ]
  store %struct.Memory* %2985, %struct.Memory** %MEMORY
  %loadMem_47c82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %PC.i27
  %2990 = add i64 %2989, 18
  %2991 = load i64, i64* %PC.i27
  %2992 = add i64 %2991, 6
  %2993 = load i64, i64* %PC.i27
  %2994 = add i64 %2993, 6
  store i64 %2994, i64* %PC.i27
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2996 = load i8, i8* %2995, align 1
  store i8 %2996, i8* %BRANCH_TAKEN, align 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2998 = icmp ne i8 %2996, 0
  %2999 = select i1 %2998, i64 %2990, i64 %2992
  store i64 %2999, i64* %2997, align 8
  store %struct.Memory* %loadMem_47c82c, %struct.Memory** %MEMORY
  %loadBr_47c82c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c82c = icmp eq i8 %loadBr_47c82c, 1
  br i1 %cmpBr_47c82c, label %block_.L_47c83e, label %block_47c832

block_47c832:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit31
  %loadMem_47c832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 15
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RBP.i26
  %3007 = sub i64 %3006, 36
  %3008 = load i64, i64* %PC.i25
  %3009 = add i64 %3008, 7
  store i64 %3009, i64* %PC.i25
  %3010 = inttoptr i64 %3007 to i32*
  store i32 25, i32* %3010
  store %struct.Memory* %loadMem_47c832, %struct.Memory** %MEMORY
  %loadMem_47c839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %PC.i24
  %3015 = add i64 %3014, 49
  %3016 = load i64, i64* %PC.i24
  %3017 = add i64 %3016, 5
  store i64 %3017, i64* %PC.i24
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3015, i64* %3018, align 8
  store %struct.Memory* %loadMem_47c839, %struct.Memory** %MEMORY
  br label %block_.L_47c86a

block_.L_47c83e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit31
  %loadMem_47c83e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3025, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3026 to %"class.std::bitset"*
  %3027 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3028 = load i64, i64* %RBP.i23
  %3029 = sub i64 %3028, 32
  %3030 = load i64, i64* %PC.i22
  %3031 = add i64 %3030, 5
  store i64 %3031, i64* %PC.i22
  %3032 = inttoptr i64 %3029 to double*
  %3033 = load double, double* %3032
  %3034 = bitcast i8* %3027 to double*
  store double %3033, double* %3034, align 1
  %3035 = getelementptr inbounds i8, i8* %3027, i64 8
  %3036 = bitcast i8* %3035 to double*
  store double 0.000000e+00, double* %3036, align 1
  store %struct.Memory* %loadMem_47c83e, %struct.Memory** %MEMORY
  %loadMem_47c843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 15
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3043, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3044 to %"class.std::bitset"*
  %3045 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3046 = load i64, i64* %RBP.i21
  %3047 = sub i64 %3046, 24
  %3048 = load i64, i64* %PC.i20
  %3049 = add i64 %3048, 5
  store i64 %3049, i64* %PC.i20
  %3050 = inttoptr i64 %3047 to double*
  %3051 = load double, double* %3050
  %3052 = bitcast i8* %3045 to double*
  store double %3051, double* %3052, align 1
  %3053 = getelementptr inbounds i8, i8* %3045, i64 8
  %3054 = bitcast i8* %3053 to double*
  store double 0.000000e+00, double* %3054, align 1
  store %struct.Memory* %loadMem_47c843, %struct.Memory** %MEMORY
  %loadMem_47c848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 33
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3059 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3058, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3059 to %union.vec128_t*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3060, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3061 to %union.vec128_t*
  %3062 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3063 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3064 = load i64, i64* %PC.i17
  %3065 = add i64 %3064, 4
  store i64 %3065, i64* %PC.i17
  %3066 = bitcast i8* %3062 to double*
  %3067 = load double, double* %3066, align 1
  %3068 = bitcast i8* %3063 to double*
  %3069 = load double, double* %3068, align 1
  %3070 = fcmp uno double %3067, %3069
  br i1 %3070, label %3071, label %3083

; <label>:3071:                                   ; preds = %block_.L_47c83e
  %3072 = fadd double %3067, %3069
  %3073 = bitcast double %3072 to i64
  %3074 = and i64 %3073, 9221120237041090560
  %3075 = icmp eq i64 %3074, 9218868437227405312
  %3076 = and i64 %3073, 2251799813685247
  %3077 = icmp ne i64 %3076, 0
  %3078 = and i1 %3075, %3077
  br i1 %3078, label %3079, label %3089

; <label>:3079:                                   ; preds = %3071
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3081 = load i64, i64* %3080, align 8
  %3082 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3081, %struct.Memory* %loadMem_47c848)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3083:                                   ; preds = %block_.L_47c83e
  %3084 = fcmp ogt double %3067, %3069
  br i1 %3084, label %3089, label %3085

; <label>:3085:                                   ; preds = %3083
  %3086 = fcmp olt double %3067, %3069
  br i1 %3086, label %3089, label %3087

; <label>:3087:                                   ; preds = %3085
  %3088 = fcmp oeq double %3067, %3069
  br i1 %3088, label %3089, label %3096

; <label>:3089:                                   ; preds = %3087, %3085, %3083, %3071
  %3090 = phi i8 [ 0, %3083 ], [ 0, %3085 ], [ 1, %3087 ], [ 1, %3071 ]
  %3091 = phi i8 [ 0, %3083 ], [ 0, %3085 ], [ 0, %3087 ], [ 1, %3071 ]
  %3092 = phi i8 [ 0, %3083 ], [ 1, %3085 ], [ 0, %3087 ], [ 1, %3071 ]
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3090, i8* %3093, align 1
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3091, i8* %3094, align 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3092, i8* %3095, align 1
  br label %3096

; <label>:3096:                                   ; preds = %3089, %3087
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3097, align 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3098, align 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3099, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3079, %3096
  %3100 = phi %struct.Memory* [ %3082, %3079 ], [ %loadMem_47c848, %3096 ]
  store %struct.Memory* %3100, %struct.Memory** %MEMORY
  %loadMem_47c84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %PC.i16
  %3105 = add i64 %3104, 18
  %3106 = load i64, i64* %PC.i16
  %3107 = add i64 %3106, 6
  %3108 = load i64, i64* %PC.i16
  %3109 = add i64 %3108, 6
  store i64 %3109, i64* %PC.i16
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3111 = load i8, i8* %3110, align 1
  store i8 %3111, i8* %BRANCH_TAKEN, align 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3113 = icmp ne i8 %3111, 0
  %3114 = select i1 %3113, i64 %3105, i64 %3107
  store i64 %3114, i64* %3112, align 8
  store %struct.Memory* %loadMem_47c84c, %struct.Memory** %MEMORY
  %loadBr_47c84c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c84c = icmp eq i8 %loadBr_47c84c, 1
  br i1 %cmpBr_47c84c, label %block_.L_47c85e, label %block_47c852

block_47c852:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_47c852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 15
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %3120 to i64*
  %3121 = load i64, i64* %RBP.i15
  %3122 = sub i64 %3121, 36
  %3123 = load i64, i64* %PC.i14
  %3124 = add i64 %3123, 7
  store i64 %3124, i64* %PC.i14
  %3125 = inttoptr i64 %3122 to i32*
  store i32 20, i32* %3125
  store %struct.Memory* %loadMem_47c852, %struct.Memory** %MEMORY
  %loadMem_47c859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %PC.i13
  %3130 = add i64 %3129, 12
  %3131 = load i64, i64* %PC.i13
  %3132 = add i64 %3131, 5
  store i64 %3132, i64* %PC.i13
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3130, i64* %3133, align 8
  store %struct.Memory* %loadMem_47c859, %struct.Memory** %MEMORY
  br label %block_.L_47c865

block_.L_47c85e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_47c85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 33
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 15
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %RBP.i12
  %3141 = sub i64 %3140, 36
  %3142 = load i64, i64* %PC.i11
  %3143 = add i64 %3142, 7
  store i64 %3143, i64* %PC.i11
  %3144 = inttoptr i64 %3141 to i32*
  store i32 10, i32* %3144
  store %struct.Memory* %loadMem_47c85e, %struct.Memory** %MEMORY
  br label %block_.L_47c865

block_.L_47c865:                                  ; preds = %block_.L_47c85e, %block_47c852
  %loadMem_47c865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %PC.i10
  %3149 = add i64 %3148, 5
  %3150 = load i64, i64* %PC.i10
  %3151 = add i64 %3150, 5
  store i64 %3151, i64* %PC.i10
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3149, i64* %3152, align 8
  store %struct.Memory* %loadMem_47c865, %struct.Memory** %MEMORY
  br label %block_.L_47c86a

block_.L_47c86a:                                  ; preds = %block_.L_47c865, %block_47c832
  %loadMem_47c86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %PC.i9
  %3157 = add i64 %3156, 5
  %3158 = load i64, i64* %PC.i9
  %3159 = add i64 %3158, 5
  store i64 %3159, i64* %PC.i9
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3157, i64* %3160, align 8
  store %struct.Memory* %loadMem_47c86a, %struct.Memory** %MEMORY
  br label %block_.L_47c86f

block_.L_47c86f:                                  ; preds = %block_.L_47c86a, %block_47c812
  %loadMem_47c86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 1
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 15
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RBP.i8
  %3171 = sub i64 %3170, 36
  %3172 = load i64, i64* %PC.i7
  %3173 = add i64 %3172, 3
  store i64 %3173, i64* %PC.i7
  %3174 = inttoptr i64 %3171 to i32*
  %3175 = load i32, i32* %3174
  %3176 = zext i32 %3175 to i64
  store i64 %3176, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_47c86f, %struct.Memory** %MEMORY
  %loadMem_47c872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i6 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %PC.i5
  %3184 = add i64 %3183, 8
  store i64 %3184, i64* %PC.i5
  %3185 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3185, i64* %RCX.i6, align 8
  store %struct.Memory* %loadMem_47c872, %struct.Memory** %MEMORY
  %loadMem_47c87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 1
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3191 to i32*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 5
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3194 to i64*
  %3195 = load i64, i64* %RCX.i
  %3196 = add i64 %3195, 3244
  %3197 = load i32, i32* %EAX.i
  %3198 = zext i32 %3197 to i64
  %3199 = load i64, i64* %PC.i4
  %3200 = add i64 %3199, 6
  store i64 %3200, i64* %PC.i4
  %3201 = inttoptr i64 %3196 to i32*
  store i32 %3197, i32* %3201
  store %struct.Memory* %loadMem_47c87a, %struct.Memory** %MEMORY
  br label %block_.L_47c880

block_.L_47c880:                                  ; preds = %block_.L_47c86f, %block_.L_47c7e9
  %loadMem_47c880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 15
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %PC.i2
  %3209 = add i64 %3208, 1
  store i64 %3209, i64* %PC.i2
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3211 = load i64, i64* %3210, align 8
  %3212 = add i64 %3211, 8
  %3213 = inttoptr i64 %3211 to i64*
  %3214 = load i64, i64* %3213
  store i64 %3214, i64* %RBP.i3, align 8
  store i64 %3212, i64* %3210, align 8
  store %struct.Memory* %loadMem_47c880, %struct.Memory** %MEMORY
  %loadMem_47c881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %PC.i1
  %3219 = add i64 %3218, 1
  store i64 %3219, i64* %PC.i1
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3222 = load i64, i64* %3221, align 8
  %3223 = inttoptr i64 %3222 to i64*
  %3224 = load i64, i64* %3223
  store i64 %3224, i64* %3220, align 8
  %3225 = add i64 %3222, 8
  store i64 %3225, i64* %3221, align 8
  store %struct.Memory* %loadMem_47c881, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47c881
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

define %struct.Memory* @routine_movl__0x100___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 256, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6d2190(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6d2190_type* @G_0x6d2190 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6d2eb8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6d2eb8_type* @G_0x6d2eb8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0xca8__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3240
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

define %struct.Memory* @routine_movsd__xmm0__0x6ccf88(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x30__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_movl_0x4d4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movl_0x14__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd__xmm0__0x6d1fb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6f6f80(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6f6f80_type* @G_0x6f6f80 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
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

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl__eax__0x11ba0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xcb0__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x11ba0__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_47c471(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x11ba0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0xcb0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3248
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xcb0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3248
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

define %struct.Memory* @routine_jge_.L_47c4b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x11ba0__rax____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0xcb0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3248
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %10 to i32*
  %22 = load i32, i32* %21
  %23 = sext i32 %22 to i64
  %24 = shl i64 %20, 32
  %25 = or i64 %24, %16
  %26 = sdiv i64 %25, %23
  %27 = shl i64 %26, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %block_400488
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = srem i64 %25, %23
  %36 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %37 = and i64 %26, 4294967295
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %39 = and i64 %35, 4294967295
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %30, %34
  %46 = phi %struct.Memory* [ %33, %30 ], [ %2, %34 ]
  ret %struct.Memory* %46
}

define %struct.Memory* @routine_movl__eax__0x6f80a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x35409__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35409__rip__type* @G_0x35409__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x35406__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35406__rip__type* @G_0x35406__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x35366__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35366__rip__type* @G_0x35366__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm3__0x723648(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x723648_type* @G_0x723648 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x6ccf88___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x6d4748(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6d4748_type* @G_0x6d4748 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6d45f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d45f0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d45f0_type* @G_0x6d45f0 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x722fe0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x722fe0_type* @G_0x722fe0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x6d4748___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x6d4748_type* @G_0x6d4748 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6f6f78(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 7303032 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x724bd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x724bd0_type* @G_0x724bd0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x7242f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x7242f4_type* @G_0x7242f4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b70__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b74__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b78__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6cc5d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6cc5d8_type* @G_0x6cc5d8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1236
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

define %struct.Memory* @routine_jle_.L_47c5ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3534a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3534a__rip__type* @G_0x3534a__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x3534a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3534a__rip__type* @G_0x3534a__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm1__0x725570(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x725570_type* @G_0x725570 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6cea40(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6cea40_type* @G_0x6cea40 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c5c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x352d3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x352d3__rip__type* @G_0x352d3__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__0x725570(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x725570_type* @G_0x725570 to double*)
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

define %struct.Memory* @routine_movsd_0x3528e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3528e__rip__type* @G_0x3528e__rip_ to i64)
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

define %struct.Memory* @routine_movl__0x0__0x6f9720(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6f9720_type* @G_0x6f9720 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x726420(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x726420_type* @G_0x726420 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6f9358(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6f9358_type* @G_0x6f9358 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6cfc68(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6cfc68_type* @G_0x6cfc68 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x710798(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x710798_type* @G_0x710798 to double*)
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

define %struct.Memory* @routine_cmpl__0x14__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_47c656(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x6d1910___rax_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__0x6d46a0___rax_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__0x6cd300___rax_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = mul i64 %11, 8
  %13 = add i64 %12, 7131904
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c614(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd__xmm0__0x6cd3a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x6cd3a0_type* @G_0x6cd3a0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x6f80c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 2, i32* bitcast (%G_0x6f80c8_type* @G_0x6f80c8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x6d32d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x6d32d8_type* @G_0x6d32d8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x722c78(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x722c78_type* @G_0x722c78 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x9__0x6f80a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x6f80a0_type* @G_0x6f80a0 to i32*)
  %9 = sub i32 %8, 9
  %10 = icmp ult i32 %8, 9
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
  %19 = xor i32 %8, 9
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

define %struct.Memory* @routine_jl_.L_47c6a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x70fce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 1, i32* bitcast (%G_0x70fce4_type* @G_0x70fce4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c6ac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2__0x70fce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 2, i32* bitcast (%G_0x70fce4_type* @G_0x70fce4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x351ac__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x351ac__rip__type* @G_0x351ac__rip_ to i64)
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x6f8ed8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6f8ed8_type* @G_0x6f8ed8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x11b98__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x33__0x724744(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 51, i32* bitcast (%G_0x724744_type* @G_0x724744 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x710364(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x710364_type* @G_0x710364 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x6ccf88___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x6ccf88_type* @G_0x6ccf88 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6d1fb0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6d1fb0_type* @G_0x6d1fb0 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0x34__rcx____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 52
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

define %struct.Memory* @routine_cvtsi2sdl_0x3c__rcx____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_cmpl__0xb0__0x34__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 176
  %16 = icmp ult i32 %14, 176
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
  %25 = xor i32 %14, 176
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

define %struct.Memory* @routine_jne_.L_47c77c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x351a0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x351a0__rip__type* @G_0x351a0__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x351b0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x351b0__rip__type* @G_0x351b0__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x351b0__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x351b0__rip__type* @G_0x351b0__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_jmpq_.L_47c7e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x160__0x34__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 352
  %16 = icmp ult i32 %14, 352
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
  %25 = xor i32 %14, 352
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

define %struct.Memory* @routine_jne_.L_47c7bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x35167__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35167__rip__type* @G_0x35167__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x35157__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35157__rip__type* @G_0x35157__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x3515f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3515f__rip__type* @G_0x3515f__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_47c7e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x35123__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35123__rip__type* @G_0x35123__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x35123__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35123__rip__type* @G_0x35123__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x35123__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x35123__rip__type* @G_0x35123__rip_ to i64)
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

define %struct.Memory* @routine_cmpl__0x0__0xcac__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3244
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

define %struct.Memory* @routine_jne_.L_47c880(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_jb_.L_47c81e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x23__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 35, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c86f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jb_.L_47c83e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x19__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 25, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c86a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_jb_.L_47c85e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x14__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 20, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c865(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xa__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 10, i32* %13
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

define %struct.Memory* @routine_movl__eax__0xcac__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
