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
%G__0x455d2b_type = type <{ [8 x i8] }>
%G__0x455d33_type = type <{ [8 x i8] }>
%G__0x458ccb_type = type <{ [8 x i8] }>
%G__0x458ce3_type = type <{ [8 x i8] }>
%G__0x458cfb_type = type <{ [8 x i8] }>
%G__0x458cfe_type = type <{ [8 x i8] }>
%G__0x45992c_type = type <{ [8 x i8] }>
%G__0x459931_type = type <{ [8 x i8] }>
%G__0x4599e3_type = type <{ [8 x i8] }>
%G__0x459a08_type = type <{ [8 x i8] }>
%G__0x459a0d_type = type <{ [8 x i8] }>
%G__0x459a12_type = type <{ [8 x i8] }>
%G__0x459a17_type = type <{ [8 x i8] }>
%G__0x459a1c_type = type <{ [8 x i8] }>
%G__0x459a49_type = type <{ [8 x i8] }>
%G__0x459a76_type = type <{ [8 x i8] }>
%G__0x459aa3_type = type <{ [8 x i8] }>
%G__0x459fa3_type = type <{ [8 x i8] }>
%G__0x459fa8_type = type <{ [8 x i8] }>
%G__0x459fae_type = type <{ [8 x i8] }>
%G__0x459fbc_type = type <{ [8 x i8] }>
%G__0x459fca_type = type <{ [8 x i8] }>
%G__0x459fd9_type = type <{ [8 x i8] }>
%G__0x459fe0_type = type <{ [8 x i8] }>
%G__0x459fe7_type = type <{ [8 x i8] }>
%G__0x459ff0_type = type <{ [8 x i8] }>
%G__0x459ff7_type = type <{ [8 x i8] }>
%G__0x459fff_type = type <{ [8 x i8] }>
%G__0x45a005_type = type <{ [8 x i8] }>
%G__0x45a00b_type = type <{ [8 x i8] }>
%G__0x45a00e_type = type <{ [8 x i8] }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
%G__0x45a46f_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G__0x455d2b = global %G__0x455d2b_type zeroinitializer
@G__0x455d33 = global %G__0x455d33_type zeroinitializer
@G__0x458ccb = global %G__0x458ccb_type zeroinitializer
@G__0x458ce3 = global %G__0x458ce3_type zeroinitializer
@G__0x458cfb = global %G__0x458cfb_type zeroinitializer
@G__0x458cfe = global %G__0x458cfe_type zeroinitializer
@G__0x45992c = global %G__0x45992c_type zeroinitializer
@G__0x459931 = global %G__0x459931_type zeroinitializer
@G__0x4599e3 = global %G__0x4599e3_type zeroinitializer
@G__0x459a08 = global %G__0x459a08_type zeroinitializer
@G__0x459a0d = global %G__0x459a0d_type zeroinitializer
@G__0x459a12 = global %G__0x459a12_type zeroinitializer
@G__0x459a17 = global %G__0x459a17_type zeroinitializer
@G__0x459a1c = global %G__0x459a1c_type zeroinitializer
@G__0x459a49 = global %G__0x459a49_type zeroinitializer
@G__0x459a76 = global %G__0x459a76_type zeroinitializer
@G__0x459aa3 = global %G__0x459aa3_type zeroinitializer
@G__0x459fa3 = global %G__0x459fa3_type zeroinitializer
@G__0x459fa8 = global %G__0x459fa8_type zeroinitializer
@G__0x459fae = global %G__0x459fae_type zeroinitializer
@G__0x459fbc = global %G__0x459fbc_type zeroinitializer
@G__0x459fca = global %G__0x459fca_type zeroinitializer
@G__0x459fd9 = global %G__0x459fd9_type zeroinitializer
@G__0x459fe0 = global %G__0x459fe0_type zeroinitializer
@G__0x459fe7 = global %G__0x459fe7_type zeroinitializer
@G__0x459ff0 = global %G__0x459ff0_type zeroinitializer
@G__0x459ff7 = global %G__0x459ff7_type zeroinitializer
@G__0x459fff = global %G__0x459fff_type zeroinitializer
@G__0x45a005 = global %G__0x45a005_type zeroinitializer
@G__0x45a00b = global %G__0x45a00b_type zeroinitializer
@G__0x45a00e = global %G__0x45a00e_type zeroinitializer
@G__0x45a1f5 = global %G__0x45a1f5_type zeroinitializer
@G__0x45a46f = global %G__0x45a46f_type zeroinitializer

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

declare %struct.Memory* @sub_446320.sre_fgets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446800.IsBlankline(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401700.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43f970.Seqtype(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @SeqfileFormat(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43f1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43f1d0, %struct.Memory** %MEMORY
  %loadMem_43f1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i11 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i11
  %27 = load i64, i64* %PC.i10
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i10
  store i64 %26, i64* %RBP.i12, align 8
  store %struct.Memory* %loadMem_43f1d1, %struct.Memory** %MEMORY
  %loadMem_43f1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i122 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i122
  %36 = load i64, i64* %PC.i121
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i121
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i122, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_43f1d4, %struct.Memory** %MEMORY
  %loadMem_43f1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i138 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i139
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i138
  %79 = load i64, i64* %PC.i137
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i137
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_43f1d8, %struct.Memory** %MEMORY
  %loadMem_43f1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i158
  %89 = sub i64 %88, 24
  %90 = load i64, i64* %PC.i157
  %91 = add i64 %90, 7
  store i64 %91, i64* %PC.i157
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92
  store %struct.Memory* %loadMem_43f1dc, %struct.Memory** %MEMORY
  %loadMem_43f1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i174
  %100 = sub i64 %99, 16
  %101 = load i64, i64* %PC.i173
  %102 = add i64 %101, 8
  store i64 %102, i64* %PC.i173
  %103 = inttoptr i64 %100 to i64*
  store i64 0, i64* %103
  store %struct.Memory* %loadMem_43f1e3, %struct.Memory** %MEMORY
  %loadMem_43f1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i244
  %111 = sub i64 %110, 20
  %112 = load i64, i64* %PC.i243
  %113 = add i64 %112, 7
  store i64 %113, i64* %PC.i243
  %114 = inttoptr i64 %111 to i32*
  store i32 0, i32* %114
  store %struct.Memory* %loadMem_43f1eb, %struct.Memory** %MEMORY
  %loadMem_43f1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i260
  %122 = sub i64 %121, 28
  %123 = load i64, i64* %PC.i259
  %124 = add i64 %123, 7
  store i64 %124, i64* %PC.i259
  %125 = inttoptr i64 %122 to i32*
  store i32 0, i32* %125
  store %struct.Memory* %loadMem_43f1f2, %struct.Memory** %MEMORY
  %loadMem_43f1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i279
  %133 = sub i64 %132, 68
  %134 = load i64, i64* %PC.i278
  %135 = add i64 %134, 7
  store i64 %135, i64* %PC.i278
  %136 = inttoptr i64 %133 to i32*
  store i32 0, i32* %136
  store %struct.Memory* %loadMem_43f1f9, %struct.Memory** %MEMORY
  br label %block_.L_43f200

block_.L_43f200:                                  ; preds = %block_.L_43f857, %block_43f7e7, %block_43f7c2, %block_43f22d, %entry
  %loadMem_43f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 11
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RDI.i295 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i296
  %147 = sub i64 %146, 16
  %148 = load i64, i64* %PC.i294
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC.i294
  store i64 %147, i64* %RDI.i295, align 8
  store %struct.Memory* %loadMem_43f200, %struct.Memory** %MEMORY
  %loadMem_43f204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RSI.i312 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i313
  %160 = sub i64 %159, 20
  %161 = load i64, i64* %PC.i311
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC.i311
  store i64 %160, i64* %RSI.i312, align 8
  store %struct.Memory* %loadMem_43f204, %struct.Memory** %MEMORY
  %loadMem_43f208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %RBP.i330
  %173 = sub i64 %172, 8
  %174 = load i64, i64* %PC.i328
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC.i328
  %176 = inttoptr i64 %173 to i64*
  %177 = load i64, i64* %176
  store i64 %177, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_43f208, %struct.Memory** %MEMORY
  %loadMem1_43f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 33
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %PC.i345
  %182 = add i64 %181, 28948
  %183 = load i64, i64* %PC.i345
  %184 = add i64 %183, 5
  %185 = load i64, i64* %PC.i345
  %186 = add i64 %185, 5
  store i64 %186, i64* %PC.i345
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, -8
  %190 = inttoptr i64 %189 to i64*
  store i64 %184, i64* %190
  store i64 %189, i64* %187, align 8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %182, i64* %191, align 8
  store %struct.Memory* %loadMem1_43f20c, %struct.Memory** %MEMORY
  %loadMem2_43f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f20c = load i64, i64* %3
  %call2_43f20c = call %struct.Memory* @sub_446320.sre_fgets(%struct.State* %0, i64 %loadPC_43f20c, %struct.Memory* %loadMem2_43f20c)
  store %struct.Memory* %call2_43f20c, %struct.Memory** %MEMORY
  %loadMem_43f211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %RAX.i361
  %199 = load i64, i64* %PC.i360
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC.i360
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %201, align 1
  %202 = trunc i64 %198 to i32
  %203 = and i32 %202, 255
  %204 = call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %207, i8* %208, align 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %209, align 1
  %210 = icmp eq i64 %198, 0
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %211, i8* %212, align 1
  %213 = lshr i64 %198, 63
  %214 = trunc i64 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %214, i8* %215, align 1
  %216 = lshr i64 %198, 63
  %217 = xor i64 %213, %216
  %218 = add i64 %217, %216
  %219 = icmp eq i64 %218, 2
  %220 = zext i1 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %220, i8* %221, align 1
  store %struct.Memory* %loadMem_43f211, %struct.Memory** %MEMORY
  %loadMem_43f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %PC.i376
  %226 = add i64 %225, 1607
  %227 = load i64, i64* %PC.i376
  %228 = add i64 %227, 6
  %229 = load i64, i64* %PC.i376
  %230 = add i64 %229, 6
  store i64 %230, i64* %PC.i376
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %232 = load i8, i8* %231, align 1
  store i8 %232, i8* %BRANCH_TAKEN, align 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %234 = icmp ne i8 %232, 0
  %235 = select i1 %234, i64 %226, i64 %228
  store i64 %235, i64* %233, align 8
  store %struct.Memory* %loadMem_43f215, %struct.Memory** %MEMORY
  %loadBr_43f215 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f215 = icmp eq i8 %loadBr_43f215, 1
  br i1 %cmpBr_43f215, label %block_.L_43f85c, label %block_43f21b

block_43f21b:                                     ; preds = %block_.L_43f200
  %loadMem_43f21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RDI.i392 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i393
  %246 = sub i64 %245, 16
  %247 = load i64, i64* %PC.i391
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i391
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249
  store i64 %250, i64* %RDI.i392, align 8
  store %struct.Memory* %loadMem_43f21b, %struct.Memory** %MEMORY
  %loadMem1_43f21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %PC.i408
  %255 = add i64 %254, 30177
  %256 = load i64, i64* %PC.i408
  %257 = add i64 %256, 5
  %258 = load i64, i64* %PC.i408
  %259 = add i64 %258, 5
  store i64 %259, i64* %PC.i408
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*
  store i64 %257, i64* %263
  store i64 %262, i64* %260, align 8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %255, i64* %264, align 8
  store %struct.Memory* %loadMem1_43f21f, %struct.Memory** %MEMORY
  %loadMem2_43f21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f21f = load i64, i64* %3
  %call2_43f21f = call %struct.Memory* @sub_446800.IsBlankline(%struct.State* %0, i64 %loadPC_43f21f, %struct.Memory* %loadMem2_43f21f)
  store %struct.Memory* %call2_43f21f, %struct.Memory** %MEMORY
  %loadMem_43f224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %EAX.i424 = bitcast %union.anon* %270 to i32*
  %271 = load i32, i32* %EAX.i424
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %PC.i423
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC.i423
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %275, align 1
  %276 = and i32 %271, 255
  %277 = call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %280, i8* %281, align 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %282, align 1
  %283 = icmp eq i32 %271, 0
  %284 = zext i1 %283 to i8
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %284, i8* %285, align 1
  %286 = lshr i32 %271, 31
  %287 = trunc i32 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %287, i8* %288, align 1
  %289 = lshr i32 %271, 31
  %290 = xor i32 %286, %289
  %291 = add i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %293, i8* %294, align 1
  store %struct.Memory* %loadMem_43f224, %struct.Memory** %MEMORY
  %loadMem_43f227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %PC.i439
  %299 = add i64 %298, 11
  %300 = load i64, i64* %PC.i439
  %301 = add i64 %300, 6
  %302 = load i64, i64* %PC.i439
  %303 = add i64 %302, 6
  store i64 %303, i64* %PC.i439
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %305 = load i8, i8* %304, align 1
  store i8 %305, i8* %BRANCH_TAKEN, align 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %307 = icmp ne i8 %305, 0
  %308 = select i1 %307, i64 %299, i64 %301
  store i64 %308, i64* %306, align 8
  store %struct.Memory* %loadMem_43f227, %struct.Memory** %MEMORY
  %loadBr_43f227 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f227 = icmp eq i8 %loadBr_43f227, 1
  br i1 %cmpBr_43f227, label %block_.L_43f232, label %block_43f22d

block_43f22d:                                     ; preds = %block_43f21b
  %loadMem_43f22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %PC.i451
  %313 = add i64 %312, -45
  %314 = load i64, i64* %PC.i451
  %315 = add i64 %314, 5
  store i64 %315, i64* %PC.i451
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %313, i64* %316, align 8
  store %struct.Memory* %loadMem_43f22d, %struct.Memory** %MEMORY
  br label %block_.L_43f200

block_.L_43f232:                                  ; preds = %block_43f21b
  %loadMem_43f232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RBP.i460
  %324 = sub i64 %323, 28
  %325 = load i64, i64* %PC.i459
  %326 = add i64 %325, 4
  store i64 %326, i64* %PC.i459
  %327 = inttoptr i64 %324 to i32*
  %328 = load i32, i32* %327
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %329, align 1
  %330 = and i32 %328, 255
  %331 = call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %334, i8* %335, align 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %336, align 1
  %337 = icmp eq i32 %328, 0
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %338, i8* %339, align 1
  %340 = lshr i32 %328, 31
  %341 = trunc i32 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %341, i8* %342, align 1
  %343 = lshr i32 %328, 31
  %344 = xor i32 %340, %343
  %345 = add i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %347, i8* %348, align 1
  store %struct.Memory* %loadMem_43f232, %struct.Memory** %MEMORY
  %loadMem_43f236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %PC.i535
  %353 = add i64 %352, 563
  %354 = load i64, i64* %PC.i535
  %355 = add i64 %354, 6
  %356 = load i64, i64* %PC.i535
  %357 = add i64 %356, 6
  store i64 %357, i64* %PC.i535
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %359 = load i8, i8* %358, align 1
  %360 = icmp eq i8 %359, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %BRANCH_TAKEN, align 1
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %363 = select i1 %360, i64 %353, i64 %355
  store i64 %363, i64* %362, align 8
  store %struct.Memory* %loadMem_43f236, %struct.Memory** %MEMORY
  %loadBr_43f236 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f236 = icmp eq i8 %loadBr_43f236, 1
  br i1 %cmpBr_43f236, label %block_.L_43f469, label %block_43f23c

block_43f23c:                                     ; preds = %block_.L_43f232
  %loadMem_43f23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 9
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RSI.i551 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %PC.i550
  %371 = add i64 %370, 10
  store i64 %371, i64* %PC.i550
  store i64 ptrtoint (%G__0x459fa3_type* @G__0x459fa3 to i64), i64* %RSI.i551, align 8
  store %struct.Memory* %loadMem_43f23c, %struct.Memory** %MEMORY
  %loadMem_43f246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %PC.i578
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC.i578
  store i64 4, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_43f246, %struct.Memory** %MEMORY
  %loadMem_43f24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %EAX.i598 = bitcast %union.anon* %385 to i32*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 7
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %388 to i64*
  %389 = load i32, i32* %EAX.i598
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC.i597
  %392 = add i64 %391, 2
  store i64 %392, i64* %PC.i597
  %393 = and i64 %390, 4294967295
  store i64 %393, i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_43f24b, %struct.Memory** %MEMORY
  %loadMem_43f24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 11
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RDI.i618 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i619
  %404 = sub i64 %403, 16
  %405 = load i64, i64* %PC.i617
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC.i617
  %407 = inttoptr i64 %404 to i64*
  %408 = load i64, i64* %407
  store i64 %408, i64* %RDI.i618, align 8
  store %struct.Memory* %loadMem_43f24d, %struct.Memory** %MEMORY
  %loadMem1_43f251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i634
  %413 = add i64 %412, -253569
  %414 = load i64, i64* %PC.i634
  %415 = add i64 %414, 5
  %416 = load i64, i64* %PC.i634
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC.i634
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %415, i64* %421
  store i64 %420, i64* %418, align 8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %413, i64* %422, align 8
  store %struct.Memory* %loadMem1_43f251, %struct.Memory** %MEMORY
  %loadMem2_43f251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f251 = load i64, i64* %3
  %423 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f251)
  store %struct.Memory* %423, %struct.Memory** %MEMORY
  %loadMem_43f256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %EAX.i672 = bitcast %union.anon* %429 to i32*
  %430 = load i32, i32* %EAX.i672
  %431 = zext i32 %430 to i64
  %432 = load i64, i64* %PC.i671
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC.i671
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %434, align 1
  %435 = and i32 %430, 255
  %436 = call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %439, i8* %440, align 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %441, align 1
  %442 = icmp eq i32 %430, 0
  %443 = zext i1 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %430, 31
  %446 = trunc i32 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %446, i8* %447, align 1
  %448 = lshr i32 %430, 31
  %449 = xor i32 %445, %448
  %450 = add i32 %449, %448
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %452, i8* %453, align 1
  store %struct.Memory* %loadMem_43f256, %struct.Memory** %MEMORY
  %loadMem_43f259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %PC.i670
  %458 = add i64 %457, 47
  %459 = load i64, i64* %PC.i670
  %460 = add i64 %459, 6
  %461 = load i64, i64* %PC.i670
  %462 = add i64 %461, 6
  store i64 %462, i64* %PC.i670
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8
  store %struct.Memory* %loadMem_43f259, %struct.Memory** %MEMORY
  %loadBr_43f259 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f259 = icmp eq i8 %loadBr_43f259, 1
  br i1 %cmpBr_43f259, label %block_.L_43f288, label %block_43f25f

block_43f25f:                                     ; preds = %block_43f23c
  %loadMem_43f25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 9
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RSI.i669 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %PC.i668
  %476 = add i64 %475, 10
  store i64 %476, i64* %PC.i668
  store i64 ptrtoint (%G__0x459fa8_type* @G__0x459fa8 to i64), i64* %RSI.i669, align 8
  store %struct.Memory* %loadMem_43f25f, %struct.Memory** %MEMORY
  %loadMem_43f269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 11
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RDI.i666 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i667
  %487 = sub i64 %486, 16
  %488 = load i64, i64* %PC.i665
  %489 = add i64 %488, 4
  store i64 %489, i64* %PC.i665
  %490 = inttoptr i64 %487 to i64*
  %491 = load i64, i64* %490
  store i64 %491, i64* %RDI.i666, align 8
  store %struct.Memory* %loadMem_43f269, %struct.Memory** %MEMORY
  %loadMem1_43f26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %PC.i664
  %496 = add i64 %495, -252781
  %497 = load i64, i64* %PC.i664
  %498 = add i64 %497, 5
  %499 = load i64, i64* %PC.i664
  %500 = add i64 %499, 5
  store i64 %500, i64* %PC.i664
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = add i64 %502, -8
  %504 = inttoptr i64 %503 to i64*
  store i64 %498, i64* %504
  store i64 %503, i64* %501, align 8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %496, i64* %505, align 8
  store %struct.Memory* %loadMem1_43f26d, %struct.Memory** %MEMORY
  %loadMem2_43f26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f26d = load i64, i64* %3
  %call2_43f26d = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f26d, %struct.Memory* %loadMem2_43f26d)
  store %struct.Memory* %call2_43f26d, %struct.Memory** %MEMORY
  %loadMem_43f272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RAX.i663
  %513 = load i64, i64* %PC.i662
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC.i662
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %515, align 1
  %516 = trunc i64 %512 to i32
  %517 = and i32 %516, 255
  %518 = call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %521, i8* %522, align 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %523, align 1
  %524 = icmp eq i64 %512, 0
  %525 = zext i1 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %525, i8* %526, align 1
  %527 = lshr i64 %512, 63
  %528 = trunc i64 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %528, i8* %529, align 1
  %530 = lshr i64 %512, 63
  %531 = xor i64 %527, %530
  %532 = add i64 %531, %530
  %533 = icmp eq i64 %532, 2
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %534, i8* %535, align 1
  store %struct.Memory* %loadMem_43f272, %struct.Memory** %MEMORY
  %loadMem_43f276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %PC.i661
  %540 = add i64 %539, 18
  %541 = load i64, i64* %PC.i661
  %542 = add i64 %541, 6
  %543 = load i64, i64* %PC.i661
  %544 = add i64 %543, 6
  store i64 %544, i64* %PC.i661
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %546 = load i8, i8* %545, align 1
  store i8 %546, i8* %BRANCH_TAKEN, align 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %548 = icmp ne i8 %546, 0
  %549 = select i1 %548, i64 %540, i64 %542
  store i64 %549, i64* %547, align 8
  store %struct.Memory* %loadMem_43f276, %struct.Memory** %MEMORY
  %loadBr_43f276 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f276 = icmp eq i8 %loadBr_43f276, 1
  br i1 %cmpBr_43f276, label %block_.L_43f288, label %block_43f27c

block_43f27c:                                     ; preds = %block_43f25f
  %loadMem_43f27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 15
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %RBP.i660
  %557 = sub i64 %556, 24
  %558 = load i64, i64* %PC.i659
  %559 = add i64 %558, 7
  store i64 %559, i64* %PC.i659
  %560 = inttoptr i64 %557 to i32*
  store i32 16, i32* %560
  store %struct.Memory* %loadMem_43f27c, %struct.Memory** %MEMORY
  %loadMem_43f283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %PC.i658
  %565 = add i64 %564, 1558
  %566 = load i64, i64* %PC.i658
  %567 = add i64 %566, 5
  store i64 %567, i64* %PC.i658
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %565, i64* %568, align 8
  store %struct.Memory* %loadMem_43f283, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f288:                                  ; preds = %block_43f25f, %block_43f23c
  %loadMem_43f288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 15
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %RBP.i657
  %579 = sub i64 %578, 16
  %580 = load i64, i64* %PC.i655
  %581 = add i64 %580, 4
  store i64 %581, i64* %PC.i655
  %582 = inttoptr i64 %579 to i64*
  %583 = load i64, i64* %582
  store i64 %583, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_43f288, %struct.Memory** %MEMORY
  %loadMem_43f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 33
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 5
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %592 to i64*
  %593 = load i64, i64* %RAX.i653
  %594 = load i64, i64* %PC.i652
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i652
  %596 = inttoptr i64 %593 to i8*
  %597 = load i8, i8* %596
  %598 = sext i8 %597 to i64
  %599 = and i64 %598, 4294967295
  store i64 %599, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_43f28c, %struct.Memory** %MEMORY
  %loadMem_43f28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %ECX.i651 = bitcast %union.anon* %605 to i32*
  %606 = load i32, i32* %ECX.i651
  %607 = zext i32 %606 to i64
  %608 = load i64, i64* %PC.i650
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC.i650
  %610 = sub i32 %606, 62
  %611 = icmp ult i32 %606, 62
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %612, i8* %613, align 1
  %614 = and i32 %610, 255
  %615 = call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %618, i8* %619, align 1
  %620 = xor i64 62, %607
  %621 = trunc i64 %620 to i32
  %622 = xor i32 %621, %610
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %625, i8* %626, align 1
  %627 = icmp eq i32 %610, 0
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %628, i8* %629, align 1
  %630 = lshr i32 %610, 31
  %631 = trunc i32 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %631, i8* %632, align 1
  %633 = lshr i32 %606, 31
  %634 = xor i32 %630, %633
  %635 = add i32 %634, %633
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %637, i8* %638, align 1
  store %struct.Memory* %loadMem_43f28f, %struct.Memory** %MEMORY
  %loadMem_43f292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %PC.i649
  %643 = add i64 %642, 18
  %644 = load i64, i64* %PC.i649
  %645 = add i64 %644, 6
  %646 = load i64, i64* %PC.i649
  %647 = add i64 %646, 6
  store i64 %647, i64* %PC.i649
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %649 = load i8, i8* %648, align 1
  %650 = icmp eq i8 %649, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %BRANCH_TAKEN, align 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %653 = select i1 %650, i64 %643, i64 %645
  store i64 %653, i64* %652, align 8
  store %struct.Memory* %loadMem_43f292, %struct.Memory** %MEMORY
  %loadBr_43f292 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f292 = icmp eq i8 %loadBr_43f292, 1
  br i1 %cmpBr_43f292, label %block_.L_43f2a4, label %block_43f298

block_43f298:                                     ; preds = %block_.L_43f288
  %loadMem_43f298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 33
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 15
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RBP.i648
  %661 = sub i64 %660, 24
  %662 = load i64, i64* %PC.i647
  %663 = add i64 %662, 7
  store i64 %663, i64* %PC.i647
  %664 = inttoptr i64 %661 to i32*
  store i32 7, i32* %664
  store %struct.Memory* %loadMem_43f298, %struct.Memory** %MEMORY
  %loadMem_43f29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %PC.i646
  %669 = add i64 %668, 1530
  %670 = load i64, i64* %PC.i646
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC.i646
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %669, i64* %672, align 8
  store %struct.Memory* %loadMem_43f29f, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f2a4:                                  ; preds = %block_.L_43f288
  %loadMem_43f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 9
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RSI.i645 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %PC.i644
  %680 = add i64 %679, 10
  store i64 %680, i64* %PC.i644
  store i64 ptrtoint (%G__0x459fae_type* @G__0x459fae to i64), i64* %RSI.i645, align 8
  store %struct.Memory* %loadMem_43f2a4, %struct.Memory** %MEMORY
  %loadMem_43f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %PC.i642
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC.i642
  store i64 13, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_43f2ae, %struct.Memory** %MEMORY
  %loadMem_43f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 1
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %EAX.i640 = bitcast %union.anon* %694 to i32*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 7
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %697 to i64*
  %698 = load i32, i32* %EAX.i640
  %699 = zext i32 %698 to i64
  %700 = load i64, i64* %PC.i639
  %701 = add i64 %700, 2
  store i64 %701, i64* %PC.i639
  %702 = and i64 %699, 4294967295
  store i64 %702, i64* %RDX.i641, align 8
  store %struct.Memory* %loadMem_43f2b3, %struct.Memory** %MEMORY
  %loadMem_43f2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 11
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RDI.i637 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 15
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %RBP.i638
  %713 = sub i64 %712, 16
  %714 = load i64, i64* %PC.i636
  %715 = add i64 %714, 4
  store i64 %715, i64* %PC.i636
  %716 = inttoptr i64 %713 to i64*
  %717 = load i64, i64* %716
  store i64 %717, i64* %RDI.i637, align 8
  store %struct.Memory* %loadMem_43f2b5, %struct.Memory** %MEMORY
  %loadMem1_43f2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %PC.i635
  %722 = add i64 %721, -253673
  %723 = load i64, i64* %PC.i635
  %724 = add i64 %723, 5
  %725 = load i64, i64* %PC.i635
  %726 = add i64 %725, 5
  store i64 %726, i64* %PC.i635
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %728 = load i64, i64* %727, align 8
  %729 = add i64 %728, -8
  %730 = inttoptr i64 %729 to i64*
  store i64 %724, i64* %730
  store i64 %729, i64* %727, align 8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %722, i64* %731, align 8
  store %struct.Memory* %loadMem1_43f2b9, %struct.Memory** %MEMORY
  %loadMem2_43f2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f2b9 = load i64, i64* %3
  %732 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f2b9)
  store %struct.Memory* %732, %struct.Memory** %MEMORY
  %loadMem_43f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %EAX.i633 = bitcast %union.anon* %738 to i32*
  %739 = load i32, i32* %EAX.i633
  %740 = zext i32 %739 to i64
  %741 = load i64, i64* %PC.i632
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC.i632
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %743, align 1
  %744 = and i32 %739, 255
  %745 = call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %748, i8* %749, align 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %750, align 1
  %751 = icmp eq i32 %739, 0
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %752, i8* %753, align 1
  %754 = lshr i32 %739, 31
  %755 = trunc i32 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %755, i8* %756, align 1
  %757 = lshr i32 %739, 31
  %758 = xor i32 %754, %757
  %759 = add i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %761, i8* %762, align 1
  store %struct.Memory* %loadMem_43f2be, %struct.Memory** %MEMORY
  %loadMem_43f2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i631
  %767 = add i64 %766, 41
  %768 = load i64, i64* %PC.i631
  %769 = add i64 %768, 6
  %770 = load i64, i64* %PC.i631
  %771 = add i64 %770, 6
  store i64 %771, i64* %PC.i631
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %773 = load i8, i8* %772, align 1
  store i8 %773, i8* %BRANCH_TAKEN, align 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %775 = icmp ne i8 %773, 0
  %776 = select i1 %775, i64 %767, i64 %769
  store i64 %776, i64* %774, align 8
  store %struct.Memory* %loadMem_43f2c1, %struct.Memory** %MEMORY
  %loadBr_43f2c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2c1 = icmp eq i8 %loadBr_43f2c1, 1
  br i1 %cmpBr_43f2c1, label %block_.L_43f2ea, label %block_43f2c7

block_43f2c7:                                     ; preds = %block_.L_43f2a4
  %loadMem_43f2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 9
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RSI.i630 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %PC.i629
  %784 = add i64 %783, 10
  store i64 %784, i64* %PC.i629
  store i64 ptrtoint (%G__0x459fbc_type* @G__0x459fbc to i64), i64* %RSI.i630, align 8
  store %struct.Memory* %loadMem_43f2c7, %struct.Memory** %MEMORY
  %loadMem_43f2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 1
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %790 to i64*
  %791 = load i64, i64* %PC.i627
  %792 = add i64 %791, 5
  store i64 %792, i64* %PC.i627
  store i64 13, i64* %RAX.i628, align 8
  store %struct.Memory* %loadMem_43f2d1, %struct.Memory** %MEMORY
  %loadMem_43f2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %EAX.i625 = bitcast %union.anon* %798 to i32*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 7
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %801 to i64*
  %802 = load i32, i32* %EAX.i625
  %803 = zext i32 %802 to i64
  %804 = load i64, i64* %PC.i624
  %805 = add i64 %804, 2
  store i64 %805, i64* %PC.i624
  %806 = and i64 %803, 4294967295
  store i64 %806, i64* %RDX.i626, align 8
  store %struct.Memory* %loadMem_43f2d6, %struct.Memory** %MEMORY
  %loadMem_43f2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 11
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RDI.i622 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 15
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %815 to i64*
  %816 = load i64, i64* %RBP.i623
  %817 = sub i64 %816, 16
  %818 = load i64, i64* %PC.i621
  %819 = add i64 %818, 4
  store i64 %819, i64* %PC.i621
  %820 = inttoptr i64 %817 to i64*
  %821 = load i64, i64* %820
  store i64 %821, i64* %RDI.i622, align 8
  store %struct.Memory* %loadMem_43f2d8, %struct.Memory** %MEMORY
  %loadMem1_43f2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %PC.i620
  %826 = add i64 %825, -253708
  %827 = load i64, i64* %PC.i620
  %828 = add i64 %827, 5
  %829 = load i64, i64* %PC.i620
  %830 = add i64 %829, 5
  store i64 %830, i64* %PC.i620
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %832 = load i64, i64* %831, align 8
  %833 = add i64 %832, -8
  %834 = inttoptr i64 %833 to i64*
  store i64 %828, i64* %834
  store i64 %833, i64* %831, align 8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %826, i64* %835, align 8
  store %struct.Memory* %loadMem1_43f2dc, %struct.Memory** %MEMORY
  %loadMem2_43f2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f2dc = load i64, i64* %3
  %836 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f2dc)
  store %struct.Memory* %836, %struct.Memory** %MEMORY
  %loadMem_43f2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 1
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %EAX.i616 = bitcast %union.anon* %842 to i32*
  %843 = load i32, i32* %EAX.i616
  %844 = zext i32 %843 to i64
  %845 = load i64, i64* %PC.i615
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC.i615
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %847, align 1
  %848 = and i32 %843, 255
  %849 = call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %852, i8* %853, align 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %854, align 1
  %855 = icmp eq i32 %843, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1
  %858 = lshr i32 %843, 31
  %859 = trunc i32 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1
  %861 = lshr i32 %843, 31
  %862 = xor i32 %858, %861
  %863 = add i32 %862, %861
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %865, i8* %866, align 1
  store %struct.Memory* %loadMem_43f2e1, %struct.Memory** %MEMORY
  %loadMem_43f2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %869 to i64*
  %870 = load i64, i64* %PC.i614
  %871 = add i64 %870, 18
  %872 = load i64, i64* %PC.i614
  %873 = add i64 %872, 6
  %874 = load i64, i64* %PC.i614
  %875 = add i64 %874, 6
  store i64 %875, i64* %PC.i614
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %877 = load i8, i8* %876, align 1
  %878 = icmp eq i8 %877, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %BRANCH_TAKEN, align 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %881 = select i1 %878, i64 %871, i64 %873
  store i64 %881, i64* %880, align 8
  store %struct.Memory* %loadMem_43f2e4, %struct.Memory** %MEMORY
  %loadBr_43f2e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2e4 = icmp eq i8 %loadBr_43f2e4, 1
  br i1 %cmpBr_43f2e4, label %block_.L_43f2f6, label %block_.L_43f2ea

block_.L_43f2ea:                                  ; preds = %block_43f2c7, %block_.L_43f2a4
  %loadMem_43f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 15
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RBP.i613
  %889 = sub i64 %888, 24
  %890 = load i64, i64* %PC.i612
  %891 = add i64 %890, 7
  store i64 %891, i64* %PC.i612
  %892 = inttoptr i64 %889 to i32*
  store i32 5, i32* %892
  store %struct.Memory* %loadMem_43f2ea, %struct.Memory** %MEMORY
  %loadMem_43f2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %895 to i64*
  %896 = load i64, i64* %PC.i611
  %897 = add i64 %896, 1448
  %898 = load i64, i64* %PC.i611
  %899 = add i64 %898, 5
  store i64 %899, i64* %PC.i611
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %897, i64* %900, align 8
  store %struct.Memory* %loadMem_43f2f1, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f2f6:                                  ; preds = %block_43f2c7
  %loadMem_43f2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 9
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RSI.i610 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %PC.i609
  %908 = add i64 %907, 10
  store i64 %908, i64* %PC.i609
  store i64 ptrtoint (%G__0x459fca_type* @G__0x459fca to i64), i64* %RSI.i610, align 8
  store %struct.Memory* %loadMem_43f2f6, %struct.Memory** %MEMORY
  %loadMem_43f300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 1
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %PC.i607
  %916 = add i64 %915, 5
  store i64 %916, i64* %PC.i607
  store i64 14, i64* %RAX.i608, align 8
  store %struct.Memory* %loadMem_43f300, %struct.Memory** %MEMORY
  %loadMem_43f305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 1
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %EAX.i605 = bitcast %union.anon* %922 to i32*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 7
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RDX.i606 = bitcast %union.anon* %925 to i64*
  %926 = load i32, i32* %EAX.i605
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i604
  %929 = add i64 %928, 2
  store i64 %929, i64* %PC.i604
  %930 = and i64 %927, 4294967295
  store i64 %930, i64* %RDX.i606, align 8
  store %struct.Memory* %loadMem_43f305, %struct.Memory** %MEMORY
  %loadMem_43f307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 11
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RDI.i602 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i603
  %941 = sub i64 %940, 16
  %942 = load i64, i64* %PC.i601
  %943 = add i64 %942, 4
  store i64 %943, i64* %PC.i601
  %944 = inttoptr i64 %941 to i64*
  %945 = load i64, i64* %944
  store i64 %945, i64* %RDI.i602, align 8
  store %struct.Memory* %loadMem_43f307, %struct.Memory** %MEMORY
  %loadMem1_43f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %PC.i600
  %950 = add i64 %949, -253755
  %951 = load i64, i64* %PC.i600
  %952 = add i64 %951, 5
  %953 = load i64, i64* %PC.i600
  %954 = add i64 %953, 5
  store i64 %954, i64* %PC.i600
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %956 = load i64, i64* %955, align 8
  %957 = add i64 %956, -8
  %958 = inttoptr i64 %957 to i64*
  store i64 %952, i64* %958
  store i64 %957, i64* %955, align 8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %950, i64* %959, align 8
  store %struct.Memory* %loadMem1_43f30b, %struct.Memory** %MEMORY
  %loadMem2_43f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f30b = load i64, i64* %3
  %960 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f30b)
  store %struct.Memory* %960, %struct.Memory** %MEMORY
  %loadMem_43f310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 1
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %EAX.i596 = bitcast %union.anon* %966 to i32*
  %967 = load i32, i32* %EAX.i596
  %968 = zext i32 %967 to i64
  %969 = load i64, i64* %PC.i595
  %970 = add i64 %969, 3
  store i64 %970, i64* %PC.i595
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %971, align 1
  %972 = and i32 %967, 255
  %973 = call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %976, i8* %977, align 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %978, align 1
  %979 = icmp eq i32 %967, 0
  %980 = zext i1 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %980, i8* %981, align 1
  %982 = lshr i32 %967, 31
  %983 = trunc i32 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %983, i8* %984, align 1
  %985 = lshr i32 %967, 31
  %986 = xor i32 %982, %985
  %987 = add i32 %986, %985
  %988 = icmp eq i32 %987, 2
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %989, i8* %990, align 1
  store %struct.Memory* %loadMem_43f310, %struct.Memory** %MEMORY
  %loadMem_43f313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %PC.i594
  %995 = add i64 %994, 18
  %996 = load i64, i64* %PC.i594
  %997 = add i64 %996, 6
  %998 = load i64, i64* %PC.i594
  %999 = add i64 %998, 6
  store i64 %999, i64* %PC.i594
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1001 = load i8, i8* %1000, align 1
  %1002 = icmp eq i8 %1001, 0
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %BRANCH_TAKEN, align 1
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1005 = select i1 %1002, i64 %995, i64 %997
  store i64 %1005, i64* %1004, align 8
  store %struct.Memory* %loadMem_43f313, %struct.Memory** %MEMORY
  %loadBr_43f313 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f313 = icmp eq i8 %loadBr_43f313, 1
  br i1 %cmpBr_43f313, label %block_.L_43f325, label %block_43f319

block_43f319:                                     ; preds = %block_.L_43f2f6
  %loadMem_43f319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 15
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RBP.i593
  %1013 = sub i64 %1012, 24
  %1014 = load i64, i64* %PC.i592
  %1015 = add i64 %1014, 7
  store i64 %1015, i64* %PC.i592
  %1016 = inttoptr i64 %1013 to i32*
  store i32 101, i32* %1016
  store %struct.Memory* %loadMem_43f319, %struct.Memory** %MEMORY
  %loadMem_43f320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1019 to i64*
  %1020 = load i64, i64* %PC.i591
  %1021 = add i64 %1020, 1401
  %1022 = load i64, i64* %PC.i591
  %1023 = add i64 %1022, 5
  store i64 %1023, i64* %PC.i591
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1021, i64* %1024, align 8
  store %struct.Memory* %loadMem_43f320, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f325:                                  ; preds = %block_.L_43f2f6
  %loadMem_43f325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 9
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RSI.i590 = bitcast %union.anon* %1030 to i64*
  %1031 = load i64, i64* %PC.i589
  %1032 = add i64 %1031, 10
  store i64 %1032, i64* %PC.i589
  store i64 ptrtoint (%G__0x455d2b_type* @G__0x455d2b to i64), i64* %RSI.i590, align 8
  store %struct.Memory* %loadMem_43f325, %struct.Memory** %MEMORY
  %loadMem_43f32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 1
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %PC.i587
  %1040 = add i64 %1039, 5
  store i64 %1040, i64* %PC.i587
  store i64 7, i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_43f32f, %struct.Memory** %MEMORY
  %loadMem_43f334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 1
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %EAX.i585 = bitcast %union.anon* %1046 to i32*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 7
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RDX.i586 = bitcast %union.anon* %1049 to i64*
  %1050 = load i32, i32* %EAX.i585
  %1051 = zext i32 %1050 to i64
  %1052 = load i64, i64* %PC.i584
  %1053 = add i64 %1052, 2
  store i64 %1053, i64* %PC.i584
  %1054 = and i64 %1051, 4294967295
  store i64 %1054, i64* %RDX.i586, align 8
  store %struct.Memory* %loadMem_43f334, %struct.Memory** %MEMORY
  %loadMem_43f336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 11
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RDI.i582 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 15
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RBP.i583
  %1065 = sub i64 %1064, 16
  %1066 = load i64, i64* %PC.i581
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %PC.i581
  %1068 = inttoptr i64 %1065 to i64*
  %1069 = load i64, i64* %1068
  store i64 %1069, i64* %RDI.i582, align 8
  store %struct.Memory* %loadMem_43f336, %struct.Memory** %MEMORY
  %loadMem1_43f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %PC.i580
  %1074 = add i64 %1073, -253802
  %1075 = load i64, i64* %PC.i580
  %1076 = add i64 %1075, 5
  %1077 = load i64, i64* %PC.i580
  %1078 = add i64 %1077, 5
  store i64 %1078, i64* %PC.i580
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1080 = load i64, i64* %1079, align 8
  %1081 = add i64 %1080, -8
  %1082 = inttoptr i64 %1081 to i64*
  store i64 %1076, i64* %1082
  store i64 %1081, i64* %1079, align 8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1074, i64* %1083, align 8
  store %struct.Memory* %loadMem1_43f33a, %struct.Memory** %MEMORY
  %loadMem2_43f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f33a = load i64, i64* %3
  %1084 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f33a)
  store %struct.Memory* %1084, %struct.Memory** %MEMORY
  %loadMem_43f33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 1
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %1090 to i32*
  %1091 = load i32, i32* %EAX.i577
  %1092 = zext i32 %1091 to i64
  %1093 = load i64, i64* %PC.i576
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i576
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1095, align 1
  %1096 = and i32 %1091, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1102, align 1
  %1103 = icmp eq i32 %1091, 0
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1104, i8* %1105, align 1
  %1106 = lshr i32 %1091, 31
  %1107 = trunc i32 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i32 %1091, 31
  %1110 = xor i32 %1106, %1109
  %1111 = add i32 %1110, %1109
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1113, i8* %1114, align 1
  store %struct.Memory* %loadMem_43f33f, %struct.Memory** %MEMORY
  %loadMem_43f342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %PC.i575
  %1119 = add i64 %1118, 47
  %1120 = load i64, i64* %PC.i575
  %1121 = add i64 %1120, 6
  %1122 = load i64, i64* %PC.i575
  %1123 = add i64 %1122, 6
  store i64 %1123, i64* %PC.i575
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1125 = load i8, i8* %1124, align 1
  %1126 = icmp eq i8 %1125, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %BRANCH_TAKEN, align 1
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1129 = select i1 %1126, i64 %1119, i64 %1121
  store i64 %1129, i64* %1128, align 8
  store %struct.Memory* %loadMem_43f342, %struct.Memory** %MEMORY
  %loadBr_43f342 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f342 = icmp eq i8 %loadBr_43f342, 1
  br i1 %cmpBr_43f342, label %block_.L_43f371, label %block_43f348

block_43f348:                                     ; preds = %block_.L_43f325
  %loadMem_43f348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 9
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %PC.i573
  %1137 = add i64 %1136, 10
  store i64 %1137, i64* %PC.i573
  store i64 ptrtoint (%G__0x455d33_type* @G__0x455d33 to i64), i64* %RSI.i574, align 8
  store %struct.Memory* %loadMem_43f348, %struct.Memory** %MEMORY
  %loadMem_43f352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 11
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RDI.i571 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 15
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %RBP.i572
  %1148 = sub i64 %1147, 16
  %1149 = load i64, i64* %PC.i570
  %1150 = add i64 %1149, 4
  store i64 %1150, i64* %PC.i570
  %1151 = inttoptr i64 %1148 to i64*
  %1152 = load i64, i64* %1151
  store i64 %1152, i64* %RDI.i571, align 8
  store %struct.Memory* %loadMem_43f352, %struct.Memory** %MEMORY
  %loadMem1_43f356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %PC.i569
  %1157 = add i64 %1156, -253014
  %1158 = load i64, i64* %PC.i569
  %1159 = add i64 %1158, 5
  %1160 = load i64, i64* %PC.i569
  %1161 = add i64 %1160, 5
  store i64 %1161, i64* %PC.i569
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1163 = load i64, i64* %1162, align 8
  %1164 = add i64 %1163, -8
  %1165 = inttoptr i64 %1164 to i64*
  store i64 %1159, i64* %1165
  store i64 %1164, i64* %1162, align 8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1157, i64* %1166, align 8
  store %struct.Memory* %loadMem1_43f356, %struct.Memory** %MEMORY
  %loadMem2_43f356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f356 = load i64, i64* %3
  %call2_43f356 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f356, %struct.Memory* %loadMem2_43f356)
  store %struct.Memory* %call2_43f356, %struct.Memory** %MEMORY
  %loadMem_43f35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 1
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %1172 to i64*
  %1173 = load i64, i64* %RAX.i568
  %1174 = load i64, i64* %PC.i567
  %1175 = add i64 %1174, 4
  store i64 %1175, i64* %PC.i567
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1176, align 1
  %1177 = trunc i64 %1173 to i32
  %1178 = and i32 %1177, 255
  %1179 = call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1182, i8* %1183, align 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1184, align 1
  %1185 = icmp eq i64 %1173, 0
  %1186 = zext i1 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i64 %1173, 63
  %1189 = trunc i64 %1188 to i8
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1189, i8* %1190, align 1
  %1191 = lshr i64 %1173, 63
  %1192 = xor i64 %1188, %1191
  %1193 = add i64 %1192, %1191
  %1194 = icmp eq i64 %1193, 2
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1195, i8* %1196, align 1
  store %struct.Memory* %loadMem_43f35b, %struct.Memory** %MEMORY
  %loadMem_43f35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %PC.i566
  %1201 = add i64 %1200, 18
  %1202 = load i64, i64* %PC.i566
  %1203 = add i64 %1202, 6
  %1204 = load i64, i64* %PC.i566
  %1205 = add i64 %1204, 6
  store i64 %1205, i64* %PC.i566
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1207 = load i8, i8* %1206, align 1
  store i8 %1207, i8* %BRANCH_TAKEN, align 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1209 = icmp ne i8 %1207, 0
  %1210 = select i1 %1209, i64 %1201, i64 %1203
  store i64 %1210, i64* %1208, align 8
  store %struct.Memory* %loadMem_43f35f, %struct.Memory** %MEMORY
  %loadBr_43f35f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f35f = icmp eq i8 %loadBr_43f35f, 1
  br i1 %cmpBr_43f35f, label %block_.L_43f371, label %block_43f365

block_43f365:                                     ; preds = %block_43f348
  %loadMem_43f365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i565
  %1218 = sub i64 %1217, 24
  %1219 = load i64, i64* %PC.i564
  %1220 = add i64 %1219, 7
  store i64 %1220, i64* %PC.i564
  %1221 = inttoptr i64 %1218 to i32*
  store i32 104, i32* %1221
  store %struct.Memory* %loadMem_43f365, %struct.Memory** %MEMORY
  %loadMem_43f36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1224 to i64*
  %1225 = load i64, i64* %PC.i563
  %1226 = add i64 %1225, 1325
  %1227 = load i64, i64* %PC.i563
  %1228 = add i64 %1227, 5
  store i64 %1228, i64* %PC.i563
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1226, i64* %1229, align 8
  store %struct.Memory* %loadMem_43f36c, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f371:                                  ; preds = %block_43f348, %block_.L_43f325
  %loadMem_43f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 9
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RSI.i562 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %PC.i561
  %1237 = add i64 %1236, 10
  store i64 %1237, i64* %PC.i561
  store i64 ptrtoint (%G__0x458ccb_type* @G__0x458ccb to i64), i64* %RSI.i562, align 8
  store %struct.Memory* %loadMem_43f371, %struct.Memory** %MEMORY
  %loadMem_43f37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %PC.i559
  %1245 = add i64 %1244, 5
  store i64 %1245, i64* %PC.i559
  store i64 23, i64* %RAX.i560, align 8
  store %struct.Memory* %loadMem_43f37b, %struct.Memory** %MEMORY
  %loadMem_43f380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %1251 to i32*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 7
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %1254 to i64*
  %1255 = load i32, i32* %EAX.i557
  %1256 = zext i32 %1255 to i64
  %1257 = load i64, i64* %PC.i556
  %1258 = add i64 %1257, 2
  store i64 %1258, i64* %PC.i556
  %1259 = and i64 %1256, 4294967295
  store i64 %1259, i64* %RDX.i558, align 8
  store %struct.Memory* %loadMem_43f380, %struct.Memory** %MEMORY
  %loadMem_43f382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 11
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RDI.i554 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 15
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %1268 to i64*
  %1269 = load i64, i64* %RBP.i555
  %1270 = sub i64 %1269, 16
  %1271 = load i64, i64* %PC.i553
  %1272 = add i64 %1271, 4
  store i64 %1272, i64* %PC.i553
  %1273 = inttoptr i64 %1270 to i64*
  %1274 = load i64, i64* %1273
  store i64 %1274, i64* %RDI.i554, align 8
  store %struct.Memory* %loadMem_43f382, %struct.Memory** %MEMORY
  %loadMem1_43f386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %PC.i552
  %1279 = add i64 %1278, -253878
  %1280 = load i64, i64* %PC.i552
  %1281 = add i64 %1280, 5
  %1282 = load i64, i64* %PC.i552
  %1283 = add i64 %1282, 5
  store i64 %1283, i64* %PC.i552
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1285 = load i64, i64* %1284, align 8
  %1286 = add i64 %1285, -8
  %1287 = inttoptr i64 %1286 to i64*
  store i64 %1281, i64* %1287
  store i64 %1286, i64* %1284, align 8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1279, i64* %1288, align 8
  store %struct.Memory* %loadMem1_43f386, %struct.Memory** %MEMORY
  %loadMem2_43f386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f386 = load i64, i64* %3
  %1289 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f386)
  store %struct.Memory* %1289, %struct.Memory** %MEMORY
  %loadMem_43f38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 1
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %EAX.i549 = bitcast %union.anon* %1295 to i32*
  %1296 = load i32, i32* %EAX.i549
  %1297 = zext i32 %1296 to i64
  %1298 = load i64, i64* %PC.i548
  %1299 = add i64 %1298, 3
  store i64 %1299, i64* %PC.i548
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1300, align 1
  %1301 = and i32 %1296, 255
  %1302 = call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1305, i8* %1306, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1307, align 1
  %1308 = icmp eq i32 %1296, 0
  %1309 = zext i1 %1308 to i8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1309, i8* %1310, align 1
  %1311 = lshr i32 %1296, 31
  %1312 = trunc i32 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i32 %1296, 31
  %1315 = xor i32 %1311, %1314
  %1316 = add i32 %1315, %1314
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1318, i8* %1319, align 1
  store %struct.Memory* %loadMem_43f38b, %struct.Memory** %MEMORY
  %loadMem_43f38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %PC.i547
  %1324 = add i64 %1323, 41
  %1325 = load i64, i64* %PC.i547
  %1326 = add i64 %1325, 6
  %1327 = load i64, i64* %PC.i547
  %1328 = add i64 %1327, 6
  store i64 %1328, i64* %PC.i547
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1330 = load i8, i8* %1329, align 1
  store i8 %1330, i8* %BRANCH_TAKEN, align 1
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1332 = icmp ne i8 %1330, 0
  %1333 = select i1 %1332, i64 %1324, i64 %1326
  store i64 %1333, i64* %1331, align 8
  store %struct.Memory* %loadMem_43f38e, %struct.Memory** %MEMORY
  %loadBr_43f38e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f38e = icmp eq i8 %loadBr_43f38e, 1
  br i1 %cmpBr_43f38e, label %block_.L_43f3b7, label %block_43f394

block_43f394:                                     ; preds = %block_.L_43f371
  %loadMem_43f394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 33
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 9
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RSI.i546 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %PC.i545
  %1341 = add i64 %1340, 10
  store i64 %1341, i64* %PC.i545
  store i64 ptrtoint (%G__0x458ce3_type* @G__0x458ce3 to i64), i64* %RSI.i546, align 8
  store %struct.Memory* %loadMem_43f394, %struct.Memory** %MEMORY
  %loadMem_43f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 1
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %PC.i543
  %1349 = add i64 %1348, 5
  store i64 %1349, i64* %PC.i543
  store i64 23, i64* %RAX.i544, align 8
  store %struct.Memory* %loadMem_43f39e, %struct.Memory** %MEMORY
  %loadMem_43f3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %EAX.i541 = bitcast %union.anon* %1355 to i32*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 7
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %1358 to i64*
  %1359 = load i32, i32* %EAX.i541
  %1360 = zext i32 %1359 to i64
  %1361 = load i64, i64* %PC.i540
  %1362 = add i64 %1361, 2
  store i64 %1362, i64* %PC.i540
  %1363 = and i64 %1360, 4294967295
  store i64 %1363, i64* %RDX.i542, align 8
  store %struct.Memory* %loadMem_43f3a3, %struct.Memory** %MEMORY
  %loadMem_43f3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 11
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RDI.i538 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RBP.i539
  %1374 = sub i64 %1373, 16
  %1375 = load i64, i64* %PC.i537
  %1376 = add i64 %1375, 4
  store i64 %1376, i64* %PC.i537
  %1377 = inttoptr i64 %1374 to i64*
  %1378 = load i64, i64* %1377
  store i64 %1378, i64* %RDI.i538, align 8
  store %struct.Memory* %loadMem_43f3a5, %struct.Memory** %MEMORY
  %loadMem1_43f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %PC.i536
  %1383 = add i64 %1382, -253913
  %1384 = load i64, i64* %PC.i536
  %1385 = add i64 %1384, 5
  %1386 = load i64, i64* %PC.i536
  %1387 = add i64 %1386, 5
  store i64 %1387, i64* %PC.i536
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1389 = load i64, i64* %1388, align 8
  %1390 = add i64 %1389, -8
  %1391 = inttoptr i64 %1390 to i64*
  store i64 %1385, i64* %1391
  store i64 %1390, i64* %1388, align 8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1383, i64* %1392, align 8
  store %struct.Memory* %loadMem1_43f3a9, %struct.Memory** %MEMORY
  %loadMem2_43f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3a9 = load i64, i64* %3
  %1393 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f3a9)
  store %struct.Memory* %1393, %struct.Memory** %MEMORY
  %loadMem_43f3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %EAX.i534 = bitcast %union.anon* %1399 to i32*
  %1400 = load i32, i32* %EAX.i534
  %1401 = zext i32 %1400 to i64
  %1402 = load i64, i64* %PC.i533
  %1403 = add i64 %1402, 3
  store i64 %1403, i64* %PC.i533
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1404, align 1
  %1405 = and i32 %1400, 255
  %1406 = call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1409, i8* %1410, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1411, align 1
  %1412 = icmp eq i32 %1400, 0
  %1413 = zext i1 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1413, i8* %1414, align 1
  %1415 = lshr i32 %1400, 31
  %1416 = trunc i32 %1415 to i8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1416, i8* %1417, align 1
  %1418 = lshr i32 %1400, 31
  %1419 = xor i32 %1415, %1418
  %1420 = add i32 %1419, %1418
  %1421 = icmp eq i32 %1420, 2
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1422, i8* %1423, align 1
  store %struct.Memory* %loadMem_43f3ae, %struct.Memory** %MEMORY
  %loadMem_43f3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %PC.i532
  %1428 = add i64 %1427, 18
  %1429 = load i64, i64* %PC.i532
  %1430 = add i64 %1429, 6
  %1431 = load i64, i64* %PC.i532
  %1432 = add i64 %1431, 6
  store i64 %1432, i64* %PC.i532
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1434 = load i8, i8* %1433, align 1
  %1435 = icmp eq i8 %1434, 0
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %BRANCH_TAKEN, align 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1438 = select i1 %1435, i64 %1428, i64 %1430
  store i64 %1438, i64* %1437, align 8
  store %struct.Memory* %loadMem_43f3b1, %struct.Memory** %MEMORY
  %loadBr_43f3b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3b1 = icmp eq i8 %loadBr_43f3b1, 1
  br i1 %cmpBr_43f3b1, label %block_.L_43f3c3, label %block_.L_43f3b7

block_.L_43f3b7:                                  ; preds = %block_43f394, %block_.L_43f371
  %loadMem_43f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i531
  %1446 = sub i64 %1445, 24
  %1447 = load i64, i64* %PC.i530
  %1448 = add i64 %1447, 7
  store i64 %1448, i64* %PC.i530
  %1449 = inttoptr i64 %1446 to i32*
  store i32 103, i32* %1449
  store %struct.Memory* %loadMem_43f3b7, %struct.Memory** %MEMORY
  %loadMem_43f3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %PC.i529
  %1454 = add i64 %1453, 1243
  %1455 = load i64, i64* %PC.i529
  %1456 = add i64 %1455, 5
  store i64 %1456, i64* %PC.i529
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1454, i64* %1457, align 8
  store %struct.Memory* %loadMem_43f3be, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f3c3:                                  ; preds = %block_43f394
  %loadMem_43f3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 9
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RSI.i528 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i527
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC.i527
  store i64 4294967295, i64* %RSI.i528, align 8
  store %struct.Memory* %loadMem_43f3c3, %struct.Memory** %MEMORY
  %loadMem_43f3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 11
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RDI.i525 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 15
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %RBP.i526
  %1476 = sub i64 %1475, 16
  %1477 = load i64, i64* %PC.i524
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i524
  %1479 = inttoptr i64 %1476 to i64*
  %1480 = load i64, i64* %1479
  store i64 %1480, i64* %RDI.i525, align 8
  store %struct.Memory* %loadMem_43f3c8, %struct.Memory** %MEMORY
  %loadMem1_43f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1483 to i64*
  %1484 = load i64, i64* %PC.i523
  %1485 = add i64 %1484, 29524
  %1486 = load i64, i64* %PC.i523
  %1487 = add i64 %1486, 5
  %1488 = load i64, i64* %PC.i523
  %1489 = add i64 %1488, 5
  store i64 %1489, i64* %PC.i523
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1491 = load i64, i64* %1490, align 8
  %1492 = add i64 %1491, -8
  %1493 = inttoptr i64 %1492 to i64*
  store i64 %1487, i64* %1493
  store i64 %1492, i64* %1490, align 8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1485, i64* %1494, align 8
  store %struct.Memory* %loadMem1_43f3cc, %struct.Memory** %MEMORY
  %loadMem2_43f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3cc = load i64, i64* %3
  %call2_43f3cc = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64 %loadPC_43f3cc, %struct.Memory* %loadMem2_43f3cc)
  store %struct.Memory* %call2_43f3cc, %struct.Memory** %MEMORY
  %loadMem_43f3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 11
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RDI.i521 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 15
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %RBP.i522
  %1505 = sub i64 %1504, 48
  %1506 = load i64, i64* %PC.i520
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC.i520
  store i64 %1505, i64* %RDI.i521, align 8
  store %struct.Memory* %loadMem_43f3d1, %struct.Memory** %MEMORY
  %loadMem_43f3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 9
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RSI.i519 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %PC.i518
  %1515 = add i64 %1514, 10
  store i64 %1515, i64* %PC.i518
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i519, align 8
  store %struct.Memory* %loadMem_43f3d5, %struct.Memory** %MEMORY
  %loadMem_43f3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 5
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %ECX.i516 = bitcast %union.anon* %1521 to i32*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 5
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %RCX.i517
  %1526 = load i32, i32* %ECX.i516
  %1527 = zext i32 %1526 to i64
  %1528 = load i64, i64* %PC.i515
  %1529 = add i64 %1528, 2
  store i64 %1529, i64* %PC.i515
  %1530 = xor i64 %1527, %1525
  %1531 = trunc i64 %1530 to i32
  %1532 = and i64 %1530, 4294967295
  store i64 %1532, i64* %RCX.i517, align 8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1533, align 1
  %1534 = and i32 %1531, 255
  %1535 = call i32 @llvm.ctpop.i32(i32 %1534)
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1538, i8* %1539, align 1
  %1540 = icmp eq i32 %1531, 0
  %1541 = zext i1 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1541, i8* %1542, align 1
  %1543 = lshr i32 %1531, 31
  %1544 = trunc i32 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1544, i8* %1545, align 1
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1546, align 1
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1547, align 1
  store %struct.Memory* %loadMem_43f3df, %struct.Memory** %MEMORY
  %loadMem_43f3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1553 to i32*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 7
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RDX.i514 = bitcast %union.anon* %1556 to i64*
  %1557 = load i32, i32* %ECX.i
  %1558 = zext i32 %1557 to i64
  %1559 = load i64, i64* %PC.i513
  %1560 = add i64 %1559, 2
  store i64 %1560, i64* %PC.i513
  %1561 = and i64 %1558, 4294967295
  store i64 %1561, i64* %RDX.i514, align 8
  store %struct.Memory* %loadMem_43f3e1, %struct.Memory** %MEMORY
  %loadMem_43f3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 1
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 15
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %RBP.i512
  %1572 = sub i64 %1571, 40
  %1573 = load i64, i64* %RAX.i511
  %1574 = load i64, i64* %PC.i510
  %1575 = add i64 %1574, 4
  store i64 %1575, i64* %PC.i510
  %1576 = inttoptr i64 %1572 to i64*
  store i64 %1573, i64* %1576
  store %struct.Memory* %loadMem_43f3e3, %struct.Memory** %MEMORY
  %loadMem_43f3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 1
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RBP.i509
  %1587 = sub i64 %1586, 40
  %1588 = load i64, i64* %PC.i507
  %1589 = add i64 %1588, 4
  store i64 %1589, i64* %PC.i507
  %1590 = inttoptr i64 %1587 to i64*
  %1591 = load i64, i64* %1590
  store i64 %1591, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_43f3e7, %struct.Memory** %MEMORY
  %loadMem_43f3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 1
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i506
  %1602 = sub i64 %1601, 48
  %1603 = load i64, i64* %RAX.i505
  %1604 = load i64, i64* %PC.i504
  %1605 = add i64 %1604, 4
  store i64 %1605, i64* %PC.i504
  %1606 = inttoptr i64 %1602 to i64*
  store i64 %1603, i64* %1606
  store %struct.Memory* %loadMem_43f3eb, %struct.Memory** %MEMORY
  %loadMem1_43f3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %PC.i503
  %1611 = add i64 %1610, 29281
  %1612 = load i64, i64* %PC.i503
  %1613 = add i64 %1612, 5
  %1614 = load i64, i64* %PC.i503
  %1615 = add i64 %1614, 5
  store i64 %1615, i64* %PC.i503
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1617 = load i64, i64* %1616, align 8
  %1618 = add i64 %1617, -8
  %1619 = inttoptr i64 %1618 to i64*
  store i64 %1613, i64* %1619
  store i64 %1618, i64* %1616, align 8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1611, i64* %1620, align 8
  store %struct.Memory* %loadMem1_43f3ef, %struct.Memory** %MEMORY
  %loadMem2_43f3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3ef = load i64, i64* %3
  %call2_43f3ef = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_43f3ef, %struct.Memory* %loadMem2_43f3ef)
  store %struct.Memory* %call2_43f3ef, %struct.Memory** %MEMORY
  %loadMem_43f3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 1
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 15
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1629 to i64*
  %1630 = load i64, i64* %RBP.i502
  %1631 = sub i64 %1630, 56
  %1632 = load i64, i64* %RAX.i501
  %1633 = load i64, i64* %PC.i500
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i500
  %1635 = inttoptr i64 %1631 to i64*
  store i64 %1632, i64* %1635
  store %struct.Memory* %loadMem_43f3f4, %struct.Memory** %MEMORY
  %loadMem_43f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 1
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %RAX.i499
  %1643 = load i64, i64* %PC.i498
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %PC.i498
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1645, align 1
  %1646 = trunc i64 %1642 to i32
  %1647 = and i32 %1646, 255
  %1648 = call i32 @llvm.ctpop.i32(i32 %1647)
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1651, i8* %1652, align 1
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1653, align 1
  %1654 = icmp eq i64 %1642, 0
  %1655 = zext i1 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1655, i8* %1656, align 1
  %1657 = lshr i64 %1642, 63
  %1658 = trunc i64 %1657 to i8
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1658, i8* %1659, align 1
  %1660 = lshr i64 %1642, 63
  %1661 = xor i64 %1657, %1660
  %1662 = add i64 %1661, %1660
  %1663 = icmp eq i64 %1662, 2
  %1664 = zext i1 %1663 to i8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1664, i8* %1665, align 1
  store %struct.Memory* %loadMem_43f3f8, %struct.Memory** %MEMORY
  %loadMem_43f3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %PC.i497
  %1670 = add i64 %1669, 100
  %1671 = load i64, i64* %PC.i497
  %1672 = add i64 %1671, 6
  %1673 = load i64, i64* %PC.i497
  %1674 = add i64 %1673, 6
  store i64 %1674, i64* %PC.i497
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1676 = load i8, i8* %1675, align 1
  store i8 %1676, i8* %BRANCH_TAKEN, align 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1678 = icmp ne i8 %1676, 0
  %1679 = select i1 %1678, i64 %1670, i64 %1672
  store i64 %1679, i64* %1677, align 8
  store %struct.Memory* %loadMem_43f3fc, %struct.Memory** %MEMORY
  %loadBr_43f3fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3fc = icmp eq i8 %loadBr_43f3fc, 1
  br i1 %cmpBr_43f3fc, label %block_.L_43f460, label %block_43f402

block_43f402:                                     ; preds = %block_.L_43f3c3
  %loadMem_43f402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 11
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RDI.i495 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i496
  %1690 = sub i64 %1689, 48
  %1691 = load i64, i64* %PC.i494
  %1692 = add i64 %1691, 4
  store i64 %1692, i64* %PC.i494
  store i64 %1690, i64* %RDI.i495, align 8
  store %struct.Memory* %loadMem_43f402, %struct.Memory** %MEMORY
  %loadMem_43f406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 9
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RSI.i493 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %PC.i492
  %1700 = add i64 %1699, 10
  store i64 %1700, i64* %PC.i492
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i493, align 8
  store %struct.Memory* %loadMem_43f406, %struct.Memory** %MEMORY
  %loadMem_43f410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 1
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %EAX.i490 = bitcast %union.anon* %1706 to i32*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %1709 to i64*
  %1710 = load i64, i64* %RAX.i491
  %1711 = load i32, i32* %EAX.i490
  %1712 = zext i32 %1711 to i64
  %1713 = load i64, i64* %PC.i489
  %1714 = add i64 %1713, 2
  store i64 %1714, i64* %PC.i489
  %1715 = xor i64 %1712, %1710
  %1716 = trunc i64 %1715 to i32
  %1717 = and i64 %1715, 4294967295
  store i64 %1717, i64* %RAX.i491, align 8
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1718, align 1
  %1719 = and i32 %1716, 255
  %1720 = call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1723, i8* %1724, align 1
  %1725 = icmp eq i32 %1716, 0
  %1726 = zext i1 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1726, i8* %1727, align 1
  %1728 = lshr i32 %1716, 31
  %1729 = trunc i32 %1728 to i8
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1729, i8* %1730, align 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1731, align 1
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1732, align 1
  store %struct.Memory* %loadMem_43f410, %struct.Memory** %MEMORY
  %loadMem_43f412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 1
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %EAX.i487 = bitcast %union.anon* %1738 to i32*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 7
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RDX.i488 = bitcast %union.anon* %1741 to i64*
  %1742 = load i32, i32* %EAX.i487
  %1743 = zext i32 %1742 to i64
  %1744 = load i64, i64* %PC.i486
  %1745 = add i64 %1744, 2
  store i64 %1745, i64* %PC.i486
  %1746 = and i64 %1743, 4294967295
  store i64 %1746, i64* %RDX.i488, align 8
  store %struct.Memory* %loadMem_43f412, %struct.Memory** %MEMORY
  %loadMem1_43f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %PC.i485
  %1751 = add i64 %1750, 29244
  %1752 = load i64, i64* %PC.i485
  %1753 = add i64 %1752, 5
  %1754 = load i64, i64* %PC.i485
  %1755 = add i64 %1754, 5
  store i64 %1755, i64* %PC.i485
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1757 = load i64, i64* %1756, align 8
  %1758 = add i64 %1757, -8
  %1759 = inttoptr i64 %1758 to i64*
  store i64 %1753, i64* %1759
  store i64 %1758, i64* %1756, align 8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1751, i64* %1760, align 8
  store %struct.Memory* %loadMem1_43f414, %struct.Memory** %MEMORY
  %loadMem2_43f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f414 = load i64, i64* %3
  %call2_43f414 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_43f414, %struct.Memory* %loadMem2_43f414)
  store %struct.Memory* %call2_43f414, %struct.Memory** %MEMORY
  %loadMem_43f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 1
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %RBP.i484
  %1771 = sub i64 %1770, 64
  %1772 = load i64, i64* %RAX.i483
  %1773 = load i64, i64* %PC.i482
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i482
  %1775 = inttoptr i64 %1771 to i64*
  store i64 %1772, i64* %1775
  store %struct.Memory* %loadMem_43f419, %struct.Memory** %MEMORY
  %loadMem_43f41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 1
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RAX.i481
  %1783 = load i64, i64* %PC.i480
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC.i480
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1785, align 1
  %1786 = trunc i64 %1782 to i32
  %1787 = and i32 %1786, 255
  %1788 = call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1791, i8* %1792, align 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1793, align 1
  %1794 = icmp eq i64 %1782, 0
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1795, i8* %1796, align 1
  %1797 = lshr i64 %1782, 63
  %1798 = trunc i64 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1798, i8* %1799, align 1
  %1800 = lshr i64 %1782, 63
  %1801 = xor i64 %1797, %1800
  %1802 = add i64 %1801, %1800
  %1803 = icmp eq i64 %1802, 2
  %1804 = zext i1 %1803 to i8
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1804, i8* %1805, align 1
  store %struct.Memory* %loadMem_43f41d, %struct.Memory** %MEMORY
  %loadMem_43f421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1808 to i64*
  %1809 = load i64, i64* %PC.i479
  %1810 = add i64 %1809, 63
  %1811 = load i64, i64* %PC.i479
  %1812 = add i64 %1811, 6
  %1813 = load i64, i64* %PC.i479
  %1814 = add i64 %1813, 6
  store i64 %1814, i64* %PC.i479
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1816 = load i8, i8* %1815, align 1
  store i8 %1816, i8* %BRANCH_TAKEN, align 1
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1818 = icmp ne i8 %1816, 0
  %1819 = select i1 %1818, i64 %1810, i64 %1812
  store i64 %1819, i64* %1817, align 8
  store %struct.Memory* %loadMem_43f421, %struct.Memory** %MEMORY
  %loadBr_43f421 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f421 = icmp eq i8 %loadBr_43f421, 1
  br i1 %cmpBr_43f421, label %block_.L_43f460, label %block_43f427

block_43f427:                                     ; preds = %block_43f402
  %loadMem_43f427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 11
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RDI.i477 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RBP.i478
  %1830 = sub i64 %1829, 56
  %1831 = load i64, i64* %PC.i476
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC.i476
  %1833 = inttoptr i64 %1830 to i64*
  %1834 = load i64, i64* %1833
  store i64 %1834, i64* %RDI.i477, align 8
  store %struct.Memory* %loadMem_43f427, %struct.Memory** %MEMORY
  %loadMem1_43f42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %PC.i475
  %1839 = add i64 %1838, 73285
  %1840 = load i64, i64* %PC.i475
  %1841 = add i64 %1840, 5
  %1842 = load i64, i64* %PC.i475
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %PC.i475
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1845 = load i64, i64* %1844, align 8
  %1846 = add i64 %1845, -8
  %1847 = inttoptr i64 %1846 to i64*
  store i64 %1841, i64* %1847
  store i64 %1846, i64* %1844, align 8
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1839, i64* %1848, align 8
  store %struct.Memory* %loadMem1_43f42b, %struct.Memory** %MEMORY
  %loadMem2_43f42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f42b = load i64, i64* %3
  %call2_43f42b = call %struct.Memory* @sub_451270.IsInt(%struct.State* %0, i64 %loadPC_43f42b, %struct.Memory* %loadMem2_43f42b)
  store %struct.Memory* %call2_43f42b, %struct.Memory** %MEMORY
  %loadMem_43f430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 1
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %EAX.i474 = bitcast %union.anon* %1854 to i32*
  %1855 = load i32, i32* %EAX.i474
  %1856 = zext i32 %1855 to i64
  %1857 = load i64, i64* %PC.i473
  %1858 = add i64 %1857, 3
  store i64 %1858, i64* %PC.i473
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1859, align 1
  %1860 = and i32 %1855, 255
  %1861 = call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1865, align 1
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1866, align 1
  %1867 = icmp eq i32 %1855, 0
  %1868 = zext i1 %1867 to i8
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1868, i8* %1869, align 1
  %1870 = lshr i32 %1855, 31
  %1871 = trunc i32 %1870 to i8
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1871, i8* %1872, align 1
  %1873 = lshr i32 %1855, 31
  %1874 = xor i32 %1870, %1873
  %1875 = add i32 %1874, %1873
  %1876 = icmp eq i32 %1875, 2
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1877, i8* %1878, align 1
  store %struct.Memory* %loadMem_43f430, %struct.Memory** %MEMORY
  %loadMem_43f433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1881 to i64*
  %1882 = load i64, i64* %PC.i472
  %1883 = add i64 %1882, 45
  %1884 = load i64, i64* %PC.i472
  %1885 = add i64 %1884, 6
  %1886 = load i64, i64* %PC.i472
  %1887 = add i64 %1886, 6
  store i64 %1887, i64* %PC.i472
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1889 = load i8, i8* %1888, align 1
  store i8 %1889, i8* %BRANCH_TAKEN, align 1
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1891 = icmp ne i8 %1889, 0
  %1892 = select i1 %1891, i64 %1883, i64 %1885
  store i64 %1892, i64* %1890, align 8
  store %struct.Memory* %loadMem_43f433, %struct.Memory** %MEMORY
  %loadBr_43f433 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f433 = icmp eq i8 %loadBr_43f433, 1
  br i1 %cmpBr_43f433, label %block_.L_43f460, label %block_43f439

block_43f439:                                     ; preds = %block_43f427
  %loadMem_43f439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 11
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RDI.i470 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RBP.i471
  %1903 = sub i64 %1902, 64
  %1904 = load i64, i64* %PC.i469
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %PC.i469
  %1906 = inttoptr i64 %1903 to i64*
  %1907 = load i64, i64* %1906
  store i64 %1907, i64* %RDI.i470, align 8
  store %struct.Memory* %loadMem_43f439, %struct.Memory** %MEMORY
  %loadMem1_43f43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %PC.i468
  %1912 = add i64 %1911, 73267
  %1913 = load i64, i64* %PC.i468
  %1914 = add i64 %1913, 5
  %1915 = load i64, i64* %PC.i468
  %1916 = add i64 %1915, 5
  store i64 %1916, i64* %PC.i468
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1918 = load i64, i64* %1917, align 8
  %1919 = add i64 %1918, -8
  %1920 = inttoptr i64 %1919 to i64*
  store i64 %1914, i64* %1920
  store i64 %1919, i64* %1917, align 8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1912, i64* %1921, align 8
  store %struct.Memory* %loadMem1_43f43d, %struct.Memory** %MEMORY
  %loadMem2_43f43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f43d = load i64, i64* %3
  %call2_43f43d = call %struct.Memory* @sub_451270.IsInt(%struct.State* %0, i64 %loadPC_43f43d, %struct.Memory* %loadMem2_43f43d)
  store %struct.Memory* %call2_43f43d, %struct.Memory** %MEMORY
  %loadMem_43f442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 1
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %1927 to i32*
  %1928 = load i32, i32* %EAX.i467
  %1929 = zext i32 %1928 to i64
  %1930 = load i64, i64* %PC.i466
  %1931 = add i64 %1930, 3
  store i64 %1931, i64* %PC.i466
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1932, align 1
  %1933 = and i32 %1928, 255
  %1934 = call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1937, i8* %1938, align 1
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1939, align 1
  %1940 = icmp eq i32 %1928, 0
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1941, i8* %1942, align 1
  %1943 = lshr i32 %1928, 31
  %1944 = trunc i32 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1944, i8* %1945, align 1
  %1946 = lshr i32 %1928, 31
  %1947 = xor i32 %1943, %1946
  %1948 = add i32 %1947, %1946
  %1949 = icmp eq i32 %1948, 2
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1950, i8* %1951, align 1
  store %struct.Memory* %loadMem_43f442, %struct.Memory** %MEMORY
  %loadMem_43f445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %PC.i465
  %1956 = add i64 %1955, 27
  %1957 = load i64, i64* %PC.i465
  %1958 = add i64 %1957, 6
  %1959 = load i64, i64* %PC.i465
  %1960 = add i64 %1959, 6
  store i64 %1960, i64* %PC.i465
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1962 = load i8, i8* %1961, align 1
  store i8 %1962, i8* %BRANCH_TAKEN, align 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1964 = icmp ne i8 %1962, 0
  %1965 = select i1 %1964, i64 %1956, i64 %1958
  store i64 %1965, i64* %1963, align 8
  store %struct.Memory* %loadMem_43f445, %struct.Memory** %MEMORY
  %loadBr_43f445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f445 = icmp eq i8 %loadBr_43f445, 1
  br i1 %cmpBr_43f445, label %block_.L_43f460, label %block_43f44b

block_43f44b:                                     ; preds = %block_43f439
  %loadMem_43f44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 11
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RDI.i463 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 15
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %1974 to i64*
  %1975 = load i64, i64* %RBP.i464
  %1976 = sub i64 %1975, 40
  %1977 = load i64, i64* %PC.i462
  %1978 = add i64 %1977, 4
  store i64 %1978, i64* %PC.i462
  %1979 = inttoptr i64 %1976 to i64*
  %1980 = load i64, i64* %1979
  store i64 %1980, i64* %RDI.i463, align 8
  store %struct.Memory* %loadMem_43f44b, %struct.Memory** %MEMORY
  %loadMem1_43f44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %PC.i461
  %1985 = add i64 %1984, -254159
  %1986 = load i64, i64* %PC.i461
  %1987 = add i64 %1986, 5
  %1988 = load i64, i64* %PC.i461
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC.i461
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1991 = load i64, i64* %1990, align 8
  %1992 = add i64 %1991, -8
  %1993 = inttoptr i64 %1992 to i64*
  store i64 %1987, i64* %1993
  store i64 %1992, i64* %1990, align 8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1985, i64* %1994, align 8
  store %struct.Memory* %loadMem1_43f44f, %struct.Memory** %MEMORY
  %loadMem2_43f44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f44f = load i64, i64* %3
  %1995 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43f44f)
  store %struct.Memory* %1995, %struct.Memory** %MEMORY
  %loadMem_43f454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 15
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %2001 to i64*
  %2002 = load i64, i64* %RBP.i458
  %2003 = sub i64 %2002, 24
  %2004 = load i64, i64* %PC.i457
  %2005 = add i64 %2004, 7
  store i64 %2005, i64* %PC.i457
  %2006 = inttoptr i64 %2003 to i32*
  store i32 106, i32* %2006
  store %struct.Memory* %loadMem_43f454, %struct.Memory** %MEMORY
  %loadMem_43f45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %PC.i456
  %2011 = add i64 %2010, 1086
  %2012 = load i64, i64* %PC.i456
  %2013 = add i64 %2012, 5
  store i64 %2013, i64* %PC.i456
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2011, i64* %2014, align 8
  store %struct.Memory* %loadMem_43f45b, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f460:                                  ; preds = %block_43f439, %block_43f427, %block_43f402, %block_.L_43f3c3
  %loadMem_43f460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 11
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RDI.i454 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RBP.i455
  %2025 = sub i64 %2024, 40
  %2026 = load i64, i64* %PC.i453
  %2027 = add i64 %2026, 4
  store i64 %2027, i64* %PC.i453
  %2028 = inttoptr i64 %2025 to i64*
  %2029 = load i64, i64* %2028
  store i64 %2029, i64* %RDI.i454, align 8
  store %struct.Memory* %loadMem_43f460, %struct.Memory** %MEMORY
  %loadMem1_43f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2032 to i64*
  %2033 = load i64, i64* %PC.i452
  %2034 = add i64 %2033, -254180
  %2035 = load i64, i64* %PC.i452
  %2036 = add i64 %2035, 5
  %2037 = load i64, i64* %PC.i452
  %2038 = add i64 %2037, 5
  store i64 %2038, i64* %PC.i452
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2040 = load i64, i64* %2039, align 8
  %2041 = add i64 %2040, -8
  %2042 = inttoptr i64 %2041 to i64*
  store i64 %2036, i64* %2042
  store i64 %2041, i64* %2039, align 8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2034, i64* %2043, align 8
  store %struct.Memory* %loadMem1_43f464, %struct.Memory** %MEMORY
  %loadMem2_43f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f464 = load i64, i64* %3
  %2044 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43f464)
  store %struct.Memory* %2044, %struct.Memory** %MEMORY
  br label %block_.L_43f469

block_.L_43f469:                                  ; preds = %block_.L_43f460, %block_.L_43f232
  %loadMem_43f469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 9
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RSI.i450 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %PC.i449
  %2052 = add i64 %2051, 10
  store i64 %2052, i64* %PC.i449
  store i64 ptrtoint (%G__0x459a08_type* @G__0x459a08 to i64), i64* %RSI.i450, align 8
  store %struct.Memory* %loadMem_43f469, %struct.Memory** %MEMORY
  %loadMem_43f473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %PC.i447
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %PC.i447
  store i64 4, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_43f473, %struct.Memory** %MEMORY
  %loadMem_43f478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 1
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %2066 to i32*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 7
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %2069 to i64*
  %2070 = load i32, i32* %EAX.i445
  %2071 = zext i32 %2070 to i64
  %2072 = load i64, i64* %PC.i444
  %2073 = add i64 %2072, 2
  store i64 %2073, i64* %PC.i444
  %2074 = and i64 %2071, 4294967295
  store i64 %2074, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_43f478, %struct.Memory** %MEMORY
  %loadMem_43f47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 11
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RDI.i442 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 15
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RBP.i443
  %2085 = sub i64 %2084, 16
  %2086 = load i64, i64* %PC.i441
  %2087 = add i64 %2086, 4
  store i64 %2087, i64* %PC.i441
  %2088 = inttoptr i64 %2085 to i64*
  %2089 = load i64, i64* %2088
  store i64 %2089, i64* %RDI.i442, align 8
  store %struct.Memory* %loadMem_43f47a, %struct.Memory** %MEMORY
  %loadMem1_43f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %PC.i440
  %2094 = add i64 %2093, -254126
  %2095 = load i64, i64* %PC.i440
  %2096 = add i64 %2095, 5
  %2097 = load i64, i64* %PC.i440
  %2098 = add i64 %2097, 5
  store i64 %2098, i64* %PC.i440
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2100 = load i64, i64* %2099, align 8
  %2101 = add i64 %2100, -8
  %2102 = inttoptr i64 %2101 to i64*
  store i64 %2096, i64* %2102
  store i64 %2101, i64* %2099, align 8
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2094, i64* %2103, align 8
  store %struct.Memory* %loadMem1_43f47e, %struct.Memory** %MEMORY
  %loadMem2_43f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f47e = load i64, i64* %3
  %2104 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f47e)
  store %struct.Memory* %2104, %struct.Memory** %MEMORY
  %loadMem_43f483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 1
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %EAX.i438 = bitcast %union.anon* %2110 to i32*
  %2111 = load i32, i32* %EAX.i438
  %2112 = zext i32 %2111 to i64
  %2113 = load i64, i64* %PC.i437
  %2114 = add i64 %2113, 3
  store i64 %2114, i64* %PC.i437
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2115, align 1
  %2116 = and i32 %2111, 255
  %2117 = call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2120, i8* %2121, align 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2122, align 1
  %2123 = icmp eq i32 %2111, 0
  %2124 = zext i1 %2123 to i8
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2124, i8* %2125, align 1
  %2126 = lshr i32 %2111, 31
  %2127 = trunc i32 %2126 to i8
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2127, i8* %2128, align 1
  %2129 = lshr i32 %2111, 31
  %2130 = xor i32 %2126, %2129
  %2131 = add i32 %2130, %2129
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2133, i8* %2134, align 1
  store %struct.Memory* %loadMem_43f483, %struct.Memory** %MEMORY
  %loadMem_43f486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %PC.i436
  %2139 = add i64 %2138, 356
  %2140 = load i64, i64* %PC.i436
  %2141 = add i64 %2140, 6
  %2142 = load i64, i64* %PC.i436
  %2143 = add i64 %2142, 6
  store i64 %2143, i64* %PC.i436
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2145 = load i8, i8* %2144, align 1
  store i8 %2145, i8* %BRANCH_TAKEN, align 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2147 = icmp ne i8 %2145, 0
  %2148 = select i1 %2147, i64 %2139, i64 %2141
  store i64 %2148, i64* %2146, align 8
  store %struct.Memory* %loadMem_43f486, %struct.Memory** %MEMORY
  %loadBr_43f486 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f486 = icmp eq i8 %loadBr_43f486, 1
  br i1 %cmpBr_43f486, label %block_.L_43f5ea, label %block_43f48c

block_43f48c:                                     ; preds = %block_.L_43f469
  %loadMem_43f48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 9
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RSI.i435 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %PC.i434
  %2156 = add i64 %2155, 10
  store i64 %2156, i64* %PC.i434
  store i64 ptrtoint (%G__0x459a0d_type* @G__0x459a0d to i64), i64* %RSI.i435, align 8
  store %struct.Memory* %loadMem_43f48c, %struct.Memory** %MEMORY
  %loadMem_43f496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 1
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %PC.i432
  %2164 = add i64 %2163, 5
  store i64 %2164, i64* %PC.i432
  store i64 4, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_43f496, %struct.Memory** %MEMORY
  %loadMem_43f49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 1
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %2170 to i32*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 7
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %2173 to i64*
  %2174 = load i32, i32* %EAX.i430
  %2175 = zext i32 %2174 to i64
  %2176 = load i64, i64* %PC.i429
  %2177 = add i64 %2176, 2
  store i64 %2177, i64* %PC.i429
  %2178 = and i64 %2175, 4294967295
  store i64 %2178, i64* %RDX.i431, align 8
  store %struct.Memory* %loadMem_43f49b, %struct.Memory** %MEMORY
  %loadMem_43f49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 11
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RDI.i427 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 15
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %2187 to i64*
  %2188 = load i64, i64* %RBP.i428
  %2189 = sub i64 %2188, 16
  %2190 = load i64, i64* %PC.i426
  %2191 = add i64 %2190, 4
  store i64 %2191, i64* %PC.i426
  %2192 = inttoptr i64 %2189 to i64*
  %2193 = load i64, i64* %2192
  store i64 %2193, i64* %RDI.i427, align 8
  store %struct.Memory* %loadMem_43f49d, %struct.Memory** %MEMORY
  %loadMem1_43f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2196 to i64*
  %2197 = load i64, i64* %PC.i425
  %2198 = add i64 %2197, -254161
  %2199 = load i64, i64* %PC.i425
  %2200 = add i64 %2199, 5
  %2201 = load i64, i64* %PC.i425
  %2202 = add i64 %2201, 5
  store i64 %2202, i64* %PC.i425
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2204 = load i64, i64* %2203, align 8
  %2205 = add i64 %2204, -8
  %2206 = inttoptr i64 %2205 to i64*
  store i64 %2200, i64* %2206
  store i64 %2205, i64* %2203, align 8
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2198, i64* %2207, align 8
  store %struct.Memory* %loadMem1_43f4a1, %struct.Memory** %MEMORY
  %loadMem2_43f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f4a1 = load i64, i64* %3
  %2208 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f4a1)
  store %struct.Memory* %2208, %struct.Memory** %MEMORY
  %loadMem_43f4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 1
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %EAX.i422 = bitcast %union.anon* %2214 to i32*
  %2215 = load i32, i32* %EAX.i422
  %2216 = zext i32 %2215 to i64
  %2217 = load i64, i64* %PC.i421
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC.i421
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2219, align 1
  %2220 = and i32 %2215, 255
  %2221 = call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2224, i8* %2225, align 1
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2226, align 1
  %2227 = icmp eq i32 %2215, 0
  %2228 = zext i1 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2228, i8* %2229, align 1
  %2230 = lshr i32 %2215, 31
  %2231 = trunc i32 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2231, i8* %2232, align 1
  %2233 = lshr i32 %2215, 31
  %2234 = xor i32 %2230, %2233
  %2235 = add i32 %2234, %2233
  %2236 = icmp eq i32 %2235, 2
  %2237 = zext i1 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2237, i8* %2238, align 1
  store %struct.Memory* %loadMem_43f4a6, %struct.Memory** %MEMORY
  %loadMem_43f4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %PC.i420
  %2243 = add i64 %2242, 321
  %2244 = load i64, i64* %PC.i420
  %2245 = add i64 %2244, 6
  %2246 = load i64, i64* %PC.i420
  %2247 = add i64 %2246, 6
  store i64 %2247, i64* %PC.i420
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2249 = load i8, i8* %2248, align 1
  store i8 %2249, i8* %BRANCH_TAKEN, align 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2251 = icmp ne i8 %2249, 0
  %2252 = select i1 %2251, i64 %2243, i64 %2245
  store i64 %2252, i64* %2250, align 8
  store %struct.Memory* %loadMem_43f4a9, %struct.Memory** %MEMORY
  %loadBr_43f4a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4a9 = icmp eq i8 %loadBr_43f4a9, 1
  br i1 %cmpBr_43f4a9, label %block_.L_43f5ea, label %block_43f4af

block_43f4af:                                     ; preds = %block_43f48c
  %loadMem_43f4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 9
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RSI.i419 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %PC.i418
  %2260 = add i64 %2259, 10
  store i64 %2260, i64* %PC.i418
  store i64 ptrtoint (%G__0x459a12_type* @G__0x459a12 to i64), i64* %RSI.i419, align 8
  store %struct.Memory* %loadMem_43f4af, %struct.Memory** %MEMORY
  %loadMem_43f4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 1
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %PC.i416
  %2268 = add i64 %2267, 5
  store i64 %2268, i64* %PC.i416
  store i64 4, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_43f4b9, %struct.Memory** %MEMORY
  %loadMem_43f4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 1
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %2274 to i32*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 7
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %2277 to i64*
  %2278 = load i32, i32* %EAX.i414
  %2279 = zext i32 %2278 to i64
  %2280 = load i64, i64* %PC.i413
  %2281 = add i64 %2280, 2
  store i64 %2281, i64* %PC.i413
  %2282 = and i64 %2279, 4294967295
  store i64 %2282, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_43f4be, %struct.Memory** %MEMORY
  %loadMem_43f4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 11
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RDI.i411 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 15
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RBP.i412
  %2293 = sub i64 %2292, 16
  %2294 = load i64, i64* %PC.i410
  %2295 = add i64 %2294, 4
  store i64 %2295, i64* %PC.i410
  %2296 = inttoptr i64 %2293 to i64*
  %2297 = load i64, i64* %2296
  store i64 %2297, i64* %RDI.i411, align 8
  store %struct.Memory* %loadMem_43f4c0, %struct.Memory** %MEMORY
  %loadMem1_43f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2300 to i64*
  %2301 = load i64, i64* %PC.i409
  %2302 = add i64 %2301, -254196
  %2303 = load i64, i64* %PC.i409
  %2304 = add i64 %2303, 5
  %2305 = load i64, i64* %PC.i409
  %2306 = add i64 %2305, 5
  store i64 %2306, i64* %PC.i409
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2308 = load i64, i64* %2307, align 8
  %2309 = add i64 %2308, -8
  %2310 = inttoptr i64 %2309 to i64*
  store i64 %2304, i64* %2310
  store i64 %2309, i64* %2307, align 8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2302, i64* %2311, align 8
  store %struct.Memory* %loadMem1_43f4c4, %struct.Memory** %MEMORY
  %loadMem2_43f4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f4c4 = load i64, i64* %3
  %2312 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f4c4)
  store %struct.Memory* %2312, %struct.Memory** %MEMORY
  %loadMem_43f4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 1
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %2318 to i32*
  %2319 = load i32, i32* %EAX.i407
  %2320 = zext i32 %2319 to i64
  %2321 = load i64, i64* %PC.i406
  %2322 = add i64 %2321, 3
  store i64 %2322, i64* %PC.i406
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2323, align 1
  %2324 = and i32 %2319, 255
  %2325 = call i32 @llvm.ctpop.i32(i32 %2324)
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = xor i8 %2327, 1
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2328, i8* %2329, align 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2330, align 1
  %2331 = icmp eq i32 %2319, 0
  %2332 = zext i1 %2331 to i8
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2332, i8* %2333, align 1
  %2334 = lshr i32 %2319, 31
  %2335 = trunc i32 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2335, i8* %2336, align 1
  %2337 = lshr i32 %2319, 31
  %2338 = xor i32 %2334, %2337
  %2339 = add i32 %2338, %2337
  %2340 = icmp eq i32 %2339, 2
  %2341 = zext i1 %2340 to i8
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2341, i8* %2342, align 1
  store %struct.Memory* %loadMem_43f4c9, %struct.Memory** %MEMORY
  %loadMem_43f4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %PC.i405
  %2347 = add i64 %2346, 286
  %2348 = load i64, i64* %PC.i405
  %2349 = add i64 %2348, 6
  %2350 = load i64, i64* %PC.i405
  %2351 = add i64 %2350, 6
  store i64 %2351, i64* %PC.i405
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2353 = load i8, i8* %2352, align 1
  store i8 %2353, i8* %BRANCH_TAKEN, align 1
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2355 = icmp ne i8 %2353, 0
  %2356 = select i1 %2355, i64 %2347, i64 %2349
  store i64 %2356, i64* %2354, align 8
  store %struct.Memory* %loadMem_43f4cc, %struct.Memory** %MEMORY
  %loadBr_43f4cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4cc = icmp eq i8 %loadBr_43f4cc, 1
  br i1 %cmpBr_43f4cc, label %block_.L_43f5ea, label %block_43f4d2

block_43f4d2:                                     ; preds = %block_43f4af
  %loadMem_43f4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 9
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RSI.i404 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %PC.i403
  %2364 = add i64 %2363, 10
  store i64 %2364, i64* %PC.i403
  store i64 ptrtoint (%G__0x459a17_type* @G__0x459a17 to i64), i64* %RSI.i404, align 8
  store %struct.Memory* %loadMem_43f4d2, %struct.Memory** %MEMORY
  %loadMem_43f4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %PC.i401
  %2372 = add i64 %2371, 5
  store i64 %2372, i64* %PC.i401
  store i64 4, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_43f4dc, %struct.Memory** %MEMORY
  %loadMem_43f4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 1
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %2378 to i32*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 7
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %2381 to i64*
  %2382 = load i32, i32* %EAX.i399
  %2383 = zext i32 %2382 to i64
  %2384 = load i64, i64* %PC.i398
  %2385 = add i64 %2384, 2
  store i64 %2385, i64* %PC.i398
  %2386 = and i64 %2383, 4294967295
  store i64 %2386, i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_43f4e1, %struct.Memory** %MEMORY
  %loadMem_43f4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 11
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RDI.i396 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 15
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RBP.i397
  %2397 = sub i64 %2396, 16
  %2398 = load i64, i64* %PC.i395
  %2399 = add i64 %2398, 4
  store i64 %2399, i64* %PC.i395
  %2400 = inttoptr i64 %2397 to i64*
  %2401 = load i64, i64* %2400
  store i64 %2401, i64* %RDI.i396, align 8
  store %struct.Memory* %loadMem_43f4e3, %struct.Memory** %MEMORY
  %loadMem1_43f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %PC.i394
  %2406 = add i64 %2405, -254231
  %2407 = load i64, i64* %PC.i394
  %2408 = add i64 %2407, 5
  %2409 = load i64, i64* %PC.i394
  %2410 = add i64 %2409, 5
  store i64 %2410, i64* %PC.i394
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2412 = load i64, i64* %2411, align 8
  %2413 = add i64 %2412, -8
  %2414 = inttoptr i64 %2413 to i64*
  store i64 %2408, i64* %2414
  store i64 %2413, i64* %2411, align 8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2406, i64* %2415, align 8
  store %struct.Memory* %loadMem1_43f4e7, %struct.Memory** %MEMORY
  %loadMem2_43f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f4e7 = load i64, i64* %3
  %2416 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f4e7)
  store %struct.Memory* %2416, %struct.Memory** %MEMORY
  %loadMem_43f4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 1
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %2422 to i32*
  %2423 = load i32, i32* %EAX.i390
  %2424 = zext i32 %2423 to i64
  %2425 = load i64, i64* %PC.i389
  %2426 = add i64 %2425, 3
  store i64 %2426, i64* %PC.i389
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2427, align 1
  %2428 = and i32 %2423, 255
  %2429 = call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2432, i8* %2433, align 1
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2434, align 1
  %2435 = icmp eq i32 %2423, 0
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2436, i8* %2437, align 1
  %2438 = lshr i32 %2423, 31
  %2439 = trunc i32 %2438 to i8
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2439, i8* %2440, align 1
  %2441 = lshr i32 %2423, 31
  %2442 = xor i32 %2438, %2441
  %2443 = add i32 %2442, %2441
  %2444 = icmp eq i32 %2443, 2
  %2445 = zext i1 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2445, i8* %2446, align 1
  store %struct.Memory* %loadMem_43f4ec, %struct.Memory** %MEMORY
  %loadMem_43f4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %PC.i388
  %2451 = add i64 %2450, 251
  %2452 = load i64, i64* %PC.i388
  %2453 = add i64 %2452, 6
  %2454 = load i64, i64* %PC.i388
  %2455 = add i64 %2454, 6
  store i64 %2455, i64* %PC.i388
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2457 = load i8, i8* %2456, align 1
  store i8 %2457, i8* %BRANCH_TAKEN, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2459 = icmp ne i8 %2457, 0
  %2460 = select i1 %2459, i64 %2451, i64 %2453
  store i64 %2460, i64* %2458, align 8
  store %struct.Memory* %loadMem_43f4ef, %struct.Memory** %MEMORY
  %loadBr_43f4ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4ef = icmp eq i8 %loadBr_43f4ef, 1
  br i1 %cmpBr_43f4ef, label %block_.L_43f5ea, label %block_43f4f5

block_43f4f5:                                     ; preds = %block_43f4d2
  %loadMem_43f4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 9
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RSI.i387 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %PC.i386
  %2468 = add i64 %2467, 10
  store i64 %2468, i64* %PC.i386
  store i64 ptrtoint (%G__0x459a1c_type* @G__0x459a1c to i64), i64* %RSI.i387, align 8
  store %struct.Memory* %loadMem_43f4f5, %struct.Memory** %MEMORY
  %loadMem_43f4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 1
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %PC.i384
  %2476 = add i64 %2475, 5
  store i64 %2476, i64* %PC.i384
  store i64 4, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_43f4ff, %struct.Memory** %MEMORY
  %loadMem_43f504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %2482 to i32*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 7
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %2485 to i64*
  %2486 = load i32, i32* %EAX.i382
  %2487 = zext i32 %2486 to i64
  %2488 = load i64, i64* %PC.i381
  %2489 = add i64 %2488, 2
  store i64 %2489, i64* %PC.i381
  %2490 = and i64 %2487, 4294967295
  store i64 %2490, i64* %RDX.i383, align 8
  store %struct.Memory* %loadMem_43f504, %struct.Memory** %MEMORY
  %loadMem_43f506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 11
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %RDI.i379 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 15
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %RBP.i380
  %2501 = sub i64 %2500, 16
  %2502 = load i64, i64* %PC.i378
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %PC.i378
  %2504 = inttoptr i64 %2501 to i64*
  %2505 = load i64, i64* %2504
  store i64 %2505, i64* %RDI.i379, align 8
  store %struct.Memory* %loadMem_43f506, %struct.Memory** %MEMORY
  %loadMem1_43f50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %PC.i377
  %2510 = add i64 %2509, -254266
  %2511 = load i64, i64* %PC.i377
  %2512 = add i64 %2511, 5
  %2513 = load i64, i64* %PC.i377
  %2514 = add i64 %2513, 5
  store i64 %2514, i64* %PC.i377
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2516 = load i64, i64* %2515, align 8
  %2517 = add i64 %2516, -8
  %2518 = inttoptr i64 %2517 to i64*
  store i64 %2512, i64* %2518
  store i64 %2517, i64* %2515, align 8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2510, i64* %2519, align 8
  store %struct.Memory* %loadMem1_43f50a, %struct.Memory** %MEMORY
  %loadMem2_43f50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f50a = load i64, i64* %3
  %2520 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f50a)
  store %struct.Memory* %2520, %struct.Memory** %MEMORY
  %loadMem_43f50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 1
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %EAX.i375 = bitcast %union.anon* %2526 to i32*
  %2527 = load i32, i32* %EAX.i375
  %2528 = zext i32 %2527 to i64
  %2529 = load i64, i64* %PC.i374
  %2530 = add i64 %2529, 3
  store i64 %2530, i64* %PC.i374
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2531, align 1
  %2532 = and i32 %2527, 255
  %2533 = call i32 @llvm.ctpop.i32(i32 %2532)
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  %2536 = xor i8 %2535, 1
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2536, i8* %2537, align 1
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2538, align 1
  %2539 = icmp eq i32 %2527, 0
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2540, i8* %2541, align 1
  %2542 = lshr i32 %2527, 31
  %2543 = trunc i32 %2542 to i8
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2543, i8* %2544, align 1
  %2545 = lshr i32 %2527, 31
  %2546 = xor i32 %2542, %2545
  %2547 = add i32 %2546, %2545
  %2548 = icmp eq i32 %2547, 2
  %2549 = zext i1 %2548 to i8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2549, i8* %2550, align 1
  store %struct.Memory* %loadMem_43f50f, %struct.Memory** %MEMORY
  %loadMem_43f512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %PC.i373
  %2555 = add i64 %2554, 216
  %2556 = load i64, i64* %PC.i373
  %2557 = add i64 %2556, 6
  %2558 = load i64, i64* %PC.i373
  %2559 = add i64 %2558, 6
  store i64 %2559, i64* %PC.i373
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2561 = load i8, i8* %2560, align 1
  store i8 %2561, i8* %BRANCH_TAKEN, align 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2563 = icmp ne i8 %2561, 0
  %2564 = select i1 %2563, i64 %2555, i64 %2557
  store i64 %2564, i64* %2562, align 8
  store %struct.Memory* %loadMem_43f512, %struct.Memory** %MEMORY
  %loadBr_43f512 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f512 = icmp eq i8 %loadBr_43f512, 1
  br i1 %cmpBr_43f512, label %block_.L_43f5ea, label %block_43f518

block_43f518:                                     ; preds = %block_43f4f5
  %loadMem_43f518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 9
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RSI.i372 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %PC.i371
  %2572 = add i64 %2571, 10
  store i64 %2572, i64* %PC.i371
  store i64 ptrtoint (%G__0x459a49_type* @G__0x459a49 to i64), i64* %RSI.i372, align 8
  store %struct.Memory* %loadMem_43f518, %struct.Memory** %MEMORY
  %loadMem_43f522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 33
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2575 to i64*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 1
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %2578 to i64*
  %2579 = load i64, i64* %PC.i369
  %2580 = add i64 %2579, 5
  store i64 %2580, i64* %PC.i369
  store i64 4, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_43f522, %struct.Memory** %MEMORY
  %loadMem_43f527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 1
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %2586 to i32*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 7
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %2589 to i64*
  %2590 = load i32, i32* %EAX.i367
  %2591 = zext i32 %2590 to i64
  %2592 = load i64, i64* %PC.i366
  %2593 = add i64 %2592, 2
  store i64 %2593, i64* %PC.i366
  %2594 = and i64 %2591, 4294967295
  store i64 %2594, i64* %RDX.i368, align 8
  store %struct.Memory* %loadMem_43f527, %struct.Memory** %MEMORY
  %loadMem_43f529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 11
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RDI.i364 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 15
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %RBP.i365
  %2605 = sub i64 %2604, 16
  %2606 = load i64, i64* %PC.i363
  %2607 = add i64 %2606, 4
  store i64 %2607, i64* %PC.i363
  %2608 = inttoptr i64 %2605 to i64*
  %2609 = load i64, i64* %2608
  store i64 %2609, i64* %RDI.i364, align 8
  store %struct.Memory* %loadMem_43f529, %struct.Memory** %MEMORY
  %loadMem1_43f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %PC.i362
  %2614 = add i64 %2613, -254301
  %2615 = load i64, i64* %PC.i362
  %2616 = add i64 %2615, 5
  %2617 = load i64, i64* %PC.i362
  %2618 = add i64 %2617, 5
  store i64 %2618, i64* %PC.i362
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2620 = load i64, i64* %2619, align 8
  %2621 = add i64 %2620, -8
  %2622 = inttoptr i64 %2621 to i64*
  store i64 %2616, i64* %2622
  store i64 %2621, i64* %2619, align 8
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2614, i64* %2623, align 8
  store %struct.Memory* %loadMem1_43f52d, %struct.Memory** %MEMORY
  %loadMem2_43f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f52d = load i64, i64* %3
  %2624 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f52d)
  store %struct.Memory* %2624, %struct.Memory** %MEMORY
  %loadMem_43f532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %EAX.i359 = bitcast %union.anon* %2630 to i32*
  %2631 = load i32, i32* %EAX.i359
  %2632 = zext i32 %2631 to i64
  %2633 = load i64, i64* %PC.i358
  %2634 = add i64 %2633, 3
  store i64 %2634, i64* %PC.i358
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2635, align 1
  %2636 = and i32 %2631, 255
  %2637 = call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2640, i8* %2641, align 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2642, align 1
  %2643 = icmp eq i32 %2631, 0
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2644, i8* %2645, align 1
  %2646 = lshr i32 %2631, 31
  %2647 = trunc i32 %2646 to i8
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2647, i8* %2648, align 1
  %2649 = lshr i32 %2631, 31
  %2650 = xor i32 %2646, %2649
  %2651 = add i32 %2650, %2649
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2653, i8* %2654, align 1
  store %struct.Memory* %loadMem_43f532, %struct.Memory** %MEMORY
  %loadMem_43f535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 33
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %PC.i357
  %2659 = add i64 %2658, 181
  %2660 = load i64, i64* %PC.i357
  %2661 = add i64 %2660, 6
  %2662 = load i64, i64* %PC.i357
  %2663 = add i64 %2662, 6
  store i64 %2663, i64* %PC.i357
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2665 = load i8, i8* %2664, align 1
  store i8 %2665, i8* %BRANCH_TAKEN, align 1
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2667 = icmp ne i8 %2665, 0
  %2668 = select i1 %2667, i64 %2659, i64 %2661
  store i64 %2668, i64* %2666, align 8
  store %struct.Memory* %loadMem_43f535, %struct.Memory** %MEMORY
  %loadBr_43f535 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f535 = icmp eq i8 %loadBr_43f535, 1
  br i1 %cmpBr_43f535, label %block_.L_43f5ea, label %block_43f53b

block_43f53b:                                     ; preds = %block_43f518
  %loadMem_43f53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 9
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RSI.i356 = bitcast %union.anon* %2674 to i64*
  %2675 = load i64, i64* %PC.i355
  %2676 = add i64 %2675, 10
  store i64 %2676, i64* %PC.i355
  store i64 ptrtoint (%G__0x459a76_type* @G__0x459a76 to i64), i64* %RSI.i356, align 8
  store %struct.Memory* %loadMem_43f53b, %struct.Memory** %MEMORY
  %loadMem_43f545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 1
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %PC.i353
  %2684 = add i64 %2683, 5
  store i64 %2684, i64* %PC.i353
  store i64 4, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_43f545, %struct.Memory** %MEMORY
  %loadMem_43f54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 1
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %2690 to i32*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 7
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %2693 to i64*
  %2694 = load i32, i32* %EAX.i351
  %2695 = zext i32 %2694 to i64
  %2696 = load i64, i64* %PC.i350
  %2697 = add i64 %2696, 2
  store i64 %2697, i64* %PC.i350
  %2698 = and i64 %2695, 4294967295
  store i64 %2698, i64* %RDX.i352, align 8
  store %struct.Memory* %loadMem_43f54a, %struct.Memory** %MEMORY
  %loadMem_43f54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 11
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RDI.i348 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 15
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RBP.i349
  %2709 = sub i64 %2708, 16
  %2710 = load i64, i64* %PC.i347
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i347
  %2712 = inttoptr i64 %2709 to i64*
  %2713 = load i64, i64* %2712
  store i64 %2713, i64* %RDI.i348, align 8
  store %struct.Memory* %loadMem_43f54c, %struct.Memory** %MEMORY
  %loadMem1_43f550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %PC.i346
  %2718 = add i64 %2717, -254336
  %2719 = load i64, i64* %PC.i346
  %2720 = add i64 %2719, 5
  %2721 = load i64, i64* %PC.i346
  %2722 = add i64 %2721, 5
  store i64 %2722, i64* %PC.i346
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2724 = load i64, i64* %2723, align 8
  %2725 = add i64 %2724, -8
  %2726 = inttoptr i64 %2725 to i64*
  store i64 %2720, i64* %2726
  store i64 %2725, i64* %2723, align 8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2718, i64* %2727, align 8
  store %struct.Memory* %loadMem1_43f550, %struct.Memory** %MEMORY
  %loadMem2_43f550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f550 = load i64, i64* %3
  %2728 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f550)
  store %struct.Memory* %2728, %struct.Memory** %MEMORY
  %loadMem_43f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 1
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %2734 to i32*
  %2735 = load i32, i32* %EAX.i344
  %2736 = zext i32 %2735 to i64
  %2737 = load i64, i64* %PC.i343
  %2738 = add i64 %2737, 3
  store i64 %2738, i64* %PC.i343
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2739, align 1
  %2740 = and i32 %2735, 255
  %2741 = call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2744, i8* %2745, align 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2746, align 1
  %2747 = icmp eq i32 %2735, 0
  %2748 = zext i1 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2748, i8* %2749, align 1
  %2750 = lshr i32 %2735, 31
  %2751 = trunc i32 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2751, i8* %2752, align 1
  %2753 = lshr i32 %2735, 31
  %2754 = xor i32 %2750, %2753
  %2755 = add i32 %2754, %2753
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2757, i8* %2758, align 1
  store %struct.Memory* %loadMem_43f555, %struct.Memory** %MEMORY
  %loadMem_43f558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %PC.i342
  %2763 = add i64 %2762, 146
  %2764 = load i64, i64* %PC.i342
  %2765 = add i64 %2764, 6
  %2766 = load i64, i64* %PC.i342
  %2767 = add i64 %2766, 6
  store i64 %2767, i64* %PC.i342
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2769 = load i8, i8* %2768, align 1
  store i8 %2769, i8* %BRANCH_TAKEN, align 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2771 = icmp ne i8 %2769, 0
  %2772 = select i1 %2771, i64 %2763, i64 %2765
  store i64 %2772, i64* %2770, align 8
  store %struct.Memory* %loadMem_43f558, %struct.Memory** %MEMORY
  %loadBr_43f558 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f558 = icmp eq i8 %loadBr_43f558, 1
  br i1 %cmpBr_43f558, label %block_.L_43f5ea, label %block_43f55e

block_43f55e:                                     ; preds = %block_43f53b
  %loadMem_43f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 9
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RSI.i341 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i340
  %2780 = add i64 %2779, 10
  store i64 %2780, i64* %PC.i340
  store i64 ptrtoint (%G__0x459aa3_type* @G__0x459aa3 to i64), i64* %RSI.i341, align 8
  store %struct.Memory* %loadMem_43f55e, %struct.Memory** %MEMORY
  %loadMem_43f568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 1
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %PC.i338
  %2788 = add i64 %2787, 5
  store i64 %2788, i64* %PC.i338
  store i64 4, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_43f568, %struct.Memory** %MEMORY
  %loadMem_43f56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 1
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %2794 to i32*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 7
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RDX.i337 = bitcast %union.anon* %2797 to i64*
  %2798 = load i32, i32* %EAX.i336
  %2799 = zext i32 %2798 to i64
  %2800 = load i64, i64* %PC.i335
  %2801 = add i64 %2800, 2
  store i64 %2801, i64* %PC.i335
  %2802 = and i64 %2799, 4294967295
  store i64 %2802, i64* %RDX.i337, align 8
  store %struct.Memory* %loadMem_43f56d, %struct.Memory** %MEMORY
  %loadMem_43f56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 11
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RDI.i333 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 15
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %RBP.i334
  %2813 = sub i64 %2812, 16
  %2814 = load i64, i64* %PC.i332
  %2815 = add i64 %2814, 4
  store i64 %2815, i64* %PC.i332
  %2816 = inttoptr i64 %2813 to i64*
  %2817 = load i64, i64* %2816
  store i64 %2817, i64* %RDI.i333, align 8
  store %struct.Memory* %loadMem_43f56f, %struct.Memory** %MEMORY
  %loadMem1_43f573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %PC.i331
  %2822 = add i64 %2821, -254371
  %2823 = load i64, i64* %PC.i331
  %2824 = add i64 %2823, 5
  %2825 = load i64, i64* %PC.i331
  %2826 = add i64 %2825, 5
  store i64 %2826, i64* %PC.i331
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2828 = load i64, i64* %2827, align 8
  %2829 = add i64 %2828, -8
  %2830 = inttoptr i64 %2829 to i64*
  store i64 %2824, i64* %2830
  store i64 %2829, i64* %2827, align 8
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2822, i64* %2831, align 8
  store %struct.Memory* %loadMem1_43f573, %struct.Memory** %MEMORY
  %loadMem2_43f573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f573 = load i64, i64* %3
  %2832 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f573)
  store %struct.Memory* %2832, %struct.Memory** %MEMORY
  %loadMem_43f578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 1
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %2838 to i32*
  %2839 = load i32, i32* %EAX.i327
  %2840 = zext i32 %2839 to i64
  %2841 = load i64, i64* %PC.i326
  %2842 = add i64 %2841, 3
  store i64 %2842, i64* %PC.i326
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2843, align 1
  %2844 = and i32 %2839, 255
  %2845 = call i32 @llvm.ctpop.i32(i32 %2844)
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2848, i8* %2849, align 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2850, align 1
  %2851 = icmp eq i32 %2839, 0
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2852, i8* %2853, align 1
  %2854 = lshr i32 %2839, 31
  %2855 = trunc i32 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2855, i8* %2856, align 1
  %2857 = lshr i32 %2839, 31
  %2858 = xor i32 %2854, %2857
  %2859 = add i32 %2858, %2857
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2861, i8* %2862, align 1
  store %struct.Memory* %loadMem_43f578, %struct.Memory** %MEMORY
  %loadMem_43f57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %PC.i325
  %2867 = add i64 %2866, 111
  %2868 = load i64, i64* %PC.i325
  %2869 = add i64 %2868, 6
  %2870 = load i64, i64* %PC.i325
  %2871 = add i64 %2870, 6
  store i64 %2871, i64* %PC.i325
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2873 = load i8, i8* %2872, align 1
  store i8 %2873, i8* %BRANCH_TAKEN, align 1
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2875 = icmp ne i8 %2873, 0
  %2876 = select i1 %2875, i64 %2867, i64 %2869
  store i64 %2876, i64* %2874, align 8
  store %struct.Memory* %loadMem_43f57b, %struct.Memory** %MEMORY
  %loadBr_43f57b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f57b = icmp eq i8 %loadBr_43f57b, 1
  br i1 %cmpBr_43f57b, label %block_.L_43f5ea, label %block_43f581

block_43f581:                                     ; preds = %block_43f55e
  %loadMem_43f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 9
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RSI.i324 = bitcast %union.anon* %2882 to i64*
  %2883 = load i64, i64* %PC.i323
  %2884 = add i64 %2883, 10
  store i64 %2884, i64* %PC.i323
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %RSI.i324, align 8
  store %struct.Memory* %loadMem_43f581, %struct.Memory** %MEMORY
  %loadMem_43f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 1
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %PC.i321
  %2892 = add i64 %2891, 5
  store i64 %2892, i64* %PC.i321
  store i64 4, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_43f58b, %struct.Memory** %MEMORY
  %loadMem_43f590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 1
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %2898 to i32*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 7
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %2901 to i64*
  %2902 = load i32, i32* %EAX.i319
  %2903 = zext i32 %2902 to i64
  %2904 = load i64, i64* %PC.i318
  %2905 = add i64 %2904, 2
  store i64 %2905, i64* %PC.i318
  %2906 = and i64 %2903, 4294967295
  store i64 %2906, i64* %RDX.i320, align 8
  store %struct.Memory* %loadMem_43f590, %struct.Memory** %MEMORY
  %loadMem_43f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 11
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RDI.i316 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RBP.i317
  %2917 = sub i64 %2916, 16
  %2918 = load i64, i64* %PC.i315
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %PC.i315
  %2920 = inttoptr i64 %2917 to i64*
  %2921 = load i64, i64* %2920
  store i64 %2921, i64* %RDI.i316, align 8
  store %struct.Memory* %loadMem_43f592, %struct.Memory** %MEMORY
  %loadMem1_43f596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %PC.i314
  %2926 = add i64 %2925, -254406
  %2927 = load i64, i64* %PC.i314
  %2928 = add i64 %2927, 5
  %2929 = load i64, i64* %PC.i314
  %2930 = add i64 %2929, 5
  store i64 %2930, i64* %PC.i314
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2932 = load i64, i64* %2931, align 8
  %2933 = add i64 %2932, -8
  %2934 = inttoptr i64 %2933 to i64*
  store i64 %2928, i64* %2934
  store i64 %2933, i64* %2931, align 8
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2926, i64* %2935, align 8
  store %struct.Memory* %loadMem1_43f596, %struct.Memory** %MEMORY
  %loadMem2_43f596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f596 = load i64, i64* %3
  %2936 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f596)
  store %struct.Memory* %2936, %struct.Memory** %MEMORY
  %loadMem_43f59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 1
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %EAX.i310 = bitcast %union.anon* %2942 to i32*
  %2943 = load i32, i32* %EAX.i310
  %2944 = zext i32 %2943 to i64
  %2945 = load i64, i64* %PC.i309
  %2946 = add i64 %2945, 3
  store i64 %2946, i64* %PC.i309
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2947, align 1
  %2948 = and i32 %2943, 255
  %2949 = call i32 @llvm.ctpop.i32(i32 %2948)
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  %2952 = xor i8 %2951, 1
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2952, i8* %2953, align 1
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2954, align 1
  %2955 = icmp eq i32 %2943, 0
  %2956 = zext i1 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2956, i8* %2957, align 1
  %2958 = lshr i32 %2943, 31
  %2959 = trunc i32 %2958 to i8
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2959, i8* %2960, align 1
  %2961 = lshr i32 %2943, 31
  %2962 = xor i32 %2958, %2961
  %2963 = add i32 %2962, %2961
  %2964 = icmp eq i32 %2963, 2
  %2965 = zext i1 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2965, i8* %2966, align 1
  store %struct.Memory* %loadMem_43f59b, %struct.Memory** %MEMORY
  %loadMem_43f59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2969 to i64*
  %2970 = load i64, i64* %PC.i308
  %2971 = add i64 %2970, 76
  %2972 = load i64, i64* %PC.i308
  %2973 = add i64 %2972, 6
  %2974 = load i64, i64* %PC.i308
  %2975 = add i64 %2974, 6
  store i64 %2975, i64* %PC.i308
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2977 = load i8, i8* %2976, align 1
  store i8 %2977, i8* %BRANCH_TAKEN, align 1
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2979 = icmp ne i8 %2977, 0
  %2980 = select i1 %2979, i64 %2971, i64 %2973
  store i64 %2980, i64* %2978, align 8
  store %struct.Memory* %loadMem_43f59e, %struct.Memory** %MEMORY
  %loadBr_43f59e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f59e = icmp eq i8 %loadBr_43f59e, 1
  br i1 %cmpBr_43f59e, label %block_.L_43f5ea, label %block_43f5a4

block_43f5a4:                                     ; preds = %block_43f581
  %loadMem_43f5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 9
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RSI.i307 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %PC.i306
  %2988 = add i64 %2987, 10
  store i64 %2988, i64* %PC.i306
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %RSI.i307, align 8
  store %struct.Memory* %loadMem_43f5a4, %struct.Memory** %MEMORY
  %loadMem_43f5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 1
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %PC.i304
  %2996 = add i64 %2995, 5
  store i64 %2996, i64* %PC.i304
  store i64 4, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_43f5ae, %struct.Memory** %MEMORY
  %loadMem_43f5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %3002 to i32*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 7
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %3005 to i64*
  %3006 = load i32, i32* %EAX.i302
  %3007 = zext i32 %3006 to i64
  %3008 = load i64, i64* %PC.i301
  %3009 = add i64 %3008, 2
  store i64 %3009, i64* %PC.i301
  %3010 = and i64 %3007, 4294967295
  store i64 %3010, i64* %RDX.i303, align 8
  store %struct.Memory* %loadMem_43f5b3, %struct.Memory** %MEMORY
  %loadMem_43f5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 11
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RDI.i299 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 15
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RBP.i300
  %3021 = sub i64 %3020, 16
  %3022 = load i64, i64* %PC.i298
  %3023 = add i64 %3022, 4
  store i64 %3023, i64* %PC.i298
  %3024 = inttoptr i64 %3021 to i64*
  %3025 = load i64, i64* %3024
  store i64 %3025, i64* %RDI.i299, align 8
  store %struct.Memory* %loadMem_43f5b5, %struct.Memory** %MEMORY
  %loadMem1_43f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %PC.i297
  %3030 = add i64 %3029, -254441
  %3031 = load i64, i64* %PC.i297
  %3032 = add i64 %3031, 5
  %3033 = load i64, i64* %PC.i297
  %3034 = add i64 %3033, 5
  store i64 %3034, i64* %PC.i297
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3036 = load i64, i64* %3035, align 8
  %3037 = add i64 %3036, -8
  %3038 = inttoptr i64 %3037 to i64*
  store i64 %3032, i64* %3038
  store i64 %3037, i64* %3035, align 8
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3030, i64* %3039, align 8
  store %struct.Memory* %loadMem1_43f5b9, %struct.Memory** %MEMORY
  %loadMem2_43f5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f5b9 = load i64, i64* %3
  %3040 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f5b9)
  store %struct.Memory* %3040, %struct.Memory** %MEMORY
  %loadMem_43f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 1
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %3046 to i32*
  %3047 = load i32, i32* %EAX.i293
  %3048 = zext i32 %3047 to i64
  %3049 = load i64, i64* %PC.i292
  %3050 = add i64 %3049, 3
  store i64 %3050, i64* %PC.i292
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3051, align 1
  %3052 = and i32 %3047, 255
  %3053 = call i32 @llvm.ctpop.i32(i32 %3052)
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3056, i8* %3057, align 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3058, align 1
  %3059 = icmp eq i32 %3047, 0
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3060, i8* %3061, align 1
  %3062 = lshr i32 %3047, 31
  %3063 = trunc i32 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3063, i8* %3064, align 1
  %3065 = lshr i32 %3047, 31
  %3066 = xor i32 %3062, %3065
  %3067 = add i32 %3066, %3065
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3069, i8* %3070, align 1
  store %struct.Memory* %loadMem_43f5be, %struct.Memory** %MEMORY
  %loadMem_43f5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %PC.i291
  %3075 = add i64 %3074, 41
  %3076 = load i64, i64* %PC.i291
  %3077 = add i64 %3076, 6
  %3078 = load i64, i64* %PC.i291
  %3079 = add i64 %3078, 6
  store i64 %3079, i64* %PC.i291
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3081 = load i8, i8* %3080, align 1
  store i8 %3081, i8* %BRANCH_TAKEN, align 1
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3083 = icmp ne i8 %3081, 0
  %3084 = select i1 %3083, i64 %3075, i64 %3077
  store i64 %3084, i64* %3082, align 8
  store %struct.Memory* %loadMem_43f5c1, %struct.Memory** %MEMORY
  %loadBr_43f5c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f5c1 = icmp eq i8 %loadBr_43f5c1, 1
  br i1 %cmpBr_43f5c1, label %block_.L_43f5ea, label %block_43f5c7

block_43f5c7:                                     ; preds = %block_43f5a4
  %loadMem_43f5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 9
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %RSI.i290 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %PC.i289
  %3092 = add i64 %3091, 10
  store i64 %3092, i64* %PC.i289
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %RSI.i290, align 8
  store %struct.Memory* %loadMem_43f5c7, %struct.Memory** %MEMORY
  %loadMem_43f5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %PC.i287
  %3100 = add i64 %3099, 5
  store i64 %3100, i64* %PC.i287
  store i64 4, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_43f5d1, %struct.Memory** %MEMORY
  %loadMem_43f5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 1
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %3106 to i32*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 7
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %3109 to i64*
  %3110 = load i32, i32* %EAX.i285
  %3111 = zext i32 %3110 to i64
  %3112 = load i64, i64* %PC.i284
  %3113 = add i64 %3112, 2
  store i64 %3113, i64* %PC.i284
  %3114 = and i64 %3111, 4294967295
  store i64 %3114, i64* %RDX.i286, align 8
  store %struct.Memory* %loadMem_43f5d6, %struct.Memory** %MEMORY
  %loadMem_43f5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 11
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RDI.i282 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 15
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3123 to i64*
  %3124 = load i64, i64* %RBP.i283
  %3125 = sub i64 %3124, 16
  %3126 = load i64, i64* %PC.i281
  %3127 = add i64 %3126, 4
  store i64 %3127, i64* %PC.i281
  %3128 = inttoptr i64 %3125 to i64*
  %3129 = load i64, i64* %3128
  store i64 %3129, i64* %RDI.i282, align 8
  store %struct.Memory* %loadMem_43f5d8, %struct.Memory** %MEMORY
  %loadMem1_43f5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %PC.i280
  %3134 = add i64 %3133, -254476
  %3135 = load i64, i64* %PC.i280
  %3136 = add i64 %3135, 5
  %3137 = load i64, i64* %PC.i280
  %3138 = add i64 %3137, 5
  store i64 %3138, i64* %PC.i280
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3140 = load i64, i64* %3139, align 8
  %3141 = add i64 %3140, -8
  %3142 = inttoptr i64 %3141 to i64*
  store i64 %3136, i64* %3142
  store i64 %3141, i64* %3139, align 8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3134, i64* %3143, align 8
  store %struct.Memory* %loadMem1_43f5dc, %struct.Memory** %MEMORY
  %loadMem2_43f5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f5dc = load i64, i64* %3
  %3144 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f5dc)
  store %struct.Memory* %3144, %struct.Memory** %MEMORY
  %loadMem_43f5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 1
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %3150 to i32*
  %3151 = load i32, i32* %EAX.i277
  %3152 = zext i32 %3151 to i64
  %3153 = load i64, i64* %PC.i276
  %3154 = add i64 %3153, 3
  store i64 %3154, i64* %PC.i276
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3155, align 1
  %3156 = and i32 %3151, 255
  %3157 = call i32 @llvm.ctpop.i32(i32 %3156)
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3160, i8* %3161, align 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3162, align 1
  %3163 = icmp eq i32 %3151, 0
  %3164 = zext i1 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3164, i8* %3165, align 1
  %3166 = lshr i32 %3151, 31
  %3167 = trunc i32 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3167, i8* %3168, align 1
  %3169 = lshr i32 %3151, 31
  %3170 = xor i32 %3166, %3169
  %3171 = add i32 %3170, %3169
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3173, i8* %3174, align 1
  store %struct.Memory* %loadMem_43f5e1, %struct.Memory** %MEMORY
  %loadMem_43f5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3177 to i64*
  %3178 = load i64, i64* %PC.i275
  %3179 = add i64 %3178, 18
  %3180 = load i64, i64* %PC.i275
  %3181 = add i64 %3180, 6
  %3182 = load i64, i64* %PC.i275
  %3183 = add i64 %3182, 6
  store i64 %3183, i64* %PC.i275
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3185 = load i8, i8* %3184, align 1
  %3186 = icmp eq i8 %3185, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %BRANCH_TAKEN, align 1
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3189 = select i1 %3186, i64 %3179, i64 %3181
  store i64 %3189, i64* %3188, align 8
  store %struct.Memory* %loadMem_43f5e4, %struct.Memory** %MEMORY
  %loadBr_43f5e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f5e4 = icmp eq i8 %loadBr_43f5e4, 1
  br i1 %cmpBr_43f5e4, label %block_.L_43f5f6, label %block_.L_43f5ea

block_.L_43f5ea:                                  ; preds = %block_43f5c7, %block_43f5a4, %block_43f581, %block_43f55e, %block_43f53b, %block_43f518, %block_43f4f5, %block_43f4d2, %block_43f4af, %block_43f48c, %block_.L_43f469
  %loadMem_43f5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 15
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %3195 to i64*
  %3196 = load i64, i64* %RBP.i274
  %3197 = sub i64 %3196, 24
  %3198 = load i64, i64* %PC.i273
  %3199 = add i64 %3198, 7
  store i64 %3199, i64* %PC.i273
  %3200 = inttoptr i64 %3197 to i32*
  store i32 102, i32* %3200
  store %struct.Memory* %loadMem_43f5ea, %struct.Memory** %MEMORY
  %loadMem_43f5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %PC.i272
  %3205 = add i64 %3204, 680
  %3206 = load i64, i64* %PC.i272
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %PC.i272
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3205, i64* %3208, align 8
  store %struct.Memory* %loadMem_43f5f1, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f5f6:                                  ; preds = %block_43f5c7
  %loadMem_43f5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 9
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %3214 to i64*
  %3215 = load i64, i64* %PC.i270
  %3216 = add i64 %3215, 10
  store i64 %3216, i64* %PC.i270
  store i64 ptrtoint (%G__0x45a46f_type* @G__0x45a46f to i64), i64* %RSI.i271, align 8
  store %struct.Memory* %loadMem_43f5f6, %struct.Memory** %MEMORY
  %loadMem_43f600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 33
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 1
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %PC.i268
  %3224 = add i64 %3223, 5
  store i64 %3224, i64* %PC.i268
  store i64 3, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_43f600, %struct.Memory** %MEMORY
  %loadMem_43f605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 1
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %3230 to i32*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 7
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %3233 to i64*
  %3234 = load i32, i32* %EAX.i266
  %3235 = zext i32 %3234 to i64
  %3236 = load i64, i64* %PC.i265
  %3237 = add i64 %3236, 2
  store i64 %3237, i64* %PC.i265
  %3238 = and i64 %3235, 4294967295
  store i64 %3238, i64* %RDX.i267, align 8
  store %struct.Memory* %loadMem_43f605, %struct.Memory** %MEMORY
  %loadMem_43f607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 11
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RDI.i263 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 15
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %3247 to i64*
  %3248 = load i64, i64* %RBP.i264
  %3249 = sub i64 %3248, 16
  %3250 = load i64, i64* %PC.i262
  %3251 = add i64 %3250, 4
  store i64 %3251, i64* %PC.i262
  %3252 = inttoptr i64 %3249 to i64*
  %3253 = load i64, i64* %3252
  store i64 %3253, i64* %RDI.i263, align 8
  store %struct.Memory* %loadMem_43f607, %struct.Memory** %MEMORY
  %loadMem1_43f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i261
  %3258 = add i64 %3257, -254523
  %3259 = load i64, i64* %PC.i261
  %3260 = add i64 %3259, 5
  %3261 = load i64, i64* %PC.i261
  %3262 = add i64 %3261, 5
  store i64 %3262, i64* %PC.i261
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3264 = load i64, i64* %3263, align 8
  %3265 = add i64 %3264, -8
  %3266 = inttoptr i64 %3265 to i64*
  store i64 %3260, i64* %3266
  store i64 %3265, i64* %3263, align 8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3258, i64* %3267, align 8
  store %struct.Memory* %loadMem1_43f60b, %struct.Memory** %MEMORY
  %loadMem2_43f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f60b = load i64, i64* %3
  %3268 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f60b)
  store %struct.Memory* %3268, %struct.Memory** %MEMORY
  %loadMem_43f610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 1
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %3274 to i32*
  %3275 = load i32, i32* %EAX.i258
  %3276 = zext i32 %3275 to i64
  %3277 = load i64, i64* %PC.i257
  %3278 = add i64 %3277, 3
  store i64 %3278, i64* %PC.i257
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3279, align 1
  %3280 = and i32 %3275, 255
  %3281 = call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3284, i8* %3285, align 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3286, align 1
  %3287 = icmp eq i32 %3275, 0
  %3288 = zext i1 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3288, i8* %3289, align 1
  %3290 = lshr i32 %3275, 31
  %3291 = trunc i32 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3291, i8* %3292, align 1
  %3293 = lshr i32 %3275, 31
  %3294 = xor i32 %3290, %3293
  %3295 = add i32 %3294, %3293
  %3296 = icmp eq i32 %3295, 2
  %3297 = zext i1 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3297, i8* %3298, align 1
  store %struct.Memory* %loadMem_43f610, %struct.Memory** %MEMORY
  %loadMem_43f613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3301 to i64*
  %3302 = load i64, i64* %PC.i256
  %3303 = add i64 %3302, 41
  %3304 = load i64, i64* %PC.i256
  %3305 = add i64 %3304, 6
  %3306 = load i64, i64* %PC.i256
  %3307 = add i64 %3306, 6
  store i64 %3307, i64* %PC.i256
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3309 = load i8, i8* %3308, align 1
  store i8 %3309, i8* %BRANCH_TAKEN, align 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3311 = icmp ne i8 %3309, 0
  %3312 = select i1 %3311, i64 %3303, i64 %3305
  store i64 %3312, i64* %3310, align 8
  store %struct.Memory* %loadMem_43f613, %struct.Memory** %MEMORY
  %loadBr_43f613 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f613 = icmp eq i8 %loadBr_43f613, 1
  br i1 %cmpBr_43f613, label %block_.L_43f63c, label %block_43f619

block_43f619:                                     ; preds = %block_.L_43f5f6
  %loadMem_43f619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 33
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3315 to i64*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 9
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RSI.i255 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %PC.i254
  %3320 = add i64 %3319, 10
  store i64 %3320, i64* %PC.i254
  store i64 ptrtoint (%G__0x459fd9_type* @G__0x459fd9 to i64), i64* %RSI.i255, align 8
  store %struct.Memory* %loadMem_43f619, %struct.Memory** %MEMORY
  %loadMem_43f623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 1
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %PC.i252
  %3328 = add i64 %3327, 5
  store i64 %3328, i64* %PC.i252
  store i64 6, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_43f623, %struct.Memory** %MEMORY
  %loadMem_43f628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 1
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %3334 to i32*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 7
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %3337 to i64*
  %3338 = load i32, i32* %EAX.i250
  %3339 = zext i32 %3338 to i64
  %3340 = load i64, i64* %PC.i249
  %3341 = add i64 %3340, 2
  store i64 %3341, i64* %PC.i249
  %3342 = and i64 %3339, 4294967295
  store i64 %3342, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_43f628, %struct.Memory** %MEMORY
  %loadMem_43f62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 33
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 11
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 15
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %3351 to i64*
  %3352 = load i64, i64* %RBP.i248
  %3353 = sub i64 %3352, 16
  %3354 = load i64, i64* %PC.i246
  %3355 = add i64 %3354, 4
  store i64 %3355, i64* %PC.i246
  %3356 = inttoptr i64 %3353 to i64*
  %3357 = load i64, i64* %3356
  store i64 %3357, i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_43f62a, %struct.Memory** %MEMORY
  %loadMem1_43f62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 33
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3360 to i64*
  %3361 = load i64, i64* %PC.i245
  %3362 = add i64 %3361, -254558
  %3363 = load i64, i64* %PC.i245
  %3364 = add i64 %3363, 5
  %3365 = load i64, i64* %PC.i245
  %3366 = add i64 %3365, 5
  store i64 %3366, i64* %PC.i245
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3368 = load i64, i64* %3367, align 8
  %3369 = add i64 %3368, -8
  %3370 = inttoptr i64 %3369 to i64*
  store i64 %3364, i64* %3370
  store i64 %3369, i64* %3367, align 8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3362, i64* %3371, align 8
  store %struct.Memory* %loadMem1_43f62e, %struct.Memory** %MEMORY
  %loadMem2_43f62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f62e = load i64, i64* %3
  %3372 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f62e)
  store %struct.Memory* %3372, %struct.Memory** %MEMORY
  %loadMem_43f633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 1
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %EAX.i242 = bitcast %union.anon* %3378 to i32*
  %3379 = load i32, i32* %EAX.i242
  %3380 = zext i32 %3379 to i64
  %3381 = load i64, i64* %PC.i241
  %3382 = add i64 %3381, 3
  store i64 %3382, i64* %PC.i241
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3383, align 1
  %3384 = and i32 %3379, 255
  %3385 = call i32 @llvm.ctpop.i32(i32 %3384)
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  %3388 = xor i8 %3387, 1
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3388, i8* %3389, align 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3390, align 1
  %3391 = icmp eq i32 %3379, 0
  %3392 = zext i1 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3392, i8* %3393, align 1
  %3394 = lshr i32 %3379, 31
  %3395 = trunc i32 %3394 to i8
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3395, i8* %3396, align 1
  %3397 = lshr i32 %3379, 31
  %3398 = xor i32 %3394, %3397
  %3399 = add i32 %3398, %3397
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3401, i8* %3402, align 1
  store %struct.Memory* %loadMem_43f633, %struct.Memory** %MEMORY
  %loadMem_43f636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 33
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %PC.i240
  %3407 = add i64 %3406, 18
  %3408 = load i64, i64* %PC.i240
  %3409 = add i64 %3408, 6
  %3410 = load i64, i64* %PC.i240
  %3411 = add i64 %3410, 6
  store i64 %3411, i64* %PC.i240
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3413 = load i8, i8* %3412, align 1
  %3414 = icmp eq i8 %3413, 0
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %BRANCH_TAKEN, align 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3417 = select i1 %3414, i64 %3407, i64 %3409
  store i64 %3417, i64* %3416, align 8
  store %struct.Memory* %loadMem_43f636, %struct.Memory** %MEMORY
  %loadBr_43f636 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f636 = icmp eq i8 %loadBr_43f636, 1
  br i1 %cmpBr_43f636, label %block_.L_43f648, label %block_.L_43f63c

block_.L_43f63c:                                  ; preds = %block_43f619, %block_.L_43f5f6
  %loadMem_43f63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 15
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RBP.i239
  %3425 = sub i64 %3424, 24
  %3426 = load i64, i64* %PC.i238
  %3427 = add i64 %3426, 7
  store i64 %3427, i64* %PC.i238
  %3428 = inttoptr i64 %3425 to i32*
  store i32 12, i32* %3428
  store %struct.Memory* %loadMem_43f63c, %struct.Memory** %MEMORY
  %loadMem_43f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3431 to i64*
  %3432 = load i64, i64* %PC.i237
  %3433 = add i64 %3432, 598
  %3434 = load i64, i64* %PC.i237
  %3435 = add i64 %3434, 5
  store i64 %3435, i64* %PC.i237
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3433, i64* %3436, align 8
  store %struct.Memory* %loadMem_43f643, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f648:                                  ; preds = %block_43f619
  %loadMem_43f648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 9
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %PC.i235
  %3444 = add i64 %3443, 10
  store i64 %3444, i64* %PC.i235
  store i64 ptrtoint (%G__0x458cfb_type* @G__0x458cfb to i64), i64* %RSI.i236, align 8
  store %struct.Memory* %loadMem_43f648, %struct.Memory** %MEMORY
  %loadMem_43f652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 11
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDI.i233 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 15
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RBP.i234
  %3455 = sub i64 %3454, 16
  %3456 = load i64, i64* %PC.i232
  %3457 = add i64 %3456, 4
  store i64 %3457, i64* %PC.i232
  %3458 = inttoptr i64 %3455 to i64*
  %3459 = load i64, i64* %3458
  store i64 %3459, i64* %RDI.i233, align 8
  store %struct.Memory* %loadMem_43f652, %struct.Memory** %MEMORY
  %loadMem1_43f656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3462 to i64*
  %3463 = load i64, i64* %PC.i231
  %3464 = add i64 %3463, -253782
  %3465 = load i64, i64* %PC.i231
  %3466 = add i64 %3465, 5
  %3467 = load i64, i64* %PC.i231
  %3468 = add i64 %3467, 5
  store i64 %3468, i64* %PC.i231
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3470 = load i64, i64* %3469, align 8
  %3471 = add i64 %3470, -8
  %3472 = inttoptr i64 %3471 to i64*
  store i64 %3466, i64* %3472
  store i64 %3471, i64* %3469, align 8
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3464, i64* %3473, align 8
  store %struct.Memory* %loadMem1_43f656, %struct.Memory** %MEMORY
  %loadMem2_43f656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f656 = load i64, i64* %3
  %call2_43f656 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f656, %struct.Memory* %loadMem2_43f656)
  store %struct.Memory* %call2_43f656, %struct.Memory** %MEMORY
  %loadMem_43f65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %3479 to i64*
  %3480 = load i64, i64* %RAX.i230
  %3481 = load i64, i64* %PC.i229
  %3482 = add i64 %3481, 4
  store i64 %3482, i64* %PC.i229
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3483, align 1
  %3484 = trunc i64 %3480 to i32
  %3485 = and i32 %3484, 255
  %3486 = call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3489, i8* %3490, align 1
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3491, align 1
  %3492 = icmp eq i64 %3480, 0
  %3493 = zext i1 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3493, i8* %3494, align 1
  %3495 = lshr i64 %3480, 63
  %3496 = trunc i64 %3495 to i8
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3496, i8* %3497, align 1
  %3498 = lshr i64 %3480, 63
  %3499 = xor i64 %3495, %3498
  %3500 = add i64 %3499, %3498
  %3501 = icmp eq i64 %3500, 2
  %3502 = zext i1 %3501 to i8
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3502, i8* %3503, align 1
  store %struct.Memory* %loadMem_43f65b, %struct.Memory** %MEMORY
  %loadMem_43f65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %PC.i228
  %3508 = add i64 %3507, 76
  %3509 = load i64, i64* %PC.i228
  %3510 = add i64 %3509, 6
  %3511 = load i64, i64* %PC.i228
  %3512 = add i64 %3511, 6
  store i64 %3512, i64* %PC.i228
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3514 = load i8, i8* %3513, align 1
  store i8 %3514, i8* %BRANCH_TAKEN, align 1
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3516 = icmp ne i8 %3514, 0
  %3517 = select i1 %3516, i64 %3508, i64 %3510
  store i64 %3517, i64* %3515, align 8
  store %struct.Memory* %loadMem_43f65f, %struct.Memory** %MEMORY
  %loadBr_43f65f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f65f = icmp eq i8 %loadBr_43f65f, 1
  br i1 %cmpBr_43f65f, label %block_.L_43f6ab, label %block_43f665

block_43f665:                                     ; preds = %block_.L_43f648
  %loadMem_43f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 33
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 9
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %3523 to i64*
  %3524 = load i64, i64* %PC.i226
  %3525 = add i64 %3524, 10
  store i64 %3525, i64* %PC.i226
  store i64 ptrtoint (%G__0x458cfe_type* @G__0x458cfe to i64), i64* %RSI.i227, align 8
  store %struct.Memory* %loadMem_43f665, %struct.Memory** %MEMORY
  %loadMem_43f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 11
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 15
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RBP.i225
  %3536 = sub i64 %3535, 16
  %3537 = load i64, i64* %PC.i223
  %3538 = add i64 %3537, 4
  store i64 %3538, i64* %PC.i223
  %3539 = inttoptr i64 %3536 to i64*
  %3540 = load i64, i64* %3539
  store i64 %3540, i64* %RDI.i224, align 8
  store %struct.Memory* %loadMem_43f66f, %struct.Memory** %MEMORY
  %loadMem1_43f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %PC.i222
  %3545 = add i64 %3544, -253811
  %3546 = load i64, i64* %PC.i222
  %3547 = add i64 %3546, 5
  %3548 = load i64, i64* %PC.i222
  %3549 = add i64 %3548, 5
  store i64 %3549, i64* %PC.i222
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3551 = load i64, i64* %3550, align 8
  %3552 = add i64 %3551, -8
  %3553 = inttoptr i64 %3552 to i64*
  store i64 %3547, i64* %3553
  store i64 %3552, i64* %3550, align 8
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3545, i64* %3554, align 8
  store %struct.Memory* %loadMem1_43f673, %struct.Memory** %MEMORY
  %loadMem2_43f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f673 = load i64, i64* %3
  %call2_43f673 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f673, %struct.Memory* %loadMem2_43f673)
  store %struct.Memory* %call2_43f673, %struct.Memory** %MEMORY
  %loadMem_43f678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 1
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RAX.i221
  %3562 = load i64, i64* %PC.i220
  %3563 = add i64 %3562, 4
  store i64 %3563, i64* %PC.i220
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3564, align 1
  %3565 = trunc i64 %3561 to i32
  %3566 = and i32 %3565, 255
  %3567 = call i32 @llvm.ctpop.i32(i32 %3566)
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3570, i8* %3571, align 1
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3572, align 1
  %3573 = icmp eq i64 %3561, 0
  %3574 = zext i1 %3573 to i8
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3574, i8* %3575, align 1
  %3576 = lshr i64 %3561, 63
  %3577 = trunc i64 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3577, i8* %3578, align 1
  %3579 = lshr i64 %3561, 63
  %3580 = xor i64 %3576, %3579
  %3581 = add i64 %3580, %3579
  %3582 = icmp eq i64 %3581, 2
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3583, i8* %3584, align 1
  store %struct.Memory* %loadMem_43f678, %struct.Memory** %MEMORY
  %loadMem_43f67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %PC.i219
  %3589 = add i64 %3588, 47
  %3590 = load i64, i64* %PC.i219
  %3591 = add i64 %3590, 6
  %3592 = load i64, i64* %PC.i219
  %3593 = add i64 %3592, 6
  store i64 %3593, i64* %PC.i219
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3595 = load i8, i8* %3594, align 1
  store i8 %3595, i8* %BRANCH_TAKEN, align 1
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3597 = icmp ne i8 %3595, 0
  %3598 = select i1 %3597, i64 %3589, i64 %3591
  store i64 %3598, i64* %3596, align 8
  store %struct.Memory* %loadMem_43f67c, %struct.Memory** %MEMORY
  %loadBr_43f67c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f67c = icmp eq i8 %loadBr_43f67c, 1
  br i1 %cmpBr_43f67c, label %block_.L_43f6ab, label %block_43f682

block_43f682:                                     ; preds = %block_43f665
  %loadMem_43f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 9
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RSI.i218 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %PC.i217
  %3606 = add i64 %3605, 10
  store i64 %3606, i64* %PC.i217
  store i64 ptrtoint (%G__0x459fe0_type* @G__0x459fe0 to i64), i64* %RSI.i218, align 8
  store %struct.Memory* %loadMem_43f682, %struct.Memory** %MEMORY
  %loadMem_43f68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 11
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %RDI.i215 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 15
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %RBP.i216
  %3617 = sub i64 %3616, 16
  %3618 = load i64, i64* %PC.i214
  %3619 = add i64 %3618, 4
  store i64 %3619, i64* %PC.i214
  %3620 = inttoptr i64 %3617 to i64*
  %3621 = load i64, i64* %3620
  store i64 %3621, i64* %RDI.i215, align 8
  store %struct.Memory* %loadMem_43f68c, %struct.Memory** %MEMORY
  %loadMem1_43f690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3624 to i64*
  %3625 = load i64, i64* %PC.i213
  %3626 = add i64 %3625, -253840
  %3627 = load i64, i64* %PC.i213
  %3628 = add i64 %3627, 5
  %3629 = load i64, i64* %PC.i213
  %3630 = add i64 %3629, 5
  store i64 %3630, i64* %PC.i213
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3632 = load i64, i64* %3631, align 8
  %3633 = add i64 %3632, -8
  %3634 = inttoptr i64 %3633 to i64*
  store i64 %3628, i64* %3634
  store i64 %3633, i64* %3631, align 8
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3626, i64* %3635, align 8
  store %struct.Memory* %loadMem1_43f690, %struct.Memory** %MEMORY
  %loadMem2_43f690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f690 = load i64, i64* %3
  %call2_43f690 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f690, %struct.Memory* %loadMem2_43f690)
  store %struct.Memory* %call2_43f690, %struct.Memory** %MEMORY
  %loadMem_43f695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 33
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 1
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %RAX.i212
  %3643 = load i64, i64* %PC.i211
  %3644 = add i64 %3643, 4
  store i64 %3644, i64* %PC.i211
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3645, align 1
  %3646 = trunc i64 %3642 to i32
  %3647 = and i32 %3646, 255
  %3648 = call i32 @llvm.ctpop.i32(i32 %3647)
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  %3651 = xor i8 %3650, 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3651, i8* %3652, align 1
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3653, align 1
  %3654 = icmp eq i64 %3642, 0
  %3655 = zext i1 %3654 to i8
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3655, i8* %3656, align 1
  %3657 = lshr i64 %3642, 63
  %3658 = trunc i64 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3658, i8* %3659, align 1
  %3660 = lshr i64 %3642, 63
  %3661 = xor i64 %3657, %3660
  %3662 = add i64 %3661, %3660
  %3663 = icmp eq i64 %3662, 2
  %3664 = zext i1 %3663 to i8
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3664, i8* %3665, align 1
  store %struct.Memory* %loadMem_43f695, %struct.Memory** %MEMORY
  %loadMem_43f699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3668 to i64*
  %3669 = load i64, i64* %PC.i210
  %3670 = add i64 %3669, 18
  %3671 = load i64, i64* %PC.i210
  %3672 = add i64 %3671, 6
  %3673 = load i64, i64* %PC.i210
  %3674 = add i64 %3673, 6
  store i64 %3674, i64* %PC.i210
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3676 = load i8, i8* %3675, align 1
  store i8 %3676, i8* %BRANCH_TAKEN, align 1
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3678 = icmp ne i8 %3676, 0
  %3679 = select i1 %3678, i64 %3670, i64 %3672
  store i64 %3679, i64* %3677, align 8
  store %struct.Memory* %loadMem_43f699, %struct.Memory** %MEMORY
  %loadBr_43f699 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f699 = icmp eq i8 %loadBr_43f699, 1
  br i1 %cmpBr_43f699, label %block_.L_43f6ab, label %block_43f69f

block_43f69f:                                     ; preds = %block_43f682
  %loadMem_43f69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 15
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %RBP.i209
  %3687 = sub i64 %3686, 24
  %3688 = load i64, i64* %PC.i208
  %3689 = add i64 %3688, 7
  store i64 %3689, i64* %PC.i208
  %3690 = inttoptr i64 %3687 to i32*
  store i32 103, i32* %3690
  store %struct.Memory* %loadMem_43f69f, %struct.Memory** %MEMORY
  %loadMem_43f6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %PC.i207
  %3695 = add i64 %3694, 499
  %3696 = load i64, i64* %PC.i207
  %3697 = add i64 %3696, 5
  store i64 %3697, i64* %PC.i207
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3695, i64* %3698, align 8
  store %struct.Memory* %loadMem_43f6a6, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f6ab:                                  ; preds = %block_43f682, %block_43f665, %block_.L_43f648
  %loadMem_43f6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 33
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3701 to i64*
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 9
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %RSI.i206 = bitcast %union.anon* %3704 to i64*
  %3705 = load i64, i64* %PC.i205
  %3706 = add i64 %3705, 10
  store i64 %3706, i64* %PC.i205
  store i64 ptrtoint (%G__0x459fe7_type* @G__0x459fe7 to i64), i64* %RSI.i206, align 8
  store %struct.Memory* %loadMem_43f6ab, %struct.Memory** %MEMORY
  %loadMem_43f6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 11
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RDI.i203 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %RBP.i204
  %3717 = sub i64 %3716, 16
  %3718 = load i64, i64* %PC.i202
  %3719 = add i64 %3718, 4
  store i64 %3719, i64* %PC.i202
  %3720 = inttoptr i64 %3717 to i64*
  %3721 = load i64, i64* %3720
  store i64 %3721, i64* %RDI.i203, align 8
  store %struct.Memory* %loadMem_43f6b5, %struct.Memory** %MEMORY
  %loadMem1_43f6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %PC.i201
  %3726 = add i64 %3725, -253881
  %3727 = load i64, i64* %PC.i201
  %3728 = add i64 %3727, 5
  %3729 = load i64, i64* %PC.i201
  %3730 = add i64 %3729, 5
  store i64 %3730, i64* %PC.i201
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3732 = load i64, i64* %3731, align 8
  %3733 = add i64 %3732, -8
  %3734 = inttoptr i64 %3733 to i64*
  store i64 %3728, i64* %3734
  store i64 %3733, i64* %3731, align 8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3726, i64* %3735, align 8
  store %struct.Memory* %loadMem1_43f6b9, %struct.Memory** %MEMORY
  %loadMem2_43f6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f6b9 = load i64, i64* %3
  %call2_43f6b9 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f6b9, %struct.Memory* %loadMem2_43f6b9)
  store %struct.Memory* %call2_43f6b9, %struct.Memory** %MEMORY
  %loadMem_43f6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 1
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3741 to i64*
  %3742 = load i64, i64* %RAX.i200
  %3743 = load i64, i64* %PC.i199
  %3744 = add i64 %3743, 4
  store i64 %3744, i64* %PC.i199
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3745, align 1
  %3746 = trunc i64 %3742 to i32
  %3747 = and i32 %3746, 255
  %3748 = call i32 @llvm.ctpop.i32(i32 %3747)
  %3749 = trunc i32 %3748 to i8
  %3750 = and i8 %3749, 1
  %3751 = xor i8 %3750, 1
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3751, i8* %3752, align 1
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3753, align 1
  %3754 = icmp eq i64 %3742, 0
  %3755 = zext i1 %3754 to i8
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3755, i8* %3756, align 1
  %3757 = lshr i64 %3742, 63
  %3758 = trunc i64 %3757 to i8
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3758, i8* %3759, align 1
  %3760 = lshr i64 %3742, 63
  %3761 = xor i64 %3757, %3760
  %3762 = add i64 %3761, %3760
  %3763 = icmp eq i64 %3762, 2
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3764, i8* %3765, align 1
  store %struct.Memory* %loadMem_43f6be, %struct.Memory** %MEMORY
  %loadMem_43f6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %PC.i198
  %3770 = add i64 %3769, 47
  %3771 = load i64, i64* %PC.i198
  %3772 = add i64 %3771, 6
  %3773 = load i64, i64* %PC.i198
  %3774 = add i64 %3773, 6
  store i64 %3774, i64* %PC.i198
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3776 = load i8, i8* %3775, align 1
  store i8 %3776, i8* %BRANCH_TAKEN, align 1
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3778 = icmp ne i8 %3776, 0
  %3779 = select i1 %3778, i64 %3770, i64 %3772
  store i64 %3779, i64* %3777, align 8
  store %struct.Memory* %loadMem_43f6c2, %struct.Memory** %MEMORY
  %loadBr_43f6c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f6c2 = icmp eq i8 %loadBr_43f6c2, 1
  br i1 %cmpBr_43f6c2, label %block_.L_43f6f1, label %block_43f6c8

block_43f6c8:                                     ; preds = %block_.L_43f6ab
  %loadMem_43f6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 9
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RSI.i197 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %PC.i196
  %3787 = add i64 %3786, 10
  store i64 %3787, i64* %PC.i196
  store i64 ptrtoint (%G__0x458cfb_type* @G__0x458cfb to i64), i64* %RSI.i197, align 8
  store %struct.Memory* %loadMem_43f6c8, %struct.Memory** %MEMORY
  %loadMem_43f6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 11
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 15
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %RBP.i195
  %3798 = sub i64 %3797, 16
  %3799 = load i64, i64* %PC.i193
  %3800 = add i64 %3799, 4
  store i64 %3800, i64* %PC.i193
  %3801 = inttoptr i64 %3798 to i64*
  %3802 = load i64, i64* %3801
  store i64 %3802, i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_43f6d2, %struct.Memory** %MEMORY
  %loadMem1_43f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %PC.i192
  %3807 = add i64 %3806, -253910
  %3808 = load i64, i64* %PC.i192
  %3809 = add i64 %3808, 5
  %3810 = load i64, i64* %PC.i192
  %3811 = add i64 %3810, 5
  store i64 %3811, i64* %PC.i192
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3813 = load i64, i64* %3812, align 8
  %3814 = add i64 %3813, -8
  %3815 = inttoptr i64 %3814 to i64*
  store i64 %3809, i64* %3815
  store i64 %3814, i64* %3812, align 8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3807, i64* %3816, align 8
  store %struct.Memory* %loadMem1_43f6d6, %struct.Memory** %MEMORY
  %loadMem2_43f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f6d6 = load i64, i64* %3
  %call2_43f6d6 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64 %loadPC_43f6d6, %struct.Memory* %loadMem2_43f6d6)
  store %struct.Memory* %call2_43f6d6, %struct.Memory** %MEMORY
  %loadMem_43f6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 1
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RAX.i191
  %3824 = load i64, i64* %PC.i190
  %3825 = add i64 %3824, 4
  store i64 %3825, i64* %PC.i190
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3826, align 1
  %3827 = trunc i64 %3823 to i32
  %3828 = and i32 %3827, 255
  %3829 = call i32 @llvm.ctpop.i32(i32 %3828)
  %3830 = trunc i32 %3829 to i8
  %3831 = and i8 %3830, 1
  %3832 = xor i8 %3831, 1
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3832, i8* %3833, align 1
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3834, align 1
  %3835 = icmp eq i64 %3823, 0
  %3836 = zext i1 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3836, i8* %3837, align 1
  %3838 = lshr i64 %3823, 63
  %3839 = trunc i64 %3838 to i8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3839, i8* %3840, align 1
  %3841 = lshr i64 %3823, 63
  %3842 = xor i64 %3838, %3841
  %3843 = add i64 %3842, %3841
  %3844 = icmp eq i64 %3843, 2
  %3845 = zext i1 %3844 to i8
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3845, i8* %3846, align 1
  store %struct.Memory* %loadMem_43f6db, %struct.Memory** %MEMORY
  %loadMem_43f6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %PC.i189
  %3851 = add i64 %3850, 18
  %3852 = load i64, i64* %PC.i189
  %3853 = add i64 %3852, 6
  %3854 = load i64, i64* %PC.i189
  %3855 = add i64 %3854, 6
  store i64 %3855, i64* %PC.i189
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3857 = load i8, i8* %3856, align 1
  store i8 %3857, i8* %BRANCH_TAKEN, align 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3859 = icmp ne i8 %3857, 0
  %3860 = select i1 %3859, i64 %3851, i64 %3853
  store i64 %3860, i64* %3858, align 8
  store %struct.Memory* %loadMem_43f6df, %struct.Memory** %MEMORY
  %loadBr_43f6df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f6df = icmp eq i8 %loadBr_43f6df, 1
  br i1 %cmpBr_43f6df, label %block_.L_43f6f1, label %block_43f6e5

block_43f6e5:                                     ; preds = %block_43f6c8
  %loadMem_43f6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 15
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3866 to i64*
  %3867 = load i64, i64* %RBP.i188
  %3868 = sub i64 %3867, 24
  %3869 = load i64, i64* %PC.i187
  %3870 = add i64 %3869, 7
  store i64 %3870, i64* %PC.i187
  %3871 = inttoptr i64 %3868 to i32*
  store i32 5, i32* %3871
  store %struct.Memory* %loadMem_43f6e5, %struct.Memory** %MEMORY
  %loadMem_43f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %PC.i186
  %3876 = add i64 %3875, 429
  %3877 = load i64, i64* %PC.i186
  %3878 = add i64 %3877, 5
  store i64 %3878, i64* %PC.i186
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3876, i64* %3879, align 8
  store %struct.Memory* %loadMem_43f6ec, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f6f1:                                  ; preds = %block_43f6c8, %block_.L_43f6ab
  %loadMem_43f6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 9
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %PC.i184
  %3887 = add i64 %3886, 10
  store i64 %3887, i64* %PC.i184
  store i64 ptrtoint (%G__0x459ff0_type* @G__0x459ff0 to i64), i64* %RSI.i185, align 8
  store %struct.Memory* %loadMem_43f6f1, %struct.Memory** %MEMORY
  %loadMem_43f6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 1
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3893 to i64*
  %3894 = load i64, i64* %PC.i182
  %3895 = add i64 %3894, 5
  store i64 %3895, i64* %PC.i182
  store i64 6, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_43f6fb, %struct.Memory** %MEMORY
  %loadMem_43f700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 33
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 1
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %3901 to i32*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 7
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %3904 to i64*
  %3905 = load i32, i32* %EAX.i180
  %3906 = zext i32 %3905 to i64
  %3907 = load i64, i64* %PC.i179
  %3908 = add i64 %3907, 2
  store i64 %3908, i64* %PC.i179
  %3909 = and i64 %3906, 4294967295
  store i64 %3909, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_43f700, %struct.Memory** %MEMORY
  %loadMem_43f702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 11
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 15
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %3918 to i64*
  %3919 = load i64, i64* %RBP.i178
  %3920 = sub i64 %3919, 16
  %3921 = load i64, i64* %PC.i176
  %3922 = add i64 %3921, 4
  store i64 %3922, i64* %PC.i176
  %3923 = inttoptr i64 %3920 to i64*
  %3924 = load i64, i64* %3923
  store i64 %3924, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_43f702, %struct.Memory** %MEMORY
  %loadMem1_43f706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3927 to i64*
  %3928 = load i64, i64* %PC.i175
  %3929 = add i64 %3928, -254774
  %3930 = load i64, i64* %PC.i175
  %3931 = add i64 %3930, 5
  %3932 = load i64, i64* %PC.i175
  %3933 = add i64 %3932, 5
  store i64 %3933, i64* %PC.i175
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3935 = load i64, i64* %3934, align 8
  %3936 = add i64 %3935, -8
  %3937 = inttoptr i64 %3936 to i64*
  store i64 %3931, i64* %3937
  store i64 %3936, i64* %3934, align 8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3929, i64* %3938, align 8
  store %struct.Memory* %loadMem1_43f706, %struct.Memory** %MEMORY
  %loadMem2_43f706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f706 = load i64, i64* %3
  %3939 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f706)
  store %struct.Memory* %3939, %struct.Memory** %MEMORY
  %loadMem_43f70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 1
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %3945 to i32*
  %3946 = load i32, i32* %EAX.i172
  %3947 = zext i32 %3946 to i64
  %3948 = load i64, i64* %PC.i171
  %3949 = add i64 %3948, 3
  store i64 %3949, i64* %PC.i171
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3950, align 1
  %3951 = and i32 %3946, 255
  %3952 = call i32 @llvm.ctpop.i32(i32 %3951)
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = xor i8 %3954, 1
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3955, i8* %3956, align 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3957, align 1
  %3958 = icmp eq i32 %3946, 0
  %3959 = zext i1 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3959, i8* %3960, align 1
  %3961 = lshr i32 %3946, 31
  %3962 = trunc i32 %3961 to i8
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3962, i8* %3963, align 1
  %3964 = lshr i32 %3946, 31
  %3965 = xor i32 %3961, %3964
  %3966 = add i32 %3965, %3964
  %3967 = icmp eq i32 %3966, 2
  %3968 = zext i1 %3967 to i8
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3968, i8* %3969, align 1
  store %struct.Memory* %loadMem_43f70b, %struct.Memory** %MEMORY
  %loadMem_43f70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %PC.i170
  %3974 = add i64 %3973, 41
  %3975 = load i64, i64* %PC.i170
  %3976 = add i64 %3975, 6
  %3977 = load i64, i64* %PC.i170
  %3978 = add i64 %3977, 6
  store i64 %3978, i64* %PC.i170
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3980 = load i8, i8* %3979, align 1
  store i8 %3980, i8* %BRANCH_TAKEN, align 1
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3982 = icmp ne i8 %3980, 0
  %3983 = select i1 %3982, i64 %3974, i64 %3976
  store i64 %3983, i64* %3981, align 8
  store %struct.Memory* %loadMem_43f70e, %struct.Memory** %MEMORY
  %loadBr_43f70e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f70e = icmp eq i8 %loadBr_43f70e, 1
  br i1 %cmpBr_43f70e, label %block_.L_43f737, label %block_43f714

block_43f714:                                     ; preds = %block_.L_43f6f1
  %loadMem_43f714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 33
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3986 to i64*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 9
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %3989 to i64*
  %3990 = load i64, i64* %PC.i168
  %3991 = add i64 %3990, 10
  store i64 %3991, i64* %PC.i168
  store i64 ptrtoint (%G__0x459ff7_type* @G__0x459ff7 to i64), i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_43f714, %struct.Memory** %MEMORY
  %loadMem_43f71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 1
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %PC.i166
  %3999 = add i64 %3998, 5
  store i64 %3999, i64* %PC.i166
  store i64 6, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_43f71e, %struct.Memory** %MEMORY
  %loadMem_43f723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 33
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 1
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %4005 to i32*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 7
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %RDX.i165 = bitcast %union.anon* %4008 to i64*
  %4009 = load i32, i32* %EAX.i164
  %4010 = zext i32 %4009 to i64
  %4011 = load i64, i64* %PC.i163
  %4012 = add i64 %4011, 2
  store i64 %4012, i64* %PC.i163
  %4013 = and i64 %4010, 4294967295
  store i64 %4013, i64* %RDX.i165, align 8
  store %struct.Memory* %loadMem_43f723, %struct.Memory** %MEMORY
  %loadMem_43f725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 11
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RDI.i161 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 15
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RBP.i162
  %4024 = sub i64 %4023, 16
  %4025 = load i64, i64* %PC.i160
  %4026 = add i64 %4025, 4
  store i64 %4026, i64* %PC.i160
  %4027 = inttoptr i64 %4024 to i64*
  %4028 = load i64, i64* %4027
  store i64 %4028, i64* %RDI.i161, align 8
  store %struct.Memory* %loadMem_43f725, %struct.Memory** %MEMORY
  %loadMem1_43f729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4031 to i64*
  %4032 = load i64, i64* %PC.i159
  %4033 = add i64 %4032, -254809
  %4034 = load i64, i64* %PC.i159
  %4035 = add i64 %4034, 5
  %4036 = load i64, i64* %PC.i159
  %4037 = add i64 %4036, 5
  store i64 %4037, i64* %PC.i159
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4039 = load i64, i64* %4038, align 8
  %4040 = add i64 %4039, -8
  %4041 = inttoptr i64 %4040 to i64*
  store i64 %4035, i64* %4041
  store i64 %4040, i64* %4038, align 8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4033, i64* %4042, align 8
  store %struct.Memory* %loadMem1_43f729, %struct.Memory** %MEMORY
  %loadMem2_43f729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f729 = load i64, i64* %3
  %4043 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f729)
  store %struct.Memory* %4043, %struct.Memory** %MEMORY
  %loadMem_43f72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 1
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %4049 to i32*
  %4050 = load i32, i32* %EAX.i156
  %4051 = zext i32 %4050 to i64
  %4052 = load i64, i64* %PC.i155
  %4053 = add i64 %4052, 3
  store i64 %4053, i64* %PC.i155
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4054, align 1
  %4055 = and i32 %4050, 255
  %4056 = call i32 @llvm.ctpop.i32(i32 %4055)
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = xor i8 %4058, 1
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4059, i8* %4060, align 1
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4061, align 1
  %4062 = icmp eq i32 %4050, 0
  %4063 = zext i1 %4062 to i8
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4063, i8* %4064, align 1
  %4065 = lshr i32 %4050, 31
  %4066 = trunc i32 %4065 to i8
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4066, i8* %4067, align 1
  %4068 = lshr i32 %4050, 31
  %4069 = xor i32 %4065, %4068
  %4070 = add i32 %4069, %4068
  %4071 = icmp eq i32 %4070, 2
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4072, i8* %4073, align 1
  store %struct.Memory* %loadMem_43f72e, %struct.Memory** %MEMORY
  %loadMem_43f731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 33
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4076 to i64*
  %4077 = load i64, i64* %PC.i154
  %4078 = add i64 %4077, 18
  %4079 = load i64, i64* %PC.i154
  %4080 = add i64 %4079, 6
  %4081 = load i64, i64* %PC.i154
  %4082 = add i64 %4081, 6
  store i64 %4082, i64* %PC.i154
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4084 = load i8, i8* %4083, align 1
  %4085 = icmp eq i8 %4084, 0
  %4086 = zext i1 %4085 to i8
  store i8 %4086, i8* %BRANCH_TAKEN, align 1
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4088 = select i1 %4085, i64 %4078, i64 %4080
  store i64 %4088, i64* %4087, align 8
  store %struct.Memory* %loadMem_43f731, %struct.Memory** %MEMORY
  %loadBr_43f731 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f731 = icmp eq i8 %loadBr_43f731, 1
  br i1 %cmpBr_43f731, label %block_.L_43f743, label %block_.L_43f737

block_.L_43f737:                                  ; preds = %block_43f714, %block_.L_43f6f1
  %loadMem_43f737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 15
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %4094 to i64*
  %4095 = load i64, i64* %RBP.i153
  %4096 = sub i64 %4095, 24
  %4097 = load i64, i64* %PC.i152
  %4098 = add i64 %4097, 7
  store i64 %4098, i64* %PC.i152
  %4099 = inttoptr i64 %4096 to i32*
  store i32 2, i32* %4099
  store %struct.Memory* %loadMem_43f737, %struct.Memory** %MEMORY
  %loadMem_43f73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 33
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4102 to i64*
  %4103 = load i64, i64* %PC.i151
  %4104 = add i64 %4103, 347
  %4105 = load i64, i64* %PC.i151
  %4106 = add i64 %4105, 5
  store i64 %4106, i64* %PC.i151
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4104, i64* %4107, align 8
  store %struct.Memory* %loadMem_43f73e, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f743:                                  ; preds = %block_43f714
  %loadMem_43f743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 33
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4110 to i64*
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 9
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %RSI.i150 = bitcast %union.anon* %4113 to i64*
  %4114 = load i64, i64* %PC.i149
  %4115 = add i64 %4114, 10
  store i64 %4115, i64* %PC.i149
  store i64 ptrtoint (%G__0x459fff_type* @G__0x459fff to i64), i64* %RSI.i150, align 8
  store %struct.Memory* %loadMem_43f743, %struct.Memory** %MEMORY
  %loadMem_43f74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 1
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %PC.i147
  %4123 = add i64 %4122, 5
  store i64 %4123, i64* %PC.i147
  store i64 5, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_43f74d, %struct.Memory** %MEMORY
  %loadMem_43f752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 33
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4126 to i64*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 1
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %4129 to i32*
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 7
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %4132 to i64*
  %4133 = load i32, i32* %EAX.i145
  %4134 = zext i32 %4133 to i64
  %4135 = load i64, i64* %PC.i144
  %4136 = add i64 %4135, 2
  store i64 %4136, i64* %PC.i144
  %4137 = and i64 %4134, 4294967295
  store i64 %4137, i64* %RDX.i146, align 8
  store %struct.Memory* %loadMem_43f752, %struct.Memory** %MEMORY
  %loadMem_43f754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 33
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 11
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %RDI.i142 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 15
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %4146 to i64*
  %4147 = load i64, i64* %RBP.i143
  %4148 = sub i64 %4147, 16
  %4149 = load i64, i64* %PC.i141
  %4150 = add i64 %4149, 4
  store i64 %4150, i64* %PC.i141
  %4151 = inttoptr i64 %4148 to i64*
  %4152 = load i64, i64* %4151
  store i64 %4152, i64* %RDI.i142, align 8
  store %struct.Memory* %loadMem_43f754, %struct.Memory** %MEMORY
  %loadMem1_43f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %PC.i140
  %4157 = add i64 %4156, -254856
  %4158 = load i64, i64* %PC.i140
  %4159 = add i64 %4158, 5
  %4160 = load i64, i64* %PC.i140
  %4161 = add i64 %4160, 5
  store i64 %4161, i64* %PC.i140
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4163 = load i64, i64* %4162, align 8
  %4164 = add i64 %4163, -8
  %4165 = inttoptr i64 %4164 to i64*
  store i64 %4159, i64* %4165
  store i64 %4164, i64* %4162, align 8
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4157, i64* %4166, align 8
  store %struct.Memory* %loadMem1_43f758, %struct.Memory** %MEMORY
  %loadMem2_43f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f758 = load i64, i64* %3
  %4167 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f758)
  store %struct.Memory* %4167, %struct.Memory** %MEMORY
  %loadMem_43f75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 1
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %4173 to i32*
  %4174 = load i32, i32* %EAX.i136
  %4175 = zext i32 %4174 to i64
  %4176 = load i64, i64* %PC.i135
  %4177 = add i64 %4176, 3
  store i64 %4177, i64* %PC.i135
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4178, align 1
  %4179 = and i32 %4174, 255
  %4180 = call i32 @llvm.ctpop.i32(i32 %4179)
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  %4183 = xor i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4183, i8* %4184, align 1
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4185, align 1
  %4186 = icmp eq i32 %4174, 0
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4187, i8* %4188, align 1
  %4189 = lshr i32 %4174, 31
  %4190 = trunc i32 %4189 to i8
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4190, i8* %4191, align 1
  %4192 = lshr i32 %4174, 31
  %4193 = xor i32 %4189, %4192
  %4194 = add i32 %4193, %4192
  %4195 = icmp eq i32 %4194, 2
  %4196 = zext i1 %4195 to i8
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4196, i8* %4197, align 1
  store %struct.Memory* %loadMem_43f75d, %struct.Memory** %MEMORY
  %loadMem_43f760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 33
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4200 to i64*
  %4201 = load i64, i64* %PC.i134
  %4202 = add i64 %4201, 41
  %4203 = load i64, i64* %PC.i134
  %4204 = add i64 %4203, 6
  %4205 = load i64, i64* %PC.i134
  %4206 = add i64 %4205, 6
  store i64 %4206, i64* %PC.i134
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4208 = load i8, i8* %4207, align 1
  store i8 %4208, i8* %BRANCH_TAKEN, align 1
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4210 = icmp ne i8 %4208, 0
  %4211 = select i1 %4210, i64 %4202, i64 %4204
  store i64 %4211, i64* %4209, align 8
  store %struct.Memory* %loadMem_43f760, %struct.Memory** %MEMORY
  %loadBr_43f760 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f760 = icmp eq i8 %loadBr_43f760, 1
  br i1 %cmpBr_43f760, label %block_.L_43f789, label %block_43f766

block_43f766:                                     ; preds = %block_.L_43f743
  %loadMem_43f766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 9
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %RSI.i133 = bitcast %union.anon* %4217 to i64*
  %4218 = load i64, i64* %PC.i132
  %4219 = add i64 %4218, 10
  store i64 %4219, i64* %PC.i132
  store i64 ptrtoint (%G__0x45a005_type* @G__0x45a005 to i64), i64* %RSI.i133, align 8
  store %struct.Memory* %loadMem_43f766, %struct.Memory** %MEMORY
  %loadMem_43f770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 1
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %PC.i130
  %4227 = add i64 %4226, 5
  store i64 %4227, i64* %PC.i130
  store i64 5, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_43f770, %struct.Memory** %MEMORY
  %loadMem_43f775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 33
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 1
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %4233 to i32*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 7
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %RDX.i129 = bitcast %union.anon* %4236 to i64*
  %4237 = load i32, i32* %EAX.i128
  %4238 = zext i32 %4237 to i64
  %4239 = load i64, i64* %PC.i127
  %4240 = add i64 %4239, 2
  store i64 %4240, i64* %PC.i127
  %4241 = and i64 %4238, 4294967295
  store i64 %4241, i64* %RDX.i129, align 8
  store %struct.Memory* %loadMem_43f775, %struct.Memory** %MEMORY
  %loadMem_43f777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 33
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 11
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RDI.i125 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 15
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %RBP.i126
  %4252 = sub i64 %4251, 16
  %4253 = load i64, i64* %PC.i124
  %4254 = add i64 %4253, 4
  store i64 %4254, i64* %PC.i124
  %4255 = inttoptr i64 %4252 to i64*
  %4256 = load i64, i64* %4255
  store i64 %4256, i64* %RDI.i125, align 8
  store %struct.Memory* %loadMem_43f777, %struct.Memory** %MEMORY
  %loadMem1_43f77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %PC.i123
  %4261 = add i64 %4260, -254891
  %4262 = load i64, i64* %PC.i123
  %4263 = add i64 %4262, 5
  %4264 = load i64, i64* %PC.i123
  %4265 = add i64 %4264, 5
  store i64 %4265, i64* %PC.i123
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4267 = load i64, i64* %4266, align 8
  %4268 = add i64 %4267, -8
  %4269 = inttoptr i64 %4268 to i64*
  store i64 %4263, i64* %4269
  store i64 %4268, i64* %4266, align 8
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4261, i64* %4270, align 8
  store %struct.Memory* %loadMem1_43f77b, %struct.Memory** %MEMORY
  %loadMem2_43f77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f77b = load i64, i64* %3
  %4271 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %loadMem2_43f77b)
  store %struct.Memory* %4271, %struct.Memory** %MEMORY
  %loadMem_43f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 1
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %EAX.i120 = bitcast %union.anon* %4277 to i32*
  %4278 = load i32, i32* %EAX.i120
  %4279 = zext i32 %4278 to i64
  %4280 = load i64, i64* %PC.i119
  %4281 = add i64 %4280, 3
  store i64 %4281, i64* %PC.i119
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4282, align 1
  %4283 = and i32 %4278, 255
  %4284 = call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4287, i8* %4288, align 1
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4289, align 1
  %4290 = icmp eq i32 %4278, 0
  %4291 = zext i1 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4291, i8* %4292, align 1
  %4293 = lshr i32 %4278, 31
  %4294 = trunc i32 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4294, i8* %4295, align 1
  %4296 = lshr i32 %4278, 31
  %4297 = xor i32 %4293, %4296
  %4298 = add i32 %4297, %4296
  %4299 = icmp eq i32 %4298, 2
  %4300 = zext i1 %4299 to i8
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4300, i8* %4301, align 1
  store %struct.Memory* %loadMem_43f780, %struct.Memory** %MEMORY
  %loadMem_43f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %PC.i118
  %4306 = add i64 %4305, 18
  %4307 = load i64, i64* %PC.i118
  %4308 = add i64 %4307, 6
  %4309 = load i64, i64* %PC.i118
  %4310 = add i64 %4309, 6
  store i64 %4310, i64* %PC.i118
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4312 = load i8, i8* %4311, align 1
  %4313 = icmp eq i8 %4312, 0
  %4314 = zext i1 %4313 to i8
  store i8 %4314, i8* %BRANCH_TAKEN, align 1
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4316 = select i1 %4313, i64 %4306, i64 %4308
  store i64 %4316, i64* %4315, align 8
  store %struct.Memory* %loadMem_43f783, %struct.Memory** %MEMORY
  %loadBr_43f783 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f783 = icmp eq i8 %loadBr_43f783, 1
  br i1 %cmpBr_43f783, label %block_.L_43f795, label %block_.L_43f789

block_.L_43f789:                                  ; preds = %block_43f766, %block_.L_43f743
  %loadMem_43f789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 33
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i117
  %4324 = sub i64 %4323, 24
  %4325 = load i64, i64* %PC.i116
  %4326 = add i64 %4325, 7
  store i64 %4326, i64* %PC.i116
  %4327 = inttoptr i64 %4324 to i32*
  store i32 4, i32* %4327
  store %struct.Memory* %loadMem_43f789, %struct.Memory** %MEMORY
  %loadMem_43f790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %PC.i115
  %4332 = add i64 %4331, 265
  %4333 = load i64, i64* %PC.i115
  %4334 = add i64 %4333, 5
  store i64 %4334, i64* %PC.i115
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4332, i64* %4335, align 8
  store %struct.Memory* %loadMem_43f790, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f795:                                  ; preds = %block_43f766
  %loadMem_43f795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 11
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RDI.i113 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 15
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %4344 to i64*
  %4345 = load i64, i64* %RBP.i114
  %4346 = sub i64 %4345, 48
  %4347 = load i64, i64* %PC.i112
  %4348 = add i64 %4347, 4
  store i64 %4348, i64* %PC.i112
  store i64 %4346, i64* %RDI.i113, align 8
  store %struct.Memory* %loadMem_43f795, %struct.Memory** %MEMORY
  %loadMem_43f799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 33
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4351 to i64*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 9
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %4354 to i64*
  %4355 = load i64, i64* %PC.i110
  %4356 = add i64 %4355, 10
  store i64 %4356, i64* %PC.i110
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_43f799, %struct.Memory** %MEMORY
  %loadMem_43f7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 1
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %4362 to i32*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 1
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %4365 to i64*
  %4366 = load i64, i64* %RAX.i109
  %4367 = load i32, i32* %EAX.i108
  %4368 = zext i32 %4367 to i64
  %4369 = load i64, i64* %PC.i107
  %4370 = add i64 %4369, 2
  store i64 %4370, i64* %PC.i107
  %4371 = xor i64 %4368, %4366
  %4372 = trunc i64 %4371 to i32
  %4373 = and i64 %4371, 4294967295
  store i64 %4373, i64* %RAX.i109, align 8
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4374, align 1
  %4375 = and i32 %4372, 255
  %4376 = call i32 @llvm.ctpop.i32(i32 %4375)
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = xor i8 %4378, 1
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4379, i8* %4380, align 1
  %4381 = icmp eq i32 %4372, 0
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4382, i8* %4383, align 1
  %4384 = lshr i32 %4372, 31
  %4385 = trunc i32 %4384 to i8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4385, i8* %4386, align 1
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4387, align 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4388, align 1
  store %struct.Memory* %loadMem_43f7a3, %struct.Memory** %MEMORY
  %loadMem_43f7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 1
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %EAX.i105 = bitcast %union.anon* %4394 to i32*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 7
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %4397 to i64*
  %4398 = load i32, i32* %EAX.i105
  %4399 = zext i32 %4398 to i64
  %4400 = load i64, i64* %PC.i104
  %4401 = add i64 %4400, 2
  store i64 %4401, i64* %PC.i104
  %4402 = and i64 %4399, 4294967295
  store i64 %4402, i64* %RDX.i106, align 8
  store %struct.Memory* %loadMem_43f7a5, %struct.Memory** %MEMORY
  %loadMem_43f7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 5
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 15
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4411 to i64*
  %4412 = load i64, i64* %RBP.i103
  %4413 = sub i64 %4412, 16
  %4414 = load i64, i64* %PC.i101
  %4415 = add i64 %4414, 4
  store i64 %4415, i64* %PC.i101
  %4416 = inttoptr i64 %4413 to i64*
  %4417 = load i64, i64* %4416
  store i64 %4417, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_43f7a7, %struct.Memory** %MEMORY
  %loadMem_43f7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 33
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 5
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 15
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %4426 to i64*
  %4427 = load i64, i64* %RBP.i100
  %4428 = sub i64 %4427, 48
  %4429 = load i64, i64* %RCX.i
  %4430 = load i64, i64* %PC.i99
  %4431 = add i64 %4430, 4
  store i64 %4431, i64* %PC.i99
  %4432 = inttoptr i64 %4428 to i64*
  store i64 %4429, i64* %4432
  store %struct.Memory* %loadMem_43f7ab, %struct.Memory** %MEMORY
  %loadMem1_43f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4435 to i64*
  %4436 = load i64, i64* %PC.i98
  %4437 = add i64 %4436, 28321
  %4438 = load i64, i64* %PC.i98
  %4439 = add i64 %4438, 5
  %4440 = load i64, i64* %PC.i98
  %4441 = add i64 %4440, 5
  store i64 %4441, i64* %PC.i98
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4443 = load i64, i64* %4442, align 8
  %4444 = add i64 %4443, -8
  %4445 = inttoptr i64 %4444 to i64*
  store i64 %4439, i64* %4445
  store i64 %4444, i64* %4442, align 8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4437, i64* %4446, align 8
  store %struct.Memory* %loadMem1_43f7af, %struct.Memory** %MEMORY
  %loadMem2_43f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f7af = load i64, i64* %3
  %call2_43f7af = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_43f7af, %struct.Memory* %loadMem2_43f7af)
  store %struct.Memory* %call2_43f7af, %struct.Memory** %MEMORY
  %loadMem_43f7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 33
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 1
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 15
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %4455 to i64*
  %4456 = load i64, i64* %RBP.i97
  %4457 = sub i64 %4456, 56
  %4458 = load i64, i64* %RAX.i96
  %4459 = load i64, i64* %PC.i95
  %4460 = add i64 %4459, 4
  store i64 %4460, i64* %PC.i95
  %4461 = inttoptr i64 %4457 to i64*
  store i64 %4458, i64* %4461
  store %struct.Memory* %loadMem_43f7b4, %struct.Memory** %MEMORY
  %loadMem_43f7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 1
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %RAX.i94
  %4469 = load i64, i64* %PC.i93
  %4470 = add i64 %4469, 4
  store i64 %4470, i64* %PC.i93
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4471, align 1
  %4472 = trunc i64 %4468 to i32
  %4473 = and i32 %4472, 255
  %4474 = call i32 @llvm.ctpop.i32(i32 %4473)
  %4475 = trunc i32 %4474 to i8
  %4476 = and i8 %4475, 1
  %4477 = xor i8 %4476, 1
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4477, i8* %4478, align 1
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4479, align 1
  %4480 = icmp eq i64 %4468, 0
  %4481 = zext i1 %4480 to i8
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4481, i8* %4482, align 1
  %4483 = lshr i64 %4468, 63
  %4484 = trunc i64 %4483 to i8
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4484, i8* %4485, align 1
  %4486 = lshr i64 %4468, 63
  %4487 = xor i64 %4483, %4486
  %4488 = add i64 %4487, %4486
  %4489 = icmp eq i64 %4488, 2
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4490, i8* %4491, align 1
  store %struct.Memory* %loadMem_43f7b8, %struct.Memory** %MEMORY
  %loadMem_43f7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 33
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4494 to i64*
  %4495 = load i64, i64* %PC.i92
  %4496 = add i64 %4495, 11
  %4497 = load i64, i64* %PC.i92
  %4498 = add i64 %4497, 6
  %4499 = load i64, i64* %PC.i92
  %4500 = add i64 %4499, 6
  store i64 %4500, i64* %PC.i92
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4502 = load i8, i8* %4501, align 1
  %4503 = icmp eq i8 %4502, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %BRANCH_TAKEN, align 1
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4506 = select i1 %4503, i64 %4496, i64 %4498
  store i64 %4506, i64* %4505, align 8
  store %struct.Memory* %loadMem_43f7bc, %struct.Memory** %MEMORY
  %loadBr_43f7bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7bc = icmp eq i8 %loadBr_43f7bc, 1
  br i1 %cmpBr_43f7bc, label %block_.L_43f7c7, label %block_43f7c2

block_43f7c2:                                     ; preds = %block_.L_43f795
  %loadMem_43f7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %PC.i91
  %4511 = add i64 %4510, -1474
  %4512 = load i64, i64* %PC.i91
  %4513 = add i64 %4512, 5
  store i64 %4513, i64* %PC.i91
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4511, i64* %4514, align 8
  store %struct.Memory* %loadMem_43f7c2, %struct.Memory** %MEMORY
  br label %block_.L_43f200

block_.L_43f7c7:                                  ; preds = %block_.L_43f795
  %loadMem_43f7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 33
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4517 to i64*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 11
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %4520 to i64*
  %4521 = load i64, i64* %PC.i89
  %4522 = add i64 %4521, 10
  store i64 %4522, i64* %PC.i89
  store i64 ptrtoint (%G__0x45a00b_type* @G__0x45a00b to i64), i64* %RDI.i90, align 8
  store %struct.Memory* %loadMem_43f7c7, %struct.Memory** %MEMORY
  %loadMem_43f7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 33
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4525 to i64*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 1
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 15
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %4531 to i64*
  %4532 = load i64, i64* %RBP.i88
  %4533 = sub i64 %4532, 56
  %4534 = load i64, i64* %PC.i86
  %4535 = add i64 %4534, 4
  store i64 %4535, i64* %PC.i86
  %4536 = inttoptr i64 %4533 to i64*
  %4537 = load i64, i64* %4536
  store i64 %4537, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_43f7d1, %struct.Memory** %MEMORY
  %loadMem_43f7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 1
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 9
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %4546 to i64*
  %4547 = load i64, i64* %RAX.i84
  %4548 = load i64, i64* %PC.i83
  %4549 = add i64 %4548, 3
  store i64 %4549, i64* %PC.i83
  %4550 = inttoptr i64 %4547 to i8*
  %4551 = load i8, i8* %4550
  %4552 = sext i8 %4551 to i64
  %4553 = and i64 %4552, 4294967295
  store i64 %4553, i64* %RSI.i85, align 8
  store %struct.Memory* %loadMem_43f7d5, %struct.Memory** %MEMORY
  %loadMem1_43f7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %PC.i82
  %4558 = add i64 %4557, -254808
  %4559 = load i64, i64* %PC.i82
  %4560 = add i64 %4559, 5
  %4561 = load i64, i64* %PC.i82
  %4562 = add i64 %4561, 5
  store i64 %4562, i64* %PC.i82
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4564 = load i64, i64* %4563, align 8
  %4565 = add i64 %4564, -8
  %4566 = inttoptr i64 %4565 to i64*
  store i64 %4560, i64* %4566
  store i64 %4565, i64* %4563, align 8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4558, i64* %4567, align 8
  store %struct.Memory* %loadMem1_43f7d8, %struct.Memory** %MEMORY
  %loadMem2_43f7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f7d8 = load i64, i64* %3
  %call2_43f7d8 = call %struct.Memory* @sub_401480.strchr_plt(%struct.State* %0, i64 %loadPC_43f7d8, %struct.Memory* %loadMem2_43f7d8)
  store %struct.Memory* %call2_43f7d8, %struct.Memory** %MEMORY
  %loadMem_43f7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 1
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RAX.i81
  %4575 = load i64, i64* %PC.i80
  %4576 = add i64 %4575, 4
  store i64 %4576, i64* %PC.i80
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4577, align 1
  %4578 = trunc i64 %4574 to i32
  %4579 = and i32 %4578, 255
  %4580 = call i32 @llvm.ctpop.i32(i32 %4579)
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4583, i8* %4584, align 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4585, align 1
  %4586 = icmp eq i64 %4574, 0
  %4587 = zext i1 %4586 to i8
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4587, i8* %4588, align 1
  %4589 = lshr i64 %4574, 63
  %4590 = trunc i64 %4589 to i8
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4590, i8* %4591, align 1
  %4592 = lshr i64 %4574, 63
  %4593 = xor i64 %4589, %4592
  %4594 = add i64 %4593, %4592
  %4595 = icmp eq i64 %4594, 2
  %4596 = zext i1 %4595 to i8
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4596, i8* %4597, align 1
  store %struct.Memory* %loadMem_43f7dd, %struct.Memory** %MEMORY
  %loadMem_43f7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 33
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %PC.i79
  %4602 = add i64 %4601, 11
  %4603 = load i64, i64* %PC.i79
  %4604 = add i64 %4603, 6
  %4605 = load i64, i64* %PC.i79
  %4606 = add i64 %4605, 6
  store i64 %4606, i64* %PC.i79
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4608 = load i8, i8* %4607, align 1
  store i8 %4608, i8* %BRANCH_TAKEN, align 1
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4610 = icmp ne i8 %4608, 0
  %4611 = select i1 %4610, i64 %4602, i64 %4604
  store i64 %4611, i64* %4609, align 8
  store %struct.Memory* %loadMem_43f7e1, %struct.Memory** %MEMORY
  %loadBr_43f7e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7e1 = icmp eq i8 %loadBr_43f7e1, 1
  br i1 %cmpBr_43f7e1, label %block_.L_43f7ec, label %block_43f7e7

block_43f7e7:                                     ; preds = %block_.L_43f7c7
  %loadMem_43f7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 33
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4614 to i64*
  %4615 = load i64, i64* %PC.i78
  %4616 = add i64 %4615, -1511
  %4617 = load i64, i64* %PC.i78
  %4618 = add i64 %4617, 5
  store i64 %4618, i64* %PC.i78
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4616, i64* %4619, align 8
  store %struct.Memory* %loadMem_43f7e7, %struct.Memory** %MEMORY
  br label %block_.L_43f200

block_.L_43f7ec:                                  ; preds = %block_.L_43f7c7
  %loadMem_43f7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 11
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 15
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RBP.i77
  %4630 = sub i64 %4629, 48
  %4631 = load i64, i64* %PC.i75
  %4632 = add i64 %4631, 4
  store i64 %4632, i64* %PC.i75
  store i64 %4630, i64* %RDI.i76, align 8
  store %struct.Memory* %loadMem_43f7ec, %struct.Memory** %MEMORY
  %loadMem_43f7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 33
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 9
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %PC.i74
  %4640 = add i64 %4639, 10
  store i64 %4640, i64* %PC.i74
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_43f7f0, %struct.Memory** %MEMORY
  %loadMem_43f7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %4646 to i32*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 1
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4649 to i64*
  %4650 = load i64, i64* %RAX.i73
  %4651 = load i32, i32* %EAX.i72
  %4652 = zext i32 %4651 to i64
  %4653 = load i64, i64* %PC.i71
  %4654 = add i64 %4653, 2
  store i64 %4654, i64* %PC.i71
  %4655 = xor i64 %4652, %4650
  %4656 = trunc i64 %4655 to i32
  %4657 = and i64 %4655, 4294967295
  store i64 %4657, i64* %RAX.i73, align 8
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4658, align 1
  %4659 = and i32 %4656, 255
  %4660 = call i32 @llvm.ctpop.i32(i32 %4659)
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  %4663 = xor i8 %4662, 1
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4663, i8* %4664, align 1
  %4665 = icmp eq i32 %4656, 0
  %4666 = zext i1 %4665 to i8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4666, i8* %4667, align 1
  %4668 = lshr i32 %4656, 31
  %4669 = trunc i32 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4669, i8* %4670, align 1
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4671, align 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4672, align 1
  store %struct.Memory* %loadMem_43f7fa, %struct.Memory** %MEMORY
  %loadMem_43f7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 1
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %4678 to i32*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 7
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4681 to i64*
  %4682 = load i32, i32* %EAX.i70
  %4683 = zext i32 %4682 to i64
  %4684 = load i64, i64* %PC.i69
  %4685 = add i64 %4684, 2
  store i64 %4685, i64* %PC.i69
  %4686 = and i64 %4683, 4294967295
  store i64 %4686, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_43f7fc, %struct.Memory** %MEMORY
  %loadMem1_43f7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4689 to i64*
  %4690 = load i64, i64* %PC.i68
  %4691 = add i64 %4690, 28242
  %4692 = load i64, i64* %PC.i68
  %4693 = add i64 %4692, 5
  %4694 = load i64, i64* %PC.i68
  %4695 = add i64 %4694, 5
  store i64 %4695, i64* %PC.i68
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4697 = load i64, i64* %4696, align 8
  %4698 = add i64 %4697, -8
  %4699 = inttoptr i64 %4698 to i64*
  store i64 %4693, i64* %4699
  store i64 %4698, i64* %4696, align 8
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4691, i64* %4700, align 8
  store %struct.Memory* %loadMem1_43f7fe, %struct.Memory** %MEMORY
  %loadMem2_43f7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f7fe = load i64, i64* %3
  %call2_43f7fe = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64 %loadPC_43f7fe, %struct.Memory* %loadMem2_43f7fe)
  store %struct.Memory* %call2_43f7fe, %struct.Memory** %MEMORY
  %loadMem_43f803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 1
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 15
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RBP.i67
  %4711 = sub i64 %4710, 64
  %4712 = load i64, i64* %RAX.i66
  %4713 = load i64, i64* %PC.i65
  %4714 = add i64 %4713, 4
  store i64 %4714, i64* %PC.i65
  %4715 = inttoptr i64 %4711 to i64*
  store i64 %4712, i64* %4715
  store %struct.Memory* %loadMem_43f803, %struct.Memory** %MEMORY
  %loadMem_43f807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 1
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %4721 to i64*
  %4722 = load i64, i64* %RAX.i64
  %4723 = load i64, i64* %PC.i63
  %4724 = add i64 %4723, 4
  store i64 %4724, i64* %PC.i63
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4725, align 1
  %4726 = trunc i64 %4722 to i32
  %4727 = and i32 %4726, 255
  %4728 = call i32 @llvm.ctpop.i32(i32 %4727)
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  %4731 = xor i8 %4730, 1
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4731, i8* %4732, align 1
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4733, align 1
  %4734 = icmp eq i64 %4722, 0
  %4735 = zext i1 %4734 to i8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4735, i8* %4736, align 1
  %4737 = lshr i64 %4722, 63
  %4738 = trunc i64 %4737 to i8
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4738, i8* %4739, align 1
  %4740 = lshr i64 %4722, 63
  %4741 = xor i64 %4737, %4740
  %4742 = add i64 %4741, %4740
  %4743 = icmp eq i64 %4742, 2
  %4744 = zext i1 %4743 to i8
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4744, i8* %4745, align 1
  store %struct.Memory* %loadMem_43f807, %struct.Memory** %MEMORY
  %loadMem_43f80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 33
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4748 to i64*
  %4749 = load i64, i64* %PC.i62
  %4750 = add i64 %4749, 13
  %4751 = load i64, i64* %PC.i62
  %4752 = add i64 %4751, 6
  %4753 = load i64, i64* %PC.i62
  %4754 = add i64 %4753, 6
  store i64 %4754, i64* %PC.i62
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4756 = load i8, i8* %4755, align 1
  %4757 = icmp eq i8 %4756, 0
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %BRANCH_TAKEN, align 1
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4760 = select i1 %4757, i64 %4750, i64 %4752
  store i64 %4760, i64* %4759, align 8
  store %struct.Memory* %loadMem_43f80b, %struct.Memory** %MEMORY
  %loadBr_43f80b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f80b = icmp eq i8 %loadBr_43f80b, 1
  br i1 %cmpBr_43f80b, label %block_.L_43f818, label %block_43f811

block_43f811:                                     ; preds = %block_.L_43f7ec
  %loadMem_43f811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 33
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4763 to i64*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 15
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4766 to i64*
  %4767 = load i64, i64* %RBP.i61
  %4768 = sub i64 %4767, 68
  %4769 = load i64, i64* %PC.i60
  %4770 = add i64 %4769, 7
  store i64 %4770, i64* %PC.i60
  %4771 = inttoptr i64 %4768 to i32*
  store i32 1, i32* %4771
  store %struct.Memory* %loadMem_43f811, %struct.Memory** %MEMORY
  br label %block_.L_43f818

block_.L_43f818:                                  ; preds = %block_43f811, %block_.L_43f7ec
  %loadMem_43f818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 15
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4777 to i64*
  %4778 = load i64, i64* %RBP.i59
  %4779 = sub i64 %4778, 64
  %4780 = load i64, i64* %PC.i58
  %4781 = add i64 %4780, 5
  store i64 %4781, i64* %PC.i58
  %4782 = inttoptr i64 %4779 to i64*
  %4783 = load i64, i64* %4782
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4784, align 1
  %4785 = trunc i64 %4783 to i32
  %4786 = and i32 %4785, 255
  %4787 = call i32 @llvm.ctpop.i32(i32 %4786)
  %4788 = trunc i32 %4787 to i8
  %4789 = and i8 %4788, 1
  %4790 = xor i8 %4789, 1
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4790, i8* %4791, align 1
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4792, align 1
  %4793 = icmp eq i64 %4783, 0
  %4794 = zext i1 %4793 to i8
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4794, i8* %4795, align 1
  %4796 = lshr i64 %4783, 63
  %4797 = trunc i64 %4796 to i8
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4797, i8* %4798, align 1
  %4799 = lshr i64 %4783, 63
  %4800 = xor i64 %4796, %4799
  %4801 = add i64 %4800, %4799
  %4802 = icmp eq i64 %4801, 2
  %4803 = zext i1 %4802 to i8
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4803, i8* %4804, align 1
  store %struct.Memory* %loadMem_43f818, %struct.Memory** %MEMORY
  %loadMem_43f81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 33
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4807 to i64*
  %4808 = load i64, i64* %PC.i57
  %4809 = add i64 %4808, 31
  %4810 = load i64, i64* %PC.i57
  %4811 = add i64 %4810, 6
  %4812 = load i64, i64* %PC.i57
  %4813 = add i64 %4812, 6
  store i64 %4813, i64* %PC.i57
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4815 = load i8, i8* %4814, align 1
  store i8 %4815, i8* %BRANCH_TAKEN, align 1
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4817 = icmp ne i8 %4815, 0
  %4818 = select i1 %4817, i64 %4809, i64 %4811
  store i64 %4818, i64* %4816, align 8
  store %struct.Memory* %loadMem_43f81d, %struct.Memory** %MEMORY
  %loadBr_43f81d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f81d = icmp eq i8 %loadBr_43f81d, 1
  br i1 %cmpBr_43f81d, label %block_.L_43f83c, label %block_43f823

block_43f823:                                     ; preds = %block_.L_43f818
  %loadMem_43f823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 11
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 15
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RBP.i56
  %4829 = sub i64 %4828, 64
  %4830 = load i64, i64* %PC.i54
  %4831 = add i64 %4830, 4
  store i64 %4831, i64* %PC.i54
  %4832 = inttoptr i64 %4829 to i64*
  %4833 = load i64, i64* %4832
  store i64 %4833, i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_43f823, %struct.Memory** %MEMORY
  %loadMem1_43f827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 33
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %PC.i53
  %4838 = add i64 %4837, 329
  %4839 = load i64, i64* %PC.i53
  %4840 = add i64 %4839, 5
  %4841 = load i64, i64* %PC.i53
  %4842 = add i64 %4841, 5
  store i64 %4842, i64* %PC.i53
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4844 = load i64, i64* %4843, align 8
  %4845 = add i64 %4844, -8
  %4846 = inttoptr i64 %4845 to i64*
  store i64 %4840, i64* %4846
  store i64 %4845, i64* %4843, align 8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4838, i64* %4847, align 8
  store %struct.Memory* %loadMem1_43f827, %struct.Memory** %MEMORY
  %loadMem2_43f827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f827 = load i64, i64* %3
  %call2_43f827 = call %struct.Memory* @sub_43f970.Seqtype(%struct.State* %0, i64 %loadPC_43f827, %struct.Memory* %loadMem2_43f827)
  store %struct.Memory* %call2_43f827, %struct.Memory** %MEMORY
  %loadMem_43f82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 33
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 1
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %4853 to i32*
  %4854 = load i32, i32* %EAX.i52
  %4855 = zext i32 %4854 to i64
  %4856 = load i64, i64* %PC.i51
  %4857 = add i64 %4856, 3
  store i64 %4857, i64* %PC.i51
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4858, align 1
  %4859 = and i32 %4854, 255
  %4860 = call i32 @llvm.ctpop.i32(i32 %4859)
  %4861 = trunc i32 %4860 to i8
  %4862 = and i8 %4861, 1
  %4863 = xor i8 %4862, 1
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4863, i8* %4864, align 1
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4865, align 1
  %4866 = icmp eq i32 %4854, 0
  %4867 = zext i1 %4866 to i8
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4867, i8* %4868, align 1
  %4869 = lshr i32 %4854, 31
  %4870 = trunc i32 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4870, i8* %4871, align 1
  %4872 = lshr i32 %4854, 31
  %4873 = xor i32 %4869, %4872
  %4874 = add i32 %4873, %4872
  %4875 = icmp eq i32 %4874, 2
  %4876 = zext i1 %4875 to i8
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4876, i8* %4877, align 1
  store %struct.Memory* %loadMem_43f82c, %struct.Memory** %MEMORY
  %loadMem_43f82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 33
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4880 to i64*
  %4881 = load i64, i64* %PC.i50
  %4882 = add i64 %4881, 13
  %4883 = load i64, i64* %PC.i50
  %4884 = add i64 %4883, 6
  %4885 = load i64, i64* %PC.i50
  %4886 = add i64 %4885, 6
  store i64 %4886, i64* %PC.i50
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4888 = load i8, i8* %4887, align 1
  %4889 = icmp eq i8 %4888, 0
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %BRANCH_TAKEN, align 1
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4892 = select i1 %4889, i64 %4882, i64 %4884
  store i64 %4892, i64* %4891, align 8
  store %struct.Memory* %loadMem_43f82f, %struct.Memory** %MEMORY
  %loadBr_43f82f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f82f = icmp eq i8 %loadBr_43f82f, 1
  br i1 %cmpBr_43f82f, label %block_.L_43f83c, label %block_43f835

block_43f835:                                     ; preds = %block_43f823
  %loadMem_43f835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 15
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4898 to i64*
  %4899 = load i64, i64* %RBP.i49
  %4900 = sub i64 %4899, 68
  %4901 = load i64, i64* %PC.i48
  %4902 = add i64 %4901, 7
  store i64 %4902, i64* %PC.i48
  %4903 = inttoptr i64 %4900 to i32*
  store i32 1, i32* %4903
  store %struct.Memory* %loadMem_43f835, %struct.Memory** %MEMORY
  br label %block_.L_43f83c

block_.L_43f83c:                                  ; preds = %block_43f835, %block_43f823, %block_.L_43f818
  %loadMem_43f83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 33
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 1
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 15
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %4912 to i64*
  %4913 = load i64, i64* %RBP.i47
  %4914 = sub i64 %4913, 28
  %4915 = load i64, i64* %PC.i45
  %4916 = add i64 %4915, 3
  store i64 %4916, i64* %PC.i45
  %4917 = inttoptr i64 %4914 to i32*
  %4918 = load i32, i32* %4917
  %4919 = zext i32 %4918 to i64
  store i64 %4919, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_43f83c, %struct.Memory** %MEMORY
  %loadMem_43f83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 1
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %RAX.i44
  %4927 = load i64, i64* %PC.i43
  %4928 = add i64 %4927, 3
  store i64 %4928, i64* %PC.i43
  %4929 = trunc i64 %4926 to i32
  %4930 = add i32 1, %4929
  %4931 = zext i32 %4930 to i64
  store i64 %4931, i64* %RAX.i44, align 8
  %4932 = icmp ult i32 %4930, %4929
  %4933 = icmp ult i32 %4930, 1
  %4934 = or i1 %4932, %4933
  %4935 = zext i1 %4934 to i8
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4935, i8* %4936, align 1
  %4937 = and i32 %4930, 255
  %4938 = call i32 @llvm.ctpop.i32(i32 %4937)
  %4939 = trunc i32 %4938 to i8
  %4940 = and i8 %4939, 1
  %4941 = xor i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4941, i8* %4942, align 1
  %4943 = xor i64 1, %4926
  %4944 = trunc i64 %4943 to i32
  %4945 = xor i32 %4944, %4930
  %4946 = lshr i32 %4945, 4
  %4947 = trunc i32 %4946 to i8
  %4948 = and i8 %4947, 1
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4948, i8* %4949, align 1
  %4950 = icmp eq i32 %4930, 0
  %4951 = zext i1 %4950 to i8
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4951, i8* %4952, align 1
  %4953 = lshr i32 %4930, 31
  %4954 = trunc i32 %4953 to i8
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4954, i8* %4955, align 1
  %4956 = lshr i32 %4929, 31
  %4957 = xor i32 %4953, %4956
  %4958 = add i32 %4957, %4953
  %4959 = icmp eq i32 %4958, 2
  %4960 = zext i1 %4959 to i8
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4960, i8* %4961, align 1
  store %struct.Memory* %loadMem_43f83f, %struct.Memory** %MEMORY
  %loadMem_43f842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 33
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 1
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4967 to i32*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 15
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %RBP.i42
  %4972 = sub i64 %4971, 28
  %4973 = load i32, i32* %EAX.i
  %4974 = zext i32 %4973 to i64
  %4975 = load i64, i64* %PC.i41
  %4976 = add i64 %4975, 3
  store i64 %4976, i64* %PC.i41
  %4977 = inttoptr i64 %4972 to i32*
  store i32 %4973, i32* %4977
  store %struct.Memory* %loadMem_43f842, %struct.Memory** %MEMORY
  %loadMem_43f845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 33
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 15
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %RBP.i40
  %4985 = sub i64 %4984, 28
  %4986 = load i64, i64* %PC.i39
  %4987 = add i64 %4986, 7
  store i64 %4987, i64* %PC.i39
  %4988 = inttoptr i64 %4985 to i32*
  %4989 = load i32, i32* %4988
  %4990 = sub i32 %4989, 300
  %4991 = icmp ult i32 %4989, 300
  %4992 = zext i1 %4991 to i8
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4992, i8* %4993, align 1
  %4994 = and i32 %4990, 255
  %4995 = call i32 @llvm.ctpop.i32(i32 %4994)
  %4996 = trunc i32 %4995 to i8
  %4997 = and i8 %4996, 1
  %4998 = xor i8 %4997, 1
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4998, i8* %4999, align 1
  %5000 = xor i32 %4989, 300
  %5001 = xor i32 %5000, %4990
  %5002 = lshr i32 %5001, 4
  %5003 = trunc i32 %5002 to i8
  %5004 = and i8 %5003, 1
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5004, i8* %5005, align 1
  %5006 = icmp eq i32 %4990, 0
  %5007 = zext i1 %5006 to i8
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5007, i8* %5008, align 1
  %5009 = lshr i32 %4990, 31
  %5010 = trunc i32 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5010, i8* %5011, align 1
  %5012 = lshr i32 %4989, 31
  %5013 = xor i32 %5009, %5012
  %5014 = add i32 %5013, %5012
  %5015 = icmp eq i32 %5014, 2
  %5016 = zext i1 %5015 to i8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5016, i8* %5017, align 1
  store %struct.Memory* %loadMem_43f845, %struct.Memory** %MEMORY
  %loadMem_43f84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 33
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5020 to i64*
  %5021 = load i64, i64* %PC.i38
  %5022 = add i64 %5021, 11
  %5023 = load i64, i64* %PC.i38
  %5024 = add i64 %5023, 6
  %5025 = load i64, i64* %PC.i38
  %5026 = add i64 %5025, 6
  store i64 %5026, i64* %PC.i38
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5028 = load i8, i8* %5027, align 1
  %5029 = icmp eq i8 %5028, 0
  %5030 = zext i1 %5029 to i8
  store i8 %5030, i8* %BRANCH_TAKEN, align 1
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5032 = select i1 %5029, i64 %5022, i64 %5024
  store i64 %5032, i64* %5031, align 8
  store %struct.Memory* %loadMem_43f84c, %struct.Memory** %MEMORY
  %loadBr_43f84c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f84c = icmp eq i8 %loadBr_43f84c, 1
  br i1 %cmpBr_43f84c, label %block_.L_43f857, label %block_43f852

block_43f852:                                     ; preds = %block_.L_43f83c
  %loadMem_43f852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 33
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5035 to i64*
  %5036 = load i64, i64* %PC.i37
  %5037 = add i64 %5036, 10
  %5038 = load i64, i64* %PC.i37
  %5039 = add i64 %5038, 5
  store i64 %5039, i64* %PC.i37
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5037, i64* %5040, align 8
  store %struct.Memory* %loadMem_43f852, %struct.Memory** %MEMORY
  br label %block_.L_43f85c

block_.L_43f857:                                  ; preds = %block_.L_43f83c
  %loadMem_43f857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 33
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5043 to i64*
  %5044 = load i64, i64* %PC.i36
  %5045 = add i64 %5044, -1623
  %5046 = load i64, i64* %PC.i36
  %5047 = add i64 %5046, 5
  store i64 %5047, i64* %PC.i36
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5045, i64* %5048, align 8
  store %struct.Memory* %loadMem_43f857, %struct.Memory** %MEMORY
  br label %block_.L_43f200

block_.L_43f85c:                                  ; preds = %block_43f852, %block_.L_43f200
  %loadMem_43f85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 33
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 15
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RBP.i35
  %5056 = sub i64 %5055, 28
  %5057 = load i64, i64* %PC.i34
  %5058 = add i64 %5057, 4
  store i64 %5058, i64* %PC.i34
  %5059 = inttoptr i64 %5056 to i32*
  %5060 = load i32, i32* %5059
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5061, align 1
  %5062 = and i32 %5060, 255
  %5063 = call i32 @llvm.ctpop.i32(i32 %5062)
  %5064 = trunc i32 %5063 to i8
  %5065 = and i8 %5064, 1
  %5066 = xor i8 %5065, 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5066, i8* %5067, align 1
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5068, align 1
  %5069 = icmp eq i32 %5060, 0
  %5070 = zext i1 %5069 to i8
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5070, i8* %5071, align 1
  %5072 = lshr i32 %5060, 31
  %5073 = trunc i32 %5072 to i8
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5073, i8* %5074, align 1
  %5075 = lshr i32 %5060, 31
  %5076 = xor i32 %5072, %5075
  %5077 = add i32 %5076, %5075
  %5078 = icmp eq i32 %5077, 2
  %5079 = zext i1 %5078 to i8
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5079, i8* %5080, align 1
  store %struct.Memory* %loadMem_43f85c, %struct.Memory** %MEMORY
  %loadMem_43f860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 33
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5083 to i64*
  %5084 = load i64, i64* %PC.i33
  %5085 = add i64 %5084, 23
  %5086 = load i64, i64* %PC.i33
  %5087 = add i64 %5086, 6
  %5088 = load i64, i64* %PC.i33
  %5089 = add i64 %5088, 6
  store i64 %5089, i64* %PC.i33
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5091 = load i8, i8* %5090, align 1
  %5092 = icmp eq i8 %5091, 0
  %5093 = zext i1 %5092 to i8
  store i8 %5093, i8* %BRANCH_TAKEN, align 1
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5095 = select i1 %5092, i64 %5085, i64 %5087
  store i64 %5095, i64* %5094, align 8
  store %struct.Memory* %loadMem_43f860, %struct.Memory** %MEMORY
  %loadBr_43f860 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f860 = icmp eq i8 %loadBr_43f860, 1
  br i1 %cmpBr_43f860, label %block_.L_43f877, label %block_43f866

block_43f866:                                     ; preds = %block_.L_43f85c
  %loadMem_43f866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 33
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 11
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %5101 to i64*
  %5102 = load i64, i64* %PC.i31
  %5103 = add i64 %5102, 10
  store i64 %5103, i64* %PC.i31
  store i64 ptrtoint (%G__0x45a00e_type* @G__0x45a00e to i64), i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_43f866, %struct.Memory** %MEMORY
  %loadMem_43f870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 1
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %5110 = bitcast %union.anon* %5109 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5110, i32 0, i32 0
  %5111 = load i64, i64* %PC.i30
  %5112 = add i64 %5111, 2
  store i64 %5112, i64* %PC.i30
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_43f870, %struct.Memory** %MEMORY
  %loadMem1_43f872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 33
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5115 to i64*
  %5116 = load i64, i64* %PC.i29
  %5117 = add i64 %5116, -3682
  %5118 = load i64, i64* %PC.i29
  %5119 = add i64 %5118, 5
  %5120 = load i64, i64* %PC.i29
  %5121 = add i64 %5120, 5
  store i64 %5121, i64* %PC.i29
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5123 = load i64, i64* %5122, align 8
  %5124 = add i64 %5123, -8
  %5125 = inttoptr i64 %5124 to i64*
  store i64 %5119, i64* %5125
  store i64 %5124, i64* %5122, align 8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5117, i64* %5126, align 8
  store %struct.Memory* %loadMem1_43f872, %struct.Memory** %MEMORY
  %loadMem2_43f872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f872 = load i64, i64* %3
  %call2_43f872 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_43f872, %struct.Memory* %loadMem2_43f872)
  store %struct.Memory* %call2_43f872, %struct.Memory** %MEMORY
  br label %block_.L_43f877

block_.L_43f877:                                  ; preds = %block_43f866, %block_.L_43f85c
  %loadMem_43f877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 15
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %5132 to i64*
  %5133 = load i64, i64* %RBP.i28
  %5134 = sub i64 %5133, 68
  %5135 = load i64, i64* %PC.i27
  %5136 = add i64 %5135, 4
  store i64 %5136, i64* %PC.i27
  %5137 = inttoptr i64 %5134 to i32*
  %5138 = load i32, i32* %5137
  %5139 = sub i32 %5138, 1
  %5140 = icmp ult i32 %5138, 1
  %5141 = zext i1 %5140 to i8
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5141, i8* %5142, align 1
  %5143 = and i32 %5139, 255
  %5144 = call i32 @llvm.ctpop.i32(i32 %5143)
  %5145 = trunc i32 %5144 to i8
  %5146 = and i8 %5145, 1
  %5147 = xor i8 %5146, 1
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5147, i8* %5148, align 1
  %5149 = xor i32 %5138, 1
  %5150 = xor i32 %5149, %5139
  %5151 = lshr i32 %5150, 4
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5153, i8* %5154, align 1
  %5155 = icmp eq i32 %5139, 0
  %5156 = zext i1 %5155 to i8
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5156, i8* %5157, align 1
  %5158 = lshr i32 %5139, 31
  %5159 = trunc i32 %5158 to i8
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5159, i8* %5160, align 1
  %5161 = lshr i32 %5138, 31
  %5162 = xor i32 %5158, %5161
  %5163 = add i32 %5162, %5161
  %5164 = icmp eq i32 %5163, 2
  %5165 = zext i1 %5164 to i8
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5165, i8* %5166, align 1
  store %struct.Memory* %loadMem_43f877, %struct.Memory** %MEMORY
  %loadMem_43f87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %PC.i26
  %5171 = add i64 %5170, 18
  %5172 = load i64, i64* %PC.i26
  %5173 = add i64 %5172, 6
  %5174 = load i64, i64* %PC.i26
  %5175 = add i64 %5174, 6
  store i64 %5175, i64* %PC.i26
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5177 = load i8, i8* %5176, align 1
  %5178 = icmp eq i8 %5177, 0
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %BRANCH_TAKEN, align 1
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5181 = select i1 %5178, i64 %5171, i64 %5173
  store i64 %5181, i64* %5180, align 8
  store %struct.Memory* %loadMem_43f87b, %struct.Memory** %MEMORY
  %loadBr_43f87b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f87b = icmp eq i8 %loadBr_43f87b, 1
  br i1 %cmpBr_43f87b, label %block_.L_43f88d, label %block_43f881

block_43f881:                                     ; preds = %block_.L_43f877
  %loadMem_43f881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 15
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5187 to i64*
  %5188 = load i64, i64* %RBP.i25
  %5189 = sub i64 %5188, 24
  %5190 = load i64, i64* %PC.i24
  %5191 = add i64 %5190, 7
  store i64 %5191, i64* %PC.i24
  %5192 = inttoptr i64 %5189 to i32*
  store i32 0, i32* %5192
  store %struct.Memory* %loadMem_43f881, %struct.Memory** %MEMORY
  %loadMem_43f888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5195 to i64*
  %5196 = load i64, i64* %PC.i23
  %5197 = add i64 %5196, 12
  %5198 = load i64, i64* %PC.i23
  %5199 = add i64 %5198, 5
  store i64 %5199, i64* %PC.i23
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5197, i64* %5200, align 8
  store %struct.Memory* %loadMem_43f888, %struct.Memory** %MEMORY
  br label %block_.L_43f894

block_.L_43f88d:                                  ; preds = %block_.L_43f877
  %loadMem_43f88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 15
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RBP.i22
  %5208 = sub i64 %5207, 24
  %5209 = load i64, i64* %PC.i21
  %5210 = add i64 %5209, 7
  store i64 %5210, i64* %PC.i21
  %5211 = inttoptr i64 %5208 to i32*
  store i32 102, i32* %5211
  store %struct.Memory* %loadMem_43f88d, %struct.Memory** %MEMORY
  br label %block_.L_43f894

block_.L_43f894:                                  ; preds = %block_.L_43f88d, %block_43f881
  %loadMem_43f894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 33
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5214 to i64*
  %5215 = load i64, i64* %PC.i20
  %5216 = add i64 %5215, 5
  %5217 = load i64, i64* %PC.i20
  %5218 = add i64 %5217, 5
  store i64 %5218, i64* %PC.i20
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5216, i64* %5219, align 8
  store %struct.Memory* %loadMem_43f894, %struct.Memory** %MEMORY
  br label %block_.L_43f899

block_.L_43f899:                                  ; preds = %block_.L_43f894, %block_.L_43f789, %block_.L_43f737, %block_43f6e5, %block_43f69f, %block_.L_43f63c, %block_.L_43f5ea, %block_43f44b, %block_.L_43f3b7, %block_43f365, %block_43f319, %block_.L_43f2ea, %block_43f298, %block_43f27c
  %loadMem_43f899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 15
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %5225 to i64*
  %5226 = load i64, i64* %RBP.i19
  %5227 = sub i64 %5226, 16
  %5228 = load i64, i64* %PC.i18
  %5229 = add i64 %5228, 5
  store i64 %5229, i64* %PC.i18
  %5230 = inttoptr i64 %5227 to i64*
  %5231 = load i64, i64* %5230
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5232, align 1
  %5233 = trunc i64 %5231 to i32
  %5234 = and i32 %5233, 255
  %5235 = call i32 @llvm.ctpop.i32(i32 %5234)
  %5236 = trunc i32 %5235 to i8
  %5237 = and i8 %5236, 1
  %5238 = xor i8 %5237, 1
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5238, i8* %5239, align 1
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5240, align 1
  %5241 = icmp eq i64 %5231, 0
  %5242 = zext i1 %5241 to i8
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5242, i8* %5243, align 1
  %5244 = lshr i64 %5231, 63
  %5245 = trunc i64 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5245, i8* %5246, align 1
  %5247 = lshr i64 %5231, 63
  %5248 = xor i64 %5244, %5247
  %5249 = add i64 %5248, %5247
  %5250 = icmp eq i64 %5249, 2
  %5251 = zext i1 %5250 to i8
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5251, i8* %5252, align 1
  store %struct.Memory* %loadMem_43f899, %struct.Memory** %MEMORY
  %loadMem_43f89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 33
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %PC.i17
  %5257 = add i64 %5256, 15
  %5258 = load i64, i64* %PC.i17
  %5259 = add i64 %5258, 6
  %5260 = load i64, i64* %PC.i17
  %5261 = add i64 %5260, 6
  store i64 %5261, i64* %PC.i17
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5263 = load i8, i8* %5262, align 1
  store i8 %5263, i8* %BRANCH_TAKEN, align 1
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5265 = icmp ne i8 %5263, 0
  %5266 = select i1 %5265, i64 %5257, i64 %5259
  store i64 %5266, i64* %5264, align 8
  store %struct.Memory* %loadMem_43f89e, %struct.Memory** %MEMORY
  %loadBr_43f89e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f89e = icmp eq i8 %loadBr_43f89e, 1
  br i1 %cmpBr_43f89e, label %block_.L_43f8ad, label %block_43f8a4

block_43f8a4:                                     ; preds = %block_.L_43f899
  %loadMem_43f8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 11
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 15
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RBP.i16
  %5277 = sub i64 %5276, 16
  %5278 = load i64, i64* %PC.i14
  %5279 = add i64 %5278, 4
  store i64 %5279, i64* %PC.i14
  %5280 = inttoptr i64 %5277 to i64*
  %5281 = load i64, i64* %5280
  store i64 %5281, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_43f8a4, %struct.Memory** %MEMORY
  %loadMem1_43f8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5284 to i64*
  %5285 = load i64, i64* %PC.i13
  %5286 = add i64 %5285, -255272
  %5287 = load i64, i64* %PC.i13
  %5288 = add i64 %5287, 5
  %5289 = load i64, i64* %PC.i13
  %5290 = add i64 %5289, 5
  store i64 %5290, i64* %PC.i13
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5292 = load i64, i64* %5291, align 8
  %5293 = add i64 %5292, -8
  %5294 = inttoptr i64 %5293 to i64*
  store i64 %5288, i64* %5294
  store i64 %5293, i64* %5291, align 8
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5286, i64* %5295, align 8
  store %struct.Memory* %loadMem1_43f8a8, %struct.Memory** %MEMORY
  %loadMem2_43f8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f8a8 = load i64, i64* %3
  %5296 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43f8a8)
  store %struct.Memory* %5296, %struct.Memory** %MEMORY
  br label %block_.L_43f8ad

block_.L_43f8ad:                                  ; preds = %block_43f8a4, %block_.L_43f899
  %loadMem_43f8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 33
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5299 to i64*
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 11
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 15
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %5305 to i64*
  %5306 = load i64, i64* %RBP.i9
  %5307 = sub i64 %5306, 8
  %5308 = load i64, i64* %PC.i8
  %5309 = add i64 %5308, 4
  store i64 %5309, i64* %PC.i8
  %5310 = inttoptr i64 %5307 to i64*
  %5311 = load i64, i64* %5310
  store i64 %5311, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43f8ad, %struct.Memory** %MEMORY
  %loadMem1_43f8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %PC.i7
  %5316 = add i64 %5315, -254993
  %5317 = load i64, i64* %PC.i7
  %5318 = add i64 %5317, 5
  %5319 = load i64, i64* %PC.i7
  %5320 = add i64 %5319, 5
  store i64 %5320, i64* %PC.i7
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5322 = load i64, i64* %5321, align 8
  %5323 = add i64 %5322, -8
  %5324 = inttoptr i64 %5323 to i64*
  store i64 %5318, i64* %5324
  store i64 %5323, i64* %5321, align 8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5316, i64* %5325, align 8
  store %struct.Memory* %loadMem1_43f8b1, %struct.Memory** %MEMORY
  %loadMem2_43f8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f8b1 = load i64, i64* %3
  %call2_43f8b1 = call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* %0, i64 %loadPC_43f8b1, %struct.Memory* %loadMem2_43f8b1)
  store %struct.Memory* %call2_43f8b1, %struct.Memory** %MEMORY
  %loadMem_43f8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 33
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5328 to i64*
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 1
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 15
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5334 to i64*
  %5335 = load i64, i64* %RBP.i6
  %5336 = sub i64 %5335, 24
  %5337 = load i64, i64* %PC.i5
  %5338 = add i64 %5337, 3
  store i64 %5338, i64* %PC.i5
  %5339 = inttoptr i64 %5336 to i32*
  %5340 = load i32, i32* %5339
  %5341 = zext i32 %5340 to i64
  store i64 %5341, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_43f8b6, %struct.Memory** %MEMORY
  %loadMem_43f8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 33
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5344 to i64*
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 13
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5347 to i64*
  %5348 = load i64, i64* %RSP.i
  %5349 = load i64, i64* %PC.i4
  %5350 = add i64 %5349, 4
  store i64 %5350, i64* %PC.i4
  %5351 = add i64 80, %5348
  store i64 %5351, i64* %RSP.i, align 8
  %5352 = icmp ult i64 %5351, %5348
  %5353 = icmp ult i64 %5351, 80
  %5354 = or i1 %5352, %5353
  %5355 = zext i1 %5354 to i8
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5355, i8* %5356, align 1
  %5357 = trunc i64 %5351 to i32
  %5358 = and i32 %5357, 255
  %5359 = call i32 @llvm.ctpop.i32(i32 %5358)
  %5360 = trunc i32 %5359 to i8
  %5361 = and i8 %5360, 1
  %5362 = xor i8 %5361, 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5362, i8* %5363, align 1
  %5364 = xor i64 80, %5348
  %5365 = xor i64 %5364, %5351
  %5366 = lshr i64 %5365, 4
  %5367 = trunc i64 %5366 to i8
  %5368 = and i8 %5367, 1
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5368, i8* %5369, align 1
  %5370 = icmp eq i64 %5351, 0
  %5371 = zext i1 %5370 to i8
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5371, i8* %5372, align 1
  %5373 = lshr i64 %5351, 63
  %5374 = trunc i64 %5373 to i8
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5374, i8* %5375, align 1
  %5376 = lshr i64 %5348, 63
  %5377 = xor i64 %5373, %5376
  %5378 = add i64 %5377, %5373
  %5379 = icmp eq i64 %5378, 2
  %5380 = zext i1 %5379 to i8
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5380, i8* %5381, align 1
  store %struct.Memory* %loadMem_43f8b9, %struct.Memory** %MEMORY
  %loadMem_43f8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 33
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 15
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5387 to i64*
  %5388 = load i64, i64* %PC.i2
  %5389 = add i64 %5388, 1
  store i64 %5389, i64* %PC.i2
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5391 = load i64, i64* %5390, align 8
  %5392 = add i64 %5391, 8
  %5393 = inttoptr i64 %5391 to i64*
  %5394 = load i64, i64* %5393
  store i64 %5394, i64* %RBP.i3, align 8
  store i64 %5392, i64* %5390, align 8
  store %struct.Memory* %loadMem_43f8bd, %struct.Memory** %MEMORY
  %loadMem_43f8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5397 to i64*
  %5398 = load i64, i64* %PC.i1
  %5399 = add i64 %5398, 1
  store i64 %5399, i64* %PC.i1
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5402 = load i64, i64* %5401, align 8
  %5403 = inttoptr i64 %5402 to i64*
  %5404 = load i64, i64* %5403
  store i64 %5404, i64* %5400, align 8
  %5405 = add i64 %5402, 8
  store i64 %5405, i64* %5401, align 8
  store %struct.Memory* %loadMem_43f8be, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43f8be
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.sre_fgets(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43f85c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.IsBlankline(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43f232(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43f200(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43f469(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459fa3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fa3_type* @G__0x459fa3 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_43f288(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459fa8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fa8_type* @G__0x459fa8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strstr_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43f288(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x10__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 16, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3e___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 62
  %14 = icmp ult i32 %9, 62
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
  %23 = xor i64 62, %10
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

define %struct.Memory* @routine_jne_.L_43f2a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 7, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459fae___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fae_type* @G__0x459fae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f2ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459fbc___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fbc_type* @G__0x459fbc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f2f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459fca___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fca_type* @G__0x459fca to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xe___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f325(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x65__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 101, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x455d2b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455d2b_type* @G__0x455d2b to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_43f371(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x455d33___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455d33_type* @G__0x455d33 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f371(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x68__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 104, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458ccb___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458ccb_type* @G__0x458ccb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x17___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f3b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x458ce3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458ce3_type* @G__0x458ce3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f3c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x67__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 103, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_strdup(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_strtok(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f460(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.IsInt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x6a__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 106, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459a08___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a08_type* @G__0x459a08 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f5ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459a0d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a0d_type* @G__0x459a0d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459a12___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a12_type* @G__0x459a12 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459a17___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a17_type* @G__0x459a17 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459a1c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a1c_type* @G__0x459a1c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459a49___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a49_type* @G__0x459a49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459a76___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459a76_type* @G__0x459a76 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459aa3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459aa3_type* @G__0x459aa3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4599e3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45992c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459931___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f5f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x66__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 102, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45a46f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a46f_type* @G__0x45a46f to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_43f63c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459fd9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fd9_type* @G__0x459fd9 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_43f648(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xc__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 12, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458cfb_type* @G__0x458cfb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f6ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x458cfe___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x458cfe_type* @G__0x458cfe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459fe0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fe0_type* @G__0x459fe0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459fe7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fe7_type* @G__0x459fe7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f6f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459ff0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459ff0_type* @G__0x459ff0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f737(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459ff7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459ff7_type* @G__0x459ff7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f743(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459fff___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459fff_type* @G__0x459fff to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_43f789(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a005___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a005_type* @G__0x45a005 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f795(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 4, i32* %13
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

define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43f7c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a00b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a00b_type* @G__0x45a00b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strchr_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43f7ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43f818(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f83c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.Seqtype(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43f83c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x12c__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 300
  %16 = icmp ult i32 %14, 300
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
  %25 = xor i32 %14, 300
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

define %struct.Memory* @routine_jne_.L_43f857(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43f85c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_43f877(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a00e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a00e_type* @G__0x45a00e to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
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

define %struct.Memory* @routine_jne_.L_43f88d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43f894(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43f8ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.rewind_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
