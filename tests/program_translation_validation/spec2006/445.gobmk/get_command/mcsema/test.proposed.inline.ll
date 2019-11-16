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
%G__0x57a760_type = type <{ [8 x i8] }>
%G__0x57a763_type = type <{ [8 x i8] }>
%G__0x57a92d_type = type <{ [8 x i8] }>
%G__0x57b705_type = type <{ [8 x i8] }>
%G__0x57c0a9_type = type <{ [8 x i8] }>
%G__0x57f610_type = type <{ [8 x i8] }>
%G__0x57fc64_type = type <{ [8 x i8] }>
%G__0x57fdf5_type = type <{ [8 x i8] }>
%G__0x5835e4_type = type <{ [8 x i8] }>
%G__0x585698_type = type <{ [8 x i8] }>
%G__0x5856fa_type = type <{ [8 x i8] }>
%G__0x5857db_type = type <{ [8 x i8] }>
%G__0x585d71_type = type <{ [8 x i8] }>
%G__0x585f74_type = type <{ [8 x i8] }>
%G__0x5861b6_type = type <{ [8 x i8] }>
%G__0x586a9a_type = type <{ [8 x i8] }>
%G__0x586aa4_type = type <{ [8 x i8] }>
%G__0x586aae_type = type <{ [8 x i8] }>
%G__0x586ab8_type = type <{ [8 x i8] }>
%G__0x586ac4_type = type <{ [8 x i8] }>
%G__0x586ad0_type = type <{ [8 x i8] }>
%G__0x586add_type = type <{ [8 x i8] }>
%G__0x586ae5_type = type <{ [8 x i8] }>
%G__0x586aef_type = type <{ [8 x i8] }>
%G__0x586af6_type = type <{ [8 x i8] }>
%G__0x586aff_type = type <{ [8 x i8] }>
%G__0x586b09_type = type <{ [8 x i8] }>
%G__0x586b12_type = type <{ [8 x i8] }>
%G__0x586b19_type = type <{ [8 x i8] }>
%G__0x586b1e_type = type <{ [8 x i8] }>
%G__0x586b24_type = type <{ [8 x i8] }>
%G__0x586b2a_type = type <{ [8 x i8] }>
%G__0x586b2f_type = type <{ [8 x i8] }>
%G__0x586b34_type = type <{ [8 x i8] }>
%G__0x586b3c_type = type <{ [8 x i8] }>
%G__0x586b44_type = type <{ [8 x i8] }>
%G__0x586b49_type = type <{ [8 x i8] }>
%G__0x586b51_type = type <{ [8 x i8] }>
%G__0x586b56_type = type <{ [8 x i8] }>
%G__0x586eef_type = type <{ [8 x i8] }>
%G__0x58730e_type = type <{ [8 x i8] }>
%G__0x58742a_type = type <{ [8 x i8] }>
%G__0x5877c3_type = type <{ [8 x i8] }>
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
@G__0x57a760 = global %G__0x57a760_type zeroinitializer
@G__0x57a763 = global %G__0x57a763_type zeroinitializer
@G__0x57a92d = global %G__0x57a92d_type zeroinitializer
@G__0x57b705 = global %G__0x57b705_type zeroinitializer
@G__0x57c0a9 = global %G__0x57c0a9_type zeroinitializer
@G__0x57f610 = global %G__0x57f610_type zeroinitializer
@G__0x57fc64 = global %G__0x57fc64_type zeroinitializer
@G__0x57fdf5 = global %G__0x57fdf5_type zeroinitializer
@G__0x5835e4 = global %G__0x5835e4_type zeroinitializer
@G__0x585698 = global %G__0x585698_type zeroinitializer
@G__0x5856fa = global %G__0x5856fa_type zeroinitializer
@G__0x5857db = global %G__0x5857db_type zeroinitializer
@G__0x585d71 = global %G__0x585d71_type zeroinitializer
@G__0x585f74 = global %G__0x585f74_type zeroinitializer
@G__0x5861b6 = global %G__0x5861b6_type zeroinitializer
@G__0x586a9a = global %G__0x586a9a_type zeroinitializer
@G__0x586aa4 = global %G__0x586aa4_type zeroinitializer
@G__0x586aae = global %G__0x586aae_type zeroinitializer
@G__0x586ab8 = global %G__0x586ab8_type zeroinitializer
@G__0x586ac4 = global %G__0x586ac4_type zeroinitializer
@G__0x586ad0 = global %G__0x586ad0_type zeroinitializer
@G__0x586add = global %G__0x586add_type zeroinitializer
@G__0x586ae5 = global %G__0x586ae5_type zeroinitializer
@G__0x586aef = global %G__0x586aef_type zeroinitializer
@G__0x586af6 = global %G__0x586af6_type zeroinitializer
@G__0x586aff = global %G__0x586aff_type zeroinitializer
@G__0x586b09 = global %G__0x586b09_type zeroinitializer
@G__0x586b12 = global %G__0x586b12_type zeroinitializer
@G__0x586b19 = global %G__0x586b19_type zeroinitializer
@G__0x586b1e = global %G__0x586b1e_type zeroinitializer
@G__0x586b24 = global %G__0x586b24_type zeroinitializer
@G__0x586b2a = global %G__0x586b2a_type zeroinitializer
@G__0x586b2f = global %G__0x586b2f_type zeroinitializer
@G__0x586b34 = global %G__0x586b34_type zeroinitializer
@G__0x586b3c = global %G__0x586b3c_type zeroinitializer
@G__0x586b44 = global %G__0x586b44_type zeroinitializer
@G__0x586b49 = global %G__0x586b49_type zeroinitializer
@G__0x586b51 = global %G__0x586b51_type zeroinitializer
@G__0x586b56 = global %G__0x586b56_type zeroinitializer
@G__0x586eef = global %G__0x586eef_type zeroinitializer
@G__0x58730e = global %G__0x58730e_type zeroinitializer
@G__0x58742a = global %G__0x58742a_type zeroinitializer
@G__0x5877c3 = global %G__0x5877c3_type zeroinitializer

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

declare %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @get_command(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4909e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4909e0, %struct.Memory** %MEMORY
  %loadMem_4909e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i15 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i15
  %27 = load i64, i64* %PC.i14
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i14
  store i64 %26, i64* %RBP.i16, align 8
  store %struct.Memory* %loadMem_4909e1, %struct.Memory** %MEMORY
  %loadMem_4909e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i32 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i32
  %36 = load i64, i64* %PC.i31
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i31
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i32, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_4909e4, %struct.Memory** %MEMORY
  %loadMem_4909e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i50
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i50
  store i64 ptrtoint (%G__0x57a92d_type* @G__0x57a92d to i64), i64* %RSI.i51, align 8
  store %struct.Memory* %loadMem_4909e8, %struct.Memory** %MEMORY
  %loadMem_4909f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i71
  %85 = sub i64 %84, 17
  %86 = load i64, i64* %PC.i69
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i69
  store i64 %85, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_4909f2, %struct.Memory** %MEMORY
  %loadMem_4909f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RBP.i90
  %98 = sub i64 %97, 24
  %99 = load i64, i64* %PC.i89
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC.i89
  store i64 %98, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4909f6, %struct.Memory** %MEMORY
  %loadMem_4909fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i110
  %111 = sub i64 %110, 16
  %112 = load i64, i64* %RDI.i109
  %113 = load i64, i64* %PC.i108
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC.i108
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  store %struct.Memory* %loadMem_4909fa, %struct.Memory** %MEMORY
  %loadMem_4909fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RDI.i129 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RBP.i130
  %126 = sub i64 %125, 16
  %127 = load i64, i64* %PC.i128
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC.i128
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %RDI.i129, align 8
  store %struct.Memory* %loadMem_4909fe, %struct.Memory** %MEMORY
  %loadMem_490a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %137 = bitcast %union.anon* %136 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %137, i32 0, i32 0
  %138 = load i64, i64* %PC.i148
  %139 = add i64 %138, 2
  store i64 %139, i64* %PC.i148
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_490a02, %struct.Memory** %MEMORY
  %loadMem1_490a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %PC.i166
  %144 = add i64 %143, -587972
  %145 = load i64, i64* %PC.i166
  %146 = add i64 %145, 5
  %147 = load i64, i64* %PC.i166
  %148 = add i64 %147, 5
  store i64 %148, i64* %PC.i166
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, -8
  %152 = inttoptr i64 %151 to i64*
  store i64 %146, i64* %152
  store i64 %151, i64* %149, align 8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %144, i64* %153, align 8
  store %struct.Memory* %loadMem1_490a04, %struct.Memory** %MEMORY
  %loadMem2_490a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490a04 = load i64, i64* %3
  %154 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %loadMem2_490a04)
  store %struct.Memory* %154, %struct.Memory** %MEMORY
  %loadMem_490a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %160 to i32*
  %161 = load i32, i32* %EAX.i185
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i184
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC.i184
  %165 = sub i32 %161, 2
  %166 = icmp ult i32 %161, 2
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %167, i8* %168, align 1
  %169 = and i32 %165, 255
  %170 = call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %173, i8* %174, align 1
  %175 = xor i64 2, %162
  %176 = trunc i64 %175 to i32
  %177 = xor i32 %176, %165
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %180, i8* %181, align 1
  %182 = icmp eq i32 %165, 0
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i32 %165, 31
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %186, i8* %187, align 1
  %188 = lshr i32 %161, 31
  %189 = xor i32 %185, %188
  %190 = add i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1
  store %struct.Memory* %loadMem_490a09, %struct.Memory** %MEMORY
  %loadMem_490a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %PC.i203
  %198 = add i64 %197, 83
  %199 = load i64, i64* %PC.i203
  %200 = add i64 %199, 6
  %201 = load i64, i64* %PC.i203
  %202 = add i64 %201, 6
  store i64 %202, i64* %PC.i203
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %204 = load i8, i8* %203, align 1
  %205 = icmp eq i8 %204, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %BRANCH_TAKEN, align 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %208 = select i1 %205, i64 %198, i64 %200
  store i64 %208, i64* %207, align 8
  store %struct.Memory* %loadMem_490a0c, %struct.Memory** %MEMORY
  %loadBr_490a0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a0c = icmp eq i8 %loadBr_490a0c, 1
  br i1 %cmpBr_490a0c, label %block_.L_490a5f, label %block_490a12

block_490a12:                                     ; preds = %entry
  %loadMem_490a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 11
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RDI.i222 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %RBP.i223
  %219 = sub i64 %218, 17
  %220 = load i64, i64* %PC.i221
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC.i221
  %222 = inttoptr i64 %219 to i8*
  %223 = load i8, i8* %222
  %224 = sext i8 %223 to i64
  %225 = and i64 %224, 4294967295
  store i64 %225, i64* %RDI.i222, align 8
  store %struct.Memory* %loadMem_490a12, %struct.Memory** %MEMORY
  %loadMem1_490a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i241
  %230 = add i64 %229, -588358
  %231 = load i64, i64* %PC.i241
  %232 = add i64 %231, 5
  %233 = load i64, i64* %PC.i241
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC.i241
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, -8
  %238 = inttoptr i64 %237 to i64*
  store i64 %232, i64* %238
  store i64 %237, i64* %235, align 8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %230, i64* %239, align 8
  store %struct.Memory* %loadMem1_490a16, %struct.Memory** %MEMORY
  %loadMem2_490a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490a16 = load i64, i64* %3
  %call2_490a16 = call %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* %0, i64 %loadPC_490a16, %struct.Memory* %loadMem2_490a16)
  store %struct.Memory* %call2_490a16, %struct.Memory** %MEMORY
  %loadMem_490a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %246 = bitcast %union.anon* %245 to %struct.anon.2*
  %AL.i260 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %246, i32 0, i32 0
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %250 = bitcast %union.anon* %249 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %250, i32 0, i32 0
  %251 = load i8, i8* %AL.i260
  %252 = zext i8 %251 to i64
  %253 = load i64, i64* %PC.i259
  %254 = add i64 %253, 2
  store i64 %254, i64* %PC.i259
  store i8 %251, i8* %CL.i, align 1
  store %struct.Memory* %loadMem_490a1b, %struct.Memory** %MEMORY
  %loadMem_490a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %261 = bitcast %union.anon* %260 to %struct.anon.2*
  %CL.i279 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %261, i32 0, i32 0
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i280
  %266 = sub i64 %265, 17
  %267 = load i8, i8* %CL.i279
  %268 = zext i8 %267 to i64
  %269 = load i64, i64* %PC.i278
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i278
  %271 = inttoptr i64 %266 to i8*
  store i8 %267, i8* %271
  store %struct.Memory* %loadMem_490a1d, %struct.Memory** %MEMORY
  %loadMem_490a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %278 = bitcast %union.anon* %277 to %struct.anon.2*
  %CL.i299 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %278, i32 0, i32 0
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %281 to i64*
  %282 = load i8, i8* %CL.i299
  %283 = zext i8 %282 to i64
  %284 = load i64, i64* %PC.i298
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC.i298
  %286 = trunc i64 %283 to i32
  %287 = shl i32 %286, 24
  %288 = ashr exact i32 %287, 24
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_490a20, %struct.Memory** %MEMORY
  %loadMem_490a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %295 to i32*
  %296 = load i32, i32* %EAX.i319
  %297 = zext i32 %296 to i64
  %298 = load i64, i64* %PC.i318
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC.i318
  %300 = sub i32 %296, 65
  %301 = icmp ult i32 %296, 65
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %302, i8* %303, align 1
  %304 = and i32 %300, 255
  %305 = call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %308, i8* %309, align 1
  %310 = xor i64 65, %297
  %311 = trunc i64 %310 to i32
  %312 = xor i32 %311, %300
  %313 = lshr i32 %312, 4
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %315, i8* %316, align 1
  %317 = icmp eq i32 %300, 0
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %318, i8* %319, align 1
  %320 = lshr i32 %300, 31
  %321 = trunc i32 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %321, i8* %322, align 1
  %323 = lshr i32 %296, 31
  %324 = xor i32 %320, %323
  %325 = add i32 %324, %323
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %327, i8* %328, align 1
  store %struct.Memory* %loadMem_490a23, %struct.Memory** %MEMORY
  %loadMem_490a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %PC.i337
  %333 = add i64 %332, 57
  %334 = load i64, i64* %PC.i337
  %335 = add i64 %334, 6
  %336 = load i64, i64* %PC.i337
  %337 = add i64 %336, 6
  store i64 %337, i64* %PC.i337
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %339 = load i8, i8* %338, align 1
  %340 = icmp ne i8 %339, 0
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %342 = load i8, i8* %341, align 1
  %343 = icmp ne i8 %342, 0
  %344 = xor i1 %340, %343
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %BRANCH_TAKEN, align 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %347 = select i1 %344, i64 %333, i64 %335
  store i64 %347, i64* %346, align 8
  store %struct.Memory* %loadMem_490a26, %struct.Memory** %MEMORY
  %loadBr_490a26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a26 = icmp eq i8 %loadBr_490a26, 1
  br i1 %cmpBr_490a26, label %block_.L_490a5f, label %block_490a2c

block_490a2c:                                     ; preds = %block_490a12
  %loadMem_490a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 11
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RDI.i356 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 15
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %RBP.i357
  %358 = sub i64 %357, 17
  %359 = load i64, i64* %PC.i355
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC.i355
  %361 = inttoptr i64 %358 to i8*
  %362 = load i8, i8* %361
  %363 = sext i8 %362 to i64
  %364 = and i64 %363, 4294967295
  store i64 %364, i64* %RDI.i356, align 8
  store %struct.Memory* %loadMem_490a2c, %struct.Memory** %MEMORY
  %loadMem1_490a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %PC.i375
  %369 = add i64 %368, -588384
  %370 = load i64, i64* %PC.i375
  %371 = add i64 %370, 5
  %372 = load i64, i64* %PC.i375
  %373 = add i64 %372, 5
  store i64 %373, i64* %PC.i375
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = add i64 %375, -8
  %377 = inttoptr i64 %376 to i64*
  store i64 %371, i64* %377
  store i64 %376, i64* %374, align 8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %369, i64* %378, align 8
  store %struct.Memory* %loadMem1_490a30, %struct.Memory** %MEMORY
  %loadMem2_490a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490a30 = load i64, i64* %3
  %call2_490a30 = call %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* %0, i64 %loadPC_490a30, %struct.Memory* %loadMem2_490a30)
  store %struct.Memory* %call2_490a30, %struct.Memory** %MEMORY
  %loadMem_490a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %385 = bitcast %union.anon* %384 to %struct.anon.2*
  %AL.i394 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %385, i32 0, i32 0
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %389 = bitcast %union.anon* %388 to %struct.anon.2*
  %CL.i395 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %389, i32 0, i32 0
  %390 = load i8, i8* %AL.i394
  %391 = zext i8 %390 to i64
  %392 = load i64, i64* %PC.i393
  %393 = add i64 %392, 2
  store i64 %393, i64* %PC.i393
  store i8 %390, i8* %CL.i395, align 1
  store %struct.Memory* %loadMem_490a35, %struct.Memory** %MEMORY
  %loadMem_490a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %400 = bitcast %union.anon* %399 to %struct.anon.2*
  %CL.i414 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %400, i32 0, i32 0
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 15
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %RBP.i415
  %405 = sub i64 %404, 17
  %406 = load i8, i8* %CL.i414
  %407 = zext i8 %406 to i64
  %408 = load i64, i64* %PC.i413
  %409 = add i64 %408, 3
  store i64 %409, i64* %PC.i413
  %410 = inttoptr i64 %405 to i8*
  store i8 %406, i8* %410
  store %struct.Memory* %loadMem_490a37, %struct.Memory** %MEMORY
  %loadMem_490a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %417 = bitcast %union.anon* %416 to %struct.anon.2*
  %CL.i434 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %417, i32 0, i32 0
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %420 to i64*
  %421 = load i8, i8* %CL.i434
  %422 = zext i8 %421 to i64
  %423 = load i64, i64* %PC.i433
  %424 = add i64 %423, 3
  store i64 %424, i64* %PC.i433
  %425 = trunc i64 %422 to i32
  %426 = shl i32 %425, 24
  %427 = ashr exact i32 %426, 24
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_490a3a, %struct.Memory** %MEMORY
  %loadMem_490a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %EAX.i454 = bitcast %union.anon* %434 to i32*
  %435 = load i32, i32* %EAX.i454
  %436 = zext i32 %435 to i64
  %437 = load i64, i64* %PC.i453
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC.i453
  %439 = sub i32 %435, 90
  %440 = icmp ult i32 %435, 90
  %441 = zext i1 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %441, i8* %442, align 1
  %443 = and i32 %439, 255
  %444 = call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %447, i8* %448, align 1
  %449 = xor i64 90, %436
  %450 = trunc i64 %449 to i32
  %451 = xor i32 %450, %439
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %454, i8* %455, align 1
  %456 = icmp eq i32 %439, 0
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %457, i8* %458, align 1
  %459 = lshr i32 %439, 31
  %460 = trunc i32 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %460, i8* %461, align 1
  %462 = lshr i32 %435, 31
  %463 = xor i32 %459, %462
  %464 = add i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %466, i8* %467, align 1
  store %struct.Memory* %loadMem_490a3d, %struct.Memory** %MEMORY
  %loadMem_490a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %PC.i472
  %472 = add i64 %471, 31
  %473 = load i64, i64* %PC.i472
  %474 = add i64 %473, 6
  %475 = load i64, i64* %PC.i472
  %476 = add i64 %475, 6
  store i64 %476, i64* %PC.i472
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %478 = load i8, i8* %477, align 1
  %479 = icmp eq i8 %478, 0
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %481 = load i8, i8* %480, align 1
  %482 = icmp ne i8 %481, 0
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %484 = load i8, i8* %483, align 1
  %485 = icmp ne i8 %484, 0
  %486 = xor i1 %482, %485
  %487 = xor i1 %486, true
  %488 = and i1 %479, %487
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %BRANCH_TAKEN, align 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %491 = select i1 %488, i64 %472, i64 %474
  store i64 %491, i64* %490, align 8
  store %struct.Memory* %loadMem_490a40, %struct.Memory** %MEMORY
  %loadBr_490a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a40 = icmp eq i8 %loadBr_490a40, 1
  br i1 %cmpBr_490a40, label %block_.L_490a5f, label %block_490a46

block_490a46:                                     ; preds = %block_490a2c
  %loadMem_490a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i492
  %502 = sub i64 %501, 17
  %503 = load i64, i64* %PC.i490
  %504 = add i64 %503, 4
  store i64 %504, i64* %PC.i490
  %505 = inttoptr i64 %502 to i8*
  %506 = load i8, i8* %505
  %507 = sext i8 %506 to i64
  %508 = and i64 %507, 4294967295
  store i64 %508, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_490a46, %struct.Memory** %MEMORY
  %loadMem_490a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %514 to i32*
  %515 = load i32, i32* %EAX.i511
  %516 = zext i32 %515 to i64
  %517 = load i64, i64* %PC.i510
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i510
  %519 = sub i32 %515, 73
  %520 = icmp ult i32 %515, 73
  %521 = zext i1 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %521, i8* %522, align 1
  %523 = and i32 %519, 255
  %524 = call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %527, i8* %528, align 1
  %529 = xor i64 73, %516
  %530 = trunc i64 %529 to i32
  %531 = xor i32 %530, %519
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %534, i8* %535, align 1
  %536 = icmp eq i32 %519, 0
  %537 = zext i1 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %537, i8* %538, align 1
  %539 = lshr i32 %519, 31
  %540 = trunc i32 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %540, i8* %541, align 1
  %542 = lshr i32 %515, 31
  %543 = xor i32 %539, %542
  %544 = add i32 %543, %542
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %547, align 1
  store %struct.Memory* %loadMem_490a4a, %struct.Memory** %MEMORY
  %loadMem_490a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %PC.i529
  %552 = add i64 %551, 18
  %553 = load i64, i64* %PC.i529
  %554 = add i64 %553, 6
  %555 = load i64, i64* %PC.i529
  %556 = add i64 %555, 6
  store i64 %556, i64* %PC.i529
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %558 = load i8, i8* %557, align 1
  store i8 %558, i8* %BRANCH_TAKEN, align 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %560 = icmp ne i8 %558, 0
  %561 = select i1 %560, i64 %552, i64 %554
  store i64 %561, i64* %559, align 8
  store %struct.Memory* %loadMem_490a4d, %struct.Memory** %MEMORY
  %loadBr_490a4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a4d = icmp eq i8 %loadBr_490a4d, 1
  br i1 %cmpBr_490a4d, label %block_.L_490a5f, label %block_490a53

block_490a53:                                     ; preds = %block_490a46
  %loadMem_490a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 15
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %567 to i64*
  %568 = load i64, i64* %RBP.i548
  %569 = sub i64 %568, 4
  %570 = load i64, i64* %PC.i547
  %571 = add i64 %570, 7
  store i64 %571, i64* %PC.i547
  %572 = inttoptr i64 %569 to i32*
  store i32 5, i32* %572
  store %struct.Memory* %loadMem_490a53, %struct.Memory** %MEMORY
  %loadMem_490a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %PC.i566
  %577 = add i64 %576, 2052
  %578 = load i64, i64* %PC.i566
  %579 = add i64 %578, 5
  store i64 %579, i64* %PC.i566
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %577, i64* %580, align 8
  store %struct.Memory* %loadMem_490a5a, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490a5f:                                  ; preds = %block_490a46, %block_490a2c, %block_490a12, %entry
  %loadMem_490a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i586
  %591 = sub i64 %590, 16
  %592 = load i64, i64* %PC.i584
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC.i584
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594
  store i64 %595, i64* %RAX.i585, align 8
  store %struct.Memory* %loadMem_490a5f, %struct.Memory** %MEMORY
  %loadMem_490a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RAX.i605
  %606 = load i64, i64* %PC.i604
  %607 = add i64 %606, 3
  store i64 %607, i64* %PC.i604
  %608 = inttoptr i64 %605 to i8*
  %609 = load i8, i8* %608
  %610 = sext i8 %609 to i64
  %611 = and i64 %610, 4294967295
  store i64 %611, i64* %RCX.i606, align 8
  store %struct.Memory* %loadMem_490a63, %struct.Memory** %MEMORY
  %loadMem_490a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 5
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %617 to i32*
  %618 = load i32, i32* %ECX.i
  %619 = zext i32 %618 to i64
  %620 = load i64, i64* %PC.i624
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i624
  %622 = sub i32 %618, 63
  %623 = icmp ult i32 %618, 63
  %624 = zext i1 %623 to i8
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %624, i8* %625, align 1
  %626 = and i32 %622, 255
  %627 = call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %630, i8* %631, align 1
  %632 = xor i64 63, %619
  %633 = trunc i64 %632 to i32
  %634 = xor i32 %633, %622
  %635 = lshr i32 %634, 4
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %637, i8* %638, align 1
  %639 = icmp eq i32 %622, 0
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %640, i8* %641, align 1
  %642 = lshr i32 %622, 31
  %643 = trunc i32 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %643, i8* %644, align 1
  %645 = lshr i32 %618, 31
  %646 = xor i32 %642, %645
  %647 = add i32 %646, %645
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %649, i8* %650, align 1
  store %struct.Memory* %loadMem_490a66, %struct.Memory** %MEMORY
  %loadMem_490a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %PC.i642
  %655 = add i64 %654, 18
  %656 = load i64, i64* %PC.i642
  %657 = add i64 %656, 6
  %658 = load i64, i64* %PC.i642
  %659 = add i64 %658, 6
  store i64 %659, i64* %PC.i642
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %661 = load i8, i8* %660, align 1
  %662 = icmp eq i8 %661, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %BRANCH_TAKEN, align 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %665 = select i1 %662, i64 %655, i64 %657
  store i64 %665, i64* %664, align 8
  store %struct.Memory* %loadMem_490a69, %struct.Memory** %MEMORY
  %loadBr_490a69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a69 = icmp eq i8 %loadBr_490a69, 1
  br i1 %cmpBr_490a69, label %block_.L_490a7b, label %block_490a6f

block_490a6f:                                     ; preds = %block_.L_490a5f
  %loadMem_490a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %RBP.i661
  %673 = sub i64 %672, 4
  %674 = load i64, i64* %PC.i660
  %675 = add i64 %674, 7
  store i64 %675, i64* %PC.i660
  %676 = inttoptr i64 %673 to i32*
  store i32 18, i32* %676
  store %struct.Memory* %loadMem_490a6f, %struct.Memory** %MEMORY
  %loadMem_490a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %PC.i679
  %681 = add i64 %680, 2024
  %682 = load i64, i64* %PC.i679
  %683 = add i64 %682, 5
  store i64 %683, i64* %PC.i679
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %681, i64* %684, align 8
  store %struct.Memory* %loadMem_490a76, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490a7b:                                  ; preds = %block_.L_490a5f
  %loadMem_490a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %PC.i697
  %689 = add i64 %688, 5
  %690 = load i64, i64* %PC.i697
  %691 = add i64 %690, 5
  store i64 %691, i64* %PC.i697
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %689, i64* %692, align 8
  store %struct.Memory* %loadMem_490a7b, %struct.Memory** %MEMORY
  br label %block_.L_490a80

block_.L_490a80:                                  ; preds = %block_490a90, %block_.L_490a7b
  %loadMem_490a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 1
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 15
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %RBP.i717
  %703 = sub i64 %702, 16
  %704 = load i64, i64* %PC.i715
  %705 = add i64 %704, 4
  store i64 %705, i64* %PC.i715
  %706 = inttoptr i64 %703 to i64*
  %707 = load i64, i64* %706
  store i64 %707, i64* %RAX.i716, align 8
  store %struct.Memory* %loadMem_490a80, %struct.Memory** %MEMORY
  %loadMem_490a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 1
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 5
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RCX.i737 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RAX.i736
  %718 = load i64, i64* %PC.i735
  %719 = add i64 %718, 3
  store i64 %719, i64* %PC.i735
  %720 = inttoptr i64 %717 to i8*
  %721 = load i8, i8* %720
  %722 = sext i8 %721 to i64
  %723 = and i64 %722, 4294967295
  store i64 %723, i64* %RCX.i737, align 8
  store %struct.Memory* %loadMem_490a84, %struct.Memory** %MEMORY
  %loadMem_490a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 5
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %ECX.i756 = bitcast %union.anon* %729 to i32*
  %730 = load i32, i32* %ECX.i756
  %731 = zext i32 %730 to i64
  %732 = load i64, i64* %PC.i755
  %733 = add i64 %732, 3
  store i64 %733, i64* %PC.i755
  %734 = sub i32 %730, 32
  %735 = icmp ult i32 %730, 32
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %736, i8* %737, align 1
  %738 = and i32 %734, 255
  %739 = call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %742, i8* %743, align 1
  %744 = xor i64 32, %731
  %745 = trunc i64 %744 to i32
  %746 = xor i32 %745, %734
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %749, i8* %750, align 1
  %751 = icmp eq i32 %734, 0
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %752, i8* %753, align 1
  %754 = lshr i32 %734, 31
  %755 = trunc i32 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %755, i8* %756, align 1
  %757 = lshr i32 %730, 31
  %758 = xor i32 %754, %757
  %759 = add i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %761, i8* %762, align 1
  store %struct.Memory* %loadMem_490a87, %struct.Memory** %MEMORY
  %loadMem_490a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i774
  %767 = add i64 %766, 23
  %768 = load i64, i64* %PC.i774
  %769 = add i64 %768, 6
  %770 = load i64, i64* %PC.i774
  %771 = add i64 %770, 6
  store i64 %771, i64* %PC.i774
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %773 = load i8, i8* %772, align 1
  %774 = icmp eq i8 %773, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %BRANCH_TAKEN, align 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %777 = select i1 %774, i64 %767, i64 %769
  store i64 %777, i64* %776, align 8
  store %struct.Memory* %loadMem_490a8a, %struct.Memory** %MEMORY
  %loadBr_490a8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a8a = icmp eq i8 %loadBr_490a8a, 1
  br i1 %cmpBr_490a8a, label %block_.L_490aa1, label %block_490a90

block_490a90:                                     ; preds = %block_.L_490a80
  %loadMem_490a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 15
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RBP.i794
  %788 = sub i64 %787, 16
  %789 = load i64, i64* %PC.i792
  %790 = add i64 %789, 4
  store i64 %790, i64* %PC.i792
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791
  store i64 %792, i64* %RAX.i793, align 8
  store %struct.Memory* %loadMem_490a90, %struct.Memory** %MEMORY
  %loadMem_490a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %RAX.i811
  %800 = load i64, i64* %PC.i810
  %801 = add i64 %800, 4
  store i64 %801, i64* %PC.i810
  %802 = add i64 1, %799
  store i64 %802, i64* %RAX.i811, align 8
  %803 = icmp ult i64 %802, %799
  %804 = icmp ult i64 %802, 1
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %806, i8* %807, align 1
  %808 = trunc i64 %802 to i32
  %809 = and i32 %808, 255
  %810 = call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %813, i8* %814, align 1
  %815 = xor i64 1, %799
  %816 = xor i64 %815, %802
  %817 = lshr i64 %816, 4
  %818 = trunc i64 %817 to i8
  %819 = and i8 %818, 1
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %819, i8* %820, align 1
  %821 = icmp eq i64 %802, 0
  %822 = zext i1 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %822, i8* %823, align 1
  %824 = lshr i64 %802, 63
  %825 = trunc i64 %824 to i8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %825, i8* %826, align 1
  %827 = lshr i64 %799, 63
  %828 = xor i64 %824, %827
  %829 = add i64 %828, %824
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %831, i8* %832, align 1
  store %struct.Memory* %loadMem_490a94, %struct.Memory** %MEMORY
  %loadMem_490a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 1
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 15
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %RBP.i809
  %843 = sub i64 %842, 16
  %844 = load i64, i64* %RAX.i808
  %845 = load i64, i64* %PC.i807
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC.i807
  %847 = inttoptr i64 %843 to i64*
  store i64 %844, i64* %847
  store %struct.Memory* %loadMem_490a98, %struct.Memory** %MEMORY
  %loadMem_490a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %PC.i806
  %852 = add i64 %851, -28
  %853 = load i64, i64* %PC.i806
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i806
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %852, i64* %855, align 8
  store %struct.Memory* %loadMem_490a9c, %struct.Memory** %MEMORY
  br label %block_.L_490a80

block_.L_490aa1:                                  ; preds = %block_.L_490a80
  %loadMem_490aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 9
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RSI.i805 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %PC.i804
  %863 = add i64 %862, 10
  store i64 %863, i64* %PC.i804
  store i64 ptrtoint (%G__0x586a9a_type* @G__0x586a9a to i64), i64* %RSI.i805, align 8
  store %struct.Memory* %loadMem_490aa1, %struct.Memory** %MEMORY
  %loadMem_490aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 1
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %869 to i64*
  %870 = load i64, i64* %PC.i802
  %871 = add i64 %870, 5
  store i64 %871, i64* %PC.i802
  store i64 9, i64* %RAX.i803, align 8
  store %struct.Memory* %loadMem_490aab, %struct.Memory** %MEMORY
  %loadMem_490ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 1
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %EAX.i800 = bitcast %union.anon* %877 to i32*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 7
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RDX.i801 = bitcast %union.anon* %880 to i64*
  %881 = load i32, i32* %EAX.i800
  %882 = zext i32 %881 to i64
  %883 = load i64, i64* %PC.i799
  %884 = add i64 %883, 2
  store i64 %884, i64* %PC.i799
  %885 = and i64 %882, 4294967295
  store i64 %885, i64* %RDX.i801, align 8
  store %struct.Memory* %loadMem_490ab0, %struct.Memory** %MEMORY
  %loadMem_490ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 11
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RDI.i797 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 15
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RBP.i798
  %896 = sub i64 %895, 16
  %897 = load i64, i64* %PC.i796
  %898 = add i64 %897, 4
  store i64 %898, i64* %PC.i796
  %899 = inttoptr i64 %896 to i64*
  %900 = load i64, i64* %899
  store i64 %900, i64* %RDI.i797, align 8
  store %struct.Memory* %loadMem_490ab2, %struct.Memory** %MEMORY
  %loadMem1_490ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %PC.i795
  %905 = add i64 %904, -588550
  %906 = load i64, i64* %PC.i795
  %907 = add i64 %906, 5
  %908 = load i64, i64* %PC.i795
  %909 = add i64 %908, 5
  store i64 %909, i64* %PC.i795
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %911 = load i64, i64* %910, align 8
  %912 = add i64 %911, -8
  %913 = inttoptr i64 %912 to i64*
  store i64 %907, i64* %913
  store i64 %912, i64* %910, align 8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %905, i64* %914, align 8
  store %struct.Memory* %loadMem1_490ab6, %struct.Memory** %MEMORY
  %loadMem2_490ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ab6 = load i64, i64* %3
  %915 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490ab6)
  store %struct.Memory* %915, %struct.Memory** %MEMORY
  %loadMem_490abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %EAX.i791 = bitcast %union.anon* %921 to i32*
  %922 = load i32, i32* %EAX.i791
  %923 = zext i32 %922 to i64
  %924 = load i64, i64* %PC.i790
  %925 = add i64 %924, 3
  store i64 %925, i64* %PC.i790
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %926, align 1
  %927 = and i32 %922, 255
  %928 = call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %931, i8* %932, align 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %933, align 1
  %934 = icmp eq i32 %922, 0
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %935, i8* %936, align 1
  %937 = lshr i32 %922, 31
  %938 = trunc i32 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %938, i8* %939, align 1
  %940 = lshr i32 %922, 31
  %941 = xor i32 %937, %940
  %942 = add i32 %941, %940
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %944, i8* %945, align 1
  store %struct.Memory* %loadMem_490abb, %struct.Memory** %MEMORY
  %loadMem_490abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %PC.i789
  %950 = add i64 %949, 18
  %951 = load i64, i64* %PC.i789
  %952 = add i64 %951, 6
  %953 = load i64, i64* %PC.i789
  %954 = add i64 %953, 6
  store i64 %954, i64* %PC.i789
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %956 = load i8, i8* %955, align 1
  %957 = icmp eq i8 %956, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %BRANCH_TAKEN, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %960 = select i1 %957, i64 %950, i64 %952
  store i64 %960, i64* %959, align 8
  store %struct.Memory* %loadMem_490abe, %struct.Memory** %MEMORY
  %loadBr_490abe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490abe = icmp eq i8 %loadBr_490abe, 1
  br i1 %cmpBr_490abe, label %block_.L_490ad0, label %block_490ac4

block_490ac4:                                     ; preds = %block_.L_490aa1
  %loadMem_490ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 15
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RBP.i788
  %968 = sub i64 %967, 4
  %969 = load i64, i64* %PC.i787
  %970 = add i64 %969, 7
  store i64 %970, i64* %PC.i787
  %971 = inttoptr i64 %968 to i32*
  store i32 9, i32* %971
  store %struct.Memory* %loadMem_490ac4, %struct.Memory** %MEMORY
  %loadMem_490acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %PC.i786
  %976 = add i64 %975, 1939
  %977 = load i64, i64* %PC.i786
  %978 = add i64 %977, 5
  store i64 %978, i64* %PC.i786
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %976, i64* %979, align 8
  store %struct.Memory* %loadMem_490acb, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490ad0:                                  ; preds = %block_.L_490aa1
  %loadMem_490ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 9
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RSI.i785 = bitcast %union.anon* %985 to i64*
  %986 = load i64, i64* %PC.i784
  %987 = add i64 %986, 10
  store i64 %987, i64* %PC.i784
  store i64 ptrtoint (%G__0x586aa4_type* @G__0x586aa4 to i64), i64* %RSI.i785, align 8
  store %struct.Memory* %loadMem_490ad0, %struct.Memory** %MEMORY
  %loadMem_490ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 1
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %PC.i782
  %995 = add i64 %994, 5
  store i64 %995, i64* %PC.i782
  store i64 9, i64* %RAX.i783, align 8
  store %struct.Memory* %loadMem_490ada, %struct.Memory** %MEMORY
  %loadMem_490adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 33
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 1
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %EAX.i780 = bitcast %union.anon* %1001 to i32*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 7
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RDX.i781 = bitcast %union.anon* %1004 to i64*
  %1005 = load i32, i32* %EAX.i780
  %1006 = zext i32 %1005 to i64
  %1007 = load i64, i64* %PC.i779
  %1008 = add i64 %1007, 2
  store i64 %1008, i64* %PC.i779
  %1009 = and i64 %1006, 4294967295
  store i64 %1009, i64* %RDX.i781, align 8
  store %struct.Memory* %loadMem_490adf, %struct.Memory** %MEMORY
  %loadMem_490ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 11
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RDI.i777 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 15
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %RBP.i778
  %1020 = sub i64 %1019, 16
  %1021 = load i64, i64* %PC.i776
  %1022 = add i64 %1021, 4
  store i64 %1022, i64* %PC.i776
  %1023 = inttoptr i64 %1020 to i64*
  %1024 = load i64, i64* %1023
  store i64 %1024, i64* %RDI.i777, align 8
  store %struct.Memory* %loadMem_490ae1, %struct.Memory** %MEMORY
  %loadMem1_490ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %PC.i775
  %1029 = add i64 %1028, -588597
  %1030 = load i64, i64* %PC.i775
  %1031 = add i64 %1030, 5
  %1032 = load i64, i64* %PC.i775
  %1033 = add i64 %1032, 5
  store i64 %1033, i64* %PC.i775
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1035 = load i64, i64* %1034, align 8
  %1036 = add i64 %1035, -8
  %1037 = inttoptr i64 %1036 to i64*
  store i64 %1031, i64* %1037
  store i64 %1036, i64* %1034, align 8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1029, i64* %1038, align 8
  store %struct.Memory* %loadMem1_490ae5, %struct.Memory** %MEMORY
  %loadMem2_490ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ae5 = load i64, i64* %3
  %1039 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490ae5)
  store %struct.Memory* %1039, %struct.Memory** %MEMORY
  %loadMem_490aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %EAX.i773 = bitcast %union.anon* %1045 to i32*
  %1046 = load i32, i32* %EAX.i773
  %1047 = zext i32 %1046 to i64
  %1048 = load i64, i64* %PC.i772
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %PC.i772
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1050, align 1
  %1051 = and i32 %1046, 255
  %1052 = call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1055, i8* %1056, align 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1057, align 1
  %1058 = icmp eq i32 %1046, 0
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1059, i8* %1060, align 1
  %1061 = lshr i32 %1046, 31
  %1062 = trunc i32 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1062, i8* %1063, align 1
  %1064 = lshr i32 %1046, 31
  %1065 = xor i32 %1061, %1064
  %1066 = add i32 %1065, %1064
  %1067 = icmp eq i32 %1066, 2
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1068, i8* %1069, align 1
  store %struct.Memory* %loadMem_490aea, %struct.Memory** %MEMORY
  %loadMem_490aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %PC.i771
  %1074 = add i64 %1073, 18
  %1075 = load i64, i64* %PC.i771
  %1076 = add i64 %1075, 6
  %1077 = load i64, i64* %PC.i771
  %1078 = add i64 %1077, 6
  store i64 %1078, i64* %PC.i771
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1080 = load i8, i8* %1079, align 1
  %1081 = icmp eq i8 %1080, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %BRANCH_TAKEN, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1084 = select i1 %1081, i64 %1074, i64 %1076
  store i64 %1084, i64* %1083, align 8
  store %struct.Memory* %loadMem_490aed, %struct.Memory** %MEMORY
  %loadBr_490aed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490aed = icmp eq i8 %loadBr_490aed, 1
  br i1 %cmpBr_490aed, label %block_.L_490aff, label %block_490af3

block_490af3:                                     ; preds = %block_.L_490ad0
  %loadMem_490af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 15
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %1090 to i64*
  %1091 = load i64, i64* %RBP.i770
  %1092 = sub i64 %1091, 4
  %1093 = load i64, i64* %PC.i769
  %1094 = add i64 %1093, 7
  store i64 %1094, i64* %PC.i769
  %1095 = inttoptr i64 %1092 to i32*
  store i32 10, i32* %1095
  store %struct.Memory* %loadMem_490af3, %struct.Memory** %MEMORY
  %loadMem_490afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %PC.i768
  %1100 = add i64 %1099, 1892
  %1101 = load i64, i64* %PC.i768
  %1102 = add i64 %1101, 5
  store i64 %1102, i64* %PC.i768
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1100, i64* %1103, align 8
  store %struct.Memory* %loadMem_490afa, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490aff:                                  ; preds = %block_.L_490ad0
  %loadMem_490aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 9
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RSI.i767 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %PC.i766
  %1111 = add i64 %1110, 10
  store i64 %1111, i64* %PC.i766
  store i64 ptrtoint (%G__0x586aae_type* @G__0x586aae to i64), i64* %RSI.i767, align 8
  store %struct.Memory* %loadMem_490aff, %struct.Memory** %MEMORY
  %loadMem_490b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 1
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %PC.i764
  %1119 = add i64 %1118, 5
  store i64 %1119, i64* %PC.i764
  store i64 9, i64* %RAX.i765, align 8
  store %struct.Memory* %loadMem_490b09, %struct.Memory** %MEMORY
  %loadMem_490b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 1
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %EAX.i762 = bitcast %union.anon* %1125 to i32*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 7
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RDX.i763 = bitcast %union.anon* %1128 to i64*
  %1129 = load i32, i32* %EAX.i762
  %1130 = zext i32 %1129 to i64
  %1131 = load i64, i64* %PC.i761
  %1132 = add i64 %1131, 2
  store i64 %1132, i64* %PC.i761
  %1133 = and i64 %1130, 4294967295
  store i64 %1133, i64* %RDX.i763, align 8
  store %struct.Memory* %loadMem_490b0e, %struct.Memory** %MEMORY
  %loadMem_490b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 11
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RDI.i759 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 15
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %RBP.i760
  %1144 = sub i64 %1143, 16
  %1145 = load i64, i64* %PC.i758
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %PC.i758
  %1147 = inttoptr i64 %1144 to i64*
  %1148 = load i64, i64* %1147
  store i64 %1148, i64* %RDI.i759, align 8
  store %struct.Memory* %loadMem_490b10, %struct.Memory** %MEMORY
  %loadMem1_490b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %PC.i757
  %1153 = add i64 %1152, -588644
  %1154 = load i64, i64* %PC.i757
  %1155 = add i64 %1154, 5
  %1156 = load i64, i64* %PC.i757
  %1157 = add i64 %1156, 5
  store i64 %1157, i64* %PC.i757
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1159 = load i64, i64* %1158, align 8
  %1160 = add i64 %1159, -8
  %1161 = inttoptr i64 %1160 to i64*
  store i64 %1155, i64* %1161
  store i64 %1160, i64* %1158, align 8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1153, i64* %1162, align 8
  store %struct.Memory* %loadMem1_490b14, %struct.Memory** %MEMORY
  %loadMem2_490b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490b14 = load i64, i64* %3
  %1163 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490b14)
  store %struct.Memory* %1163, %struct.Memory** %MEMORY
  %loadMem_490b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 1
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %EAX.i754 = bitcast %union.anon* %1169 to i32*
  %1170 = load i32, i32* %EAX.i754
  %1171 = zext i32 %1170 to i64
  %1172 = load i64, i64* %PC.i753
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC.i753
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1174, align 1
  %1175 = and i32 %1170, 255
  %1176 = call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1179, i8* %1180, align 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1181, align 1
  %1182 = icmp eq i32 %1170, 0
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1183, i8* %1184, align 1
  %1185 = lshr i32 %1170, 31
  %1186 = trunc i32 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i32 %1170, 31
  %1189 = xor i32 %1185, %1188
  %1190 = add i32 %1189, %1188
  %1191 = icmp eq i32 %1190, 2
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1192, i8* %1193, align 1
  store %struct.Memory* %loadMem_490b19, %struct.Memory** %MEMORY
  %loadMem_490b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %PC.i752
  %1198 = add i64 %1197, 18
  %1199 = load i64, i64* %PC.i752
  %1200 = add i64 %1199, 6
  %1201 = load i64, i64* %PC.i752
  %1202 = add i64 %1201, 6
  store i64 %1202, i64* %PC.i752
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1204 = load i8, i8* %1203, align 1
  %1205 = icmp eq i8 %1204, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %BRANCH_TAKEN, align 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1208 = select i1 %1205, i64 %1198, i64 %1200
  store i64 %1208, i64* %1207, align 8
  store %struct.Memory* %loadMem_490b1c, %struct.Memory** %MEMORY
  %loadBr_490b1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490b1c = icmp eq i8 %loadBr_490b1c, 1
  br i1 %cmpBr_490b1c, label %block_.L_490b2e, label %block_490b22

block_490b22:                                     ; preds = %block_.L_490aff
  %loadMem_490b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 15
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RBP.i751
  %1216 = sub i64 %1215, 4
  %1217 = load i64, i64* %PC.i750
  %1218 = add i64 %1217, 7
  store i64 %1218, i64* %PC.i750
  %1219 = inttoptr i64 %1216 to i32*
  store i32 17, i32* %1219
  store %struct.Memory* %loadMem_490b22, %struct.Memory** %MEMORY
  %loadMem_490b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %PC.i749
  %1224 = add i64 %1223, 1845
  %1225 = load i64, i64* %PC.i749
  %1226 = add i64 %1225, 5
  store i64 %1226, i64* %PC.i749
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1224, i64* %1227, align 8
  store %struct.Memory* %loadMem_490b29, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490b2e:                                  ; preds = %block_.L_490aff
  %loadMem_490b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 9
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RSI.i748 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %PC.i747
  %1235 = add i64 %1234, 10
  store i64 %1235, i64* %PC.i747
  store i64 ptrtoint (%G__0x586ab8_type* @G__0x586ab8 to i64), i64* %RSI.i748, align 8
  store %struct.Memory* %loadMem_490b2e, %struct.Memory** %MEMORY
  %loadMem_490b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 33
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 1
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %PC.i745
  %1243 = add i64 %1242, 5
  store i64 %1243, i64* %PC.i745
  store i64 9, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_490b38, %struct.Memory** %MEMORY
  %loadMem_490b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 1
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %EAX.i743 = bitcast %union.anon* %1249 to i32*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 7
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %1252 to i64*
  %1253 = load i32, i32* %EAX.i743
  %1254 = zext i32 %1253 to i64
  %1255 = load i64, i64* %PC.i742
  %1256 = add i64 %1255, 2
  store i64 %1256, i64* %PC.i742
  %1257 = and i64 %1254, 4294967295
  store i64 %1257, i64* %RDX.i744, align 8
  store %struct.Memory* %loadMem_490b3d, %struct.Memory** %MEMORY
  %loadMem_490b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 11
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RDI.i740 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 15
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1266 to i64*
  %1267 = load i64, i64* %RBP.i741
  %1268 = sub i64 %1267, 16
  %1269 = load i64, i64* %PC.i739
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %PC.i739
  %1271 = inttoptr i64 %1268 to i64*
  %1272 = load i64, i64* %1271
  store i64 %1272, i64* %RDI.i740, align 8
  store %struct.Memory* %loadMem_490b3f, %struct.Memory** %MEMORY
  %loadMem1_490b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %PC.i738
  %1277 = add i64 %1276, -588691
  %1278 = load i64, i64* %PC.i738
  %1279 = add i64 %1278, 5
  %1280 = load i64, i64* %PC.i738
  %1281 = add i64 %1280, 5
  store i64 %1281, i64* %PC.i738
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1283 = load i64, i64* %1282, align 8
  %1284 = add i64 %1283, -8
  %1285 = inttoptr i64 %1284 to i64*
  store i64 %1279, i64* %1285
  store i64 %1284, i64* %1282, align 8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1277, i64* %1286, align 8
  store %struct.Memory* %loadMem1_490b43, %struct.Memory** %MEMORY
  %loadMem2_490b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490b43 = load i64, i64* %3
  %1287 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490b43)
  store %struct.Memory* %1287, %struct.Memory** %MEMORY
  %loadMem_490b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 1
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %EAX.i734 = bitcast %union.anon* %1293 to i32*
  %1294 = load i32, i32* %EAX.i734
  %1295 = zext i32 %1294 to i64
  %1296 = load i64, i64* %PC.i733
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %PC.i733
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1298, align 1
  %1299 = and i32 %1294, 255
  %1300 = call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1303, i8* %1304, align 1
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1305, align 1
  %1306 = icmp eq i32 %1294, 0
  %1307 = zext i1 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1307, i8* %1308, align 1
  %1309 = lshr i32 %1294, 31
  %1310 = trunc i32 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1310, i8* %1311, align 1
  %1312 = lshr i32 %1294, 31
  %1313 = xor i32 %1309, %1312
  %1314 = add i32 %1313, %1312
  %1315 = icmp eq i32 %1314, 2
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1316, i8* %1317, align 1
  store %struct.Memory* %loadMem_490b48, %struct.Memory** %MEMORY
  %loadMem_490b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %PC.i732
  %1322 = add i64 %1321, 18
  %1323 = load i64, i64* %PC.i732
  %1324 = add i64 %1323, 6
  %1325 = load i64, i64* %PC.i732
  %1326 = add i64 %1325, 6
  store i64 %1326, i64* %PC.i732
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1328 = load i8, i8* %1327, align 1
  %1329 = icmp eq i8 %1328, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %BRANCH_TAKEN, align 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1332 = select i1 %1329, i64 %1322, i64 %1324
  store i64 %1332, i64* %1331, align 8
  store %struct.Memory* %loadMem_490b4b, %struct.Memory** %MEMORY
  %loadBr_490b4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490b4b = icmp eq i8 %loadBr_490b4b, 1
  br i1 %cmpBr_490b4b, label %block_.L_490b5d, label %block_490b51

block_490b51:                                     ; preds = %block_.L_490b2e
  %loadMem_490b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 15
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RBP.i731
  %1340 = sub i64 %1339, 4
  %1341 = load i64, i64* %PC.i730
  %1342 = add i64 %1341, 7
  store i64 %1342, i64* %PC.i730
  %1343 = inttoptr i64 %1340 to i32*
  store i32 35, i32* %1343
  store %struct.Memory* %loadMem_490b51, %struct.Memory** %MEMORY
  %loadMem_490b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1346 to i64*
  %1347 = load i64, i64* %PC.i729
  %1348 = add i64 %1347, 1798
  %1349 = load i64, i64* %PC.i729
  %1350 = add i64 %1349, 5
  store i64 %1350, i64* %PC.i729
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1348, i64* %1351, align 8
  store %struct.Memory* %loadMem_490b58, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490b5d:                                  ; preds = %block_.L_490b2e
  %loadMem_490b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 9
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RSI.i728 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %PC.i727
  %1359 = add i64 %1358, 10
  store i64 %1359, i64* %PC.i727
  store i64 ptrtoint (%G__0x586ac4_type* @G__0x586ac4 to i64), i64* %RSI.i728, align 8
  store %struct.Memory* %loadMem_490b5d, %struct.Memory** %MEMORY
  %loadMem_490b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 1
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %PC.i725
  %1367 = add i64 %1366, 5
  store i64 %1367, i64* %PC.i725
  store i64 9, i64* %RAX.i726, align 8
  store %struct.Memory* %loadMem_490b67, %struct.Memory** %MEMORY
  %loadMem_490b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 1
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %EAX.i723 = bitcast %union.anon* %1373 to i32*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 7
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RDX.i724 = bitcast %union.anon* %1376 to i64*
  %1377 = load i32, i32* %EAX.i723
  %1378 = zext i32 %1377 to i64
  %1379 = load i64, i64* %PC.i722
  %1380 = add i64 %1379, 2
  store i64 %1380, i64* %PC.i722
  %1381 = and i64 %1378, 4294967295
  store i64 %1381, i64* %RDX.i724, align 8
  store %struct.Memory* %loadMem_490b6c, %struct.Memory** %MEMORY
  %loadMem_490b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 11
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RDI.i720 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 15
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %RBP.i721
  %1392 = sub i64 %1391, 16
  %1393 = load i64, i64* %PC.i719
  %1394 = add i64 %1393, 4
  store i64 %1394, i64* %PC.i719
  %1395 = inttoptr i64 %1392 to i64*
  %1396 = load i64, i64* %1395
  store i64 %1396, i64* %RDI.i720, align 8
  store %struct.Memory* %loadMem_490b6e, %struct.Memory** %MEMORY
  %loadMem1_490b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %PC.i718
  %1401 = add i64 %1400, -588738
  %1402 = load i64, i64* %PC.i718
  %1403 = add i64 %1402, 5
  %1404 = load i64, i64* %PC.i718
  %1405 = add i64 %1404, 5
  store i64 %1405, i64* %PC.i718
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1407 = load i64, i64* %1406, align 8
  %1408 = add i64 %1407, -8
  %1409 = inttoptr i64 %1408 to i64*
  store i64 %1403, i64* %1409
  store i64 %1408, i64* %1406, align 8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1401, i64* %1410, align 8
  store %struct.Memory* %loadMem1_490b72, %struct.Memory** %MEMORY
  %loadMem2_490b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490b72 = load i64, i64* %3
  %1411 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490b72)
  store %struct.Memory* %1411, %struct.Memory** %MEMORY
  %loadMem_490b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %EAX.i714 = bitcast %union.anon* %1417 to i32*
  %1418 = load i32, i32* %EAX.i714
  %1419 = zext i32 %1418 to i64
  %1420 = load i64, i64* %PC.i713
  %1421 = add i64 %1420, 3
  store i64 %1421, i64* %PC.i713
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1422, align 1
  %1423 = and i32 %1418, 255
  %1424 = call i32 @llvm.ctpop.i32(i32 %1423)
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = xor i8 %1426, 1
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1427, i8* %1428, align 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1429, align 1
  %1430 = icmp eq i32 %1418, 0
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1431, i8* %1432, align 1
  %1433 = lshr i32 %1418, 31
  %1434 = trunc i32 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1434, i8* %1435, align 1
  %1436 = lshr i32 %1418, 31
  %1437 = xor i32 %1433, %1436
  %1438 = add i32 %1437, %1436
  %1439 = icmp eq i32 %1438, 2
  %1440 = zext i1 %1439 to i8
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1440, i8* %1441, align 1
  store %struct.Memory* %loadMem_490b77, %struct.Memory** %MEMORY
  %loadMem_490b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %PC.i712
  %1446 = add i64 %1445, 18
  %1447 = load i64, i64* %PC.i712
  %1448 = add i64 %1447, 6
  %1449 = load i64, i64* %PC.i712
  %1450 = add i64 %1449, 6
  store i64 %1450, i64* %PC.i712
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1452 = load i8, i8* %1451, align 1
  %1453 = icmp eq i8 %1452, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %BRANCH_TAKEN, align 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1456 = select i1 %1453, i64 %1446, i64 %1448
  store i64 %1456, i64* %1455, align 8
  store %struct.Memory* %loadMem_490b7a, %struct.Memory** %MEMORY
  %loadBr_490b7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490b7a = icmp eq i8 %loadBr_490b7a, 1
  br i1 %cmpBr_490b7a, label %block_.L_490b8c, label %block_490b80

block_490b80:                                     ; preds = %block_.L_490b5d
  %loadMem_490b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RBP.i711
  %1464 = sub i64 %1463, 4
  %1465 = load i64, i64* %PC.i710
  %1466 = add i64 %1465, 7
  store i64 %1466, i64* %PC.i710
  %1467 = inttoptr i64 %1464 to i32*
  store i32 36, i32* %1467
  store %struct.Memory* %loadMem_490b80, %struct.Memory** %MEMORY
  %loadMem_490b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %PC.i709
  %1472 = add i64 %1471, 1751
  %1473 = load i64, i64* %PC.i709
  %1474 = add i64 %1473, 5
  store i64 %1474, i64* %PC.i709
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1472, i64* %1475, align 8
  store %struct.Memory* %loadMem_490b87, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490b8c:                                  ; preds = %block_.L_490b5d
  %loadMem_490b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 9
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RSI.i708 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %PC.i707
  %1483 = add i64 %1482, 10
  store i64 %1483, i64* %PC.i707
  store i64 ptrtoint (%G__0x5877c3_type* @G__0x5877c3 to i64), i64* %RSI.i708, align 8
  store %struct.Memory* %loadMem_490b8c, %struct.Memory** %MEMORY
  %loadMem_490b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 1
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %PC.i705
  %1491 = add i64 %1490, 5
  store i64 %1491, i64* %PC.i705
  store i64 9, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_490b96, %struct.Memory** %MEMORY
  %loadMem_490b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 1
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %EAX.i703 = bitcast %union.anon* %1497 to i32*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 7
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RDX.i704 = bitcast %union.anon* %1500 to i64*
  %1501 = load i32, i32* %EAX.i703
  %1502 = zext i32 %1501 to i64
  %1503 = load i64, i64* %PC.i702
  %1504 = add i64 %1503, 2
  store i64 %1504, i64* %PC.i702
  %1505 = and i64 %1502, 4294967295
  store i64 %1505, i64* %RDX.i704, align 8
  store %struct.Memory* %loadMem_490b9b, %struct.Memory** %MEMORY
  %loadMem_490b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 11
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RDI.i700 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 15
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %RBP.i701
  %1516 = sub i64 %1515, 16
  %1517 = load i64, i64* %PC.i699
  %1518 = add i64 %1517, 4
  store i64 %1518, i64* %PC.i699
  %1519 = inttoptr i64 %1516 to i64*
  %1520 = load i64, i64* %1519
  store i64 %1520, i64* %RDI.i700, align 8
  store %struct.Memory* %loadMem_490b9d, %struct.Memory** %MEMORY
  %loadMem1_490ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %PC.i698
  %1525 = add i64 %1524, -588785
  %1526 = load i64, i64* %PC.i698
  %1527 = add i64 %1526, 5
  %1528 = load i64, i64* %PC.i698
  %1529 = add i64 %1528, 5
  store i64 %1529, i64* %PC.i698
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1531 = load i64, i64* %1530, align 8
  %1532 = add i64 %1531, -8
  %1533 = inttoptr i64 %1532 to i64*
  store i64 %1527, i64* %1533
  store i64 %1532, i64* %1530, align 8
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1525, i64* %1534, align 8
  store %struct.Memory* %loadMem1_490ba1, %struct.Memory** %MEMORY
  %loadMem2_490ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ba1 = load i64, i64* %3
  %1535 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490ba1)
  store %struct.Memory* %1535, %struct.Memory** %MEMORY
  %loadMem_490ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 1
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %EAX.i696 = bitcast %union.anon* %1541 to i32*
  %1542 = load i32, i32* %EAX.i696
  %1543 = zext i32 %1542 to i64
  %1544 = load i64, i64* %PC.i695
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i695
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1546, align 1
  %1547 = and i32 %1542, 255
  %1548 = call i32 @llvm.ctpop.i32(i32 %1547)
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = xor i8 %1550, 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1551, i8* %1552, align 1
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1553, align 1
  %1554 = icmp eq i32 %1542, 0
  %1555 = zext i1 %1554 to i8
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1555, i8* %1556, align 1
  %1557 = lshr i32 %1542, 31
  %1558 = trunc i32 %1557 to i8
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1558, i8* %1559, align 1
  %1560 = lshr i32 %1542, 31
  %1561 = xor i32 %1557, %1560
  %1562 = add i32 %1561, %1560
  %1563 = icmp eq i32 %1562, 2
  %1564 = zext i1 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1564, i8* %1565, align 1
  store %struct.Memory* %loadMem_490ba6, %struct.Memory** %MEMORY
  %loadMem_490ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %PC.i694
  %1570 = add i64 %1569, 18
  %1571 = load i64, i64* %PC.i694
  %1572 = add i64 %1571, 6
  %1573 = load i64, i64* %PC.i694
  %1574 = add i64 %1573, 6
  store i64 %1574, i64* %PC.i694
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1576 = load i8, i8* %1575, align 1
  %1577 = icmp eq i8 %1576, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %BRANCH_TAKEN, align 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1580 = select i1 %1577, i64 %1570, i64 %1572
  store i64 %1580, i64* %1579, align 8
  store %struct.Memory* %loadMem_490ba9, %struct.Memory** %MEMORY
  %loadBr_490ba9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ba9 = icmp eq i8 %loadBr_490ba9, 1
  br i1 %cmpBr_490ba9, label %block_.L_490bbb, label %block_490baf

block_490baf:                                     ; preds = %block_.L_490b8c
  %loadMem_490baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 15
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %RBP.i693
  %1588 = sub i64 %1587, 4
  %1589 = load i64, i64* %PC.i692
  %1590 = add i64 %1589, 7
  store i64 %1590, i64* %PC.i692
  %1591 = inttoptr i64 %1588 to i32*
  store i32 12, i32* %1591
  store %struct.Memory* %loadMem_490baf, %struct.Memory** %MEMORY
  %loadMem_490bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %PC.i691
  %1596 = add i64 %1595, 1704
  %1597 = load i64, i64* %PC.i691
  %1598 = add i64 %1597, 5
  store i64 %1598, i64* %PC.i691
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1596, i64* %1599, align 8
  store %struct.Memory* %loadMem_490bb6, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490bbb:                                  ; preds = %block_.L_490b8c
  %loadMem_490bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 9
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RSI.i690 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %PC.i689
  %1607 = add i64 %1606, 10
  store i64 %1607, i64* %PC.i689
  store i64 ptrtoint (%G__0x586ad0_type* @G__0x586ad0 to i64), i64* %RSI.i690, align 8
  store %struct.Memory* %loadMem_490bbb, %struct.Memory** %MEMORY
  %loadMem_490bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 1
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %1613 to i64*
  %1614 = load i64, i64* %PC.i687
  %1615 = add i64 %1614, 5
  store i64 %1615, i64* %PC.i687
  store i64 9, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_490bc5, %struct.Memory** %MEMORY
  %loadMem_490bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 1
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %EAX.i685 = bitcast %union.anon* %1621 to i32*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 7
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RDX.i686 = bitcast %union.anon* %1624 to i64*
  %1625 = load i32, i32* %EAX.i685
  %1626 = zext i32 %1625 to i64
  %1627 = load i64, i64* %PC.i684
  %1628 = add i64 %1627, 2
  store i64 %1628, i64* %PC.i684
  %1629 = and i64 %1626, 4294967295
  store i64 %1629, i64* %RDX.i686, align 8
  store %struct.Memory* %loadMem_490bca, %struct.Memory** %MEMORY
  %loadMem_490bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 11
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RDI.i682 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 15
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RBP.i683
  %1640 = sub i64 %1639, 16
  %1641 = load i64, i64* %PC.i681
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %PC.i681
  %1643 = inttoptr i64 %1640 to i64*
  %1644 = load i64, i64* %1643
  store i64 %1644, i64* %RDI.i682, align 8
  store %struct.Memory* %loadMem_490bcc, %struct.Memory** %MEMORY
  %loadMem1_490bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %PC.i680
  %1649 = add i64 %1648, -588832
  %1650 = load i64, i64* %PC.i680
  %1651 = add i64 %1650, 5
  %1652 = load i64, i64* %PC.i680
  %1653 = add i64 %1652, 5
  store i64 %1653, i64* %PC.i680
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1655 = load i64, i64* %1654, align 8
  %1656 = add i64 %1655, -8
  %1657 = inttoptr i64 %1656 to i64*
  store i64 %1651, i64* %1657
  store i64 %1656, i64* %1654, align 8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1649, i64* %1658, align 8
  store %struct.Memory* %loadMem1_490bd0, %struct.Memory** %MEMORY
  %loadMem2_490bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490bd0 = load i64, i64* %3
  %1659 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490bd0)
  store %struct.Memory* %1659, %struct.Memory** %MEMORY
  %loadMem_490bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %EAX.i678 = bitcast %union.anon* %1665 to i32*
  %1666 = load i32, i32* %EAX.i678
  %1667 = zext i32 %1666 to i64
  %1668 = load i64, i64* %PC.i677
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %PC.i677
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1670, align 1
  %1671 = and i32 %1666, 255
  %1672 = call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1675, i8* %1676, align 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1677, align 1
  %1678 = icmp eq i32 %1666, 0
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1679, i8* %1680, align 1
  %1681 = lshr i32 %1666, 31
  %1682 = trunc i32 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1682, i8* %1683, align 1
  %1684 = lshr i32 %1666, 31
  %1685 = xor i32 %1681, %1684
  %1686 = add i32 %1685, %1684
  %1687 = icmp eq i32 %1686, 2
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1688, i8* %1689, align 1
  store %struct.Memory* %loadMem_490bd5, %struct.Memory** %MEMORY
  %loadMem_490bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1692 to i64*
  %1693 = load i64, i64* %PC.i676
  %1694 = add i64 %1693, 18
  %1695 = load i64, i64* %PC.i676
  %1696 = add i64 %1695, 6
  %1697 = load i64, i64* %PC.i676
  %1698 = add i64 %1697, 6
  store i64 %1698, i64* %PC.i676
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1700 = load i8, i8* %1699, align 1
  %1701 = icmp eq i8 %1700, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %BRANCH_TAKEN, align 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1704 = select i1 %1701, i64 %1694, i64 %1696
  store i64 %1704, i64* %1703, align 8
  store %struct.Memory* %loadMem_490bd8, %struct.Memory** %MEMORY
  %loadBr_490bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490bd8 = icmp eq i8 %loadBr_490bd8, 1
  br i1 %cmpBr_490bd8, label %block_.L_490bea, label %block_490bde

block_490bde:                                     ; preds = %block_.L_490bbb
  %loadMem_490bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 15
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %RBP.i675
  %1712 = sub i64 %1711, 4
  %1713 = load i64, i64* %PC.i674
  %1714 = add i64 %1713, 7
  store i64 %1714, i64* %PC.i674
  %1715 = inttoptr i64 %1712 to i32*
  store i32 41, i32* %1715
  store %struct.Memory* %loadMem_490bde, %struct.Memory** %MEMORY
  %loadMem_490be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %PC.i673
  %1720 = add i64 %1719, 1657
  %1721 = load i64, i64* %PC.i673
  %1722 = add i64 %1721, 5
  store i64 %1722, i64* %PC.i673
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1720, i64* %1723, align 8
  store %struct.Memory* %loadMem_490be5, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490bea:                                  ; preds = %block_.L_490bbb
  %loadMem_490bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 9
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RSI.i672 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %PC.i671
  %1731 = add i64 %1730, 10
  store i64 %1731, i64* %PC.i671
  store i64 ptrtoint (%G__0x58742a_type* @G__0x58742a to i64), i64* %RSI.i672, align 8
  store %struct.Memory* %loadMem_490bea, %struct.Memory** %MEMORY
  %loadMem_490bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 1
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %PC.i669
  %1739 = add i64 %1738, 5
  store i64 %1739, i64* %PC.i669
  store i64 5, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_490bf4, %struct.Memory** %MEMORY
  %loadMem_490bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 1
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %EAX.i667 = bitcast %union.anon* %1745 to i32*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 7
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RDX.i668 = bitcast %union.anon* %1748 to i64*
  %1749 = load i32, i32* %EAX.i667
  %1750 = zext i32 %1749 to i64
  %1751 = load i64, i64* %PC.i666
  %1752 = add i64 %1751, 2
  store i64 %1752, i64* %PC.i666
  %1753 = and i64 %1750, 4294967295
  store i64 %1753, i64* %RDX.i668, align 8
  store %struct.Memory* %loadMem_490bf9, %struct.Memory** %MEMORY
  %loadMem_490bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 11
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RDI.i664 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 15
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %RBP.i665
  %1764 = sub i64 %1763, 16
  %1765 = load i64, i64* %PC.i663
  %1766 = add i64 %1765, 4
  store i64 %1766, i64* %PC.i663
  %1767 = inttoptr i64 %1764 to i64*
  %1768 = load i64, i64* %1767
  store i64 %1768, i64* %RDI.i664, align 8
  store %struct.Memory* %loadMem_490bfb, %struct.Memory** %MEMORY
  %loadMem1_490bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %PC.i662
  %1773 = add i64 %1772, -588879
  %1774 = load i64, i64* %PC.i662
  %1775 = add i64 %1774, 5
  %1776 = load i64, i64* %PC.i662
  %1777 = add i64 %1776, 5
  store i64 %1777, i64* %PC.i662
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1779 = load i64, i64* %1778, align 8
  %1780 = add i64 %1779, -8
  %1781 = inttoptr i64 %1780 to i64*
  store i64 %1775, i64* %1781
  store i64 %1780, i64* %1778, align 8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1773, i64* %1782, align 8
  store %struct.Memory* %loadMem1_490bff, %struct.Memory** %MEMORY
  %loadMem2_490bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490bff = load i64, i64* %3
  %1783 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490bff)
  store %struct.Memory* %1783, %struct.Memory** %MEMORY
  %loadMem_490c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 1
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %EAX.i659 = bitcast %union.anon* %1789 to i32*
  %1790 = load i32, i32* %EAX.i659
  %1791 = zext i32 %1790 to i64
  %1792 = load i64, i64* %PC.i658
  %1793 = add i64 %1792, 3
  store i64 %1793, i64* %PC.i658
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1794, align 1
  %1795 = and i32 %1790, 255
  %1796 = call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1799, i8* %1800, align 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1801, align 1
  %1802 = icmp eq i32 %1790, 0
  %1803 = zext i1 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1803, i8* %1804, align 1
  %1805 = lshr i32 %1790, 31
  %1806 = trunc i32 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i32 %1790, 31
  %1809 = xor i32 %1805, %1808
  %1810 = add i32 %1809, %1808
  %1811 = icmp eq i32 %1810, 2
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1812, i8* %1813, align 1
  store %struct.Memory* %loadMem_490c04, %struct.Memory** %MEMORY
  %loadMem_490c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1816 to i64*
  %1817 = load i64, i64* %PC.i657
  %1818 = add i64 %1817, 18
  %1819 = load i64, i64* %PC.i657
  %1820 = add i64 %1819, 6
  %1821 = load i64, i64* %PC.i657
  %1822 = add i64 %1821, 6
  store i64 %1822, i64* %PC.i657
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1824 = load i8, i8* %1823, align 1
  %1825 = icmp eq i8 %1824, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %BRANCH_TAKEN, align 1
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1828 = select i1 %1825, i64 %1818, i64 %1820
  store i64 %1828, i64* %1827, align 8
  store %struct.Memory* %loadMem_490c07, %struct.Memory** %MEMORY
  %loadBr_490c07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c07 = icmp eq i8 %loadBr_490c07, 1
  br i1 %cmpBr_490c07, label %block_.L_490c19, label %block_490c0d

block_490c0d:                                     ; preds = %block_.L_490bea
  %loadMem_490c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 15
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %1834 to i64*
  %1835 = load i64, i64* %RBP.i656
  %1836 = sub i64 %1835, 4
  %1837 = load i64, i64* %PC.i655
  %1838 = add i64 %1837, 7
  store i64 %1838, i64* %PC.i655
  %1839 = inttoptr i64 %1836 to i32*
  store i32 11, i32* %1839
  store %struct.Memory* %loadMem_490c0d, %struct.Memory** %MEMORY
  %loadMem_490c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %PC.i654
  %1844 = add i64 %1843, 1610
  %1845 = load i64, i64* %PC.i654
  %1846 = add i64 %1845, 5
  store i64 %1846, i64* %PC.i654
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1844, i64* %1847, align 8
  store %struct.Memory* %loadMem_490c14, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490c19:                                  ; preds = %block_.L_490bea
  %loadMem_490c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 9
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RSI.i653 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %PC.i652
  %1855 = add i64 %1854, 10
  store i64 %1855, i64* %PC.i652
  store i64 ptrtoint (%G__0x586add_type* @G__0x586add to i64), i64* %RSI.i653, align 8
  store %struct.Memory* %loadMem_490c19, %struct.Memory** %MEMORY
  %loadMem_490c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 1
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %PC.i650
  %1863 = add i64 %1862, 5
  store i64 %1863, i64* %PC.i650
  store i64 7, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_490c23, %struct.Memory** %MEMORY
  %loadMem_490c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 1
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %EAX.i648 = bitcast %union.anon* %1869 to i32*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 7
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %1872 to i64*
  %1873 = load i32, i32* %EAX.i648
  %1874 = zext i32 %1873 to i64
  %1875 = load i64, i64* %PC.i647
  %1876 = add i64 %1875, 2
  store i64 %1876, i64* %PC.i647
  %1877 = and i64 %1874, 4294967295
  store i64 %1877, i64* %RDX.i649, align 8
  store %struct.Memory* %loadMem_490c28, %struct.Memory** %MEMORY
  %loadMem_490c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 11
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RDI.i645 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 15
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %RBP.i646
  %1888 = sub i64 %1887, 16
  %1889 = load i64, i64* %PC.i644
  %1890 = add i64 %1889, 4
  store i64 %1890, i64* %PC.i644
  %1891 = inttoptr i64 %1888 to i64*
  %1892 = load i64, i64* %1891
  store i64 %1892, i64* %RDI.i645, align 8
  store %struct.Memory* %loadMem_490c2a, %struct.Memory** %MEMORY
  %loadMem1_490c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %PC.i643
  %1897 = add i64 %1896, -588926
  %1898 = load i64, i64* %PC.i643
  %1899 = add i64 %1898, 5
  %1900 = load i64, i64* %PC.i643
  %1901 = add i64 %1900, 5
  store i64 %1901, i64* %PC.i643
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1903 = load i64, i64* %1902, align 8
  %1904 = add i64 %1903, -8
  %1905 = inttoptr i64 %1904 to i64*
  store i64 %1899, i64* %1905
  store i64 %1904, i64* %1902, align 8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1897, i64* %1906, align 8
  store %struct.Memory* %loadMem1_490c2e, %struct.Memory** %MEMORY
  %loadMem2_490c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490c2e = load i64, i64* %3
  %1907 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490c2e)
  store %struct.Memory* %1907, %struct.Memory** %MEMORY
  %loadMem_490c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %EAX.i641 = bitcast %union.anon* %1913 to i32*
  %1914 = load i32, i32* %EAX.i641
  %1915 = zext i32 %1914 to i64
  %1916 = load i64, i64* %PC.i640
  %1917 = add i64 %1916, 3
  store i64 %1917, i64* %PC.i640
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1918, align 1
  %1919 = and i32 %1914, 255
  %1920 = call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1923, i8* %1924, align 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1925, align 1
  %1926 = icmp eq i32 %1914, 0
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1927, i8* %1928, align 1
  %1929 = lshr i32 %1914, 31
  %1930 = trunc i32 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1930, i8* %1931, align 1
  %1932 = lshr i32 %1914, 31
  %1933 = xor i32 %1929, %1932
  %1934 = add i32 %1933, %1932
  %1935 = icmp eq i32 %1934, 2
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1936, i8* %1937, align 1
  store %struct.Memory* %loadMem_490c33, %struct.Memory** %MEMORY
  %loadMem_490c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %PC.i639
  %1942 = add i64 %1941, 18
  %1943 = load i64, i64* %PC.i639
  %1944 = add i64 %1943, 6
  %1945 = load i64, i64* %PC.i639
  %1946 = add i64 %1945, 6
  store i64 %1946, i64* %PC.i639
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1948 = load i8, i8* %1947, align 1
  %1949 = icmp eq i8 %1948, 0
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %BRANCH_TAKEN, align 1
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1952 = select i1 %1949, i64 %1942, i64 %1944
  store i64 %1952, i64* %1951, align 8
  store %struct.Memory* %loadMem_490c36, %struct.Memory** %MEMORY
  %loadBr_490c36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c36 = icmp eq i8 %loadBr_490c36, 1
  br i1 %cmpBr_490c36, label %block_.L_490c48, label %block_490c3c

block_490c3c:                                     ; preds = %block_.L_490c19
  %loadMem_490c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 15
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %RBP.i638
  %1960 = sub i64 %1959, 4
  %1961 = load i64, i64* %PC.i637
  %1962 = add i64 %1961, 7
  store i64 %1962, i64* %PC.i637
  %1963 = inttoptr i64 %1960 to i32*
  store i32 16, i32* %1963
  store %struct.Memory* %loadMem_490c3c, %struct.Memory** %MEMORY
  %loadMem_490c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %PC.i636
  %1968 = add i64 %1967, 1563
  %1969 = load i64, i64* %PC.i636
  %1970 = add i64 %1969, 5
  store i64 %1970, i64* %PC.i636
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1968, i64* %1971, align 8
  store %struct.Memory* %loadMem_490c43, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490c48:                                  ; preds = %block_.L_490c19
  %loadMem_490c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 9
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RSI.i635 = bitcast %union.anon* %1977 to i64*
  %1978 = load i64, i64* %PC.i634
  %1979 = add i64 %1978, 10
  store i64 %1979, i64* %PC.i634
  store i64 ptrtoint (%G__0x586ae5_type* @G__0x586ae5 to i64), i64* %RSI.i635, align 8
  store %struct.Memory* %loadMem_490c48, %struct.Memory** %MEMORY
  %loadMem_490c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 1
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %PC.i632
  %1987 = add i64 %1986, 5
  store i64 %1987, i64* %PC.i632
  store i64 7, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_490c52, %struct.Memory** %MEMORY
  %loadMem_490c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 1
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %EAX.i630 = bitcast %union.anon* %1993 to i32*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 7
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RDX.i631 = bitcast %union.anon* %1996 to i64*
  %1997 = load i32, i32* %EAX.i630
  %1998 = zext i32 %1997 to i64
  %1999 = load i64, i64* %PC.i629
  %2000 = add i64 %1999, 2
  store i64 %2000, i64* %PC.i629
  %2001 = and i64 %1998, 4294967295
  store i64 %2001, i64* %RDX.i631, align 8
  store %struct.Memory* %loadMem_490c57, %struct.Memory** %MEMORY
  %loadMem_490c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 11
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RDI.i627 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 15
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %RBP.i628
  %2012 = sub i64 %2011, 16
  %2013 = load i64, i64* %PC.i626
  %2014 = add i64 %2013, 4
  store i64 %2014, i64* %PC.i626
  %2015 = inttoptr i64 %2012 to i64*
  %2016 = load i64, i64* %2015
  store i64 %2016, i64* %RDI.i627, align 8
  store %struct.Memory* %loadMem_490c59, %struct.Memory** %MEMORY
  %loadMem1_490c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %PC.i625
  %2021 = add i64 %2020, -588973
  %2022 = load i64, i64* %PC.i625
  %2023 = add i64 %2022, 5
  %2024 = load i64, i64* %PC.i625
  %2025 = add i64 %2024, 5
  store i64 %2025, i64* %PC.i625
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2027 = load i64, i64* %2026, align 8
  %2028 = add i64 %2027, -8
  %2029 = inttoptr i64 %2028 to i64*
  store i64 %2023, i64* %2029
  store i64 %2028, i64* %2026, align 8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2021, i64* %2030, align 8
  store %struct.Memory* %loadMem1_490c5d, %struct.Memory** %MEMORY
  %loadMem2_490c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490c5d = load i64, i64* %3
  %2031 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490c5d)
  store %struct.Memory* %2031, %struct.Memory** %MEMORY
  %loadMem_490c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 1
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %EAX.i623 = bitcast %union.anon* %2037 to i32*
  %2038 = load i32, i32* %EAX.i623
  %2039 = zext i32 %2038 to i64
  %2040 = load i64, i64* %PC.i622
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %PC.i622
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2042, align 1
  %2043 = and i32 %2038, 255
  %2044 = call i32 @llvm.ctpop.i32(i32 %2043)
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  %2047 = xor i8 %2046, 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2047, i8* %2048, align 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2049, align 1
  %2050 = icmp eq i32 %2038, 0
  %2051 = zext i1 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2051, i8* %2052, align 1
  %2053 = lshr i32 %2038, 31
  %2054 = trunc i32 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2054, i8* %2055, align 1
  %2056 = lshr i32 %2038, 31
  %2057 = xor i32 %2053, %2056
  %2058 = add i32 %2057, %2056
  %2059 = icmp eq i32 %2058, 2
  %2060 = zext i1 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2060, i8* %2061, align 1
  store %struct.Memory* %loadMem_490c62, %struct.Memory** %MEMORY
  %loadMem_490c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %PC.i621
  %2066 = add i64 %2065, 18
  %2067 = load i64, i64* %PC.i621
  %2068 = add i64 %2067, 6
  %2069 = load i64, i64* %PC.i621
  %2070 = add i64 %2069, 6
  store i64 %2070, i64* %PC.i621
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2072 = load i8, i8* %2071, align 1
  %2073 = icmp eq i8 %2072, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %BRANCH_TAKEN, align 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2076 = select i1 %2073, i64 %2066, i64 %2068
  store i64 %2076, i64* %2075, align 8
  store %struct.Memory* %loadMem_490c65, %struct.Memory** %MEMORY
  %loadBr_490c65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c65 = icmp eq i8 %loadBr_490c65, 1
  br i1 %cmpBr_490c65, label %block_.L_490c77, label %block_490c6b

block_490c6b:                                     ; preds = %block_.L_490c48
  %loadMem_490c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i620
  %2084 = sub i64 %2083, 4
  %2085 = load i64, i64* %PC.i619
  %2086 = add i64 %2085, 7
  store i64 %2086, i64* %PC.i619
  %2087 = inttoptr i64 %2084 to i32*
  store i32 28, i32* %2087
  store %struct.Memory* %loadMem_490c6b, %struct.Memory** %MEMORY
  %loadMem_490c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %PC.i618
  %2092 = add i64 %2091, 1516
  %2093 = load i64, i64* %PC.i618
  %2094 = add i64 %2093, 5
  store i64 %2094, i64* %PC.i618
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2092, i64* %2095, align 8
  store %struct.Memory* %loadMem_490c72, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490c77:                                  ; preds = %block_.L_490c48
  %loadMem_490c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 9
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RSI.i617 = bitcast %union.anon* %2101 to i64*
  %2102 = load i64, i64* %PC.i616
  %2103 = add i64 %2102, 10
  store i64 %2103, i64* %PC.i616
  store i64 ptrtoint (%G__0x586aef_type* @G__0x586aef to i64), i64* %RSI.i617, align 8
  store %struct.Memory* %loadMem_490c77, %struct.Memory** %MEMORY
  %loadMem_490c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %PC.i614
  %2111 = add i64 %2110, 5
  store i64 %2111, i64* %PC.i614
  store i64 6, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_490c81, %struct.Memory** %MEMORY
  %loadMem_490c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %EAX.i612 = bitcast %union.anon* %2117 to i32*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 7
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %2120 to i64*
  %2121 = load i32, i32* %EAX.i612
  %2122 = zext i32 %2121 to i64
  %2123 = load i64, i64* %PC.i611
  %2124 = add i64 %2123, 2
  store i64 %2124, i64* %PC.i611
  %2125 = and i64 %2122, 4294967295
  store i64 %2125, i64* %RDX.i613, align 8
  store %struct.Memory* %loadMem_490c86, %struct.Memory** %MEMORY
  %loadMem_490c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 11
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RDI.i609 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i610
  %2136 = sub i64 %2135, 16
  %2137 = load i64, i64* %PC.i608
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i608
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RDI.i609, align 8
  store %struct.Memory* %loadMem_490c88, %struct.Memory** %MEMORY
  %loadMem1_490c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2143 to i64*
  %2144 = load i64, i64* %PC.i607
  %2145 = add i64 %2144, -589020
  %2146 = load i64, i64* %PC.i607
  %2147 = add i64 %2146, 5
  %2148 = load i64, i64* %PC.i607
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC.i607
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2151 = load i64, i64* %2150, align 8
  %2152 = add i64 %2151, -8
  %2153 = inttoptr i64 %2152 to i64*
  store i64 %2147, i64* %2153
  store i64 %2152, i64* %2150, align 8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2145, i64* %2154, align 8
  store %struct.Memory* %loadMem1_490c8c, %struct.Memory** %MEMORY
  %loadMem2_490c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490c8c = load i64, i64* %3
  %2155 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490c8c)
  store %struct.Memory* %2155, %struct.Memory** %MEMORY
  %loadMem_490c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 1
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %EAX.i603 = bitcast %union.anon* %2161 to i32*
  %2162 = load i32, i32* %EAX.i603
  %2163 = zext i32 %2162 to i64
  %2164 = load i64, i64* %PC.i602
  %2165 = add i64 %2164, 3
  store i64 %2165, i64* %PC.i602
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2166, align 1
  %2167 = and i32 %2162, 255
  %2168 = call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2171, i8* %2172, align 1
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2173, align 1
  %2174 = icmp eq i32 %2162, 0
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2175, i8* %2176, align 1
  %2177 = lshr i32 %2162, 31
  %2178 = trunc i32 %2177 to i8
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2178, i8* %2179, align 1
  %2180 = lshr i32 %2162, 31
  %2181 = xor i32 %2177, %2180
  %2182 = add i32 %2181, %2180
  %2183 = icmp eq i32 %2182, 2
  %2184 = zext i1 %2183 to i8
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2184, i8* %2185, align 1
  store %struct.Memory* %loadMem_490c91, %struct.Memory** %MEMORY
  %loadMem_490c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2188 to i64*
  %2189 = load i64, i64* %PC.i601
  %2190 = add i64 %2189, 18
  %2191 = load i64, i64* %PC.i601
  %2192 = add i64 %2191, 6
  %2193 = load i64, i64* %PC.i601
  %2194 = add i64 %2193, 6
  store i64 %2194, i64* %PC.i601
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2196 = load i8, i8* %2195, align 1
  %2197 = icmp eq i8 %2196, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %BRANCH_TAKEN, align 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2200 = select i1 %2197, i64 %2190, i64 %2192
  store i64 %2200, i64* %2199, align 8
  store %struct.Memory* %loadMem_490c94, %struct.Memory** %MEMORY
  %loadBr_490c94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c94 = icmp eq i8 %loadBr_490c94, 1
  br i1 %cmpBr_490c94, label %block_.L_490ca6, label %block_490c9a

block_490c9a:                                     ; preds = %block_.L_490c77
  %loadMem_490c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 15
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %2206 to i64*
  %2207 = load i64, i64* %RBP.i600
  %2208 = sub i64 %2207, 4
  %2209 = load i64, i64* %PC.i599
  %2210 = add i64 %2209, 7
  store i64 %2210, i64* %PC.i599
  %2211 = inttoptr i64 %2208 to i32*
  store i32 3, i32* %2211
  store %struct.Memory* %loadMem_490c9a, %struct.Memory** %MEMORY
  %loadMem_490ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %PC.i598
  %2216 = add i64 %2215, 1469
  %2217 = load i64, i64* %PC.i598
  %2218 = add i64 %2217, 5
  store i64 %2218, i64* %PC.i598
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2216, i64* %2219, align 8
  store %struct.Memory* %loadMem_490ca1, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490ca6:                                  ; preds = %block_.L_490c77
  %loadMem_490ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 9
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RSI.i597 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %PC.i596
  %2227 = add i64 %2226, 10
  store i64 %2227, i64* %PC.i596
  store i64 ptrtoint (%G__0x586af6_type* @G__0x586af6 to i64), i64* %RSI.i597, align 8
  store %struct.Memory* %loadMem_490ca6, %struct.Memory** %MEMORY
  %loadMem_490cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 1
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %PC.i594
  %2235 = add i64 %2234, 5
  store i64 %2235, i64* %PC.i594
  store i64 6, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_490cb0, %struct.Memory** %MEMORY
  %loadMem_490cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %EAX.i592 = bitcast %union.anon* %2241 to i32*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 7
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %2244 to i64*
  %2245 = load i32, i32* %EAX.i592
  %2246 = zext i32 %2245 to i64
  %2247 = load i64, i64* %PC.i591
  %2248 = add i64 %2247, 2
  store i64 %2248, i64* %PC.i591
  %2249 = and i64 %2246, 4294967295
  store i64 %2249, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_490cb5, %struct.Memory** %MEMORY
  %loadMem_490cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 11
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RDI.i589 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %RBP.i590
  %2260 = sub i64 %2259, 16
  %2261 = load i64, i64* %PC.i588
  %2262 = add i64 %2261, 4
  store i64 %2262, i64* %PC.i588
  %2263 = inttoptr i64 %2260 to i64*
  %2264 = load i64, i64* %2263
  store i64 %2264, i64* %RDI.i589, align 8
  store %struct.Memory* %loadMem_490cb7, %struct.Memory** %MEMORY
  %loadMem1_490cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %PC.i587
  %2269 = add i64 %2268, -589067
  %2270 = load i64, i64* %PC.i587
  %2271 = add i64 %2270, 5
  %2272 = load i64, i64* %PC.i587
  %2273 = add i64 %2272, 5
  store i64 %2273, i64* %PC.i587
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2275 = load i64, i64* %2274, align 8
  %2276 = add i64 %2275, -8
  %2277 = inttoptr i64 %2276 to i64*
  store i64 %2271, i64* %2277
  store i64 %2276, i64* %2274, align 8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2269, i64* %2278, align 8
  store %struct.Memory* %loadMem1_490cbb, %struct.Memory** %MEMORY
  %loadMem2_490cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490cbb = load i64, i64* %3
  %2279 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490cbb)
  store %struct.Memory* %2279, %struct.Memory** %MEMORY
  %loadMem_490cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %EAX.i583 = bitcast %union.anon* %2285 to i32*
  %2286 = load i32, i32* %EAX.i583
  %2287 = zext i32 %2286 to i64
  %2288 = load i64, i64* %PC.i582
  %2289 = add i64 %2288, 3
  store i64 %2289, i64* %PC.i582
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2290, align 1
  %2291 = and i32 %2286, 255
  %2292 = call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2295, i8* %2296, align 1
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2297, align 1
  %2298 = icmp eq i32 %2286, 0
  %2299 = zext i1 %2298 to i8
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2299, i8* %2300, align 1
  %2301 = lshr i32 %2286, 31
  %2302 = trunc i32 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2302, i8* %2303, align 1
  %2304 = lshr i32 %2286, 31
  %2305 = xor i32 %2301, %2304
  %2306 = add i32 %2305, %2304
  %2307 = icmp eq i32 %2306, 2
  %2308 = zext i1 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2308, i8* %2309, align 1
  store %struct.Memory* %loadMem_490cc0, %struct.Memory** %MEMORY
  %loadMem_490cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %PC.i581
  %2314 = add i64 %2313, 18
  %2315 = load i64, i64* %PC.i581
  %2316 = add i64 %2315, 6
  %2317 = load i64, i64* %PC.i581
  %2318 = add i64 %2317, 6
  store i64 %2318, i64* %PC.i581
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2320 = load i8, i8* %2319, align 1
  %2321 = icmp eq i8 %2320, 0
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %BRANCH_TAKEN, align 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2324 = select i1 %2321, i64 %2314, i64 %2316
  store i64 %2324, i64* %2323, align 8
  store %struct.Memory* %loadMem_490cc3, %struct.Memory** %MEMORY
  %loadBr_490cc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cc3 = icmp eq i8 %loadBr_490cc3, 1
  br i1 %cmpBr_490cc3, label %block_.L_490cd5, label %block_490cc9

block_490cc9:                                     ; preds = %block_.L_490ca6
  %loadMem_490cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 33
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 15
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %2330 to i64*
  %2331 = load i64, i64* %RBP.i580
  %2332 = sub i64 %2331, 4
  %2333 = load i64, i64* %PC.i579
  %2334 = add i64 %2333, 7
  store i64 %2334, i64* %PC.i579
  %2335 = inttoptr i64 %2332 to i32*
  store i32 30, i32* %2335
  store %struct.Memory* %loadMem_490cc9, %struct.Memory** %MEMORY
  %loadMem_490cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %PC.i578
  %2340 = add i64 %2339, 1422
  %2341 = load i64, i64* %PC.i578
  %2342 = add i64 %2341, 5
  store i64 %2342, i64* %PC.i578
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2340, i64* %2343, align 8
  store %struct.Memory* %loadMem_490cd0, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490cd5:                                  ; preds = %block_.L_490ca6
  %loadMem_490cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 9
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RSI.i577 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %PC.i576
  %2351 = add i64 %2350, 10
  store i64 %2351, i64* %PC.i576
  store i64 ptrtoint (%G__0x586aff_type* @G__0x586aff to i64), i64* %RSI.i577, align 8
  store %struct.Memory* %loadMem_490cd5, %struct.Memory** %MEMORY
  %loadMem_490cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %PC.i574
  %2359 = add i64 %2358, 5
  store i64 %2359, i64* %PC.i574
  store i64 6, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_490cdf, %struct.Memory** %MEMORY
  %loadMem_490ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 1
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %EAX.i572 = bitcast %union.anon* %2365 to i32*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 7
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RDX.i573 = bitcast %union.anon* %2368 to i64*
  %2369 = load i32, i32* %EAX.i572
  %2370 = zext i32 %2369 to i64
  %2371 = load i64, i64* %PC.i571
  %2372 = add i64 %2371, 2
  store i64 %2372, i64* %PC.i571
  %2373 = and i64 %2370, 4294967295
  store i64 %2373, i64* %RDX.i573, align 8
  store %struct.Memory* %loadMem_490ce4, %struct.Memory** %MEMORY
  %loadMem_490ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 11
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RDI.i569 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i570
  %2384 = sub i64 %2383, 16
  %2385 = load i64, i64* %PC.i568
  %2386 = add i64 %2385, 4
  store i64 %2386, i64* %PC.i568
  %2387 = inttoptr i64 %2384 to i64*
  %2388 = load i64, i64* %2387
  store i64 %2388, i64* %RDI.i569, align 8
  store %struct.Memory* %loadMem_490ce6, %struct.Memory** %MEMORY
  %loadMem1_490cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2391 to i64*
  %2392 = load i64, i64* %PC.i567
  %2393 = add i64 %2392, -589114
  %2394 = load i64, i64* %PC.i567
  %2395 = add i64 %2394, 5
  %2396 = load i64, i64* %PC.i567
  %2397 = add i64 %2396, 5
  store i64 %2397, i64* %PC.i567
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2399 = load i64, i64* %2398, align 8
  %2400 = add i64 %2399, -8
  %2401 = inttoptr i64 %2400 to i64*
  store i64 %2395, i64* %2401
  store i64 %2400, i64* %2398, align 8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2393, i64* %2402, align 8
  store %struct.Memory* %loadMem1_490cea, %struct.Memory** %MEMORY
  %loadMem2_490cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490cea = load i64, i64* %3
  %2403 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490cea)
  store %struct.Memory* %2403, %struct.Memory** %MEMORY
  %loadMem_490cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 1
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %EAX.i565 = bitcast %union.anon* %2409 to i32*
  %2410 = load i32, i32* %EAX.i565
  %2411 = zext i32 %2410 to i64
  %2412 = load i64, i64* %PC.i564
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC.i564
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2414, align 1
  %2415 = and i32 %2410, 255
  %2416 = call i32 @llvm.ctpop.i32(i32 %2415)
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = xor i8 %2418, 1
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2419, i8* %2420, align 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2421, align 1
  %2422 = icmp eq i32 %2410, 0
  %2423 = zext i1 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2423, i8* %2424, align 1
  %2425 = lshr i32 %2410, 31
  %2426 = trunc i32 %2425 to i8
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2426, i8* %2427, align 1
  %2428 = lshr i32 %2410, 31
  %2429 = xor i32 %2425, %2428
  %2430 = add i32 %2429, %2428
  %2431 = icmp eq i32 %2430, 2
  %2432 = zext i1 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2432, i8* %2433, align 1
  store %struct.Memory* %loadMem_490cef, %struct.Memory** %MEMORY
  %loadMem_490cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %PC.i563
  %2438 = add i64 %2437, 18
  %2439 = load i64, i64* %PC.i563
  %2440 = add i64 %2439, 6
  %2441 = load i64, i64* %PC.i563
  %2442 = add i64 %2441, 6
  store i64 %2442, i64* %PC.i563
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2444 = load i8, i8* %2443, align 1
  %2445 = icmp eq i8 %2444, 0
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %BRANCH_TAKEN, align 1
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2448 = select i1 %2445, i64 %2438, i64 %2440
  store i64 %2448, i64* %2447, align 8
  store %struct.Memory* %loadMem_490cf2, %struct.Memory** %MEMORY
  %loadBr_490cf2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cf2 = icmp eq i8 %loadBr_490cf2, 1
  br i1 %cmpBr_490cf2, label %block_.L_490d04, label %block_490cf8

block_490cf8:                                     ; preds = %block_.L_490cd5
  %loadMem_490cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i562
  %2456 = sub i64 %2455, 4
  %2457 = load i64, i64* %PC.i561
  %2458 = add i64 %2457, 7
  store i64 %2458, i64* %PC.i561
  %2459 = inttoptr i64 %2456 to i32*
  store i32 31, i32* %2459
  store %struct.Memory* %loadMem_490cf8, %struct.Memory** %MEMORY
  %loadMem_490cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2462 to i64*
  %2463 = load i64, i64* %PC.i560
  %2464 = add i64 %2463, 1375
  %2465 = load i64, i64* %PC.i560
  %2466 = add i64 %2465, 5
  store i64 %2466, i64* %PC.i560
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2464, i64* %2467, align 8
  store %struct.Memory* %loadMem_490cff, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490d04:                                  ; preds = %block_.L_490cd5
  %loadMem_490d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 9
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RSI.i559 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %PC.i558
  %2475 = add i64 %2474, 10
  store i64 %2475, i64* %PC.i558
  store i64 ptrtoint (%G__0x586b09_type* @G__0x586b09 to i64), i64* %RSI.i559, align 8
  store %struct.Memory* %loadMem_490d04, %struct.Memory** %MEMORY
  %loadMem_490d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %PC.i556
  %2483 = add i64 %2482, 5
  store i64 %2483, i64* %PC.i556
  store i64 6, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_490d0e, %struct.Memory** %MEMORY
  %loadMem_490d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %2489 to i32*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 7
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RDX.i555 = bitcast %union.anon* %2492 to i64*
  %2493 = load i32, i32* %EAX.i554
  %2494 = zext i32 %2493 to i64
  %2495 = load i64, i64* %PC.i553
  %2496 = add i64 %2495, 2
  store i64 %2496, i64* %PC.i553
  %2497 = and i64 %2494, 4294967295
  store i64 %2497, i64* %RDX.i555, align 8
  store %struct.Memory* %loadMem_490d13, %struct.Memory** %MEMORY
  %loadMem_490d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 11
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RDI.i551 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 15
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %RBP.i552
  %2508 = sub i64 %2507, 16
  %2509 = load i64, i64* %PC.i550
  %2510 = add i64 %2509, 4
  store i64 %2510, i64* %PC.i550
  %2511 = inttoptr i64 %2508 to i64*
  %2512 = load i64, i64* %2511
  store i64 %2512, i64* %RDI.i551, align 8
  store %struct.Memory* %loadMem_490d15, %struct.Memory** %MEMORY
  %loadMem1_490d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %PC.i549
  %2517 = add i64 %2516, -589161
  %2518 = load i64, i64* %PC.i549
  %2519 = add i64 %2518, 5
  %2520 = load i64, i64* %PC.i549
  %2521 = add i64 %2520, 5
  store i64 %2521, i64* %PC.i549
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2523 = load i64, i64* %2522, align 8
  %2524 = add i64 %2523, -8
  %2525 = inttoptr i64 %2524 to i64*
  store i64 %2519, i64* %2525
  store i64 %2524, i64* %2522, align 8
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2517, i64* %2526, align 8
  store %struct.Memory* %loadMem1_490d19, %struct.Memory** %MEMORY
  %loadMem2_490d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490d19 = load i64, i64* %3
  %2527 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490d19)
  store %struct.Memory* %2527, %struct.Memory** %MEMORY
  %loadMem_490d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 1
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %EAX.i546 = bitcast %union.anon* %2533 to i32*
  %2534 = load i32, i32* %EAX.i546
  %2535 = zext i32 %2534 to i64
  %2536 = load i64, i64* %PC.i545
  %2537 = add i64 %2536, 3
  store i64 %2537, i64* %PC.i545
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2538, align 1
  %2539 = and i32 %2534, 255
  %2540 = call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2543, i8* %2544, align 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2545, align 1
  %2546 = icmp eq i32 %2534, 0
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2547, i8* %2548, align 1
  %2549 = lshr i32 %2534, 31
  %2550 = trunc i32 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2550, i8* %2551, align 1
  %2552 = lshr i32 %2534, 31
  %2553 = xor i32 %2549, %2552
  %2554 = add i32 %2553, %2552
  %2555 = icmp eq i32 %2554, 2
  %2556 = zext i1 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2556, i8* %2557, align 1
  store %struct.Memory* %loadMem_490d1e, %struct.Memory** %MEMORY
  %loadMem_490d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2560 to i64*
  %2561 = load i64, i64* %PC.i544
  %2562 = add i64 %2561, 18
  %2563 = load i64, i64* %PC.i544
  %2564 = add i64 %2563, 6
  %2565 = load i64, i64* %PC.i544
  %2566 = add i64 %2565, 6
  store i64 %2566, i64* %PC.i544
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2568 = load i8, i8* %2567, align 1
  %2569 = icmp eq i8 %2568, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %BRANCH_TAKEN, align 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2572 = select i1 %2569, i64 %2562, i64 %2564
  store i64 %2572, i64* %2571, align 8
  store %struct.Memory* %loadMem_490d21, %struct.Memory** %MEMORY
  %loadBr_490d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d21 = icmp eq i8 %loadBr_490d21, 1
  br i1 %cmpBr_490d21, label %block_.L_490d33, label %block_490d27

block_490d27:                                     ; preds = %block_.L_490d04
  %loadMem_490d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 33
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2575 to i64*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 15
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2578 to i64*
  %2579 = load i64, i64* %RBP.i543
  %2580 = sub i64 %2579, 4
  %2581 = load i64, i64* %PC.i542
  %2582 = add i64 %2581, 7
  store i64 %2582, i64* %PC.i542
  %2583 = inttoptr i64 %2580 to i32*
  store i32 29, i32* %2583
  store %struct.Memory* %loadMem_490d27, %struct.Memory** %MEMORY
  %loadMem_490d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %PC.i541
  %2588 = add i64 %2587, 1328
  %2589 = load i64, i64* %PC.i541
  %2590 = add i64 %2589, 5
  store i64 %2590, i64* %PC.i541
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2588, i64* %2591, align 8
  store %struct.Memory* %loadMem_490d2e, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490d33:                                  ; preds = %block_.L_490d04
  %loadMem_490d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 9
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RSI.i540 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %PC.i539
  %2599 = add i64 %2598, 10
  store i64 %2599, i64* %PC.i539
  store i64 ptrtoint (%G__0x57fc64_type* @G__0x57fc64 to i64), i64* %RSI.i540, align 8
  store %struct.Memory* %loadMem_490d33, %struct.Memory** %MEMORY
  %loadMem_490d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 33
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2602 to i64*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 1
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %PC.i537
  %2607 = add i64 %2606, 5
  store i64 %2607, i64* %PC.i537
  store i64 5, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_490d3d, %struct.Memory** %MEMORY
  %loadMem_490d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 1
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %2613 to i32*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 7
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %2616 to i64*
  %2617 = load i32, i32* %EAX.i535
  %2618 = zext i32 %2617 to i64
  %2619 = load i64, i64* %PC.i534
  %2620 = add i64 %2619, 2
  store i64 %2620, i64* %PC.i534
  %2621 = and i64 %2618, 4294967295
  store i64 %2621, i64* %RDX.i536, align 8
  store %struct.Memory* %loadMem_490d42, %struct.Memory** %MEMORY
  %loadMem_490d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 11
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RDI.i532 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 15
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RBP.i533
  %2632 = sub i64 %2631, 16
  %2633 = load i64, i64* %PC.i531
  %2634 = add i64 %2633, 4
  store i64 %2634, i64* %PC.i531
  %2635 = inttoptr i64 %2632 to i64*
  %2636 = load i64, i64* %2635
  store i64 %2636, i64* %RDI.i532, align 8
  store %struct.Memory* %loadMem_490d44, %struct.Memory** %MEMORY
  %loadMem1_490d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %PC.i530
  %2641 = add i64 %2640, -589208
  %2642 = load i64, i64* %PC.i530
  %2643 = add i64 %2642, 5
  %2644 = load i64, i64* %PC.i530
  %2645 = add i64 %2644, 5
  store i64 %2645, i64* %PC.i530
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2647 = load i64, i64* %2646, align 8
  %2648 = add i64 %2647, -8
  %2649 = inttoptr i64 %2648 to i64*
  store i64 %2643, i64* %2649
  store i64 %2648, i64* %2646, align 8
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2641, i64* %2650, align 8
  store %struct.Memory* %loadMem1_490d48, %struct.Memory** %MEMORY
  %loadMem2_490d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490d48 = load i64, i64* %3
  %2651 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490d48)
  store %struct.Memory* %2651, %struct.Memory** %MEMORY
  %loadMem_490d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 1
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %EAX.i528 = bitcast %union.anon* %2657 to i32*
  %2658 = load i32, i32* %EAX.i528
  %2659 = zext i32 %2658 to i64
  %2660 = load i64, i64* %PC.i527
  %2661 = add i64 %2660, 3
  store i64 %2661, i64* %PC.i527
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2662, align 1
  %2663 = and i32 %2658, 255
  %2664 = call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2667, i8* %2668, align 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2669, align 1
  %2670 = icmp eq i32 %2658, 0
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2671, i8* %2672, align 1
  %2673 = lshr i32 %2658, 31
  %2674 = trunc i32 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2674, i8* %2675, align 1
  %2676 = lshr i32 %2658, 31
  %2677 = xor i32 %2673, %2676
  %2678 = add i32 %2677, %2676
  %2679 = icmp eq i32 %2678, 2
  %2680 = zext i1 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2680, i8* %2681, align 1
  store %struct.Memory* %loadMem_490d4d, %struct.Memory** %MEMORY
  %loadMem_490d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %PC.i526
  %2686 = add i64 %2685, 18
  %2687 = load i64, i64* %PC.i526
  %2688 = add i64 %2687, 6
  %2689 = load i64, i64* %PC.i526
  %2690 = add i64 %2689, 6
  store i64 %2690, i64* %PC.i526
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2692 = load i8, i8* %2691, align 1
  %2693 = icmp eq i8 %2692, 0
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %BRANCH_TAKEN, align 1
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2696 = select i1 %2693, i64 %2686, i64 %2688
  store i64 %2696, i64* %2695, align 8
  store %struct.Memory* %loadMem_490d50, %struct.Memory** %MEMORY
  %loadBr_490d50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d50 = icmp eq i8 %loadBr_490d50, 1
  br i1 %cmpBr_490d50, label %block_.L_490d62, label %block_490d56

block_490d56:                                     ; preds = %block_.L_490d33
  %loadMem_490d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 33
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 15
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %2702 to i64*
  %2703 = load i64, i64* %RBP.i525
  %2704 = sub i64 %2703, 4
  %2705 = load i64, i64* %PC.i524
  %2706 = add i64 %2705, 7
  store i64 %2706, i64* %PC.i524
  %2707 = inttoptr i64 %2704 to i32*
  store i32 14, i32* %2707
  store %struct.Memory* %loadMem_490d56, %struct.Memory** %MEMORY
  %loadMem_490d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %PC.i523
  %2712 = add i64 %2711, 1281
  %2713 = load i64, i64* %PC.i523
  %2714 = add i64 %2713, 5
  store i64 %2714, i64* %PC.i523
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2712, i64* %2715, align 8
  store %struct.Memory* %loadMem_490d5d, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490d62:                                  ; preds = %block_.L_490d33
  %loadMem_490d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 9
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RSI.i522 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %PC.i521
  %2723 = add i64 %2722, 10
  store i64 %2723, i64* %PC.i521
  store i64 ptrtoint (%G__0x586b12_type* @G__0x586b12 to i64), i64* %RSI.i522, align 8
  store %struct.Memory* %loadMem_490d62, %struct.Memory** %MEMORY
  %loadMem_490d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 1
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %2729 to i64*
  %2730 = load i64, i64* %PC.i519
  %2731 = add i64 %2730, 5
  store i64 %2731, i64* %PC.i519
  store i64 5, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_490d6c, %struct.Memory** %MEMORY
  %loadMem_490d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 1
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %EAX.i517 = bitcast %union.anon* %2737 to i32*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 7
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %2740 to i64*
  %2741 = load i32, i32* %EAX.i517
  %2742 = zext i32 %2741 to i64
  %2743 = load i64, i64* %PC.i516
  %2744 = add i64 %2743, 2
  store i64 %2744, i64* %PC.i516
  %2745 = and i64 %2742, 4294967295
  store i64 %2745, i64* %RDX.i518, align 8
  store %struct.Memory* %loadMem_490d71, %struct.Memory** %MEMORY
  %loadMem_490d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 11
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RDI.i514 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 15
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RBP.i515
  %2756 = sub i64 %2755, 16
  %2757 = load i64, i64* %PC.i513
  %2758 = add i64 %2757, 4
  store i64 %2758, i64* %PC.i513
  %2759 = inttoptr i64 %2756 to i64*
  %2760 = load i64, i64* %2759
  store i64 %2760, i64* %RDI.i514, align 8
  store %struct.Memory* %loadMem_490d73, %struct.Memory** %MEMORY
  %loadMem1_490d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %PC.i512
  %2765 = add i64 %2764, -589255
  %2766 = load i64, i64* %PC.i512
  %2767 = add i64 %2766, 5
  %2768 = load i64, i64* %PC.i512
  %2769 = add i64 %2768, 5
  store i64 %2769, i64* %PC.i512
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2771 = load i64, i64* %2770, align 8
  %2772 = add i64 %2771, -8
  %2773 = inttoptr i64 %2772 to i64*
  store i64 %2767, i64* %2773
  store i64 %2772, i64* %2770, align 8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2765, i64* %2774, align 8
  store %struct.Memory* %loadMem1_490d77, %struct.Memory** %MEMORY
  %loadMem2_490d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490d77 = load i64, i64* %3
  %2775 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490d77)
  store %struct.Memory* %2775, %struct.Memory** %MEMORY
  %loadMem_490d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 1
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %EAX.i509 = bitcast %union.anon* %2781 to i32*
  %2782 = load i32, i32* %EAX.i509
  %2783 = zext i32 %2782 to i64
  %2784 = load i64, i64* %PC.i508
  %2785 = add i64 %2784, 3
  store i64 %2785, i64* %PC.i508
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2786, align 1
  %2787 = and i32 %2782, 255
  %2788 = call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2791, i8* %2792, align 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2793, align 1
  %2794 = icmp eq i32 %2782, 0
  %2795 = zext i1 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2795, i8* %2796, align 1
  %2797 = lshr i32 %2782, 31
  %2798 = trunc i32 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2798, i8* %2799, align 1
  %2800 = lshr i32 %2782, 31
  %2801 = xor i32 %2797, %2800
  %2802 = add i32 %2801, %2800
  %2803 = icmp eq i32 %2802, 2
  %2804 = zext i1 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2804, i8* %2805, align 1
  store %struct.Memory* %loadMem_490d7c, %struct.Memory** %MEMORY
  %loadMem_490d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %PC.i507
  %2810 = add i64 %2809, 18
  %2811 = load i64, i64* %PC.i507
  %2812 = add i64 %2811, 6
  %2813 = load i64, i64* %PC.i507
  %2814 = add i64 %2813, 6
  store i64 %2814, i64* %PC.i507
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2816 = load i8, i8* %2815, align 1
  %2817 = icmp eq i8 %2816, 0
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %BRANCH_TAKEN, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2820 = select i1 %2817, i64 %2810, i64 %2812
  store i64 %2820, i64* %2819, align 8
  store %struct.Memory* %loadMem_490d7f, %struct.Memory** %MEMORY
  %loadBr_490d7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d7f = icmp eq i8 %loadBr_490d7f, 1
  br i1 %cmpBr_490d7f, label %block_.L_490d91, label %block_490d85

block_490d85:                                     ; preds = %block_.L_490d62
  %loadMem_490d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 15
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RBP.i506
  %2828 = sub i64 %2827, 4
  %2829 = load i64, i64* %PC.i505
  %2830 = add i64 %2829, 7
  store i64 %2830, i64* %PC.i505
  %2831 = inttoptr i64 %2828 to i32*
  store i32 7, i32* %2831
  store %struct.Memory* %loadMem_490d85, %struct.Memory** %MEMORY
  %loadMem_490d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 33
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %PC.i504
  %2836 = add i64 %2835, 1234
  %2837 = load i64, i64* %PC.i504
  %2838 = add i64 %2837, 5
  store i64 %2838, i64* %PC.i504
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2836, i64* %2839, align 8
  store %struct.Memory* %loadMem_490d8c, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490d91:                                  ; preds = %block_.L_490d62
  %loadMem_490d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 9
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RSI.i503 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %PC.i502
  %2847 = add i64 %2846, 10
  store i64 %2847, i64* %PC.i502
  store i64 ptrtoint (%G__0x586eef_type* @G__0x586eef to i64), i64* %RSI.i503, align 8
  store %struct.Memory* %loadMem_490d91, %struct.Memory** %MEMORY
  %loadMem_490d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 1
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %PC.i500
  %2855 = add i64 %2854, 5
  store i64 %2855, i64* %PC.i500
  store i64 4, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_490d9b, %struct.Memory** %MEMORY
  %loadMem_490da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 1
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %EAX.i498 = bitcast %union.anon* %2861 to i32*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 7
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %2864 to i64*
  %2865 = load i32, i32* %EAX.i498
  %2866 = zext i32 %2865 to i64
  %2867 = load i64, i64* %PC.i497
  %2868 = add i64 %2867, 2
  store i64 %2868, i64* %PC.i497
  %2869 = and i64 %2866, 4294967295
  store i64 %2869, i64* %RDX.i499, align 8
  store %struct.Memory* %loadMem_490da0, %struct.Memory** %MEMORY
  %loadMem_490da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 11
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RDI.i495 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %RBP.i496
  %2880 = sub i64 %2879, 16
  %2881 = load i64, i64* %PC.i494
  %2882 = add i64 %2881, 4
  store i64 %2882, i64* %PC.i494
  %2883 = inttoptr i64 %2880 to i64*
  %2884 = load i64, i64* %2883
  store i64 %2884, i64* %RDI.i495, align 8
  store %struct.Memory* %loadMem_490da2, %struct.Memory** %MEMORY
  %loadMem1_490da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2887 to i64*
  %2888 = load i64, i64* %PC.i493
  %2889 = add i64 %2888, -589302
  %2890 = load i64, i64* %PC.i493
  %2891 = add i64 %2890, 5
  %2892 = load i64, i64* %PC.i493
  %2893 = add i64 %2892, 5
  store i64 %2893, i64* %PC.i493
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2895 = load i64, i64* %2894, align 8
  %2896 = add i64 %2895, -8
  %2897 = inttoptr i64 %2896 to i64*
  store i64 %2891, i64* %2897
  store i64 %2896, i64* %2894, align 8
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2889, i64* %2898, align 8
  store %struct.Memory* %loadMem1_490da6, %struct.Memory** %MEMORY
  %loadMem2_490da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490da6 = load i64, i64* %3
  %2899 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490da6)
  store %struct.Memory* %2899, %struct.Memory** %MEMORY
  %loadMem_490dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 1
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %EAX.i489 = bitcast %union.anon* %2905 to i32*
  %2906 = load i32, i32* %EAX.i489
  %2907 = zext i32 %2906 to i64
  %2908 = load i64, i64* %PC.i488
  %2909 = add i64 %2908, 3
  store i64 %2909, i64* %PC.i488
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2910, align 1
  %2911 = and i32 %2906, 255
  %2912 = call i32 @llvm.ctpop.i32(i32 %2911)
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = xor i8 %2914, 1
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2915, i8* %2916, align 1
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2917, align 1
  %2918 = icmp eq i32 %2906, 0
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2919, i8* %2920, align 1
  %2921 = lshr i32 %2906, 31
  %2922 = trunc i32 %2921 to i8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2922, i8* %2923, align 1
  %2924 = lshr i32 %2906, 31
  %2925 = xor i32 %2921, %2924
  %2926 = add i32 %2925, %2924
  %2927 = icmp eq i32 %2926, 2
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2928, i8* %2929, align 1
  store %struct.Memory* %loadMem_490dab, %struct.Memory** %MEMORY
  %loadMem_490dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %PC.i487
  %2934 = add i64 %2933, 18
  %2935 = load i64, i64* %PC.i487
  %2936 = add i64 %2935, 6
  %2937 = load i64, i64* %PC.i487
  %2938 = add i64 %2937, 6
  store i64 %2938, i64* %PC.i487
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2940 = load i8, i8* %2939, align 1
  %2941 = icmp eq i8 %2940, 0
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %BRANCH_TAKEN, align 1
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2944 = select i1 %2941, i64 %2934, i64 %2936
  store i64 %2944, i64* %2943, align 8
  store %struct.Memory* %loadMem_490dae, %struct.Memory** %MEMORY
  %loadBr_490dae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490dae = icmp eq i8 %loadBr_490dae, 1
  br i1 %cmpBr_490dae, label %block_.L_490dc0, label %block_490db4

block_490db4:                                     ; preds = %block_.L_490d91
  %loadMem_490db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 15
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %RBP.i486
  %2952 = sub i64 %2951, 4
  %2953 = load i64, i64* %PC.i485
  %2954 = add i64 %2953, 7
  store i64 %2954, i64* %PC.i485
  %2955 = inttoptr i64 %2952 to i32*
  store i32 13, i32* %2955
  store %struct.Memory* %loadMem_490db4, %struct.Memory** %MEMORY
  %loadMem_490dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %PC.i484
  %2960 = add i64 %2959, 1187
  %2961 = load i64, i64* %PC.i484
  %2962 = add i64 %2961, 5
  store i64 %2962, i64* %PC.i484
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2960, i64* %2963, align 8
  store %struct.Memory* %loadMem_490dbb, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490dc0:                                  ; preds = %block_.L_490d91
  %loadMem_490dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 9
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RSI.i483 = bitcast %union.anon* %2969 to i64*
  %2970 = load i64, i64* %PC.i482
  %2971 = add i64 %2970, 10
  store i64 %2971, i64* %PC.i482
  store i64 ptrtoint (%G__0x585698_type* @G__0x585698 to i64), i64* %RSI.i483, align 8
  store %struct.Memory* %loadMem_490dc0, %struct.Memory** %MEMORY
  %loadMem_490dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 1
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %PC.i480
  %2979 = add i64 %2978, 5
  store i64 %2979, i64* %PC.i480
  store i64 4, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_490dca, %struct.Memory** %MEMORY
  %loadMem_490dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %2985 to i32*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 7
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %2988 to i64*
  %2989 = load i32, i32* %EAX.i478
  %2990 = zext i32 %2989 to i64
  %2991 = load i64, i64* %PC.i477
  %2992 = add i64 %2991, 2
  store i64 %2992, i64* %PC.i477
  %2993 = and i64 %2990, 4294967295
  store i64 %2993, i64* %RDX.i479, align 8
  store %struct.Memory* %loadMem_490dcf, %struct.Memory** %MEMORY
  %loadMem_490dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 11
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RDI.i475 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 15
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3002 to i64*
  %3003 = load i64, i64* %RBP.i476
  %3004 = sub i64 %3003, 16
  %3005 = load i64, i64* %PC.i474
  %3006 = add i64 %3005, 4
  store i64 %3006, i64* %PC.i474
  %3007 = inttoptr i64 %3004 to i64*
  %3008 = load i64, i64* %3007
  store i64 %3008, i64* %RDI.i475, align 8
  store %struct.Memory* %loadMem_490dd1, %struct.Memory** %MEMORY
  %loadMem1_490dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 33
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %PC.i473
  %3013 = add i64 %3012, -589349
  %3014 = load i64, i64* %PC.i473
  %3015 = add i64 %3014, 5
  %3016 = load i64, i64* %PC.i473
  %3017 = add i64 %3016, 5
  store i64 %3017, i64* %PC.i473
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3019 = load i64, i64* %3018, align 8
  %3020 = add i64 %3019, -8
  %3021 = inttoptr i64 %3020 to i64*
  store i64 %3015, i64* %3021
  store i64 %3020, i64* %3018, align 8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3013, i64* %3022, align 8
  store %struct.Memory* %loadMem1_490dd5, %struct.Memory** %MEMORY
  %loadMem2_490dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490dd5 = load i64, i64* %3
  %3023 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490dd5)
  store %struct.Memory* %3023, %struct.Memory** %MEMORY
  %loadMem_490dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 1
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %EAX.i471 = bitcast %union.anon* %3029 to i32*
  %3030 = load i32, i32* %EAX.i471
  %3031 = zext i32 %3030 to i64
  %3032 = load i64, i64* %PC.i470
  %3033 = add i64 %3032, 3
  store i64 %3033, i64* %PC.i470
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3034, align 1
  %3035 = and i32 %3030, 255
  %3036 = call i32 @llvm.ctpop.i32(i32 %3035)
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  %3039 = xor i8 %3038, 1
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3039, i8* %3040, align 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3041, align 1
  %3042 = icmp eq i32 %3030, 0
  %3043 = zext i1 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3043, i8* %3044, align 1
  %3045 = lshr i32 %3030, 31
  %3046 = trunc i32 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3046, i8* %3047, align 1
  %3048 = lshr i32 %3030, 31
  %3049 = xor i32 %3045, %3048
  %3050 = add i32 %3049, %3048
  %3051 = icmp eq i32 %3050, 2
  %3052 = zext i1 %3051 to i8
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3052, i8* %3053, align 1
  store %struct.Memory* %loadMem_490dda, %struct.Memory** %MEMORY
  %loadMem_490ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %PC.i469
  %3058 = add i64 %3057, 18
  %3059 = load i64, i64* %PC.i469
  %3060 = add i64 %3059, 6
  %3061 = load i64, i64* %PC.i469
  %3062 = add i64 %3061, 6
  store i64 %3062, i64* %PC.i469
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3064 = load i8, i8* %3063, align 1
  %3065 = icmp eq i8 %3064, 0
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %BRANCH_TAKEN, align 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3068 = select i1 %3065, i64 %3058, i64 %3060
  store i64 %3068, i64* %3067, align 8
  store %struct.Memory* %loadMem_490ddd, %struct.Memory** %MEMORY
  %loadBr_490ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ddd = icmp eq i8 %loadBr_490ddd, 1
  br i1 %cmpBr_490ddd, label %block_.L_490def, label %block_490de3

block_490de3:                                     ; preds = %block_.L_490dc0
  %loadMem_490de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 33
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RBP.i468
  %3076 = sub i64 %3075, 4
  %3077 = load i64, i64* %PC.i467
  %3078 = add i64 %3077, 7
  store i64 %3078, i64* %PC.i467
  %3079 = inttoptr i64 %3076 to i32*
  store i32 8, i32* %3079
  store %struct.Memory* %loadMem_490de3, %struct.Memory** %MEMORY
  %loadMem_490dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %PC.i466
  %3084 = add i64 %3083, 1140
  %3085 = load i64, i64* %PC.i466
  %3086 = add i64 %3085, 5
  store i64 %3086, i64* %PC.i466
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3084, i64* %3087, align 8
  store %struct.Memory* %loadMem_490dea, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490def:                                  ; preds = %block_.L_490dc0
  %loadMem_490def = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 9
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RSI.i465 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %PC.i464
  %3095 = add i64 %3094, 10
  store i64 %3095, i64* %PC.i464
  store i64 ptrtoint (%G__0x586b19_type* @G__0x586b19 to i64), i64* %RSI.i465, align 8
  store %struct.Memory* %loadMem_490def, %struct.Memory** %MEMORY
  %loadMem_490df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 1
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %PC.i462
  %3103 = add i64 %3102, 5
  store i64 %3103, i64* %PC.i462
  store i64 4, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_490df9, %struct.Memory** %MEMORY
  %loadMem_490dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 1
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %3109 to i32*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 7
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %3112 to i64*
  %3113 = load i32, i32* %EAX.i460
  %3114 = zext i32 %3113 to i64
  %3115 = load i64, i64* %PC.i459
  %3116 = add i64 %3115, 2
  store i64 %3116, i64* %PC.i459
  %3117 = and i64 %3114, 4294967295
  store i64 %3117, i64* %RDX.i461, align 8
  store %struct.Memory* %loadMem_490dfe, %struct.Memory** %MEMORY
  %loadMem_490e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 11
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RDI.i457 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 15
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %RBP.i458
  %3128 = sub i64 %3127, 16
  %3129 = load i64, i64* %PC.i456
  %3130 = add i64 %3129, 4
  store i64 %3130, i64* %PC.i456
  %3131 = inttoptr i64 %3128 to i64*
  %3132 = load i64, i64* %3131
  store i64 %3132, i64* %RDI.i457, align 8
  store %struct.Memory* %loadMem_490e00, %struct.Memory** %MEMORY
  %loadMem1_490e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %PC.i455
  %3137 = add i64 %3136, -589396
  %3138 = load i64, i64* %PC.i455
  %3139 = add i64 %3138, 5
  %3140 = load i64, i64* %PC.i455
  %3141 = add i64 %3140, 5
  store i64 %3141, i64* %PC.i455
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3143 = load i64, i64* %3142, align 8
  %3144 = add i64 %3143, -8
  %3145 = inttoptr i64 %3144 to i64*
  store i64 %3139, i64* %3145
  store i64 %3144, i64* %3142, align 8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3137, i64* %3146, align 8
  store %struct.Memory* %loadMem1_490e04, %struct.Memory** %MEMORY
  %loadMem2_490e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e04 = load i64, i64* %3
  %3147 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490e04)
  store %struct.Memory* %3147, %struct.Memory** %MEMORY
  %loadMem_490e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 1
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %EAX.i452 = bitcast %union.anon* %3153 to i32*
  %3154 = load i32, i32* %EAX.i452
  %3155 = zext i32 %3154 to i64
  %3156 = load i64, i64* %PC.i451
  %3157 = add i64 %3156, 3
  store i64 %3157, i64* %PC.i451
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3158, align 1
  %3159 = and i32 %3154, 255
  %3160 = call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3163, i8* %3164, align 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3165, align 1
  %3166 = icmp eq i32 %3154, 0
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3167, i8* %3168, align 1
  %3169 = lshr i32 %3154, 31
  %3170 = trunc i32 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3170, i8* %3171, align 1
  %3172 = lshr i32 %3154, 31
  %3173 = xor i32 %3169, %3172
  %3174 = add i32 %3173, %3172
  %3175 = icmp eq i32 %3174, 2
  %3176 = zext i1 %3175 to i8
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3176, i8* %3177, align 1
  store %struct.Memory* %loadMem_490e09, %struct.Memory** %MEMORY
  %loadMem_490e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %PC.i450
  %3182 = add i64 %3181, 18
  %3183 = load i64, i64* %PC.i450
  %3184 = add i64 %3183, 6
  %3185 = load i64, i64* %PC.i450
  %3186 = add i64 %3185, 6
  store i64 %3186, i64* %PC.i450
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3188 = load i8, i8* %3187, align 1
  %3189 = icmp eq i8 %3188, 0
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %BRANCH_TAKEN, align 1
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3192 = select i1 %3189, i64 %3182, i64 %3184
  store i64 %3192, i64* %3191, align 8
  store %struct.Memory* %loadMem_490e0c, %struct.Memory** %MEMORY
  %loadBr_490e0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e0c = icmp eq i8 %loadBr_490e0c, 1
  br i1 %cmpBr_490e0c, label %block_.L_490e1e, label %block_490e12

block_490e12:                                     ; preds = %block_.L_490def
  %loadMem_490e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RBP.i449
  %3200 = sub i64 %3199, 4
  %3201 = load i64, i64* %PC.i448
  %3202 = add i64 %3201, 7
  store i64 %3202, i64* %PC.i448
  %3203 = inttoptr i64 %3200 to i32*
  store i32 15, i32* %3203
  store %struct.Memory* %loadMem_490e12, %struct.Memory** %MEMORY
  %loadMem_490e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %PC.i447
  %3208 = add i64 %3207, 1093
  %3209 = load i64, i64* %PC.i447
  %3210 = add i64 %3209, 5
  store i64 %3210, i64* %PC.i447
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3208, i64* %3211, align 8
  store %struct.Memory* %loadMem_490e19, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490e1e:                                  ; preds = %block_.L_490def
  %loadMem_490e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 9
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RSI.i446 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %PC.i445
  %3219 = add i64 %3218, 10
  store i64 %3219, i64* %PC.i445
  store i64 ptrtoint (%G__0x586b1e_type* @G__0x586b1e to i64), i64* %RSI.i446, align 8
  store %struct.Memory* %loadMem_490e1e, %struct.Memory** %MEMORY
  %loadMem_490e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 1
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %PC.i443
  %3227 = add i64 %3226, 5
  store i64 %3227, i64* %PC.i443
  store i64 4, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_490e28, %struct.Memory** %MEMORY
  %loadMem_490e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 1
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %EAX.i441 = bitcast %union.anon* %3233 to i32*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 7
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %3236 to i64*
  %3237 = load i32, i32* %EAX.i441
  %3238 = zext i32 %3237 to i64
  %3239 = load i64, i64* %PC.i440
  %3240 = add i64 %3239, 2
  store i64 %3240, i64* %PC.i440
  %3241 = and i64 %3238, 4294967295
  store i64 %3241, i64* %RDX.i442, align 8
  store %struct.Memory* %loadMem_490e2d, %struct.Memory** %MEMORY
  %loadMem_490e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 11
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %RDI.i438 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 15
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %3250 to i64*
  %3251 = load i64, i64* %RBP.i439
  %3252 = sub i64 %3251, 16
  %3253 = load i64, i64* %PC.i437
  %3254 = add i64 %3253, 4
  store i64 %3254, i64* %PC.i437
  %3255 = inttoptr i64 %3252 to i64*
  %3256 = load i64, i64* %3255
  store i64 %3256, i64* %RDI.i438, align 8
  store %struct.Memory* %loadMem_490e2f, %struct.Memory** %MEMORY
  %loadMem1_490e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %PC.i436
  %3261 = add i64 %3260, -589443
  %3262 = load i64, i64* %PC.i436
  %3263 = add i64 %3262, 5
  %3264 = load i64, i64* %PC.i436
  %3265 = add i64 %3264, 5
  store i64 %3265, i64* %PC.i436
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3267 = load i64, i64* %3266, align 8
  %3268 = add i64 %3267, -8
  %3269 = inttoptr i64 %3268 to i64*
  store i64 %3263, i64* %3269
  store i64 %3268, i64* %3266, align 8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3261, i64* %3270, align 8
  store %struct.Memory* %loadMem1_490e33, %struct.Memory** %MEMORY
  %loadMem2_490e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e33 = load i64, i64* %3
  %3271 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490e33)
  store %struct.Memory* %3271, %struct.Memory** %MEMORY
  %loadMem_490e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 1
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %3277 to i32*
  %3278 = load i32, i32* %EAX.i432
  %3279 = zext i32 %3278 to i64
  %3280 = load i64, i64* %PC.i431
  %3281 = add i64 %3280, 3
  store i64 %3281, i64* %PC.i431
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3282, align 1
  %3283 = and i32 %3278, 255
  %3284 = call i32 @llvm.ctpop.i32(i32 %3283)
  %3285 = trunc i32 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = xor i8 %3286, 1
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3287, i8* %3288, align 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3289, align 1
  %3290 = icmp eq i32 %3278, 0
  %3291 = zext i1 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3291, i8* %3292, align 1
  %3293 = lshr i32 %3278, 31
  %3294 = trunc i32 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i32 %3278, 31
  %3297 = xor i32 %3293, %3296
  %3298 = add i32 %3297, %3296
  %3299 = icmp eq i32 %3298, 2
  %3300 = zext i1 %3299 to i8
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3300, i8* %3301, align 1
  store %struct.Memory* %loadMem_490e38, %struct.Memory** %MEMORY
  %loadMem_490e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 33
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %PC.i430
  %3306 = add i64 %3305, 18
  %3307 = load i64, i64* %PC.i430
  %3308 = add i64 %3307, 6
  %3309 = load i64, i64* %PC.i430
  %3310 = add i64 %3309, 6
  store i64 %3310, i64* %PC.i430
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3312 = load i8, i8* %3311, align 1
  %3313 = icmp eq i8 %3312, 0
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %BRANCH_TAKEN, align 1
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3316 = select i1 %3313, i64 %3306, i64 %3308
  store i64 %3316, i64* %3315, align 8
  store %struct.Memory* %loadMem_490e3b, %struct.Memory** %MEMORY
  %loadBr_490e3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e3b = icmp eq i8 %loadBr_490e3b, 1
  br i1 %cmpBr_490e3b, label %block_.L_490e4d, label %block_490e41

block_490e41:                                     ; preds = %block_.L_490e1e
  %loadMem_490e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 15
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RBP.i429
  %3324 = sub i64 %3323, 4
  %3325 = load i64, i64* %PC.i428
  %3326 = add i64 %3325, 7
  store i64 %3326, i64* %PC.i428
  %3327 = inttoptr i64 %3324 to i32*
  store i32 6, i32* %3327
  store %struct.Memory* %loadMem_490e41, %struct.Memory** %MEMORY
  %loadMem_490e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %PC.i427
  %3332 = add i64 %3331, 1046
  %3333 = load i64, i64* %PC.i427
  %3334 = add i64 %3333, 5
  store i64 %3334, i64* %PC.i427
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3332, i64* %3335, align 8
  store %struct.Memory* %loadMem_490e48, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490e4d:                                  ; preds = %block_.L_490e1e
  %loadMem_490e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 9
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RSI.i426 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %PC.i425
  %3343 = add i64 %3342, 10
  store i64 %3343, i64* %PC.i425
  store i64 ptrtoint (%G__0x586b24_type* @G__0x586b24 to i64), i64* %RSI.i426, align 8
  store %struct.Memory* %loadMem_490e4d, %struct.Memory** %MEMORY
  %loadMem_490e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %PC.i423
  %3351 = add i64 %3350, 5
  store i64 %3351, i64* %PC.i423
  store i64 5, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_490e57, %struct.Memory** %MEMORY
  %loadMem_490e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 1
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %3357 to i32*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 7
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %3360 to i64*
  %3361 = load i32, i32* %EAX.i421
  %3362 = zext i32 %3361 to i64
  %3363 = load i64, i64* %PC.i420
  %3364 = add i64 %3363, 2
  store i64 %3364, i64* %PC.i420
  %3365 = and i64 %3362, 4294967295
  store i64 %3365, i64* %RDX.i422, align 8
  store %struct.Memory* %loadMem_490e5c, %struct.Memory** %MEMORY
  %loadMem_490e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 11
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RDI.i418 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 15
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %RBP.i419
  %3376 = sub i64 %3375, 16
  %3377 = load i64, i64* %PC.i417
  %3378 = add i64 %3377, 4
  store i64 %3378, i64* %PC.i417
  %3379 = inttoptr i64 %3376 to i64*
  %3380 = load i64, i64* %3379
  store i64 %3380, i64* %RDI.i418, align 8
  store %struct.Memory* %loadMem_490e5e, %struct.Memory** %MEMORY
  %loadMem1_490e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %PC.i416
  %3385 = add i64 %3384, -589490
  %3386 = load i64, i64* %PC.i416
  %3387 = add i64 %3386, 5
  %3388 = load i64, i64* %PC.i416
  %3389 = add i64 %3388, 5
  store i64 %3389, i64* %PC.i416
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3391 = load i64, i64* %3390, align 8
  %3392 = add i64 %3391, -8
  %3393 = inttoptr i64 %3392 to i64*
  store i64 %3387, i64* %3393
  store i64 %3392, i64* %3390, align 8
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3385, i64* %3394, align 8
  store %struct.Memory* %loadMem1_490e62, %struct.Memory** %MEMORY
  %loadMem2_490e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e62 = load i64, i64* %3
  %3395 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490e62)
  store %struct.Memory* %3395, %struct.Memory** %MEMORY
  %loadMem_490e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %EAX.i412 = bitcast %union.anon* %3401 to i32*
  %3402 = load i32, i32* %EAX.i412
  %3403 = zext i32 %3402 to i64
  %3404 = load i64, i64* %PC.i411
  %3405 = add i64 %3404, 3
  store i64 %3405, i64* %PC.i411
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3406, align 1
  %3407 = and i32 %3402, 255
  %3408 = call i32 @llvm.ctpop.i32(i32 %3407)
  %3409 = trunc i32 %3408 to i8
  %3410 = and i8 %3409, 1
  %3411 = xor i8 %3410, 1
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3411, i8* %3412, align 1
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3413, align 1
  %3414 = icmp eq i32 %3402, 0
  %3415 = zext i1 %3414 to i8
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3415, i8* %3416, align 1
  %3417 = lshr i32 %3402, 31
  %3418 = trunc i32 %3417 to i8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3418, i8* %3419, align 1
  %3420 = lshr i32 %3402, 31
  %3421 = xor i32 %3417, %3420
  %3422 = add i32 %3421, %3420
  %3423 = icmp eq i32 %3422, 2
  %3424 = zext i1 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3424, i8* %3425, align 1
  store %struct.Memory* %loadMem_490e67, %struct.Memory** %MEMORY
  %loadMem_490e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %PC.i410
  %3430 = add i64 %3429, 18
  %3431 = load i64, i64* %PC.i410
  %3432 = add i64 %3431, 6
  %3433 = load i64, i64* %PC.i410
  %3434 = add i64 %3433, 6
  store i64 %3434, i64* %PC.i410
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3436 = load i8, i8* %3435, align 1
  %3437 = icmp eq i8 %3436, 0
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %BRANCH_TAKEN, align 1
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3440 = select i1 %3437, i64 %3430, i64 %3432
  store i64 %3440, i64* %3439, align 8
  store %struct.Memory* %loadMem_490e6a, %struct.Memory** %MEMORY
  %loadBr_490e6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e6a = icmp eq i8 %loadBr_490e6a, 1
  br i1 %cmpBr_490e6a, label %block_.L_490e7c, label %block_490e70

block_490e70:                                     ; preds = %block_.L_490e4d
  %loadMem_490e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 33
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 15
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3446 to i64*
  %3447 = load i64, i64* %RBP.i409
  %3448 = sub i64 %3447, 4
  %3449 = load i64, i64* %PC.i408
  %3450 = add i64 %3449, 7
  store i64 %3450, i64* %PC.i408
  %3451 = inttoptr i64 %3448 to i32*
  store i32 37, i32* %3451
  store %struct.Memory* %loadMem_490e70, %struct.Memory** %MEMORY
  %loadMem_490e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %PC.i407
  %3456 = add i64 %3455, 999
  %3457 = load i64, i64* %PC.i407
  %3458 = add i64 %3457, 5
  store i64 %3458, i64* %PC.i407
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3456, i64* %3459, align 8
  store %struct.Memory* %loadMem_490e77, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490e7c:                                  ; preds = %block_.L_490e4d
  %loadMem_490e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 9
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RSI.i406 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %PC.i405
  %3467 = add i64 %3466, 10
  store i64 %3467, i64* %PC.i405
  store i64 ptrtoint (%G__0x5857db_type* @G__0x5857db to i64), i64* %RSI.i406, align 8
  store %struct.Memory* %loadMem_490e7c, %struct.Memory** %MEMORY
  %loadMem_490e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %PC.i403
  %3475 = add i64 %3474, 5
  store i64 %3475, i64* %PC.i403
  store i64 5, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_490e86, %struct.Memory** %MEMORY
  %loadMem_490e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 1
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %3481 to i32*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 7
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %3484 to i64*
  %3485 = load i32, i32* %EAX.i401
  %3486 = zext i32 %3485 to i64
  %3487 = load i64, i64* %PC.i400
  %3488 = add i64 %3487, 2
  store i64 %3488, i64* %PC.i400
  %3489 = and i64 %3486, 4294967295
  store i64 %3489, i64* %RDX.i402, align 8
  store %struct.Memory* %loadMem_490e8b, %struct.Memory** %MEMORY
  %loadMem_490e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 11
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i399
  %3500 = sub i64 %3499, 16
  %3501 = load i64, i64* %PC.i397
  %3502 = add i64 %3501, 4
  store i64 %3502, i64* %PC.i397
  %3503 = inttoptr i64 %3500 to i64*
  %3504 = load i64, i64* %3503
  store i64 %3504, i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_490e8d, %struct.Memory** %MEMORY
  %loadMem1_490e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %PC.i396
  %3509 = add i64 %3508, -589537
  %3510 = load i64, i64* %PC.i396
  %3511 = add i64 %3510, 5
  %3512 = load i64, i64* %PC.i396
  %3513 = add i64 %3512, 5
  store i64 %3513, i64* %PC.i396
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3515 = load i64, i64* %3514, align 8
  %3516 = add i64 %3515, -8
  %3517 = inttoptr i64 %3516 to i64*
  store i64 %3511, i64* %3517
  store i64 %3516, i64* %3514, align 8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3509, i64* %3518, align 8
  store %struct.Memory* %loadMem1_490e91, %struct.Memory** %MEMORY
  %loadMem2_490e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e91 = load i64, i64* %3
  %3519 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490e91)
  store %struct.Memory* %3519, %struct.Memory** %MEMORY
  %loadMem_490e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 1
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %EAX.i392 = bitcast %union.anon* %3525 to i32*
  %3526 = load i32, i32* %EAX.i392
  %3527 = zext i32 %3526 to i64
  %3528 = load i64, i64* %PC.i391
  %3529 = add i64 %3528, 3
  store i64 %3529, i64* %PC.i391
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3530, align 1
  %3531 = and i32 %3526, 255
  %3532 = call i32 @llvm.ctpop.i32(i32 %3531)
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  %3535 = xor i8 %3534, 1
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3535, i8* %3536, align 1
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3537, align 1
  %3538 = icmp eq i32 %3526, 0
  %3539 = zext i1 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3539, i8* %3540, align 1
  %3541 = lshr i32 %3526, 31
  %3542 = trunc i32 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3542, i8* %3543, align 1
  %3544 = lshr i32 %3526, 31
  %3545 = xor i32 %3541, %3544
  %3546 = add i32 %3545, %3544
  %3547 = icmp eq i32 %3546, 2
  %3548 = zext i1 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3548, i8* %3549, align 1
  store %struct.Memory* %loadMem_490e96, %struct.Memory** %MEMORY
  %loadMem_490e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 33
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %PC.i390
  %3554 = add i64 %3553, 18
  %3555 = load i64, i64* %PC.i390
  %3556 = add i64 %3555, 6
  %3557 = load i64, i64* %PC.i390
  %3558 = add i64 %3557, 6
  store i64 %3558, i64* %PC.i390
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3560 = load i8, i8* %3559, align 1
  %3561 = icmp eq i8 %3560, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %BRANCH_TAKEN, align 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3564 = select i1 %3561, i64 %3554, i64 %3556
  store i64 %3564, i64* %3563, align 8
  store %struct.Memory* %loadMem_490e99, %struct.Memory** %MEMORY
  %loadBr_490e99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e99 = icmp eq i8 %loadBr_490e99, 1
  br i1 %cmpBr_490e99, label %block_.L_490eab, label %block_490e9f

block_490e9f:                                     ; preds = %block_.L_490e7c
  %loadMem_490e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 15
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %3570 to i64*
  %3571 = load i64, i64* %RBP.i389
  %3572 = sub i64 %3571, 4
  %3573 = load i64, i64* %PC.i388
  %3574 = add i64 %3573, 7
  store i64 %3574, i64* %PC.i388
  %3575 = inttoptr i64 %3572 to i32*
  store i32 38, i32* %3575
  store %struct.Memory* %loadMem_490e9f, %struct.Memory** %MEMORY
  %loadMem_490ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %PC.i387
  %3580 = add i64 %3579, 952
  %3581 = load i64, i64* %PC.i387
  %3582 = add i64 %3581, 5
  store i64 %3582, i64* %PC.i387
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3580, i64* %3583, align 8
  store %struct.Memory* %loadMem_490ea6, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490eab:                                  ; preds = %block_.L_490e7c
  %loadMem_490eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 9
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RSI.i386 = bitcast %union.anon* %3589 to i64*
  %3590 = load i64, i64* %PC.i385
  %3591 = add i64 %3590, 10
  store i64 %3591, i64* %PC.i385
  store i64 ptrtoint (%G__0x5835e4_type* @G__0x5835e4 to i64), i64* %RSI.i386, align 8
  store %struct.Memory* %loadMem_490eab, %struct.Memory** %MEMORY
  %loadMem_490eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 1
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %PC.i383
  %3599 = add i64 %3598, 5
  store i64 %3599, i64* %PC.i383
  store i64 4, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_490eb5, %struct.Memory** %MEMORY
  %loadMem_490eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 1
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %EAX.i381 = bitcast %union.anon* %3605 to i32*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 7
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %3608 to i64*
  %3609 = load i32, i32* %EAX.i381
  %3610 = zext i32 %3609 to i64
  %3611 = load i64, i64* %PC.i380
  %3612 = add i64 %3611, 2
  store i64 %3612, i64* %PC.i380
  %3613 = and i64 %3610, 4294967295
  store i64 %3613, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_490eba, %struct.Memory** %MEMORY
  %loadMem_490ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 33
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 11
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RDI.i378 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 15
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %3622 to i64*
  %3623 = load i64, i64* %RBP.i379
  %3624 = sub i64 %3623, 16
  %3625 = load i64, i64* %PC.i377
  %3626 = add i64 %3625, 4
  store i64 %3626, i64* %PC.i377
  %3627 = inttoptr i64 %3624 to i64*
  %3628 = load i64, i64* %3627
  store i64 %3628, i64* %RDI.i378, align 8
  store %struct.Memory* %loadMem_490ebc, %struct.Memory** %MEMORY
  %loadMem1_490ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %PC.i376
  %3633 = add i64 %3632, -589584
  %3634 = load i64, i64* %PC.i376
  %3635 = add i64 %3634, 5
  %3636 = load i64, i64* %PC.i376
  %3637 = add i64 %3636, 5
  store i64 %3637, i64* %PC.i376
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3639 = load i64, i64* %3638, align 8
  %3640 = add i64 %3639, -8
  %3641 = inttoptr i64 %3640 to i64*
  store i64 %3635, i64* %3641
  store i64 %3640, i64* %3638, align 8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3633, i64* %3642, align 8
  store %struct.Memory* %loadMem1_490ec0, %struct.Memory** %MEMORY
  %loadMem2_490ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ec0 = load i64, i64* %3
  %3643 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490ec0)
  store %struct.Memory* %3643, %struct.Memory** %MEMORY
  %loadMem_490ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 1
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %3649 to i32*
  %3650 = load i32, i32* %EAX.i374
  %3651 = zext i32 %3650 to i64
  %3652 = load i64, i64* %PC.i373
  %3653 = add i64 %3652, 3
  store i64 %3653, i64* %PC.i373
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3654, align 1
  %3655 = and i32 %3650, 255
  %3656 = call i32 @llvm.ctpop.i32(i32 %3655)
  %3657 = trunc i32 %3656 to i8
  %3658 = and i8 %3657, 1
  %3659 = xor i8 %3658, 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3659, i8* %3660, align 1
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3661, align 1
  %3662 = icmp eq i32 %3650, 0
  %3663 = zext i1 %3662 to i8
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3663, i8* %3664, align 1
  %3665 = lshr i32 %3650, 31
  %3666 = trunc i32 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3666, i8* %3667, align 1
  %3668 = lshr i32 %3650, 31
  %3669 = xor i32 %3665, %3668
  %3670 = add i32 %3669, %3668
  %3671 = icmp eq i32 %3670, 2
  %3672 = zext i1 %3671 to i8
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3672, i8* %3673, align 1
  store %struct.Memory* %loadMem_490ec5, %struct.Memory** %MEMORY
  %loadMem_490ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %PC.i372
  %3678 = add i64 %3677, 18
  %3679 = load i64, i64* %PC.i372
  %3680 = add i64 %3679, 6
  %3681 = load i64, i64* %PC.i372
  %3682 = add i64 %3681, 6
  store i64 %3682, i64* %PC.i372
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3684 = load i8, i8* %3683, align 1
  %3685 = icmp eq i8 %3684, 0
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %BRANCH_TAKEN, align 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3688 = select i1 %3685, i64 %3678, i64 %3680
  store i64 %3688, i64* %3687, align 8
  store %struct.Memory* %loadMem_490ec8, %struct.Memory** %MEMORY
  %loadBr_490ec8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ec8 = icmp eq i8 %loadBr_490ec8, 1
  br i1 %cmpBr_490ec8, label %block_.L_490eda, label %block_490ece

block_490ece:                                     ; preds = %block_.L_490eab
  %loadMem_490ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 15
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %3694 to i64*
  %3695 = load i64, i64* %RBP.i371
  %3696 = sub i64 %3695, 4
  %3697 = load i64, i64* %PC.i370
  %3698 = add i64 %3697, 7
  store i64 %3698, i64* %PC.i370
  %3699 = inttoptr i64 %3696 to i32*
  store i32 4, i32* %3699
  store %struct.Memory* %loadMem_490ece, %struct.Memory** %MEMORY
  %loadMem_490ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %PC.i369
  %3704 = add i64 %3703, 905
  %3705 = load i64, i64* %PC.i369
  %3706 = add i64 %3705, 5
  store i64 %3706, i64* %PC.i369
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3704, i64* %3707, align 8
  store %struct.Memory* %loadMem_490ed5, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490eda:                                  ; preds = %block_.L_490eab
  %loadMem_490eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 33
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 9
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RSI.i368 = bitcast %union.anon* %3713 to i64*
  %3714 = load i64, i64* %PC.i367
  %3715 = add i64 %3714, 10
  store i64 %3715, i64* %PC.i367
  store i64 ptrtoint (%G__0x586b2a_type* @G__0x586b2a to i64), i64* %RSI.i368, align 8
  store %struct.Memory* %loadMem_490eda, %struct.Memory** %MEMORY
  %loadMem_490ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 1
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %PC.i365
  %3723 = add i64 %3722, 5
  store i64 %3723, i64* %PC.i365
  store i64 3, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_490ee4, %struct.Memory** %MEMORY
  %loadMem_490ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 1
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %3729 to i32*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 7
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %3732 to i64*
  %3733 = load i32, i32* %EAX.i363
  %3734 = zext i32 %3733 to i64
  %3735 = load i64, i64* %PC.i362
  %3736 = add i64 %3735, 2
  store i64 %3736, i64* %PC.i362
  %3737 = and i64 %3734, 4294967295
  store i64 %3737, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_490ee9, %struct.Memory** %MEMORY
  %loadMem_490eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 11
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RDI.i360 = bitcast %union.anon* %3743 to i64*
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 15
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %RBP.i361
  %3748 = sub i64 %3747, 16
  %3749 = load i64, i64* %PC.i359
  %3750 = add i64 %3749, 4
  store i64 %3750, i64* %PC.i359
  %3751 = inttoptr i64 %3748 to i64*
  %3752 = load i64, i64* %3751
  store i64 %3752, i64* %RDI.i360, align 8
  store %struct.Memory* %loadMem_490eeb, %struct.Memory** %MEMORY
  %loadMem1_490eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 33
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3755 to i64*
  %3756 = load i64, i64* %PC.i358
  %3757 = add i64 %3756, -589631
  %3758 = load i64, i64* %PC.i358
  %3759 = add i64 %3758, 5
  %3760 = load i64, i64* %PC.i358
  %3761 = add i64 %3760, 5
  store i64 %3761, i64* %PC.i358
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3763 = load i64, i64* %3762, align 8
  %3764 = add i64 %3763, -8
  %3765 = inttoptr i64 %3764 to i64*
  store i64 %3759, i64* %3765
  store i64 %3764, i64* %3762, align 8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3757, i64* %3766, align 8
  store %struct.Memory* %loadMem1_490eef, %struct.Memory** %MEMORY
  %loadMem2_490eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490eef = load i64, i64* %3
  %3767 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490eef)
  store %struct.Memory* %3767, %struct.Memory** %MEMORY
  %loadMem_490ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 1
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %3773 to i32*
  %3774 = load i32, i32* %EAX.i354
  %3775 = zext i32 %3774 to i64
  %3776 = load i64, i64* %PC.i353
  %3777 = add i64 %3776, 3
  store i64 %3777, i64* %PC.i353
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3778, align 1
  %3779 = and i32 %3774, 255
  %3780 = call i32 @llvm.ctpop.i32(i32 %3779)
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  %3783 = xor i8 %3782, 1
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3783, i8* %3784, align 1
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3785, align 1
  %3786 = icmp eq i32 %3774, 0
  %3787 = zext i1 %3786 to i8
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3787, i8* %3788, align 1
  %3789 = lshr i32 %3774, 31
  %3790 = trunc i32 %3789 to i8
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3790, i8* %3791, align 1
  %3792 = lshr i32 %3774, 31
  %3793 = xor i32 %3789, %3792
  %3794 = add i32 %3793, %3792
  %3795 = icmp eq i32 %3794, 2
  %3796 = zext i1 %3795 to i8
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3796, i8* %3797, align 1
  store %struct.Memory* %loadMem_490ef4, %struct.Memory** %MEMORY
  %loadMem_490ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3800 to i64*
  %3801 = load i64, i64* %PC.i352
  %3802 = add i64 %3801, 18
  %3803 = load i64, i64* %PC.i352
  %3804 = add i64 %3803, 6
  %3805 = load i64, i64* %PC.i352
  %3806 = add i64 %3805, 6
  store i64 %3806, i64* %PC.i352
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3808 = load i8, i8* %3807, align 1
  %3809 = icmp eq i8 %3808, 0
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %BRANCH_TAKEN, align 1
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3812 = select i1 %3809, i64 %3802, i64 %3804
  store i64 %3812, i64* %3811, align 8
  store %struct.Memory* %loadMem_490ef7, %struct.Memory** %MEMORY
  %loadBr_490ef7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ef7 = icmp eq i8 %loadBr_490ef7, 1
  br i1 %cmpBr_490ef7, label %block_.L_490f09, label %block_490efd

block_490efd:                                     ; preds = %block_.L_490eda
  %loadMem_490efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RBP.i351
  %3820 = sub i64 %3819, 4
  %3821 = load i64, i64* %PC.i350
  %3822 = add i64 %3821, 7
  store i64 %3822, i64* %PC.i350
  %3823 = inttoptr i64 %3820 to i32*
  store i32 33, i32* %3823
  store %struct.Memory* %loadMem_490efd, %struct.Memory** %MEMORY
  %loadMem_490f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3826 to i64*
  %3827 = load i64, i64* %PC.i349
  %3828 = add i64 %3827, 858
  %3829 = load i64, i64* %PC.i349
  %3830 = add i64 %3829, 5
  store i64 %3830, i64* %PC.i349
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3828, i64* %3831, align 8
  store %struct.Memory* %loadMem_490f04, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490f09:                                  ; preds = %block_.L_490eda
  %loadMem_490f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 9
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RSI.i348 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %PC.i347
  %3839 = add i64 %3838, 10
  store i64 %3839, i64* %PC.i347
  store i64 ptrtoint (%G__0x586b2f_type* @G__0x586b2f to i64), i64* %RSI.i348, align 8
  store %struct.Memory* %loadMem_490f09, %struct.Memory** %MEMORY
  %loadMem_490f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 33
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3842 to i64*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 1
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %3845 to i64*
  %3846 = load i64, i64* %PC.i345
  %3847 = add i64 %3846, 5
  store i64 %3847, i64* %PC.i345
  store i64 3, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_490f13, %struct.Memory** %MEMORY
  %loadMem_490f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 1
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %3853 to i32*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 7
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %3856 to i64*
  %3857 = load i32, i32* %EAX.i343
  %3858 = zext i32 %3857 to i64
  %3859 = load i64, i64* %PC.i342
  %3860 = add i64 %3859, 2
  store i64 %3860, i64* %PC.i342
  %3861 = and i64 %3858, 4294967295
  store i64 %3861, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_490f18, %struct.Memory** %MEMORY
  %loadMem_490f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 11
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RDI.i340 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 15
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %RBP.i341
  %3872 = sub i64 %3871, 16
  %3873 = load i64, i64* %PC.i339
  %3874 = add i64 %3873, 4
  store i64 %3874, i64* %PC.i339
  %3875 = inttoptr i64 %3872 to i64*
  %3876 = load i64, i64* %3875
  store i64 %3876, i64* %RDI.i340, align 8
  store %struct.Memory* %loadMem_490f1a, %struct.Memory** %MEMORY
  %loadMem1_490f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3879 to i64*
  %3880 = load i64, i64* %PC.i338
  %3881 = add i64 %3880, -589678
  %3882 = load i64, i64* %PC.i338
  %3883 = add i64 %3882, 5
  %3884 = load i64, i64* %PC.i338
  %3885 = add i64 %3884, 5
  store i64 %3885, i64* %PC.i338
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3887 = load i64, i64* %3886, align 8
  %3888 = add i64 %3887, -8
  %3889 = inttoptr i64 %3888 to i64*
  store i64 %3883, i64* %3889
  store i64 %3888, i64* %3886, align 8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3881, i64* %3890, align 8
  store %struct.Memory* %loadMem1_490f1e, %struct.Memory** %MEMORY
  %loadMem2_490f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490f1e = load i64, i64* %3
  %3891 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490f1e)
  store %struct.Memory* %3891, %struct.Memory** %MEMORY
  %loadMem_490f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 1
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %3897 to i32*
  %3898 = load i32, i32* %EAX.i336
  %3899 = zext i32 %3898 to i64
  %3900 = load i64, i64* %PC.i335
  %3901 = add i64 %3900, 3
  store i64 %3901, i64* %PC.i335
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3902, align 1
  %3903 = and i32 %3898, 255
  %3904 = call i32 @llvm.ctpop.i32(i32 %3903)
  %3905 = trunc i32 %3904 to i8
  %3906 = and i8 %3905, 1
  %3907 = xor i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3907, i8* %3908, align 1
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3909, align 1
  %3910 = icmp eq i32 %3898, 0
  %3911 = zext i1 %3910 to i8
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3911, i8* %3912, align 1
  %3913 = lshr i32 %3898, 31
  %3914 = trunc i32 %3913 to i8
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3914, i8* %3915, align 1
  %3916 = lshr i32 %3898, 31
  %3917 = xor i32 %3913, %3916
  %3918 = add i32 %3917, %3916
  %3919 = icmp eq i32 %3918, 2
  %3920 = zext i1 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3920, i8* %3921, align 1
  store %struct.Memory* %loadMem_490f23, %struct.Memory** %MEMORY
  %loadMem_490f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 33
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3924 to i64*
  %3925 = load i64, i64* %PC.i334
  %3926 = add i64 %3925, 18
  %3927 = load i64, i64* %PC.i334
  %3928 = add i64 %3927, 6
  %3929 = load i64, i64* %PC.i334
  %3930 = add i64 %3929, 6
  store i64 %3930, i64* %PC.i334
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3932 = load i8, i8* %3931, align 1
  %3933 = icmp eq i8 %3932, 0
  %3934 = zext i1 %3933 to i8
  store i8 %3934, i8* %BRANCH_TAKEN, align 1
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3936 = select i1 %3933, i64 %3926, i64 %3928
  store i64 %3936, i64* %3935, align 8
  store %struct.Memory* %loadMem_490f26, %struct.Memory** %MEMORY
  %loadBr_490f26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f26 = icmp eq i8 %loadBr_490f26, 1
  br i1 %cmpBr_490f26, label %block_.L_490f38, label %block_490f2c

block_490f2c:                                     ; preds = %block_.L_490f09
  %loadMem_490f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 33
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 15
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %RBP.i333
  %3944 = sub i64 %3943, 4
  %3945 = load i64, i64* %PC.i332
  %3946 = add i64 %3945, 7
  store i64 %3946, i64* %PC.i332
  %3947 = inttoptr i64 %3944 to i32*
  store i32 34, i32* %3947
  store %struct.Memory* %loadMem_490f2c, %struct.Memory** %MEMORY
  %loadMem_490f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %PC.i331
  %3952 = add i64 %3951, 811
  %3953 = load i64, i64* %PC.i331
  %3954 = add i64 %3953, 5
  store i64 %3954, i64* %PC.i331
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3952, i64* %3955, align 8
  store %struct.Memory* %loadMem_490f33, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490f38:                                  ; preds = %block_.L_490f09
  %loadMem_490f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 9
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RSI.i330 = bitcast %union.anon* %3961 to i64*
  %3962 = load i64, i64* %PC.i329
  %3963 = add i64 %3962, 10
  store i64 %3963, i64* %PC.i329
  store i64 ptrtoint (%G__0x57a763_type* @G__0x57a763 to i64), i64* %RSI.i330, align 8
  store %struct.Memory* %loadMem_490f38, %struct.Memory** %MEMORY
  %loadMem_490f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %3969 to i64*
  %3970 = load i64, i64* %PC.i327
  %3971 = add i64 %3970, 5
  store i64 %3971, i64* %PC.i327
  store i64 3, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_490f42, %struct.Memory** %MEMORY
  %loadMem_490f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 1
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %EAX.i325 = bitcast %union.anon* %3977 to i32*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 7
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RDX.i326 = bitcast %union.anon* %3980 to i64*
  %3981 = load i32, i32* %EAX.i325
  %3982 = zext i32 %3981 to i64
  %3983 = load i64, i64* %PC.i324
  %3984 = add i64 %3983, 2
  store i64 %3984, i64* %PC.i324
  %3985 = and i64 %3982, 4294967295
  store i64 %3985, i64* %RDX.i326, align 8
  store %struct.Memory* %loadMem_490f47, %struct.Memory** %MEMORY
  %loadMem_490f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 11
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 15
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %RBP.i323
  %3996 = sub i64 %3995, 16
  %3997 = load i64, i64* %PC.i321
  %3998 = add i64 %3997, 4
  store i64 %3998, i64* %PC.i321
  %3999 = inttoptr i64 %3996 to i64*
  %4000 = load i64, i64* %3999
  store i64 %4000, i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_490f49, %struct.Memory** %MEMORY
  %loadMem1_490f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4003 to i64*
  %4004 = load i64, i64* %PC.i320
  %4005 = add i64 %4004, -589725
  %4006 = load i64, i64* %PC.i320
  %4007 = add i64 %4006, 5
  %4008 = load i64, i64* %PC.i320
  %4009 = add i64 %4008, 5
  store i64 %4009, i64* %PC.i320
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4011 = load i64, i64* %4010, align 8
  %4012 = add i64 %4011, -8
  %4013 = inttoptr i64 %4012 to i64*
  store i64 %4007, i64* %4013
  store i64 %4012, i64* %4010, align 8
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4005, i64* %4014, align 8
  store %struct.Memory* %loadMem1_490f4d, %struct.Memory** %MEMORY
  %loadMem2_490f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490f4d = load i64, i64* %3
  %4015 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490f4d)
  store %struct.Memory* %4015, %struct.Memory** %MEMORY
  %loadMem_490f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 33
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 1
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %4021 to i32*
  %4022 = load i32, i32* %EAX.i317
  %4023 = zext i32 %4022 to i64
  %4024 = load i64, i64* %PC.i316
  %4025 = add i64 %4024, 3
  store i64 %4025, i64* %PC.i316
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4026, align 1
  %4027 = and i32 %4022, 255
  %4028 = call i32 @llvm.ctpop.i32(i32 %4027)
  %4029 = trunc i32 %4028 to i8
  %4030 = and i8 %4029, 1
  %4031 = xor i8 %4030, 1
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4031, i8* %4032, align 1
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4033, align 1
  %4034 = icmp eq i32 %4022, 0
  %4035 = zext i1 %4034 to i8
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4035, i8* %4036, align 1
  %4037 = lshr i32 %4022, 31
  %4038 = trunc i32 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4038, i8* %4039, align 1
  %4040 = lshr i32 %4022, 31
  %4041 = xor i32 %4037, %4040
  %4042 = add i32 %4041, %4040
  %4043 = icmp eq i32 %4042, 2
  %4044 = zext i1 %4043 to i8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4044, i8* %4045, align 1
  store %struct.Memory* %loadMem_490f52, %struct.Memory** %MEMORY
  %loadMem_490f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4048 to i64*
  %4049 = load i64, i64* %PC.i315
  %4050 = add i64 %4049, 18
  %4051 = load i64, i64* %PC.i315
  %4052 = add i64 %4051, 6
  %4053 = load i64, i64* %PC.i315
  %4054 = add i64 %4053, 6
  store i64 %4054, i64* %PC.i315
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4056 = load i8, i8* %4055, align 1
  %4057 = icmp eq i8 %4056, 0
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %BRANCH_TAKEN, align 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4060 = select i1 %4057, i64 %4050, i64 %4052
  store i64 %4060, i64* %4059, align 8
  store %struct.Memory* %loadMem_490f55, %struct.Memory** %MEMORY
  %loadBr_490f55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f55 = icmp eq i8 %loadBr_490f55, 1
  br i1 %cmpBr_490f55, label %block_.L_490f67, label %block_490f5b

block_490f5b:                                     ; preds = %block_.L_490f38
  %loadMem_490f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 15
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %RBP.i314
  %4068 = sub i64 %4067, 4
  %4069 = load i64, i64* %PC.i313
  %4070 = add i64 %4069, 7
  store i64 %4070, i64* %PC.i313
  %4071 = inttoptr i64 %4068 to i32*
  store i32 0, i32* %4071
  store %struct.Memory* %loadMem_490f5b, %struct.Memory** %MEMORY
  %loadMem_490f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 33
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4074 to i64*
  %4075 = load i64, i64* %PC.i312
  %4076 = add i64 %4075, 764
  %4077 = load i64, i64* %PC.i312
  %4078 = add i64 %4077, 5
  store i64 %4078, i64* %PC.i312
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4076, i64* %4079, align 8
  store %struct.Memory* %loadMem_490f62, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490f67:                                  ; preds = %block_.L_490f38
  %loadMem_490f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 9
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RSI.i311 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %PC.i310
  %4087 = add i64 %4086, 10
  store i64 %4087, i64* %PC.i310
  store i64 ptrtoint (%G__0x57f610_type* @G__0x57f610 to i64), i64* %RSI.i311, align 8
  store %struct.Memory* %loadMem_490f67, %struct.Memory** %MEMORY
  %loadMem_490f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 33
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 1
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %PC.i308
  %4095 = add i64 %4094, 5
  store i64 %4095, i64* %PC.i308
  store i64 3, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_490f71, %struct.Memory** %MEMORY
  %loadMem_490f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 33
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4098 to i64*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 1
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %4101 to i32*
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 7
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %RDX.i307 = bitcast %union.anon* %4104 to i64*
  %4105 = load i32, i32* %EAX.i306
  %4106 = zext i32 %4105 to i64
  %4107 = load i64, i64* %PC.i305
  %4108 = add i64 %4107, 2
  store i64 %4108, i64* %PC.i305
  %4109 = and i64 %4106, 4294967295
  store i64 %4109, i64* %RDX.i307, align 8
  store %struct.Memory* %loadMem_490f76, %struct.Memory** %MEMORY
  %loadMem_490f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 11
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 15
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4118 to i64*
  %4119 = load i64, i64* %RBP.i304
  %4120 = sub i64 %4119, 16
  %4121 = load i64, i64* %PC.i302
  %4122 = add i64 %4121, 4
  store i64 %4122, i64* %PC.i302
  %4123 = inttoptr i64 %4120 to i64*
  %4124 = load i64, i64* %4123
  store i64 %4124, i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_490f78, %struct.Memory** %MEMORY
  %loadMem1_490f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4127 to i64*
  %4128 = load i64, i64* %PC.i301
  %4129 = add i64 %4128, -589772
  %4130 = load i64, i64* %PC.i301
  %4131 = add i64 %4130, 5
  %4132 = load i64, i64* %PC.i301
  %4133 = add i64 %4132, 5
  store i64 %4133, i64* %PC.i301
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4135 = load i64, i64* %4134, align 8
  %4136 = add i64 %4135, -8
  %4137 = inttoptr i64 %4136 to i64*
  store i64 %4131, i64* %4137
  store i64 %4136, i64* %4134, align 8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4129, i64* %4138, align 8
  store %struct.Memory* %loadMem1_490f7c, %struct.Memory** %MEMORY
  %loadMem2_490f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490f7c = load i64, i64* %3
  %4139 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490f7c)
  store %struct.Memory* %4139, %struct.Memory** %MEMORY
  %loadMem_490f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 33
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 1
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %EAX.i297 = bitcast %union.anon* %4145 to i32*
  %4146 = load i32, i32* %EAX.i297
  %4147 = zext i32 %4146 to i64
  %4148 = load i64, i64* %PC.i296
  %4149 = add i64 %4148, 3
  store i64 %4149, i64* %PC.i296
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4150, align 1
  %4151 = and i32 %4146, 255
  %4152 = call i32 @llvm.ctpop.i32(i32 %4151)
  %4153 = trunc i32 %4152 to i8
  %4154 = and i8 %4153, 1
  %4155 = xor i8 %4154, 1
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4155, i8* %4156, align 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4157, align 1
  %4158 = icmp eq i32 %4146, 0
  %4159 = zext i1 %4158 to i8
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4159, i8* %4160, align 1
  %4161 = lshr i32 %4146, 31
  %4162 = trunc i32 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4162, i8* %4163, align 1
  %4164 = lshr i32 %4146, 31
  %4165 = xor i32 %4161, %4164
  %4166 = add i32 %4165, %4164
  %4167 = icmp eq i32 %4166, 2
  %4168 = zext i1 %4167 to i8
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4168, i8* %4169, align 1
  store %struct.Memory* %loadMem_490f81, %struct.Memory** %MEMORY
  %loadMem_490f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4172 to i64*
  %4173 = load i64, i64* %PC.i295
  %4174 = add i64 %4173, 18
  %4175 = load i64, i64* %PC.i295
  %4176 = add i64 %4175, 6
  %4177 = load i64, i64* %PC.i295
  %4178 = add i64 %4177, 6
  store i64 %4178, i64* %PC.i295
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4180 = load i8, i8* %4179, align 1
  %4181 = icmp eq i8 %4180, 0
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %BRANCH_TAKEN, align 1
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4184 = select i1 %4181, i64 %4174, i64 %4176
  store i64 %4184, i64* %4183, align 8
  store %struct.Memory* %loadMem_490f84, %struct.Memory** %MEMORY
  %loadBr_490f84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f84 = icmp eq i8 %loadBr_490f84, 1
  br i1 %cmpBr_490f84, label %block_.L_490f96, label %block_490f8a

block_490f8a:                                     ; preds = %block_.L_490f67
  %loadMem_490f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 33
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4187 to i64*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 15
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %4190 to i64*
  %4191 = load i64, i64* %RBP.i294
  %4192 = sub i64 %4191, 4
  %4193 = load i64, i64* %PC.i293
  %4194 = add i64 %4193, 7
  store i64 %4194, i64* %PC.i293
  %4195 = inttoptr i64 %4192 to i32*
  store i32 5, i32* %4195
  store %struct.Memory* %loadMem_490f8a, %struct.Memory** %MEMORY
  %loadMem_490f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4198 to i64*
  %4199 = load i64, i64* %PC.i292
  %4200 = add i64 %4199, 717
  %4201 = load i64, i64* %PC.i292
  %4202 = add i64 %4201, 5
  store i64 %4202, i64* %PC.i292
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4200, i64* %4203, align 8
  store %struct.Memory* %loadMem_490f91, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490f96:                                  ; preds = %block_.L_490f67
  %loadMem_490f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 9
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RSI.i291 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %PC.i290
  %4211 = add i64 %4210, 10
  store i64 %4211, i64* %PC.i290
  store i64 ptrtoint (%G__0x58730e_type* @G__0x58730e to i64), i64* %RSI.i291, align 8
  store %struct.Memory* %loadMem_490f96, %struct.Memory** %MEMORY
  %loadMem_490fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 1
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %4217 to i64*
  %4218 = load i64, i64* %PC.i288
  %4219 = add i64 %4218, 5
  store i64 %4219, i64* %PC.i288
  store i64 3, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_490fa0, %struct.Memory** %MEMORY
  %loadMem_490fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 1
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %4225 to i32*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 7
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RDX.i287 = bitcast %union.anon* %4228 to i64*
  %4229 = load i32, i32* %EAX.i286
  %4230 = zext i32 %4229 to i64
  %4231 = load i64, i64* %PC.i285
  %4232 = add i64 %4231, 2
  store i64 %4232, i64* %PC.i285
  %4233 = and i64 %4230, 4294967295
  store i64 %4233, i64* %RDX.i287, align 8
  store %struct.Memory* %loadMem_490fa5, %struct.Memory** %MEMORY
  %loadMem_490fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4236 to i64*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 11
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RDI.i283 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 15
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %4242 to i64*
  %4243 = load i64, i64* %RBP.i284
  %4244 = sub i64 %4243, 16
  %4245 = load i64, i64* %PC.i282
  %4246 = add i64 %4245, 4
  store i64 %4246, i64* %PC.i282
  %4247 = inttoptr i64 %4244 to i64*
  %4248 = load i64, i64* %4247
  store i64 %4248, i64* %RDI.i283, align 8
  store %struct.Memory* %loadMem_490fa7, %struct.Memory** %MEMORY
  %loadMem1_490fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 33
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %PC.i281
  %4253 = add i64 %4252, -589819
  %4254 = load i64, i64* %PC.i281
  %4255 = add i64 %4254, 5
  %4256 = load i64, i64* %PC.i281
  %4257 = add i64 %4256, 5
  store i64 %4257, i64* %PC.i281
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4259 = load i64, i64* %4258, align 8
  %4260 = add i64 %4259, -8
  %4261 = inttoptr i64 %4260 to i64*
  store i64 %4255, i64* %4261
  store i64 %4260, i64* %4258, align 8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4253, i64* %4262, align 8
  store %struct.Memory* %loadMem1_490fab, %struct.Memory** %MEMORY
  %loadMem2_490fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490fab = load i64, i64* %3
  %4263 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490fab)
  store %struct.Memory* %4263, %struct.Memory** %MEMORY
  %loadMem_490fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 1
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %4269 to i32*
  %4270 = load i32, i32* %EAX.i277
  %4271 = zext i32 %4270 to i64
  %4272 = load i64, i64* %PC.i276
  %4273 = add i64 %4272, 3
  store i64 %4273, i64* %PC.i276
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4274, align 1
  %4275 = and i32 %4270, 255
  %4276 = call i32 @llvm.ctpop.i32(i32 %4275)
  %4277 = trunc i32 %4276 to i8
  %4278 = and i8 %4277, 1
  %4279 = xor i8 %4278, 1
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4279, i8* %4280, align 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4281, align 1
  %4282 = icmp eq i32 %4270, 0
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4283, i8* %4284, align 1
  %4285 = lshr i32 %4270, 31
  %4286 = trunc i32 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4286, i8* %4287, align 1
  %4288 = lshr i32 %4270, 31
  %4289 = xor i32 %4285, %4288
  %4290 = add i32 %4289, %4288
  %4291 = icmp eq i32 %4290, 2
  %4292 = zext i1 %4291 to i8
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4292, i8* %4293, align 1
  store %struct.Memory* %loadMem_490fb0, %struct.Memory** %MEMORY
  %loadMem_490fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4296 to i64*
  %4297 = load i64, i64* %PC.i275
  %4298 = add i64 %4297, 18
  %4299 = load i64, i64* %PC.i275
  %4300 = add i64 %4299, 6
  %4301 = load i64, i64* %PC.i275
  %4302 = add i64 %4301, 6
  store i64 %4302, i64* %PC.i275
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4304 = load i8, i8* %4303, align 1
  %4305 = icmp eq i8 %4304, 0
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %BRANCH_TAKEN, align 1
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4308 = select i1 %4305, i64 %4298, i64 %4300
  store i64 %4308, i64* %4307, align 8
  store %struct.Memory* %loadMem_490fb3, %struct.Memory** %MEMORY
  %loadBr_490fb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490fb3 = icmp eq i8 %loadBr_490fb3, 1
  br i1 %cmpBr_490fb3, label %block_.L_490fc5, label %block_490fb9

block_490fb9:                                     ; preds = %block_.L_490f96
  %loadMem_490fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 15
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %4314 to i64*
  %4315 = load i64, i64* %RBP.i274
  %4316 = sub i64 %4315, 4
  %4317 = load i64, i64* %PC.i273
  %4318 = add i64 %4317, 7
  store i64 %4318, i64* %PC.i273
  %4319 = inttoptr i64 %4316 to i32*
  store i32 19, i32* %4319
  store %struct.Memory* %loadMem_490fb9, %struct.Memory** %MEMORY
  %loadMem_490fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %PC.i272
  %4324 = add i64 %4323, 670
  %4325 = load i64, i64* %PC.i272
  %4326 = add i64 %4325, 5
  store i64 %4326, i64* %PC.i272
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4324, i64* %4327, align 8
  store %struct.Memory* %loadMem_490fc0, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490fc5:                                  ; preds = %block_.L_490f96
  %loadMem_490fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 9
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %PC.i270
  %4335 = add i64 %4334, 10
  store i64 %4335, i64* %PC.i270
  store i64 ptrtoint (%G__0x586b34_type* @G__0x586b34 to i64), i64* %RSI.i271, align 8
  store %struct.Memory* %loadMem_490fc5, %struct.Memory** %MEMORY
  %loadMem_490fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 1
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %PC.i268
  %4343 = add i64 %4342, 5
  store i64 %4343, i64* %PC.i268
  store i64 3, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_490fcf, %struct.Memory** %MEMORY
  %loadMem_490fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 1
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %4349 to i32*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 7
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %4352 to i64*
  %4353 = load i32, i32* %EAX.i266
  %4354 = zext i32 %4353 to i64
  %4355 = load i64, i64* %PC.i265
  %4356 = add i64 %4355, 2
  store i64 %4356, i64* %PC.i265
  %4357 = and i64 %4354, 4294967295
  store i64 %4357, i64* %RDX.i267, align 8
  store %struct.Memory* %loadMem_490fd4, %struct.Memory** %MEMORY
  %loadMem_490fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 11
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RDI.i263 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 15
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %4366 to i64*
  %4367 = load i64, i64* %RBP.i264
  %4368 = sub i64 %4367, 16
  %4369 = load i64, i64* %PC.i262
  %4370 = add i64 %4369, 4
  store i64 %4370, i64* %PC.i262
  %4371 = inttoptr i64 %4368 to i64*
  %4372 = load i64, i64* %4371
  store i64 %4372, i64* %RDI.i263, align 8
  store %struct.Memory* %loadMem_490fd6, %struct.Memory** %MEMORY
  %loadMem1_490fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4375 to i64*
  %4376 = load i64, i64* %PC.i261
  %4377 = add i64 %4376, -589866
  %4378 = load i64, i64* %PC.i261
  %4379 = add i64 %4378, 5
  %4380 = load i64, i64* %PC.i261
  %4381 = add i64 %4380, 5
  store i64 %4381, i64* %PC.i261
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4383 = load i64, i64* %4382, align 8
  %4384 = add i64 %4383, -8
  %4385 = inttoptr i64 %4384 to i64*
  store i64 %4379, i64* %4385
  store i64 %4384, i64* %4382, align 8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4377, i64* %4386, align 8
  store %struct.Memory* %loadMem1_490fda, %struct.Memory** %MEMORY
  %loadMem2_490fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490fda = load i64, i64* %3
  %4387 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_490fda)
  store %struct.Memory* %4387, %struct.Memory** %MEMORY
  %loadMem_490fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 1
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %4393 to i32*
  %4394 = load i32, i32* %EAX.i258
  %4395 = zext i32 %4394 to i64
  %4396 = load i64, i64* %PC.i257
  %4397 = add i64 %4396, 3
  store i64 %4397, i64* %PC.i257
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4398, align 1
  %4399 = and i32 %4394, 255
  %4400 = call i32 @llvm.ctpop.i32(i32 %4399)
  %4401 = trunc i32 %4400 to i8
  %4402 = and i8 %4401, 1
  %4403 = xor i8 %4402, 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4403, i8* %4404, align 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4405, align 1
  %4406 = icmp eq i32 %4394, 0
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4407, i8* %4408, align 1
  %4409 = lshr i32 %4394, 31
  %4410 = trunc i32 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4410, i8* %4411, align 1
  %4412 = lshr i32 %4394, 31
  %4413 = xor i32 %4409, %4412
  %4414 = add i32 %4413, %4412
  %4415 = icmp eq i32 %4414, 2
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4416, i8* %4417, align 1
  store %struct.Memory* %loadMem_490fdf, %struct.Memory** %MEMORY
  %loadMem_490fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 33
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4420 to i64*
  %4421 = load i64, i64* %PC.i256
  %4422 = add i64 %4421, 18
  %4423 = load i64, i64* %PC.i256
  %4424 = add i64 %4423, 6
  %4425 = load i64, i64* %PC.i256
  %4426 = add i64 %4425, 6
  store i64 %4426, i64* %PC.i256
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4428 = load i8, i8* %4427, align 1
  %4429 = icmp eq i8 %4428, 0
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %BRANCH_TAKEN, align 1
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4432 = select i1 %4429, i64 %4422, i64 %4424
  store i64 %4432, i64* %4431, align 8
  store %struct.Memory* %loadMem_490fe2, %struct.Memory** %MEMORY
  %loadBr_490fe2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490fe2 = icmp eq i8 %loadBr_490fe2, 1
  br i1 %cmpBr_490fe2, label %block_.L_490ff4, label %block_490fe8

block_490fe8:                                     ; preds = %block_.L_490fc5
  %loadMem_490fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 15
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %RBP.i255
  %4440 = sub i64 %4439, 4
  %4441 = load i64, i64* %PC.i254
  %4442 = add i64 %4441, 7
  store i64 %4442, i64* %PC.i254
  %4443 = inttoptr i64 %4440 to i32*
  store i32 20, i32* %4443
  store %struct.Memory* %loadMem_490fe8, %struct.Memory** %MEMORY
  %loadMem_490fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %PC.i253
  %4448 = add i64 %4447, 623
  %4449 = load i64, i64* %PC.i253
  %4450 = add i64 %4449, 5
  store i64 %4450, i64* %PC.i253
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4448, i64* %4451, align 8
  store %struct.Memory* %loadMem_490fef, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_490ff4:                                  ; preds = %block_.L_490fc5
  %loadMem_490ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 9
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RSI.i252 = bitcast %union.anon* %4457 to i64*
  %4458 = load i64, i64* %PC.i251
  %4459 = add i64 %4458, 10
  store i64 %4459, i64* %PC.i251
  store i64 ptrtoint (%G__0x57c0a9_type* @G__0x57c0a9 to i64), i64* %RSI.i252, align 8
  store %struct.Memory* %loadMem_490ff4, %struct.Memory** %MEMORY
  %loadMem_490ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 1
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %PC.i249
  %4467 = add i64 %4466, 5
  store i64 %4467, i64* %PC.i249
  store i64 3, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_490ffe, %struct.Memory** %MEMORY
  %loadMem_491003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 33
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 1
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %4473 to i32*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 7
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %4476 to i64*
  %4477 = load i32, i32* %EAX.i247
  %4478 = zext i32 %4477 to i64
  %4479 = load i64, i64* %PC.i246
  %4480 = add i64 %4479, 2
  store i64 %4480, i64* %PC.i246
  %4481 = and i64 %4478, 4294967295
  store i64 %4481, i64* %RDX.i248, align 8
  store %struct.Memory* %loadMem_491003, %struct.Memory** %MEMORY
  %loadMem_491005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 11
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RDI.i244 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 15
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %4490 to i64*
  %4491 = load i64, i64* %RBP.i245
  %4492 = sub i64 %4491, 16
  %4493 = load i64, i64* %PC.i243
  %4494 = add i64 %4493, 4
  store i64 %4494, i64* %PC.i243
  %4495 = inttoptr i64 %4492 to i64*
  %4496 = load i64, i64* %4495
  store i64 %4496, i64* %RDI.i244, align 8
  store %struct.Memory* %loadMem_491005, %struct.Memory** %MEMORY
  %loadMem1_491009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %PC.i242
  %4501 = add i64 %4500, -589913
  %4502 = load i64, i64* %PC.i242
  %4503 = add i64 %4502, 5
  %4504 = load i64, i64* %PC.i242
  %4505 = add i64 %4504, 5
  store i64 %4505, i64* %PC.i242
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4507 = load i64, i64* %4506, align 8
  %4508 = add i64 %4507, -8
  %4509 = inttoptr i64 %4508 to i64*
  store i64 %4503, i64* %4509
  store i64 %4508, i64* %4506, align 8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4501, i64* %4510, align 8
  store %struct.Memory* %loadMem1_491009, %struct.Memory** %MEMORY
  %loadMem2_491009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491009 = load i64, i64* %3
  %4511 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491009)
  store %struct.Memory* %4511, %struct.Memory** %MEMORY
  %loadMem_49100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 33
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 1
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %4517 to i32*
  %4518 = load i32, i32* %EAX.i240
  %4519 = zext i32 %4518 to i64
  %4520 = load i64, i64* %PC.i239
  %4521 = add i64 %4520, 3
  store i64 %4521, i64* %PC.i239
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4522, align 1
  %4523 = and i32 %4518, 255
  %4524 = call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4527, i8* %4528, align 1
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4529, align 1
  %4530 = icmp eq i32 %4518, 0
  %4531 = zext i1 %4530 to i8
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4531, i8* %4532, align 1
  %4533 = lshr i32 %4518, 31
  %4534 = trunc i32 %4533 to i8
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4534, i8* %4535, align 1
  %4536 = lshr i32 %4518, 31
  %4537 = xor i32 %4533, %4536
  %4538 = add i32 %4537, %4536
  %4539 = icmp eq i32 %4538, 2
  %4540 = zext i1 %4539 to i8
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4540, i8* %4541, align 1
  store %struct.Memory* %loadMem_49100e, %struct.Memory** %MEMORY
  %loadMem_491011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 33
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4544 to i64*
  %4545 = load i64, i64* %PC.i238
  %4546 = add i64 %4545, 18
  %4547 = load i64, i64* %PC.i238
  %4548 = add i64 %4547, 6
  %4549 = load i64, i64* %PC.i238
  %4550 = add i64 %4549, 6
  store i64 %4550, i64* %PC.i238
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4552 = load i8, i8* %4551, align 1
  %4553 = icmp eq i8 %4552, 0
  %4554 = zext i1 %4553 to i8
  store i8 %4554, i8* %BRANCH_TAKEN, align 1
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4556 = select i1 %4553, i64 %4546, i64 %4548
  store i64 %4556, i64* %4555, align 8
  store %struct.Memory* %loadMem_491011, %struct.Memory** %MEMORY
  %loadBr_491011 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491011 = icmp eq i8 %loadBr_491011, 1
  br i1 %cmpBr_491011, label %block_.L_491023, label %block_491017

block_491017:                                     ; preds = %block_.L_490ff4
  %loadMem_491017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 33
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 15
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RBP.i237
  %4564 = sub i64 %4563, 4
  %4565 = load i64, i64* %PC.i236
  %4566 = add i64 %4565, 7
  store i64 %4566, i64* %PC.i236
  %4567 = inttoptr i64 %4564 to i32*
  store i32 21, i32* %4567
  store %struct.Memory* %loadMem_491017, %struct.Memory** %MEMORY
  %loadMem_49101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4570 to i64*
  %4571 = load i64, i64* %PC.i235
  %4572 = add i64 %4571, 576
  %4573 = load i64, i64* %PC.i235
  %4574 = add i64 %4573, 5
  store i64 %4574, i64* %PC.i235
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4572, i64* %4575, align 8
  store %struct.Memory* %loadMem_49101e, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_491023:                                  ; preds = %block_.L_490ff4
  %loadMem_491023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 9
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %RSI.i234 = bitcast %union.anon* %4581 to i64*
  %4582 = load i64, i64* %PC.i233
  %4583 = add i64 %4582, 10
  store i64 %4583, i64* %PC.i233
  store i64 ptrtoint (%G__0x57b705_type* @G__0x57b705 to i64), i64* %RSI.i234, align 8
  store %struct.Memory* %loadMem_491023, %struct.Memory** %MEMORY
  %loadMem_49102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 1
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %PC.i231
  %4591 = add i64 %4590, 5
  store i64 %4591, i64* %PC.i231
  store i64 3, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_49102d, %struct.Memory** %MEMORY
  %loadMem_491032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 1
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %4597 to i32*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 7
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %4600 to i64*
  %4601 = load i32, i32* %EAX.i229
  %4602 = zext i32 %4601 to i64
  %4603 = load i64, i64* %PC.i228
  %4604 = add i64 %4603, 2
  store i64 %4604, i64* %PC.i228
  %4605 = and i64 %4602, 4294967295
  store i64 %4605, i64* %RDX.i230, align 8
  store %struct.Memory* %loadMem_491032, %struct.Memory** %MEMORY
  %loadMem_491034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 33
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4608 to i64*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 11
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RDI.i226 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 15
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4614 to i64*
  %4615 = load i64, i64* %RBP.i227
  %4616 = sub i64 %4615, 16
  %4617 = load i64, i64* %PC.i225
  %4618 = add i64 %4617, 4
  store i64 %4618, i64* %PC.i225
  %4619 = inttoptr i64 %4616 to i64*
  %4620 = load i64, i64* %4619
  store i64 %4620, i64* %RDI.i226, align 8
  store %struct.Memory* %loadMem_491034, %struct.Memory** %MEMORY
  %loadMem1_491038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %PC.i224
  %4625 = add i64 %4624, -589960
  %4626 = load i64, i64* %PC.i224
  %4627 = add i64 %4626, 5
  %4628 = load i64, i64* %PC.i224
  %4629 = add i64 %4628, 5
  store i64 %4629, i64* %PC.i224
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4631 = load i64, i64* %4630, align 8
  %4632 = add i64 %4631, -8
  %4633 = inttoptr i64 %4632 to i64*
  store i64 %4627, i64* %4633
  store i64 %4632, i64* %4630, align 8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4625, i64* %4634, align 8
  store %struct.Memory* %loadMem1_491038, %struct.Memory** %MEMORY
  %loadMem2_491038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491038 = load i64, i64* %3
  %4635 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491038)
  store %struct.Memory* %4635, %struct.Memory** %MEMORY
  %loadMem_49103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 33
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 1
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %4641 to i32*
  %4642 = load i32, i32* %EAX.i220
  %4643 = zext i32 %4642 to i64
  %4644 = load i64, i64* %PC.i219
  %4645 = add i64 %4644, 3
  store i64 %4645, i64* %PC.i219
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4646, align 1
  %4647 = and i32 %4642, 255
  %4648 = call i32 @llvm.ctpop.i32(i32 %4647)
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  %4651 = xor i8 %4650, 1
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4651, i8* %4652, align 1
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4653, align 1
  %4654 = icmp eq i32 %4642, 0
  %4655 = zext i1 %4654 to i8
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4655, i8* %4656, align 1
  %4657 = lshr i32 %4642, 31
  %4658 = trunc i32 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4658, i8* %4659, align 1
  %4660 = lshr i32 %4642, 31
  %4661 = xor i32 %4657, %4660
  %4662 = add i32 %4661, %4660
  %4663 = icmp eq i32 %4662, 2
  %4664 = zext i1 %4663 to i8
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4664, i8* %4665, align 1
  store %struct.Memory* %loadMem_49103d, %struct.Memory** %MEMORY
  %loadMem_491040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %PC.i218
  %4670 = add i64 %4669, 18
  %4671 = load i64, i64* %PC.i218
  %4672 = add i64 %4671, 6
  %4673 = load i64, i64* %PC.i218
  %4674 = add i64 %4673, 6
  store i64 %4674, i64* %PC.i218
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4676 = load i8, i8* %4675, align 1
  %4677 = icmp eq i8 %4676, 0
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %BRANCH_TAKEN, align 1
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4680 = select i1 %4677, i64 %4670, i64 %4672
  store i64 %4680, i64* %4679, align 8
  store %struct.Memory* %loadMem_491040, %struct.Memory** %MEMORY
  %loadBr_491040 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491040 = icmp eq i8 %loadBr_491040, 1
  br i1 %cmpBr_491040, label %block_.L_491052, label %block_491046

block_491046:                                     ; preds = %block_.L_491023
  %loadMem_491046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 33
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %4683 to i64*
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 15
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4686 to i64*
  %4687 = load i64, i64* %RBP.i217
  %4688 = sub i64 %4687, 4
  %4689 = load i64, i64* %PC.i216
  %4690 = add i64 %4689, 7
  store i64 %4690, i64* %PC.i216
  %4691 = inttoptr i64 %4688 to i32*
  store i32 22, i32* %4691
  store %struct.Memory* %loadMem_491046, %struct.Memory** %MEMORY
  %loadMem_49104d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %PC.i215
  %4696 = add i64 %4695, 529
  %4697 = load i64, i64* %PC.i215
  %4698 = add i64 %4697, 5
  store i64 %4698, i64* %PC.i215
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4696, i64* %4699, align 8
  store %struct.Memory* %loadMem_49104d, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_491052:                                  ; preds = %block_.L_491023
  %loadMem_491052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 9
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RSI.i214 = bitcast %union.anon* %4705 to i64*
  %4706 = load i64, i64* %PC.i213
  %4707 = add i64 %4706, 10
  store i64 %4707, i64* %PC.i213
  store i64 ptrtoint (%G__0x586b3c_type* @G__0x586b3c to i64), i64* %RSI.i214, align 8
  store %struct.Memory* %loadMem_491052, %struct.Memory** %MEMORY
  %loadMem_49105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 1
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %4713 to i64*
  %4714 = load i64, i64* %PC.i211
  %4715 = add i64 %4714, 5
  store i64 %4715, i64* %PC.i211
  store i64 3, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_49105c, %struct.Memory** %MEMORY
  %loadMem_491061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 1
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %4721 to i32*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 7
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %4724 to i64*
  %4725 = load i32, i32* %EAX.i209
  %4726 = zext i32 %4725 to i64
  %4727 = load i64, i64* %PC.i208
  %4728 = add i64 %4727, 2
  store i64 %4728, i64* %PC.i208
  %4729 = and i64 %4726, 4294967295
  store i64 %4729, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_491061, %struct.Memory** %MEMORY
  %loadMem_491063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4732 to i64*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 11
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %RDI.i206 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 15
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %4738 to i64*
  %4739 = load i64, i64* %RBP.i207
  %4740 = sub i64 %4739, 16
  %4741 = load i64, i64* %PC.i205
  %4742 = add i64 %4741, 4
  store i64 %4742, i64* %PC.i205
  %4743 = inttoptr i64 %4740 to i64*
  %4744 = load i64, i64* %4743
  store i64 %4744, i64* %RDI.i206, align 8
  store %struct.Memory* %loadMem_491063, %struct.Memory** %MEMORY
  %loadMem1_491067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 33
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4747 to i64*
  %4748 = load i64, i64* %PC.i204
  %4749 = add i64 %4748, -590007
  %4750 = load i64, i64* %PC.i204
  %4751 = add i64 %4750, 5
  %4752 = load i64, i64* %PC.i204
  %4753 = add i64 %4752, 5
  store i64 %4753, i64* %PC.i204
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4755 = load i64, i64* %4754, align 8
  %4756 = add i64 %4755, -8
  %4757 = inttoptr i64 %4756 to i64*
  store i64 %4751, i64* %4757
  store i64 %4756, i64* %4754, align 8
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4749, i64* %4758, align 8
  store %struct.Memory* %loadMem1_491067, %struct.Memory** %MEMORY
  %loadMem2_491067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491067 = load i64, i64* %3
  %4759 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491067)
  store %struct.Memory* %4759, %struct.Memory** %MEMORY
  %loadMem_49106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 33
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 1
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %4765 to i32*
  %4766 = load i32, i32* %EAX.i202
  %4767 = zext i32 %4766 to i64
  %4768 = load i64, i64* %PC.i201
  %4769 = add i64 %4768, 3
  store i64 %4769, i64* %PC.i201
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4770, align 1
  %4771 = and i32 %4766, 255
  %4772 = call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4775, i8* %4776, align 1
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4777, align 1
  %4778 = icmp eq i32 %4766, 0
  %4779 = zext i1 %4778 to i8
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4779, i8* %4780, align 1
  %4781 = lshr i32 %4766, 31
  %4782 = trunc i32 %4781 to i8
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4782, i8* %4783, align 1
  %4784 = lshr i32 %4766, 31
  %4785 = xor i32 %4781, %4784
  %4786 = add i32 %4785, %4784
  %4787 = icmp eq i32 %4786, 2
  %4788 = zext i1 %4787 to i8
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4788, i8* %4789, align 1
  store %struct.Memory* %loadMem_49106c, %struct.Memory** %MEMORY
  %loadMem_49106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %4792 to i64*
  %4793 = load i64, i64* %PC.i200
  %4794 = add i64 %4793, 18
  %4795 = load i64, i64* %PC.i200
  %4796 = add i64 %4795, 6
  %4797 = load i64, i64* %PC.i200
  %4798 = add i64 %4797, 6
  store i64 %4798, i64* %PC.i200
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4800 = load i8, i8* %4799, align 1
  %4801 = icmp eq i8 %4800, 0
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %BRANCH_TAKEN, align 1
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4804 = select i1 %4801, i64 %4794, i64 %4796
  store i64 %4804, i64* %4803, align 8
  store %struct.Memory* %loadMem_49106f, %struct.Memory** %MEMORY
  %loadBr_49106f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49106f = icmp eq i8 %loadBr_49106f, 1
  br i1 %cmpBr_49106f, label %block_.L_491081, label %block_491075

block_491075:                                     ; preds = %block_.L_491052
  %loadMem_491075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 33
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 15
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %4810 to i64*
  %4811 = load i64, i64* %RBP.i199
  %4812 = sub i64 %4811, 4
  %4813 = load i64, i64* %PC.i198
  %4814 = add i64 %4813, 7
  store i64 %4814, i64* %PC.i198
  %4815 = inttoptr i64 %4812 to i32*
  store i32 26, i32* %4815
  store %struct.Memory* %loadMem_491075, %struct.Memory** %MEMORY
  %loadMem_49107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 33
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4818 to i64*
  %4819 = load i64, i64* %PC.i197
  %4820 = add i64 %4819, 482
  %4821 = load i64, i64* %PC.i197
  %4822 = add i64 %4821, 5
  store i64 %4822, i64* %PC.i197
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4820, i64* %4823, align 8
  store %struct.Memory* %loadMem_49107c, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_491081:                                  ; preds = %block_.L_491052
  %loadMem_491081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 33
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4826 to i64*
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 9
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %RSI.i196 = bitcast %union.anon* %4829 to i64*
  %4830 = load i64, i64* %PC.i195
  %4831 = add i64 %4830, 10
  store i64 %4831, i64* %PC.i195
  store i64 ptrtoint (%G__0x57a760_type* @G__0x57a760 to i64), i64* %RSI.i196, align 8
  store %struct.Memory* %loadMem_491081, %struct.Memory** %MEMORY
  %loadMem_49108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 33
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4834 to i64*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 1
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %4837 to i64*
  %4838 = load i64, i64* %PC.i193
  %4839 = add i64 %4838, 5
  store i64 %4839, i64* %PC.i193
  store i64 3, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_49108b, %struct.Memory** %MEMORY
  %loadMem_491090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 33
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 1
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %4845 to i32*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 7
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %4848 to i64*
  %4849 = load i32, i32* %EAX.i191
  %4850 = zext i32 %4849 to i64
  %4851 = load i64, i64* %PC.i190
  %4852 = add i64 %4851, 2
  store i64 %4852, i64* %PC.i190
  %4853 = and i64 %4850, 4294967295
  store i64 %4853, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_491090, %struct.Memory** %MEMORY
  %loadMem_491092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 33
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4856 to i64*
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 11
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %RDI.i188 = bitcast %union.anon* %4859 to i64*
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 15
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %4862 to i64*
  %4863 = load i64, i64* %RBP.i189
  %4864 = sub i64 %4863, 16
  %4865 = load i64, i64* %PC.i187
  %4866 = add i64 %4865, 4
  store i64 %4866, i64* %PC.i187
  %4867 = inttoptr i64 %4864 to i64*
  %4868 = load i64, i64* %4867
  store i64 %4868, i64* %RDI.i188, align 8
  store %struct.Memory* %loadMem_491092, %struct.Memory** %MEMORY
  %loadMem1_491096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 33
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %PC.i186
  %4873 = add i64 %4872, -590054
  %4874 = load i64, i64* %PC.i186
  %4875 = add i64 %4874, 5
  %4876 = load i64, i64* %PC.i186
  %4877 = add i64 %4876, 5
  store i64 %4877, i64* %PC.i186
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4879 = load i64, i64* %4878, align 8
  %4880 = add i64 %4879, -8
  %4881 = inttoptr i64 %4880 to i64*
  store i64 %4875, i64* %4881
  store i64 %4880, i64* %4878, align 8
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4873, i64* %4882, align 8
  store %struct.Memory* %loadMem1_491096, %struct.Memory** %MEMORY
  %loadMem2_491096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491096 = load i64, i64* %3
  %4883 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491096)
  store %struct.Memory* %4883, %struct.Memory** %MEMORY
  %loadMem_49109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 1
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %4889 to i32*
  %4890 = load i32, i32* %EAX.i183
  %4891 = zext i32 %4890 to i64
  %4892 = load i64, i64* %PC.i182
  %4893 = add i64 %4892, 3
  store i64 %4893, i64* %PC.i182
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4894, align 1
  %4895 = and i32 %4890, 255
  %4896 = call i32 @llvm.ctpop.i32(i32 %4895)
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = xor i8 %4898, 1
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4899, i8* %4900, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4901, align 1
  %4902 = icmp eq i32 %4890, 0
  %4903 = zext i1 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4903, i8* %4904, align 1
  %4905 = lshr i32 %4890, 31
  %4906 = trunc i32 %4905 to i8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4906, i8* %4907, align 1
  %4908 = lshr i32 %4890, 31
  %4909 = xor i32 %4905, %4908
  %4910 = add i32 %4909, %4908
  %4911 = icmp eq i32 %4910, 2
  %4912 = zext i1 %4911 to i8
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4912, i8* %4913, align 1
  store %struct.Memory* %loadMem_49109b, %struct.Memory** %MEMORY
  %loadMem_49109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %PC.i181
  %4918 = add i64 %4917, 18
  %4919 = load i64, i64* %PC.i181
  %4920 = add i64 %4919, 6
  %4921 = load i64, i64* %PC.i181
  %4922 = add i64 %4921, 6
  store i64 %4922, i64* %PC.i181
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4924 = load i8, i8* %4923, align 1
  %4925 = icmp eq i8 %4924, 0
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %BRANCH_TAKEN, align 1
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4928 = select i1 %4925, i64 %4918, i64 %4920
  store i64 %4928, i64* %4927, align 8
  store %struct.Memory* %loadMem_49109e, %struct.Memory** %MEMORY
  %loadBr_49109e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49109e = icmp eq i8 %loadBr_49109e, 1
  br i1 %cmpBr_49109e, label %block_.L_4910b0, label %block_4910a4

block_4910a4:                                     ; preds = %block_.L_491081
  %loadMem_4910a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 33
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 15
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %4934 to i64*
  %4935 = load i64, i64* %RBP.i180
  %4936 = sub i64 %4935, 4
  %4937 = load i64, i64* %PC.i179
  %4938 = add i64 %4937, 7
  store i64 %4938, i64* %PC.i179
  %4939 = inttoptr i64 %4936 to i32*
  store i32 27, i32* %4939
  store %struct.Memory* %loadMem_4910a4, %struct.Memory** %MEMORY
  %loadMem_4910ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 33
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %PC.i178
  %4944 = add i64 %4943, 435
  %4945 = load i64, i64* %PC.i178
  %4946 = add i64 %4945, 5
  store i64 %4946, i64* %PC.i178
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4944, i64* %4947, align 8
  store %struct.Memory* %loadMem_4910ab, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_4910b0:                                  ; preds = %block_.L_491081
  %loadMem_4910b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 9
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RSI.i177 = bitcast %union.anon* %4953 to i64*
  %4954 = load i64, i64* %PC.i176
  %4955 = add i64 %4954, 10
  store i64 %4955, i64* %PC.i176
  store i64 ptrtoint (%G__0x586b44_type* @G__0x586b44 to i64), i64* %RSI.i177, align 8
  store %struct.Memory* %loadMem_4910b0, %struct.Memory** %MEMORY
  %loadMem_4910ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 33
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4958 to i64*
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 1
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %4961 to i64*
  %4962 = load i64, i64* %PC.i174
  %4963 = add i64 %4962, 5
  store i64 %4963, i64* %PC.i174
  store i64 4, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_4910ba, %struct.Memory** %MEMORY
  %loadMem_4910bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 33
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 1
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %4969 to i32*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 7
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %4972 to i64*
  %4973 = load i32, i32* %EAX.i172
  %4974 = zext i32 %4973 to i64
  %4975 = load i64, i64* %PC.i171
  %4976 = add i64 %4975, 2
  store i64 %4976, i64* %PC.i171
  %4977 = and i64 %4974, 4294967295
  store i64 %4977, i64* %RDX.i173, align 8
  store %struct.Memory* %loadMem_4910bf, %struct.Memory** %MEMORY
  %loadMem_4910c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 33
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 11
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RDI.i169 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 15
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %4986 to i64*
  %4987 = load i64, i64* %RBP.i170
  %4988 = sub i64 %4987, 16
  %4989 = load i64, i64* %PC.i168
  %4990 = add i64 %4989, 4
  store i64 %4990, i64* %PC.i168
  %4991 = inttoptr i64 %4988 to i64*
  %4992 = load i64, i64* %4991
  store i64 %4992, i64* %RDI.i169, align 8
  store %struct.Memory* %loadMem_4910c1, %struct.Memory** %MEMORY
  %loadMem1_4910c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 33
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4995 to i64*
  %4996 = load i64, i64* %PC.i167
  %4997 = add i64 %4996, -590101
  %4998 = load i64, i64* %PC.i167
  %4999 = add i64 %4998, 5
  %5000 = load i64, i64* %PC.i167
  %5001 = add i64 %5000, 5
  store i64 %5001, i64* %PC.i167
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5003 = load i64, i64* %5002, align 8
  %5004 = add i64 %5003, -8
  %5005 = inttoptr i64 %5004 to i64*
  store i64 %4999, i64* %5005
  store i64 %5004, i64* %5002, align 8
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4997, i64* %5006, align 8
  store %struct.Memory* %loadMem1_4910c5, %struct.Memory** %MEMORY
  %loadMem2_4910c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4910c5 = load i64, i64* %3
  %5007 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4910c5)
  store %struct.Memory* %5007, %struct.Memory** %MEMORY
  %loadMem_4910ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 1
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %5013 to i32*
  %5014 = load i32, i32* %EAX.i165
  %5015 = zext i32 %5014 to i64
  %5016 = load i64, i64* %PC.i164
  %5017 = add i64 %5016, 3
  store i64 %5017, i64* %PC.i164
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5018, align 1
  %5019 = and i32 %5014, 255
  %5020 = call i32 @llvm.ctpop.i32(i32 %5019)
  %5021 = trunc i32 %5020 to i8
  %5022 = and i8 %5021, 1
  %5023 = xor i8 %5022, 1
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5023, i8* %5024, align 1
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5025, align 1
  %5026 = icmp eq i32 %5014, 0
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5027, i8* %5028, align 1
  %5029 = lshr i32 %5014, 31
  %5030 = trunc i32 %5029 to i8
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5030, i8* %5031, align 1
  %5032 = lshr i32 %5014, 31
  %5033 = xor i32 %5029, %5032
  %5034 = add i32 %5033, %5032
  %5035 = icmp eq i32 %5034, 2
  %5036 = zext i1 %5035 to i8
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5036, i8* %5037, align 1
  store %struct.Memory* %loadMem_4910ca, %struct.Memory** %MEMORY
  %loadMem_4910cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %5040 to i64*
  %5041 = load i64, i64* %PC.i163
  %5042 = add i64 %5041, 18
  %5043 = load i64, i64* %PC.i163
  %5044 = add i64 %5043, 6
  %5045 = load i64, i64* %PC.i163
  %5046 = add i64 %5045, 6
  store i64 %5046, i64* %PC.i163
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5048 = load i8, i8* %5047, align 1
  %5049 = icmp eq i8 %5048, 0
  %5050 = zext i1 %5049 to i8
  store i8 %5050, i8* %BRANCH_TAKEN, align 1
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5052 = select i1 %5049, i64 %5042, i64 %5044
  store i64 %5052, i64* %5051, align 8
  store %struct.Memory* %loadMem_4910cd, %struct.Memory** %MEMORY
  %loadBr_4910cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4910cd = icmp eq i8 %loadBr_4910cd, 1
  br i1 %cmpBr_4910cd, label %block_.L_4910df, label %block_4910d3

block_4910d3:                                     ; preds = %block_.L_4910b0
  %loadMem_4910d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 15
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %5058 to i64*
  %5059 = load i64, i64* %RBP.i162
  %5060 = sub i64 %5059, 4
  %5061 = load i64, i64* %PC.i161
  %5062 = add i64 %5061, 7
  store i64 %5062, i64* %PC.i161
  %5063 = inttoptr i64 %5060 to i32*
  store i32 1, i32* %5063
  store %struct.Memory* %loadMem_4910d3, %struct.Memory** %MEMORY
  %loadMem_4910da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5066 to i64*
  %5067 = load i64, i64* %PC.i160
  %5068 = add i64 %5067, 388
  %5069 = load i64, i64* %PC.i160
  %5070 = add i64 %5069, 5
  store i64 %5070, i64* %PC.i160
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5068, i64* %5071, align 8
  store %struct.Memory* %loadMem_4910da, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_4910df:                                  ; preds = %block_.L_4910b0
  %loadMem_4910df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 33
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 9
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RSI.i159 = bitcast %union.anon* %5077 to i64*
  %5078 = load i64, i64* %PC.i158
  %5079 = add i64 %5078, 10
  store i64 %5079, i64* %PC.i158
  store i64 ptrtoint (%G__0x585f74_type* @G__0x585f74 to i64), i64* %RSI.i159, align 8
  store %struct.Memory* %loadMem_4910df, %struct.Memory** %MEMORY
  %loadMem_4910e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 1
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %PC.i156
  %5087 = add i64 %5086, 5
  store i64 %5087, i64* %PC.i156
  store i64 4, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_4910e9, %struct.Memory** %MEMORY
  %loadMem_4910ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 33
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 1
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %5093 to i32*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 7
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %5096 to i64*
  %5097 = load i32, i32* %EAX.i154
  %5098 = zext i32 %5097 to i64
  %5099 = load i64, i64* %PC.i153
  %5100 = add i64 %5099, 2
  store i64 %5100, i64* %PC.i153
  %5101 = and i64 %5098, 4294967295
  store i64 %5101, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_4910ee, %struct.Memory** %MEMORY
  %loadMem_4910f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 33
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 11
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RDI.i151 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 15
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %RBP.i152
  %5112 = sub i64 %5111, 16
  %5113 = load i64, i64* %PC.i150
  %5114 = add i64 %5113, 4
  store i64 %5114, i64* %PC.i150
  %5115 = inttoptr i64 %5112 to i64*
  %5116 = load i64, i64* %5115
  store i64 %5116, i64* %RDI.i151, align 8
  store %struct.Memory* %loadMem_4910f0, %struct.Memory** %MEMORY
  %loadMem1_4910f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %PC.i149
  %5121 = add i64 %5120, -590148
  %5122 = load i64, i64* %PC.i149
  %5123 = add i64 %5122, 5
  %5124 = load i64, i64* %PC.i149
  %5125 = add i64 %5124, 5
  store i64 %5125, i64* %PC.i149
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5127 = load i64, i64* %5126, align 8
  %5128 = add i64 %5127, -8
  %5129 = inttoptr i64 %5128 to i64*
  store i64 %5123, i64* %5129
  store i64 %5128, i64* %5126, align 8
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5121, i64* %5130, align 8
  store %struct.Memory* %loadMem1_4910f4, %struct.Memory** %MEMORY
  %loadMem2_4910f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4910f4 = load i64, i64* %3
  %5131 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4910f4)
  store %struct.Memory* %5131, %struct.Memory** %MEMORY
  %loadMem_4910f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 33
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %5134 to i64*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 1
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %5137 to i32*
  %5138 = load i32, i32* %EAX.i147
  %5139 = zext i32 %5138 to i64
  %5140 = load i64, i64* %PC.i146
  %5141 = add i64 %5140, 3
  store i64 %5141, i64* %PC.i146
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5142, align 1
  %5143 = and i32 %5138, 255
  %5144 = call i32 @llvm.ctpop.i32(i32 %5143)
  %5145 = trunc i32 %5144 to i8
  %5146 = and i8 %5145, 1
  %5147 = xor i8 %5146, 1
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5147, i8* %5148, align 1
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5149, align 1
  %5150 = icmp eq i32 %5138, 0
  %5151 = zext i1 %5150 to i8
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5151, i8* %5152, align 1
  %5153 = lshr i32 %5138, 31
  %5154 = trunc i32 %5153 to i8
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5154, i8* %5155, align 1
  %5156 = lshr i32 %5138, 31
  %5157 = xor i32 %5153, %5156
  %5158 = add i32 %5157, %5156
  %5159 = icmp eq i32 %5158, 2
  %5160 = zext i1 %5159 to i8
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5160, i8* %5161, align 1
  store %struct.Memory* %loadMem_4910f9, %struct.Memory** %MEMORY
  %loadMem_4910fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %PC.i145
  %5166 = add i64 %5165, 18
  %5167 = load i64, i64* %PC.i145
  %5168 = add i64 %5167, 6
  %5169 = load i64, i64* %PC.i145
  %5170 = add i64 %5169, 6
  store i64 %5170, i64* %PC.i145
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5172 = load i8, i8* %5171, align 1
  %5173 = icmp eq i8 %5172, 0
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %BRANCH_TAKEN, align 1
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5176 = select i1 %5173, i64 %5166, i64 %5168
  store i64 %5176, i64* %5175, align 8
  store %struct.Memory* %loadMem_4910fc, %struct.Memory** %MEMORY
  %loadBr_4910fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4910fc = icmp eq i8 %loadBr_4910fc, 1
  br i1 %cmpBr_4910fc, label %block_.L_49110e, label %block_491102

block_491102:                                     ; preds = %block_.L_4910df
  %loadMem_491102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 15
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %RBP.i144
  %5184 = sub i64 %5183, 4
  %5185 = load i64, i64* %PC.i143
  %5186 = add i64 %5185, 7
  store i64 %5186, i64* %PC.i143
  %5187 = inttoptr i64 %5184 to i32*
  store i32 2, i32* %5187
  store %struct.Memory* %loadMem_491102, %struct.Memory** %MEMORY
  %loadMem_491109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %PC.i142
  %5192 = add i64 %5191, 341
  %5193 = load i64, i64* %PC.i142
  %5194 = add i64 %5193, 5
  store i64 %5194, i64* %PC.i142
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5192, i64* %5195, align 8
  store %struct.Memory* %loadMem_491109, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_49110e:                                  ; preds = %block_.L_4910df
  %loadMem_49110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 9
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RSI.i141 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %PC.i140
  %5203 = add i64 %5202, 10
  store i64 %5203, i64* %PC.i140
  store i64 ptrtoint (%G__0x5856fa_type* @G__0x5856fa to i64), i64* %RSI.i141, align 8
  store %struct.Memory* %loadMem_49110e, %struct.Memory** %MEMORY
  %loadMem_491118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 33
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 1
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %5209 to i64*
  %5210 = load i64, i64* %PC.i138
  %5211 = add i64 %5210, 5
  store i64 %5211, i64* %PC.i138
  store i64 1, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_491118, %struct.Memory** %MEMORY
  %loadMem_49111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 33
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 1
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %5217 to i32*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 7
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %5220 to i64*
  %5221 = load i32, i32* %EAX.i136
  %5222 = zext i32 %5221 to i64
  %5223 = load i64, i64* %PC.i135
  %5224 = add i64 %5223, 2
  store i64 %5224, i64* %PC.i135
  %5225 = and i64 %5222, 4294967295
  store i64 %5225, i64* %RDX.i137, align 8
  store %struct.Memory* %loadMem_49111d, %struct.Memory** %MEMORY
  %loadMem_49111f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 11
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RDI.i133 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 15
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RBP.i134
  %5236 = sub i64 %5235, 16
  %5237 = load i64, i64* %PC.i132
  %5238 = add i64 %5237, 4
  store i64 %5238, i64* %PC.i132
  %5239 = inttoptr i64 %5236 to i64*
  %5240 = load i64, i64* %5239
  store i64 %5240, i64* %RDI.i133, align 8
  store %struct.Memory* %loadMem_49111f, %struct.Memory** %MEMORY
  %loadMem1_491123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %PC.i131
  %5245 = add i64 %5244, -590195
  %5246 = load i64, i64* %PC.i131
  %5247 = add i64 %5246, 5
  %5248 = load i64, i64* %PC.i131
  %5249 = add i64 %5248, 5
  store i64 %5249, i64* %PC.i131
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5251 = load i64, i64* %5250, align 8
  %5252 = add i64 %5251, -8
  %5253 = inttoptr i64 %5252 to i64*
  store i64 %5247, i64* %5253
  store i64 %5252, i64* %5250, align 8
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5245, i64* %5254, align 8
  store %struct.Memory* %loadMem1_491123, %struct.Memory** %MEMORY
  %loadMem2_491123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491123 = load i64, i64* %3
  %5255 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491123)
  store %struct.Memory* %5255, %struct.Memory** %MEMORY
  %loadMem_491128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 1
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %5261 to i32*
  %5262 = load i32, i32* %EAX.i127
  %5263 = zext i32 %5262 to i64
  %5264 = load i64, i64* %PC.i126
  %5265 = add i64 %5264, 3
  store i64 %5265, i64* %PC.i126
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5266, align 1
  %5267 = and i32 %5262, 255
  %5268 = call i32 @llvm.ctpop.i32(i32 %5267)
  %5269 = trunc i32 %5268 to i8
  %5270 = and i8 %5269, 1
  %5271 = xor i8 %5270, 1
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5271, i8* %5272, align 1
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5273, align 1
  %5274 = icmp eq i32 %5262, 0
  %5275 = zext i1 %5274 to i8
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5275, i8* %5276, align 1
  %5277 = lshr i32 %5262, 31
  %5278 = trunc i32 %5277 to i8
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5278, i8* %5279, align 1
  %5280 = lshr i32 %5262, 31
  %5281 = xor i32 %5277, %5280
  %5282 = add i32 %5281, %5280
  %5283 = icmp eq i32 %5282, 2
  %5284 = zext i1 %5283 to i8
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5284, i8* %5285, align 1
  store %struct.Memory* %loadMem_491128, %struct.Memory** %MEMORY
  %loadMem_49112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 33
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5288 to i64*
  %5289 = load i64, i64* %PC.i125
  %5290 = add i64 %5289, 18
  %5291 = load i64, i64* %PC.i125
  %5292 = add i64 %5291, 6
  %5293 = load i64, i64* %PC.i125
  %5294 = add i64 %5293, 6
  store i64 %5294, i64* %PC.i125
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5296 = load i8, i8* %5295, align 1
  %5297 = icmp eq i8 %5296, 0
  %5298 = zext i1 %5297 to i8
  store i8 %5298, i8* %BRANCH_TAKEN, align 1
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5300 = select i1 %5297, i64 %5290, i64 %5292
  store i64 %5300, i64* %5299, align 8
  store %struct.Memory* %loadMem_49112b, %struct.Memory** %MEMORY
  %loadBr_49112b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49112b = icmp eq i8 %loadBr_49112b, 1
  br i1 %cmpBr_49112b, label %block_.L_49113d, label %block_491131

block_491131:                                     ; preds = %block_.L_49110e
  %loadMem_491131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 33
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 15
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %5306 to i64*
  %5307 = load i64, i64* %RBP.i124
  %5308 = sub i64 %5307, 4
  %5309 = load i64, i64* %PC.i123
  %5310 = add i64 %5309, 7
  store i64 %5310, i64* %PC.i123
  %5311 = inttoptr i64 %5308 to i32*
  store i32 18, i32* %5311
  store %struct.Memory* %loadMem_491131, %struct.Memory** %MEMORY
  %loadMem_491138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %PC.i122
  %5316 = add i64 %5315, 294
  %5317 = load i64, i64* %PC.i122
  %5318 = add i64 %5317, 5
  store i64 %5318, i64* %PC.i122
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5316, i64* %5319, align 8
  store %struct.Memory* %loadMem_491138, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_49113d:                                  ; preds = %block_.L_49110e
  %loadMem_49113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 9
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %5325 to i64*
  %5326 = load i64, i64* %PC.i120
  %5327 = add i64 %5326, 10
  store i64 %5327, i64* %PC.i120
  store i64 ptrtoint (%G__0x57fdf5_type* @G__0x57fdf5 to i64), i64* %RSI.i121, align 8
  store %struct.Memory* %loadMem_49113d, %struct.Memory** %MEMORY
  %loadMem_491147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 1
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %5333 to i64*
  %5334 = load i64, i64* %PC.i118
  %5335 = add i64 %5334, 5
  store i64 %5335, i64* %PC.i118
  store i64 2, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_491147, %struct.Memory** %MEMORY
  %loadMem_49114c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %5341 to i32*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 7
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %5344 to i64*
  %5345 = load i32, i32* %EAX.i116
  %5346 = zext i32 %5345 to i64
  %5347 = load i64, i64* %PC.i115
  %5348 = add i64 %5347, 2
  store i64 %5348, i64* %PC.i115
  %5349 = and i64 %5346, 4294967295
  store i64 %5349, i64* %RDX.i117, align 8
  store %struct.Memory* %loadMem_49114c, %struct.Memory** %MEMORY
  %loadMem_49114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 11
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %RDI.i113 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 15
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RBP.i114
  %5360 = sub i64 %5359, 16
  %5361 = load i64, i64* %PC.i112
  %5362 = add i64 %5361, 4
  store i64 %5362, i64* %PC.i112
  %5363 = inttoptr i64 %5360 to i64*
  %5364 = load i64, i64* %5363
  store i64 %5364, i64* %RDI.i113, align 8
  store %struct.Memory* %loadMem_49114e, %struct.Memory** %MEMORY
  %loadMem1_491152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %PC.i111
  %5369 = add i64 %5368, -590242
  %5370 = load i64, i64* %PC.i111
  %5371 = add i64 %5370, 5
  %5372 = load i64, i64* %PC.i111
  %5373 = add i64 %5372, 5
  store i64 %5373, i64* %PC.i111
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5375 = load i64, i64* %5374, align 8
  %5376 = add i64 %5375, -8
  %5377 = inttoptr i64 %5376 to i64*
  store i64 %5371, i64* %5377
  store i64 %5376, i64* %5374, align 8
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5369, i64* %5378, align 8
  store %struct.Memory* %loadMem1_491152, %struct.Memory** %MEMORY
  %loadMem2_491152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491152 = load i64, i64* %3
  %5379 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491152)
  store %struct.Memory* %5379, %struct.Memory** %MEMORY
  %loadMem_491157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 33
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5382 to i64*
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 1
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %5385 to i32*
  %5386 = load i32, i32* %EAX.i107
  %5387 = zext i32 %5386 to i64
  %5388 = load i64, i64* %PC.i106
  %5389 = add i64 %5388, 3
  store i64 %5389, i64* %PC.i106
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5390, align 1
  %5391 = and i32 %5386, 255
  %5392 = call i32 @llvm.ctpop.i32(i32 %5391)
  %5393 = trunc i32 %5392 to i8
  %5394 = and i8 %5393, 1
  %5395 = xor i8 %5394, 1
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5395, i8* %5396, align 1
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5397, align 1
  %5398 = icmp eq i32 %5386, 0
  %5399 = zext i1 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5399, i8* %5400, align 1
  %5401 = lshr i32 %5386, 31
  %5402 = trunc i32 %5401 to i8
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5402, i8* %5403, align 1
  %5404 = lshr i32 %5386, 31
  %5405 = xor i32 %5401, %5404
  %5406 = add i32 %5405, %5404
  %5407 = icmp eq i32 %5406, 2
  %5408 = zext i1 %5407 to i8
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5408, i8* %5409, align 1
  store %struct.Memory* %loadMem_491157, %struct.Memory** %MEMORY
  %loadMem_49115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 33
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5412 to i64*
  %5413 = load i64, i64* %PC.i105
  %5414 = add i64 %5413, 18
  %5415 = load i64, i64* %PC.i105
  %5416 = add i64 %5415, 6
  %5417 = load i64, i64* %PC.i105
  %5418 = add i64 %5417, 6
  store i64 %5418, i64* %PC.i105
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5420 = load i8, i8* %5419, align 1
  %5421 = icmp eq i8 %5420, 0
  %5422 = zext i1 %5421 to i8
  store i8 %5422, i8* %BRANCH_TAKEN, align 1
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5424 = select i1 %5421, i64 %5414, i64 %5416
  store i64 %5424, i64* %5423, align 8
  store %struct.Memory* %loadMem_49115a, %struct.Memory** %MEMORY
  %loadBr_49115a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49115a = icmp eq i8 %loadBr_49115a, 1
  br i1 %cmpBr_49115a, label %block_.L_49116c, label %block_491160

block_491160:                                     ; preds = %block_.L_49113d
  %loadMem_491160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 33
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5427 to i64*
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 15
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5430 to i64*
  %5431 = load i64, i64* %RBP.i104
  %5432 = sub i64 %5431, 4
  %5433 = load i64, i64* %PC.i103
  %5434 = add i64 %5433, 7
  store i64 %5434, i64* %PC.i103
  %5435 = inttoptr i64 %5432 to i32*
  store i32 23, i32* %5435
  store %struct.Memory* %loadMem_491160, %struct.Memory** %MEMORY
  %loadMem_491167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 33
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5438 to i64*
  %5439 = load i64, i64* %PC.i102
  %5440 = add i64 %5439, 247
  %5441 = load i64, i64* %PC.i102
  %5442 = add i64 %5441, 5
  store i64 %5442, i64* %PC.i102
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5440, i64* %5443, align 8
  store %struct.Memory* %loadMem_491167, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_49116c:                                  ; preds = %block_.L_49113d
  %loadMem_49116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 33
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 9
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %RSI.i101 = bitcast %union.anon* %5449 to i64*
  %5450 = load i64, i64* %PC.i100
  %5451 = add i64 %5450, 10
  store i64 %5451, i64* %PC.i100
  store i64 ptrtoint (%G__0x586b49_type* @G__0x586b49 to i64), i64* %RSI.i101, align 8
  store %struct.Memory* %loadMem_49116c, %struct.Memory** %MEMORY
  %loadMem_491176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 1
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %5457 to i64*
  %5458 = load i64, i64* %PC.i98
  %5459 = add i64 %5458, 5
  store i64 %5459, i64* %PC.i98
  store i64 2, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_491176, %struct.Memory** %MEMORY
  %loadMem_49117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 1
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %EAX.i96 = bitcast %union.anon* %5465 to i32*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 7
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %5468 to i64*
  %5469 = load i32, i32* %EAX.i96
  %5470 = zext i32 %5469 to i64
  %5471 = load i64, i64* %PC.i95
  %5472 = add i64 %5471, 2
  store i64 %5472, i64* %PC.i95
  %5473 = and i64 %5470, 4294967295
  store i64 %5473, i64* %RDX.i97, align 8
  store %struct.Memory* %loadMem_49117b, %struct.Memory** %MEMORY
  %loadMem_49117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 33
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5476 to i64*
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 11
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 15
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %RBP.i94
  %5484 = sub i64 %5483, 16
  %5485 = load i64, i64* %PC.i92
  %5486 = add i64 %5485, 4
  store i64 %5486, i64* %PC.i92
  %5487 = inttoptr i64 %5484 to i64*
  %5488 = load i64, i64* %5487
  store i64 %5488, i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_49117d, %struct.Memory** %MEMORY
  %loadMem1_491181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 33
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5491 to i64*
  %5492 = load i64, i64* %PC.i91
  %5493 = add i64 %5492, -590289
  %5494 = load i64, i64* %PC.i91
  %5495 = add i64 %5494, 5
  %5496 = load i64, i64* %PC.i91
  %5497 = add i64 %5496, 5
  store i64 %5497, i64* %PC.i91
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5499 = load i64, i64* %5498, align 8
  %5500 = add i64 %5499, -8
  %5501 = inttoptr i64 %5500 to i64*
  store i64 %5495, i64* %5501
  store i64 %5500, i64* %5498, align 8
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5493, i64* %5502, align 8
  store %struct.Memory* %loadMem1_491181, %struct.Memory** %MEMORY
  %loadMem2_491181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491181 = load i64, i64* %3
  %5503 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_491181)
  store %struct.Memory* %5503, %struct.Memory** %MEMORY
  %loadMem_491186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 1
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %5509 to i32*
  %5510 = load i32, i32* %EAX.i88
  %5511 = zext i32 %5510 to i64
  %5512 = load i64, i64* %PC.i87
  %5513 = add i64 %5512, 3
  store i64 %5513, i64* %PC.i87
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5514, align 1
  %5515 = and i32 %5510, 255
  %5516 = call i32 @llvm.ctpop.i32(i32 %5515)
  %5517 = trunc i32 %5516 to i8
  %5518 = and i8 %5517, 1
  %5519 = xor i8 %5518, 1
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5519, i8* %5520, align 1
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5521, align 1
  %5522 = icmp eq i32 %5510, 0
  %5523 = zext i1 %5522 to i8
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5523, i8* %5524, align 1
  %5525 = lshr i32 %5510, 31
  %5526 = trunc i32 %5525 to i8
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5526, i8* %5527, align 1
  %5528 = lshr i32 %5510, 31
  %5529 = xor i32 %5525, %5528
  %5530 = add i32 %5529, %5528
  %5531 = icmp eq i32 %5530, 2
  %5532 = zext i1 %5531 to i8
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5532, i8* %5533, align 1
  store %struct.Memory* %loadMem_491186, %struct.Memory** %MEMORY
  %loadMem_491189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5535 = getelementptr inbounds %struct.GPR, %struct.GPR* %5534, i32 0, i32 33
  %5536 = getelementptr inbounds %struct.Reg, %struct.Reg* %5535, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5536 to i64*
  %5537 = load i64, i64* %PC.i86
  %5538 = add i64 %5537, 18
  %5539 = load i64, i64* %PC.i86
  %5540 = add i64 %5539, 6
  %5541 = load i64, i64* %PC.i86
  %5542 = add i64 %5541, 6
  store i64 %5542, i64* %PC.i86
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5544 = load i8, i8* %5543, align 1
  %5545 = icmp eq i8 %5544, 0
  %5546 = zext i1 %5545 to i8
  store i8 %5546, i8* %BRANCH_TAKEN, align 1
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5548 = select i1 %5545, i64 %5538, i64 %5540
  store i64 %5548, i64* %5547, align 8
  store %struct.Memory* %loadMem_491189, %struct.Memory** %MEMORY
  %loadBr_491189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491189 = icmp eq i8 %loadBr_491189, 1
  br i1 %cmpBr_491189, label %block_.L_49119b, label %block_49118f

block_49118f:                                     ; preds = %block_.L_49116c
  %loadMem_49118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 33
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 15
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %5554 to i64*
  %5555 = load i64, i64* %RBP.i85
  %5556 = sub i64 %5555, 4
  %5557 = load i64, i64* %PC.i84
  %5558 = add i64 %5557, 7
  store i64 %5558, i64* %PC.i84
  %5559 = inttoptr i64 %5556 to i32*
  store i32 24, i32* %5559
  store %struct.Memory* %loadMem_49118f, %struct.Memory** %MEMORY
  %loadMem_491196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5562 to i64*
  %5563 = load i64, i64* %PC.i83
  %5564 = add i64 %5563, 200
  %5565 = load i64, i64* %PC.i83
  %5566 = add i64 %5565, 5
  store i64 %5566, i64* %PC.i83
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5564, i64* %5567, align 8
  store %struct.Memory* %loadMem_491196, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_49119b:                                  ; preds = %block_.L_49116c
  %loadMem_49119b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 33
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 9
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %PC.i81
  %5575 = add i64 %5574, 10
  store i64 %5575, i64* %PC.i81
  store i64 ptrtoint (%G__0x5861b6_type* @G__0x5861b6 to i64), i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_49119b, %struct.Memory** %MEMORY
  %loadMem_4911a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 33
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 1
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %5581 to i64*
  %5582 = load i64, i64* %PC.i79
  %5583 = add i64 %5582, 5
  store i64 %5583, i64* %PC.i79
  store i64 2, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_4911a5, %struct.Memory** %MEMORY
  %loadMem_4911aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 33
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5586 to i64*
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 1
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %5589 to i32*
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 7
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %5592 to i64*
  %5593 = load i32, i32* %EAX.i77
  %5594 = zext i32 %5593 to i64
  %5595 = load i64, i64* %PC.i76
  %5596 = add i64 %5595, 2
  store i64 %5596, i64* %PC.i76
  %5597 = and i64 %5594, 4294967295
  store i64 %5597, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_4911aa, %struct.Memory** %MEMORY
  %loadMem_4911ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 33
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 11
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %5603 to i64*
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 15
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %5606 to i64*
  %5607 = load i64, i64* %RBP.i75
  %5608 = sub i64 %5607, 16
  %5609 = load i64, i64* %PC.i73
  %5610 = add i64 %5609, 4
  store i64 %5610, i64* %PC.i73
  %5611 = inttoptr i64 %5608 to i64*
  %5612 = load i64, i64* %5611
  store i64 %5612, i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_4911ac, %struct.Memory** %MEMORY
  %loadMem1_4911b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 33
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %PC.i72
  %5617 = add i64 %5616, -590336
  %5618 = load i64, i64* %PC.i72
  %5619 = add i64 %5618, 5
  %5620 = load i64, i64* %PC.i72
  %5621 = add i64 %5620, 5
  store i64 %5621, i64* %PC.i72
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5623 = load i64, i64* %5622, align 8
  %5624 = add i64 %5623, -8
  %5625 = inttoptr i64 %5624 to i64*
  store i64 %5619, i64* %5625
  store i64 %5624, i64* %5622, align 8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5617, i64* %5626, align 8
  store %struct.Memory* %loadMem1_4911b0, %struct.Memory** %MEMORY
  %loadMem2_4911b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4911b0 = load i64, i64* %3
  %5627 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4911b0)
  store %struct.Memory* %5627, %struct.Memory** %MEMORY
  %loadMem_4911b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5629 = getelementptr inbounds %struct.GPR, %struct.GPR* %5628, i32 0, i32 33
  %5630 = getelementptr inbounds %struct.Reg, %struct.Reg* %5629, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5630 to i64*
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5632 = getelementptr inbounds %struct.GPR, %struct.GPR* %5631, i32 0, i32 1
  %5633 = getelementptr inbounds %struct.Reg, %struct.Reg* %5632, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %5633 to i32*
  %5634 = load i32, i32* %EAX.i68
  %5635 = zext i32 %5634 to i64
  %5636 = load i64, i64* %PC.i67
  %5637 = add i64 %5636, 3
  store i64 %5637, i64* %PC.i67
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5638, align 1
  %5639 = and i32 %5634, 255
  %5640 = call i32 @llvm.ctpop.i32(i32 %5639)
  %5641 = trunc i32 %5640 to i8
  %5642 = and i8 %5641, 1
  %5643 = xor i8 %5642, 1
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5643, i8* %5644, align 1
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5645, align 1
  %5646 = icmp eq i32 %5634, 0
  %5647 = zext i1 %5646 to i8
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5647, i8* %5648, align 1
  %5649 = lshr i32 %5634, 31
  %5650 = trunc i32 %5649 to i8
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5650, i8* %5651, align 1
  %5652 = lshr i32 %5634, 31
  %5653 = xor i32 %5649, %5652
  %5654 = add i32 %5653, %5652
  %5655 = icmp eq i32 %5654, 2
  %5656 = zext i1 %5655 to i8
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5656, i8* %5657, align 1
  store %struct.Memory* %loadMem_4911b5, %struct.Memory** %MEMORY
  %loadMem_4911b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5660 to i64*
  %5661 = load i64, i64* %PC.i66
  %5662 = add i64 %5661, 18
  %5663 = load i64, i64* %PC.i66
  %5664 = add i64 %5663, 6
  %5665 = load i64, i64* %PC.i66
  %5666 = add i64 %5665, 6
  store i64 %5666, i64* %PC.i66
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5668 = load i8, i8* %5667, align 1
  %5669 = icmp eq i8 %5668, 0
  %5670 = zext i1 %5669 to i8
  store i8 %5670, i8* %BRANCH_TAKEN, align 1
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5672 = select i1 %5669, i64 %5662, i64 %5664
  store i64 %5672, i64* %5671, align 8
  store %struct.Memory* %loadMem_4911b8, %struct.Memory** %MEMORY
  %loadBr_4911b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4911b8 = icmp eq i8 %loadBr_4911b8, 1
  br i1 %cmpBr_4911b8, label %block_.L_4911ca, label %block_4911be

block_4911be:                                     ; preds = %block_.L_49119b
  %loadMem_4911be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 33
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5675 to i64*
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 15
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %5678 to i64*
  %5679 = load i64, i64* %RBP.i65
  %5680 = sub i64 %5679, 4
  %5681 = load i64, i64* %PC.i64
  %5682 = add i64 %5681, 7
  store i64 %5682, i64* %PC.i64
  %5683 = inttoptr i64 %5680 to i32*
  store i32 25, i32* %5683
  store %struct.Memory* %loadMem_4911be, %struct.Memory** %MEMORY
  %loadMem_4911c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5686 to i64*
  %5687 = load i64, i64* %PC.i63
  %5688 = add i64 %5687, 153
  %5689 = load i64, i64* %PC.i63
  %5690 = add i64 %5689, 5
  store i64 %5690, i64* %PC.i63
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5688, i64* %5691, align 8
  store %struct.Memory* %loadMem_4911c5, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_4911ca:                                  ; preds = %block_.L_49119b
  %loadMem_4911ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 33
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5694 to i64*
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 9
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %RSI.i62 = bitcast %union.anon* %5697 to i64*
  %5698 = load i64, i64* %PC.i61
  %5699 = add i64 %5698, 10
  store i64 %5699, i64* %PC.i61
  store i64 ptrtoint (%G__0x586b51_type* @G__0x586b51 to i64), i64* %RSI.i62, align 8
  store %struct.Memory* %loadMem_4911ca, %struct.Memory** %MEMORY
  %loadMem_4911d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 33
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5702 to i64*
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 1
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %5705 to i64*
  %5706 = load i64, i64* %PC.i59
  %5707 = add i64 %5706, 5
  store i64 %5707, i64* %PC.i59
  store i64 2, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_4911d4, %struct.Memory** %MEMORY
  %loadMem_4911d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 33
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5710 to i64*
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 1
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %EAX.i57 = bitcast %union.anon* %5713 to i32*
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 7
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %5716 to i64*
  %5717 = load i32, i32* %EAX.i57
  %5718 = zext i32 %5717 to i64
  %5719 = load i64, i64* %PC.i56
  %5720 = add i64 %5719, 2
  store i64 %5720, i64* %PC.i56
  %5721 = and i64 %5718, 4294967295
  store i64 %5721, i64* %RDX.i58, align 8
  store %struct.Memory* %loadMem_4911d9, %struct.Memory** %MEMORY
  %loadMem_4911db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 11
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %5727 to i64*
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 15
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %RBP.i55
  %5732 = sub i64 %5731, 16
  %5733 = load i64, i64* %PC.i53
  %5734 = add i64 %5733, 4
  store i64 %5734, i64* %PC.i53
  %5735 = inttoptr i64 %5732 to i64*
  %5736 = load i64, i64* %5735
  store i64 %5736, i64* %RDI.i54, align 8
  store %struct.Memory* %loadMem_4911db, %struct.Memory** %MEMORY
  %loadMem1_4911df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 33
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5739 to i64*
  %5740 = load i64, i64* %PC.i52
  %5741 = add i64 %5740, -590383
  %5742 = load i64, i64* %PC.i52
  %5743 = add i64 %5742, 5
  %5744 = load i64, i64* %PC.i52
  %5745 = add i64 %5744, 5
  store i64 %5745, i64* %PC.i52
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5747 = load i64, i64* %5746, align 8
  %5748 = add i64 %5747, -8
  %5749 = inttoptr i64 %5748 to i64*
  store i64 %5743, i64* %5749
  store i64 %5748, i64* %5746, align 8
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5741, i64* %5750, align 8
  store %struct.Memory* %loadMem1_4911df, %struct.Memory** %MEMORY
  %loadMem2_4911df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4911df = load i64, i64* %3
  %5751 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_4911df)
  store %struct.Memory* %5751, %struct.Memory** %MEMORY
  %loadMem_4911e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 33
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5754 to i64*
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 1
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %5757 to i32*
  %5758 = load i32, i32* %EAX.i49
  %5759 = zext i32 %5758 to i64
  %5760 = load i64, i64* %PC.i48
  %5761 = add i64 %5760, 3
  store i64 %5761, i64* %PC.i48
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5762, align 1
  %5763 = and i32 %5758, 255
  %5764 = call i32 @llvm.ctpop.i32(i32 %5763)
  %5765 = trunc i32 %5764 to i8
  %5766 = and i8 %5765, 1
  %5767 = xor i8 %5766, 1
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5767, i8* %5768, align 1
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5769, align 1
  %5770 = icmp eq i32 %5758, 0
  %5771 = zext i1 %5770 to i8
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5771, i8* %5772, align 1
  %5773 = lshr i32 %5758, 31
  %5774 = trunc i32 %5773 to i8
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5774, i8* %5775, align 1
  %5776 = lshr i32 %5758, 31
  %5777 = xor i32 %5773, %5776
  %5778 = add i32 %5777, %5776
  %5779 = icmp eq i32 %5778, 2
  %5780 = zext i1 %5779 to i8
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5780, i8* %5781, align 1
  store %struct.Memory* %loadMem_4911e4, %struct.Memory** %MEMORY
  %loadMem_4911e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5783 = getelementptr inbounds %struct.GPR, %struct.GPR* %5782, i32 0, i32 33
  %5784 = getelementptr inbounds %struct.Reg, %struct.Reg* %5783, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5784 to i64*
  %5785 = load i64, i64* %PC.i47
  %5786 = add i64 %5785, 18
  %5787 = load i64, i64* %PC.i47
  %5788 = add i64 %5787, 6
  %5789 = load i64, i64* %PC.i47
  %5790 = add i64 %5789, 6
  store i64 %5790, i64* %PC.i47
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5792 = load i8, i8* %5791, align 1
  %5793 = icmp eq i8 %5792, 0
  %5794 = zext i1 %5793 to i8
  store i8 %5794, i8* %BRANCH_TAKEN, align 1
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5796 = select i1 %5793, i64 %5786, i64 %5788
  store i64 %5796, i64* %5795, align 8
  store %struct.Memory* %loadMem_4911e7, %struct.Memory** %MEMORY
  %loadBr_4911e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4911e7 = icmp eq i8 %loadBr_4911e7, 1
  br i1 %cmpBr_4911e7, label %block_.L_4911f9, label %block_4911ed

block_4911ed:                                     ; preds = %block_.L_4911ca
  %loadMem_4911ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 33
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5799 to i64*
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 15
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5802 to i64*
  %5803 = load i64, i64* %RBP.i46
  %5804 = sub i64 %5803, 4
  %5805 = load i64, i64* %PC.i45
  %5806 = add i64 %5805, 7
  store i64 %5806, i64* %PC.i45
  %5807 = inttoptr i64 %5804 to i32*
  store i32 32, i32* %5807
  store %struct.Memory* %loadMem_4911ed, %struct.Memory** %MEMORY
  %loadMem_4911f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 33
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5810 to i64*
  %5811 = load i64, i64* %PC.i44
  %5812 = add i64 %5811, 106
  %5813 = load i64, i64* %PC.i44
  %5814 = add i64 %5813, 5
  store i64 %5814, i64* %PC.i44
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5812, i64* %5815, align 8
  store %struct.Memory* %loadMem_4911f4, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_4911f9:                                  ; preds = %block_.L_4911ca
  %loadMem_4911f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 9
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RSI.i43 = bitcast %union.anon* %5821 to i64*
  %5822 = load i64, i64* %PC.i42
  %5823 = add i64 %5822, 10
  store i64 %5823, i64* %PC.i42
  store i64 ptrtoint (%G__0x585d71_type* @G__0x585d71 to i64), i64* %RSI.i43, align 8
  store %struct.Memory* %loadMem_4911f9, %struct.Memory** %MEMORY
  %loadMem_491203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 33
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 1
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %5829 to i64*
  %5830 = load i64, i64* %PC.i40
  %5831 = add i64 %5830, 5
  store i64 %5831, i64* %PC.i40
  store i64 2, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_491203, %struct.Memory** %MEMORY
  %loadMem_491208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5834 to i64*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 1
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %EAX.i38 = bitcast %union.anon* %5837 to i32*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 7
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %5840 to i64*
  %5841 = load i32, i32* %EAX.i38
  %5842 = zext i32 %5841 to i64
  %5843 = load i64, i64* %PC.i37
  %5844 = add i64 %5843, 2
  store i64 %5844, i64* %PC.i37
  %5845 = and i64 %5842, 4294967295
  store i64 %5845, i64* %RDX.i39, align 8
  store %struct.Memory* %loadMem_491208, %struct.Memory** %MEMORY
  %loadMem_49120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 11
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 15
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5854 to i64*
  %5855 = load i64, i64* %RBP.i36
  %5856 = sub i64 %5855, 16
  %5857 = load i64, i64* %PC.i34
  %5858 = add i64 %5857, 4
  store i64 %5858, i64* %PC.i34
  %5859 = inttoptr i64 %5856 to i64*
  %5860 = load i64, i64* %5859
  store i64 %5860, i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_49120a, %struct.Memory** %MEMORY
  %loadMem1_49120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 33
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5863 to i64*
  %5864 = load i64, i64* %PC.i33
  %5865 = add i64 %5864, -590430
  %5866 = load i64, i64* %PC.i33
  %5867 = add i64 %5866, 5
  %5868 = load i64, i64* %PC.i33
  %5869 = add i64 %5868, 5
  store i64 %5869, i64* %PC.i33
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5871 = load i64, i64* %5870, align 8
  %5872 = add i64 %5871, -8
  %5873 = inttoptr i64 %5872 to i64*
  store i64 %5867, i64* %5873
  store i64 %5872, i64* %5870, align 8
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5865, i64* %5874, align 8
  store %struct.Memory* %loadMem1_49120e, %struct.Memory** %MEMORY
  %loadMem2_49120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49120e = load i64, i64* %3
  %5875 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_49120e)
  store %struct.Memory* %5875, %struct.Memory** %MEMORY
  %loadMem_491213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5877 = getelementptr inbounds %struct.GPR, %struct.GPR* %5876, i32 0, i32 33
  %5878 = getelementptr inbounds %struct.Reg, %struct.Reg* %5877, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5878 to i64*
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5880 = getelementptr inbounds %struct.GPR, %struct.GPR* %5879, i32 0, i32 1
  %5881 = getelementptr inbounds %struct.Reg, %struct.Reg* %5880, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %5881 to i32*
  %5882 = load i32, i32* %EAX.i30
  %5883 = zext i32 %5882 to i64
  %5884 = load i64, i64* %PC.i29
  %5885 = add i64 %5884, 3
  store i64 %5885, i64* %PC.i29
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5886, align 1
  %5887 = and i32 %5882, 255
  %5888 = call i32 @llvm.ctpop.i32(i32 %5887)
  %5889 = trunc i32 %5888 to i8
  %5890 = and i8 %5889, 1
  %5891 = xor i8 %5890, 1
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5891, i8* %5892, align 1
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5893, align 1
  %5894 = icmp eq i32 %5882, 0
  %5895 = zext i1 %5894 to i8
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5895, i8* %5896, align 1
  %5897 = lshr i32 %5882, 31
  %5898 = trunc i32 %5897 to i8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5898, i8* %5899, align 1
  %5900 = lshr i32 %5882, 31
  %5901 = xor i32 %5897, %5900
  %5902 = add i32 %5901, %5900
  %5903 = icmp eq i32 %5902, 2
  %5904 = zext i1 %5903 to i8
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5904, i8* %5905, align 1
  store %struct.Memory* %loadMem_491213, %struct.Memory** %MEMORY
  %loadMem_491216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 33
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5908 to i64*
  %5909 = load i64, i64* %PC.i28
  %5910 = add i64 %5909, 18
  %5911 = load i64, i64* %PC.i28
  %5912 = add i64 %5911, 6
  %5913 = load i64, i64* %PC.i28
  %5914 = add i64 %5913, 6
  store i64 %5914, i64* %PC.i28
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5916 = load i8, i8* %5915, align 1
  %5917 = icmp eq i8 %5916, 0
  %5918 = zext i1 %5917 to i8
  store i8 %5918, i8* %BRANCH_TAKEN, align 1
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5920 = select i1 %5917, i64 %5910, i64 %5912
  store i64 %5920, i64* %5919, align 8
  store %struct.Memory* %loadMem_491216, %struct.Memory** %MEMORY
  %loadBr_491216 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491216 = icmp eq i8 %loadBr_491216, 1
  br i1 %cmpBr_491216, label %block_.L_491228, label %block_49121c

block_49121c:                                     ; preds = %block_.L_4911f9
  %loadMem_49121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 33
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5923 to i64*
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 15
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %5926 to i64*
  %5927 = load i64, i64* %RBP.i27
  %5928 = sub i64 %5927, 4
  %5929 = load i64, i64* %PC.i26
  %5930 = add i64 %5929, 7
  store i64 %5930, i64* %PC.i26
  %5931 = inttoptr i64 %5928 to i32*
  store i32 39, i32* %5931
  store %struct.Memory* %loadMem_49121c, %struct.Memory** %MEMORY
  %loadMem_491223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5934 to i64*
  %5935 = load i64, i64* %PC.i25
  %5936 = add i64 %5935, 59
  %5937 = load i64, i64* %PC.i25
  %5938 = add i64 %5937, 5
  store i64 %5938, i64* %PC.i25
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5936, i64* %5939, align 8
  store %struct.Memory* %loadMem_491223, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_491228:                                  ; preds = %block_.L_4911f9
  %loadMem_491228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 33
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 9
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5945 to i64*
  %5946 = load i64, i64* %PC.i24
  %5947 = add i64 %5946, 10
  store i64 %5947, i64* %PC.i24
  store i64 ptrtoint (%G__0x586b56_type* @G__0x586b56 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_491228, %struct.Memory** %MEMORY
  %loadMem_491232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 33
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5950 to i64*
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 1
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %5953 to i64*
  %5954 = load i64, i64* %PC.i22
  %5955 = add i64 %5954, 5
  store i64 %5955, i64* %PC.i22
  store i64 2, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_491232, %struct.Memory** %MEMORY
  %loadMem_491237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 1
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %EAX.i21 = bitcast %union.anon* %5961 to i32*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 7
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5964 to i64*
  %5965 = load i32, i32* %EAX.i21
  %5966 = zext i32 %5965 to i64
  %5967 = load i64, i64* %PC.i20
  %5968 = add i64 %5967, 2
  store i64 %5968, i64* %PC.i20
  %5969 = and i64 %5966, 4294967295
  store i64 %5969, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_491237, %struct.Memory** %MEMORY
  %loadMem_491239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 33
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 11
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 15
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %5978 to i64*
  %5979 = load i64, i64* %RBP.i19
  %5980 = sub i64 %5979, 16
  %5981 = load i64, i64* %PC.i18
  %5982 = add i64 %5981, 4
  store i64 %5982, i64* %PC.i18
  %5983 = inttoptr i64 %5980 to i64*
  %5984 = load i64, i64* %5983
  store i64 %5984, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_491239, %struct.Memory** %MEMORY
  %loadMem1_49123d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %PC.i17
  %5989 = add i64 %5988, -590477
  %5990 = load i64, i64* %PC.i17
  %5991 = add i64 %5990, 5
  %5992 = load i64, i64* %PC.i17
  %5993 = add i64 %5992, 5
  store i64 %5993, i64* %PC.i17
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5995 = load i64, i64* %5994, align 8
  %5996 = add i64 %5995, -8
  %5997 = inttoptr i64 %5996 to i64*
  store i64 %5991, i64* %5997
  store i64 %5996, i64* %5994, align 8
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5989, i64* %5998, align 8
  store %struct.Memory* %loadMem1_49123d, %struct.Memory** %MEMORY
  %loadMem2_49123d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49123d = load i64, i64* %3
  %5999 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_49123d)
  store %struct.Memory* %5999, %struct.Memory** %MEMORY
  %loadMem_491242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 1
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6005 to i32*
  %6006 = load i32, i32* %EAX.i
  %6007 = zext i32 %6006 to i64
  %6008 = load i64, i64* %PC.i13
  %6009 = add i64 %6008, 3
  store i64 %6009, i64* %PC.i13
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6010, align 1
  %6011 = and i32 %6006, 255
  %6012 = call i32 @llvm.ctpop.i32(i32 %6011)
  %6013 = trunc i32 %6012 to i8
  %6014 = and i8 %6013, 1
  %6015 = xor i8 %6014, 1
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6015, i8* %6016, align 1
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6017, align 1
  %6018 = icmp eq i32 %6006, 0
  %6019 = zext i1 %6018 to i8
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6019, i8* %6020, align 1
  %6021 = lshr i32 %6006, 31
  %6022 = trunc i32 %6021 to i8
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6022, i8* %6023, align 1
  %6024 = lshr i32 %6006, 31
  %6025 = xor i32 %6021, %6024
  %6026 = add i32 %6025, %6024
  %6027 = icmp eq i32 %6026, 2
  %6028 = zext i1 %6027 to i8
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6028, i8* %6029, align 1
  store %struct.Memory* %loadMem_491242, %struct.Memory** %MEMORY
  %loadMem_491245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 33
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6032 to i64*
  %6033 = load i64, i64* %PC.i12
  %6034 = add i64 %6033, 18
  %6035 = load i64, i64* %PC.i12
  %6036 = add i64 %6035, 6
  %6037 = load i64, i64* %PC.i12
  %6038 = add i64 %6037, 6
  store i64 %6038, i64* %PC.i12
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6040 = load i8, i8* %6039, align 1
  %6041 = icmp eq i8 %6040, 0
  %6042 = zext i1 %6041 to i8
  store i8 %6042, i8* %BRANCH_TAKEN, align 1
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6044 = select i1 %6041, i64 %6034, i64 %6036
  store i64 %6044, i64* %6043, align 8
  store %struct.Memory* %loadMem_491245, %struct.Memory** %MEMORY
  %loadBr_491245 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491245 = icmp eq i8 %loadBr_491245, 1
  br i1 %cmpBr_491245, label %block_.L_491257, label %block_49124b

block_49124b:                                     ; preds = %block_.L_491228
  %loadMem_49124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 33
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6047 to i64*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 15
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6050 to i64*
  %6051 = load i64, i64* %RBP.i11
  %6052 = sub i64 %6051, 4
  %6053 = load i64, i64* %PC.i10
  %6054 = add i64 %6053, 7
  store i64 %6054, i64* %PC.i10
  %6055 = inttoptr i64 %6052 to i32*
  store i32 40, i32* %6055
  store %struct.Memory* %loadMem_49124b, %struct.Memory** %MEMORY
  %loadMem_491252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 33
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6058 to i64*
  %6059 = load i64, i64* %PC.i9
  %6060 = add i64 %6059, 12
  %6061 = load i64, i64* %PC.i9
  %6062 = add i64 %6061, 5
  store i64 %6062, i64* %PC.i9
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6060, i64* %6063, align 8
  store %struct.Memory* %loadMem_491252, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_491257:                                  ; preds = %block_.L_491228
  %loadMem_491257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 33
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 15
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %6069 to i64*
  %6070 = load i64, i64* %RBP.i8
  %6071 = sub i64 %6070, 4
  %6072 = load i64, i64* %PC.i7
  %6073 = add i64 %6072, 7
  store i64 %6073, i64* %PC.i7
  %6074 = inttoptr i64 %6071 to i32*
  store i32 -1, i32* %6074
  store %struct.Memory* %loadMem_491257, %struct.Memory** %MEMORY
  br label %block_.L_49125e

block_.L_49125e:                                  ; preds = %block_.L_491257, %block_49124b, %block_49121c, %block_4911ed, %block_4911be, %block_49118f, %block_491160, %block_491131, %block_491102, %block_4910d3, %block_4910a4, %block_491075, %block_491046, %block_491017, %block_490fe8, %block_490fb9, %block_490f8a, %block_490f5b, %block_490f2c, %block_490efd, %block_490ece, %block_490e9f, %block_490e70, %block_490e41, %block_490e12, %block_490de3, %block_490db4, %block_490d85, %block_490d56, %block_490d27, %block_490cf8, %block_490cc9, %block_490c9a, %block_490c6b, %block_490c3c, %block_490c0d, %block_490bde, %block_490baf, %block_490b80, %block_490b51, %block_490b22, %block_490af3, %block_490ac4, %block_490a6f, %block_490a53
  %loadMem_49125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 33
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6077 to i64*
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 1
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6080 to i64*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 15
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %6083 to i64*
  %6084 = load i64, i64* %RBP.i6
  %6085 = sub i64 %6084, 4
  %6086 = load i64, i64* %PC.i5
  %6087 = add i64 %6086, 3
  store i64 %6087, i64* %PC.i5
  %6088 = inttoptr i64 %6085 to i32*
  %6089 = load i32, i32* %6088
  %6090 = zext i32 %6089 to i64
  store i64 %6090, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_49125e, %struct.Memory** %MEMORY
  %loadMem_491261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 33
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6093 to i64*
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6095 = getelementptr inbounds %struct.GPR, %struct.GPR* %6094, i32 0, i32 13
  %6096 = getelementptr inbounds %struct.Reg, %struct.Reg* %6095, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6096 to i64*
  %6097 = load i64, i64* %RSP.i
  %6098 = load i64, i64* %PC.i4
  %6099 = add i64 %6098, 4
  store i64 %6099, i64* %PC.i4
  %6100 = add i64 32, %6097
  store i64 %6100, i64* %RSP.i, align 8
  %6101 = icmp ult i64 %6100, %6097
  %6102 = icmp ult i64 %6100, 32
  %6103 = or i1 %6101, %6102
  %6104 = zext i1 %6103 to i8
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6104, i8* %6105, align 1
  %6106 = trunc i64 %6100 to i32
  %6107 = and i32 %6106, 255
  %6108 = call i32 @llvm.ctpop.i32(i32 %6107)
  %6109 = trunc i32 %6108 to i8
  %6110 = and i8 %6109, 1
  %6111 = xor i8 %6110, 1
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6111, i8* %6112, align 1
  %6113 = xor i64 32, %6097
  %6114 = xor i64 %6113, %6100
  %6115 = lshr i64 %6114, 4
  %6116 = trunc i64 %6115 to i8
  %6117 = and i8 %6116, 1
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6117, i8* %6118, align 1
  %6119 = icmp eq i64 %6100, 0
  %6120 = zext i1 %6119 to i8
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6120, i8* %6121, align 1
  %6122 = lshr i64 %6100, 63
  %6123 = trunc i64 %6122 to i8
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6123, i8* %6124, align 1
  %6125 = lshr i64 %6097, 63
  %6126 = xor i64 %6122, %6125
  %6127 = add i64 %6126, %6122
  %6128 = icmp eq i64 %6127, 2
  %6129 = zext i1 %6128 to i8
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6129, i8* %6130, align 1
  store %struct.Memory* %loadMem_491261, %struct.Memory** %MEMORY
  %loadMem_491265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 33
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6133 to i64*
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6135 = getelementptr inbounds %struct.GPR, %struct.GPR* %6134, i32 0, i32 15
  %6136 = getelementptr inbounds %struct.Reg, %struct.Reg* %6135, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6136 to i64*
  %6137 = load i64, i64* %PC.i2
  %6138 = add i64 %6137, 1
  store i64 %6138, i64* %PC.i2
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6140 = load i64, i64* %6139, align 8
  %6141 = add i64 %6140, 8
  %6142 = inttoptr i64 %6140 to i64*
  %6143 = load i64, i64* %6142
  store i64 %6143, i64* %RBP.i3, align 8
  store i64 %6141, i64* %6139, align 8
  store %struct.Memory* %loadMem_491265, %struct.Memory** %MEMORY
  %loadMem_491266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 33
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6146 to i64*
  %6147 = load i64, i64* %PC.i1
  %6148 = add i64 %6147, 1
  store i64 %6148, i64* %PC.i1
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6151 = load i64, i64* %6150, align 8
  %6152 = inttoptr i64 %6151 to i64*
  %6153 = load i64, i64* %6152
  store i64 %6153, i64* %6149, align 8
  %6154 = add i64 %6151, 8
  store i64 %6154, i64* %6150, align 8
  store %struct.Memory* %loadMem_491266, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_491266
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_movq__0x57a92d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a92d_type* @G__0x57a92d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x11__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 2, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490a5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_MINUS0x11__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.toupper_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl__cl___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %14 to i32
  %18 = shl i32 %17, 24
  %19 = ashr exact i32 %18, 24
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x41___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 65
  %14 = icmp ult i32 %9, 65
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 65, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_490a5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5a___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 90
  %14 = icmp ult i32 %9, 90
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 90, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_490a5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_MINUS0x11__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x49___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 73
  %14 = icmp ult i32 %9, 73
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 73, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_490a5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3f___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 63
  %14 = icmp ult i32 %9, 63
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 63, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490a7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x12__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 18, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_490a80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 32
  %14 = icmp ult i32 %9, 32
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 32, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490aa1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586a9a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586a9a_type* @G__0x586a9a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 9, i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_490ad0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x9__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 9, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586aa4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586aa4_type* @G__0x586aa4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490aff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xa__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 10, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586aae___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586aae_type* @G__0x586aae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490b2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x11__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 17, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586ab8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586ab8_type* @G__0x586ab8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490b5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x23__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 35, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586ac4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586ac4_type* @G__0x586ac4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490b8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x24__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 36, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5877c3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5877c3_type* @G__0x5877c3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490bbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 12, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586ad0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586ad0_type* @G__0x586ad0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490bea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x29__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 41, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x58742a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58742a_type* @G__0x58742a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490c19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xb__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 11, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586add___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586add_type* @G__0x586add to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490c48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 16, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586ae5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586ae5_type* @G__0x586ae5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490c77(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1c__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 28, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586aef___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586aef_type* @G__0x586aef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490ca6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586af6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586af6_type* @G__0x586af6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490cd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1e__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 30, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586aff___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586aff_type* @G__0x586aff to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490d04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1f__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 31, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b09___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b09_type* @G__0x586b09 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490d33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1d__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 29, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fc64___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fc64_type* @G__0x57fc64 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490d62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xe__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 14, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b12___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b12_type* @G__0x586b12 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490d91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 7, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586eef___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586eef_type* @G__0x586eef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490dc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xd__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 13, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x585698___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585698_type* @G__0x585698 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490def(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 8, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b19___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b19_type* @G__0x586b19 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490e1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 15, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b1e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b1e_type* @G__0x586b1e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490e4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 6, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b24___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b24_type* @G__0x586b24 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490e7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x25__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 37, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5857db___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5857db_type* @G__0x5857db to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490eab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x26__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 38, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5835e4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5835e4_type* @G__0x5835e4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490eda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 4, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b2a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b2a_type* @G__0x586b2a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490f09(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x21__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 33, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b2f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b2f_type* @G__0x586b2f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490f38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x22__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 34, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a763___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a763_type* @G__0x57a763 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490f67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57f610___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f610_type* @G__0x57f610 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490f96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x58730e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58730e_type* @G__0x58730e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490fc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x13__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 19, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b34___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b34_type* @G__0x586b34 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_490ff4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x14__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 20, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57c0a9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c0a9_type* @G__0x57c0a9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_491023(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57b705___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b705_type* @G__0x57b705 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_491052(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x16__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 22, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b3c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b3c_type* @G__0x586b3c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_491081(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1a__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 26, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a760___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a760_type* @G__0x57a760 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4910b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1b__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 27, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b44___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b44_type* @G__0x586b44 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4910df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x585f74___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585f74_type* @G__0x585f74 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_49110e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5856fa___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5856fa_type* @G__0x5856fa to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_49113d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57fdf5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fdf5_type* @G__0x57fdf5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_49116c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x17__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 23, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b49___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b49_type* @G__0x586b49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_49119b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x18__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 24, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5861b6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5861b6_type* @G__0x5861b6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4911ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x19__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 25, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b51___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b51_type* @G__0x586b51 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4911f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x20__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 32, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x585d71___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x585d71_type* @G__0x585d71 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_491228(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x27__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 39, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x586b56___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586b56_type* @G__0x586b56 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_491257(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x28__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 40, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
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

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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
