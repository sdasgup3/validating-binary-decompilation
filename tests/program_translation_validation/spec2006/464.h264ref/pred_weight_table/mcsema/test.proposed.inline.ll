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
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x7242a0_type = type <{ [4 x i8] }>
%G__0x4bfd9d_type = type <{ [8 x i8] }>
%G__0x4bfdb7_type = type <{ [8 x i8] }>
%G__0x4bfdd3_type = type <{ [8 x i8] }>
%G__0x4bfdeb_type = type <{ [8 x i8] }>
%G__0x4bfdfe_type = type <{ [8 x i8] }>
%G__0x4bfe11_type = type <{ [8 x i8] }>
%G__0x4bfe27_type = type <{ [8 x i8] }>
%G__0x4bfe38_type = type <{ [8 x i8] }>
%G__0x4bfe49_type = type <{ [8 x i8] }>
%G__0x4bfe61_type = type <{ [8 x i8] }>
%G__0x4bfe74_type = type <{ [8 x i8] }>
%G__0x4bfe87_type = type <{ [8 x i8] }>
%G__0x4bfe9d_type = type <{ [8 x i8] }>
%G__0x4bfeae_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6d4740 = global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = global %G_0x70f6d0_type zeroinitializer
@G_0x7242a0 = global %G_0x7242a0_type zeroinitializer
@G__0x4bfd9d = global %G__0x4bfd9d_type zeroinitializer
@G__0x4bfdb7 = global %G__0x4bfdb7_type zeroinitializer
@G__0x4bfdd3 = global %G__0x4bfdd3_type zeroinitializer
@G__0x4bfdeb = global %G__0x4bfdeb_type zeroinitializer
@G__0x4bfdfe = global %G__0x4bfdfe_type zeroinitializer
@G__0x4bfe11 = global %G__0x4bfe11_type zeroinitializer
@G__0x4bfe27 = global %G__0x4bfe27_type zeroinitializer
@G__0x4bfe38 = global %G__0x4bfe38_type zeroinitializer
@G__0x4bfe49 = global %G__0x4bfe49_type zeroinitializer
@G__0x4bfe61 = global %G__0x4bfe61_type zeroinitializer
@G__0x4bfe74 = global %G__0x4bfe74_type zeroinitializer
@G__0x4bfe87 = global %G__0x4bfe87_type zeroinitializer
@G__0x4bfe9d = global %G__0x4bfe9d_type zeroinitializer
@G__0x4bfeae = global %G__0x4bfeae_type zeroinitializer

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

declare %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4acb00.u_1(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4ac9c0.se_v(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @pred_weight_table(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4269c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4269c0, %struct.Memory** %MEMORY
  %loadMem_4269c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i700 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i700
  %27 = load i64, i64* %PC.i699
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i699
  store i64 %26, i64* %RBP.i701, align 8
  store %struct.Memory* %loadMem_4269c1, %struct.Memory** %MEMORY
  %loadMem_4269c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i698 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i698
  %36 = load i64, i64* %PC.i697
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i697
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i698, align 8
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
  store %struct.Memory* %loadMem_4269c4, %struct.Memory** %MEMORY
  %loadMem_4269c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i696 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i695
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i695
  store i64 ptrtoint (%G__0x4bfd9d_type* @G__0x4bfd9d to i64), i64* %RDI.i696, align 8
  store %struct.Memory* %loadMem_4269c8, %struct.Memory** %MEMORY
  %loadMem_4269d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i693
  %82 = add i64 %81, 8
  store i64 %82, i64* %PC.i693
  %83 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %83, i64* %RAX.i694, align 8
  store %struct.Memory* %loadMem_4269d2, %struct.Memory** %MEMORY
  %loadMem_4269da = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %RAX.i692
  %91 = add i64 %90, 2364
  %92 = load i64, i64* %PC.i691
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC.i691
  %94 = inttoptr i64 %91 to i32*
  %95 = load i32, i32* %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_4269da, %struct.Memory** %MEMORY
  %loadMem_4269e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RAX.i690
  %104 = mul i64 %103, 8
  %105 = add i64 %104, 7493120
  %106 = load i64, i64* %PC.i689
  %107 = add i64 %106, 8
  store i64 %107, i64* %PC.i689
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %RAX.i690, align 8
  store %struct.Memory* %loadMem_4269e1, %struct.Memory** %MEMORY
  %loadMem_4269e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RCX.i688 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RAX.i687
  %120 = load i64, i64* %PC.i686
  %121 = add i64 %120, 2
  store i64 %121, i64* %PC.i686
  %122 = inttoptr i64 %119 to i32*
  %123 = load i32, i32* %122
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RCX.i688, align 8
  store %struct.Memory* %loadMem_4269e9, %struct.Memory** %MEMORY
  %loadMem_4269eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 33
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %130 to i32*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %133 to i64*
  %134 = load i64, i64* %RBP.i685
  %135 = sub i64 %134, 4
  %136 = load i32, i32* %ECX.i
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %PC.i684
  %139 = add i64 %138, 3
  store i64 %139, i64* %PC.i684
  %140 = inttoptr i64 %135 to i32*
  store i32 %136, i32* %140
  store %struct.Memory* %loadMem_4269eb, %struct.Memory** %MEMORY
  %loadMem_4269ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %PC.i682
  %148 = add i64 %147, 8
  store i64 %148, i64* %PC.i682
  %149 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %149, i64* %RAX.i683, align 8
  store %struct.Memory* %loadMem_4269ee, %struct.Memory** %MEMORY
  %loadMem_4269f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %155 to i64*
  %156 = load i64, i64* %RAX.i681
  %157 = add i64 %156, 14160
  %158 = load i64, i64* %PC.i680
  %159 = add i64 %158, 7
  store i64 %159, i64* %PC.i680
  %160 = inttoptr i64 %157 to i64*
  %161 = load i64, i64* %160
  store i64 %161, i64* %RAX.i681, align 8
  store %struct.Memory* %loadMem_4269f6, %struct.Memory** %MEMORY
  %loadMem_4269fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RAX.i679
  %169 = add i64 %168, 24
  %170 = load i64, i64* %PC.i678
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC.i678
  %172 = inttoptr i64 %169 to i64*
  %173 = load i64, i64* %172
  store i64 %173, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_4269fd, %struct.Memory** %MEMORY
  %loadMem_426a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RDX.i676 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i677
  %184 = sub i64 %183, 4
  %185 = load i64, i64* %PC.i675
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC.i675
  %187 = inttoptr i64 %184 to i32*
  %188 = load i32, i32* %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %RDX.i676, align 8
  store %struct.Memory* %loadMem_426a01, %struct.Memory** %MEMORY
  %loadMem_426a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RDX.i674 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RDX.i674
  %197 = load i64, i64* %PC.i673
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC.i673
  %199 = sext i64 %196 to i128
  %200 = and i128 %199, -18446744073709551616
  %201 = zext i64 %196 to i128
  %202 = or i128 %200, %201
  %203 = mul i128 120, %202
  %204 = trunc i128 %203 to i64
  store i64 %204, i64* %RDX.i674, align 8
  %205 = sext i64 %204 to i128
  %206 = icmp ne i128 %205, %203
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1
  %209 = trunc i128 %203 to i32
  %210 = and i32 %209, 255
  %211 = call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %214, i8* %215, align 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %216, align 1
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %217, align 1
  %218 = lshr i64 %204, 63
  %219 = trunc i64 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %219, i8* %220, align 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %207, i8* %221, align 1
  store %struct.Memory* %loadMem_426a05, %struct.Memory** %MEMORY
  %loadMem_426a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 7
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RDX.i672 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RAX.i671
  %232 = load i64, i64* %RDX.i672
  %233 = load i64, i64* %PC.i670
  %234 = add i64 %233, 3
  store i64 %234, i64* %PC.i670
  %235 = add i64 %232, %231
  store i64 %235, i64* %RAX.i671, align 8
  %236 = icmp ult i64 %235, %231
  %237 = icmp ult i64 %235, %232
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %239, i8* %240, align 1
  %241 = trunc i64 %235 to i32
  %242 = and i32 %241, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1
  %248 = xor i64 %232, %231
  %249 = xor i64 %248, %235
  %250 = lshr i64 %249, 4
  %251 = trunc i64 %250 to i8
  %252 = and i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %252, i8* %253, align 1
  %254 = icmp eq i64 %235, 0
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %255, i8* %256, align 1
  %257 = lshr i64 %235, 63
  %258 = trunc i64 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %258, i8* %259, align 1
  %260 = lshr i64 %231, 63
  %261 = lshr i64 %232, 63
  %262 = xor i64 %257, %260
  %263 = xor i64 %257, %261
  %264 = add i64 %262, %263
  %265 = icmp eq i64 %264, 2
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %266, i8* %267, align 1
  store %struct.Memory* %loadMem_426a09, %struct.Memory** %MEMORY
  %loadMem_426a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RBP.i669
  %278 = sub i64 %277, 16
  %279 = load i64, i64* %RAX.i668
  %280 = load i64, i64* %PC.i667
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC.i667
  %282 = inttoptr i64 %278 to i64*
  store i64 %279, i64* %282
  store %struct.Memory* %loadMem_426a0c, %struct.Memory** %MEMORY
  %loadMem_426a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i666
  %290 = sub i64 %289, 20
  %291 = load i64, i64* %PC.i665
  %292 = add i64 %291, 7
  store i64 %292, i64* %PC.i665
  %293 = inttoptr i64 %290 to i32*
  store i32 0, i32* %293
  store %struct.Memory* %loadMem_426a10, %struct.Memory** %MEMORY
  %loadMem_426a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 9
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RSI.i664 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %PC.i663
  %301 = add i64 %300, 7
  store i64 %301, i64* %PC.i663
  %302 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RSI.i664, align 8
  store %struct.Memory* %loadMem_426a17, %struct.Memory** %MEMORY
  %loadMem_426a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 7
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RDX.i661 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RBP.i662
  %314 = sub i64 %313, 16
  %315 = load i64, i64* %PC.i660
  %316 = add i64 %315, 4
  store i64 %316, i64* %PC.i660
  %317 = inttoptr i64 %314 to i64*
  %318 = load i64, i64* %317
  store i64 %318, i64* %RDX.i661, align 8
  store %struct.Memory* %loadMem_426a1e, %struct.Memory** %MEMORY
  %loadMem1_426a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i659
  %323 = add i64 %322, 547966
  %324 = load i64, i64* %PC.i659
  %325 = add i64 %324, 5
  %326 = load i64, i64* %PC.i659
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC.i659
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = add i64 %329, -8
  %331 = inttoptr i64 %330 to i64*
  store i64 %325, i64* %331
  store i64 %330, i64* %328, align 8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %323, i64* %332, align 8
  store %struct.Memory* %loadMem1_426a22, %struct.Memory** %MEMORY
  %loadMem2_426a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a22 = load i64, i64* %3
  %call2_426a22 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_426a22, %struct.Memory* %loadMem2_426a22)
  store %struct.Memory* %call2_426a22, %struct.Memory** %MEMORY
  %loadMem_426a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 11
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RDI.i658 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %PC.i657
  %340 = add i64 %339, 10
  store i64 %340, i64* %PC.i657
  store i64 ptrtoint (%G__0x4bfdb7_type* @G__0x4bfdb7 to i64), i64* %RDI.i658, align 8
  store %struct.Memory* %loadMem_426a27, %struct.Memory** %MEMORY
  %loadMem_426a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RAX.i655
  %351 = load i64, i64* %RBP.i656
  %352 = sub i64 %351, 20
  %353 = load i64, i64* %PC.i654
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i654
  %355 = trunc i64 %350 to i32
  %356 = inttoptr i64 %352 to i32*
  %357 = load i32, i32* %356
  %358 = add i32 %357, %355
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RAX.i655, align 8
  %360 = icmp ult i32 %358, %355
  %361 = icmp ult i32 %358, %357
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %363, i8* %364, align 1
  %365 = and i32 %358, 255
  %366 = call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %369, i8* %370, align 1
  %371 = xor i32 %357, %355
  %372 = xor i32 %371, %358
  %373 = lshr i32 %372, 4
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %375, i8* %376, align 1
  %377 = icmp eq i32 %358, 0
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %378, i8* %379, align 1
  %380 = lshr i32 %358, 31
  %381 = trunc i32 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %381, i8* %382, align 1
  %383 = lshr i32 %355, 31
  %384 = lshr i32 %357, 31
  %385 = xor i32 %380, %383
  %386 = xor i32 %380, %384
  %387 = add i32 %385, %386
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1
  store %struct.Memory* %loadMem_426a31, %struct.Memory** %MEMORY
  %loadMem_426a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %396 to i32*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 15
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RBP.i653
  %401 = sub i64 %400, 20
  %402 = load i32, i32* %EAX.i652
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %PC.i651
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i651
  %406 = inttoptr i64 %401 to i32*
  store i32 %402, i32* %406
  store %struct.Memory* %loadMem_426a34, %struct.Memory** %MEMORY
  %loadMem_426a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 9
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RSI.i650 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %PC.i649
  %414 = add i64 %413, 7
  store i64 %414, i64* %PC.i649
  %415 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RSI.i650, align 8
  store %struct.Memory* %loadMem_426a37, %struct.Memory** %MEMORY
  %loadMem_426a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 7
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RDX.i647 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RBP.i648
  %427 = sub i64 %426, 16
  %428 = load i64, i64* %PC.i646
  %429 = add i64 %428, 4
  store i64 %429, i64* %PC.i646
  %430 = inttoptr i64 %427 to i64*
  %431 = load i64, i64* %430
  store i64 %431, i64* %RDX.i647, align 8
  store %struct.Memory* %loadMem_426a3e, %struct.Memory** %MEMORY
  %loadMem1_426a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %PC.i645
  %436 = add i64 %435, 547934
  %437 = load i64, i64* %PC.i645
  %438 = add i64 %437, 5
  %439 = load i64, i64* %PC.i645
  %440 = add i64 %439, 5
  store i64 %440, i64* %PC.i645
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = add i64 %442, -8
  %444 = inttoptr i64 %443 to i64*
  store i64 %438, i64* %444
  store i64 %443, i64* %441, align 8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %436, i64* %445, align 8
  store %struct.Memory* %loadMem1_426a42, %struct.Memory** %MEMORY
  %loadMem2_426a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a42 = load i64, i64* %3
  %call2_426a42 = call %struct.Memory* @sub_4ac6a0.ue_v(%struct.State* %0, i64 %loadPC_426a42, %struct.Memory* %loadMem2_426a42)
  store %struct.Memory* %call2_426a42, %struct.Memory** %MEMORY
  %loadMem_426a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 15
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %RAX.i643
  %456 = load i64, i64* %RBP.i644
  %457 = sub i64 %456, 20
  %458 = load i64, i64* %PC.i642
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC.i642
  %460 = trunc i64 %455 to i32
  %461 = inttoptr i64 %457 to i32*
  %462 = load i32, i32* %461
  %463 = add i32 %462, %460
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RAX.i643, align 8
  %465 = icmp ult i32 %463, %460
  %466 = icmp ult i32 %463, %462
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %468, i8* %469, align 1
  %470 = and i32 %463, 255
  %471 = call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %474, i8* %475, align 1
  %476 = xor i32 %462, %460
  %477 = xor i32 %476, %463
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %480, i8* %481, align 1
  %482 = icmp eq i32 %463, 0
  %483 = zext i1 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %483, i8* %484, align 1
  %485 = lshr i32 %463, 31
  %486 = trunc i32 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %486, i8* %487, align 1
  %488 = lshr i32 %460, 31
  %489 = lshr i32 %462, 31
  %490 = xor i32 %485, %488
  %491 = xor i32 %485, %489
  %492 = add i32 %490, %491
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %495, align 1
  store %struct.Memory* %loadMem_426a47, %struct.Memory** %MEMORY
  %loadMem_426a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %EAX.i640 = bitcast %union.anon* %501 to i32*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 15
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %RBP.i641
  %506 = sub i64 %505, 20
  %507 = load i32, i32* %EAX.i640
  %508 = zext i32 %507 to i64
  %509 = load i64, i64* %PC.i639
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC.i639
  %511 = inttoptr i64 %506 to i32*
  store i32 %507, i32* %511
  store %struct.Memory* %loadMem_426a4a, %struct.Memory** %MEMORY
  %loadMem_426a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RBP.i638
  %519 = sub i64 %518, 24
  %520 = load i64, i64* %PC.i637
  %521 = add i64 %520, 7
  store i64 %521, i64* %PC.i637
  %522 = inttoptr i64 %519 to i32*
  store i32 0, i32* %522
  store %struct.Memory* %loadMem_426a4d, %struct.Memory** %MEMORY
  br label %block_.L_426a54

block_.L_426a54:                                  ; preds = %block_.L_426ca6, %entry
  %loadMem_426a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 15
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RBP.i636
  %533 = sub i64 %532, 24
  %534 = load i64, i64* %PC.i634
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC.i634
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX.i635, align 8
  store %struct.Memory* %loadMem_426a54, %struct.Memory** %MEMORY
  %loadMem_426a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 5
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %PC.i632
  %546 = add i64 %545, 8
  store i64 %546, i64* %PC.i632
  %547 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %547, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_426a57, %struct.Memory** %MEMORY
  %loadMem_426a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %EAX.i630 = bitcast %union.anon* %553 to i32*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %556 to i64*
  %557 = load i32, i32* %EAX.i630
  %558 = zext i32 %557 to i64
  %559 = load i64, i64* %RCX.i631
  %560 = add i64 %559, 72000
  %561 = load i64, i64* %PC.i629
  %562 = add i64 %561, 6
  store i64 %562, i64* %PC.i629
  %563 = inttoptr i64 %560 to i32*
  %564 = load i32, i32* %563
  %565 = sub i32 %557, %564
  %566 = icmp ult i32 %557, %564
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %567, i8* %568, align 1
  %569 = and i32 %565, 255
  %570 = call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %573, i8* %574, align 1
  %575 = xor i32 %564, %557
  %576 = xor i32 %575, %565
  %577 = lshr i32 %576, 4
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %579, i8* %580, align 1
  %581 = icmp eq i32 %565, 0
  %582 = zext i1 %581 to i8
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %582, i8* %583, align 1
  %584 = lshr i32 %565, 31
  %585 = trunc i32 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %585, i8* %586, align 1
  %587 = lshr i32 %557, 31
  %588 = lshr i32 %564, 31
  %589 = xor i32 %588, %587
  %590 = xor i32 %584, %587
  %591 = add i32 %590, %589
  %592 = icmp eq i32 %591, 2
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %593, i8* %594, align 1
  store %struct.Memory* %loadMem_426a5f, %struct.Memory** %MEMORY
  %loadMem_426a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %597 to i64*
  %598 = load i64, i64* %PC.i628
  %599 = add i64 %598, 591
  %600 = load i64, i64* %PC.i628
  %601 = add i64 %600, 6
  %602 = load i64, i64* %PC.i628
  %603 = add i64 %602, 6
  store i64 %603, i64* %PC.i628
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %605 = load i8, i8* %604, align 1
  %606 = icmp ne i8 %605, 0
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %608 = load i8, i8* %607, align 1
  %609 = icmp ne i8 %608, 0
  %610 = xor i1 %606, %609
  %611 = xor i1 %610, true
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %BRANCH_TAKEN, align 1
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %614 = select i1 %610, i64 %601, i64 %599
  store i64 %614, i64* %613, align 8
  store %struct.Memory* %loadMem_426a65, %struct.Memory** %MEMORY
  %loadBr_426a65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a65 = icmp eq i8 %loadBr_426a65, 1
  br i1 %cmpBr_426a65, label %block_.L_426cb4, label %block_426a6b

block_426a6b:                                     ; preds = %block_.L_426a54
  %loadMem_426a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %PC.i626
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC.i626
  store i64 1, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_426a6b, %struct.Memory** %MEMORY
  %loadMem_426a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %628 to i64*
  %629 = load i64, i64* %PC.i624
  %630 = add i64 %629, 8
  store i64 %630, i64* %PC.i624
  %631 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %631, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_426a70, %struct.Memory** %MEMORY
  %loadMem_426a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 5
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RCX.i623
  %639 = load i64, i64* %PC.i622
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC.i622
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641
  store i64 %642, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_426a78, %struct.Memory** %MEMORY
  %loadMem_426a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 7
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 15
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RBP.i621
  %653 = sub i64 %652, 24
  %654 = load i64, i64* %PC.i619
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC.i619
  %656 = inttoptr i64 %653 to i32*
  %657 = load i32, i32* %656
  %658 = sext i32 %657 to i64
  store i64 %658, i64* %RDX.i620, align 8
  store %struct.Memory* %loadMem_426a7b, %struct.Memory** %MEMORY
  %loadMem_426a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 5
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 7
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RDX.i618 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %RCX.i617
  %669 = load i64, i64* %RDX.i618
  %670 = mul i64 %669, 8
  %671 = add i64 %670, %668
  %672 = load i64, i64* %PC.i616
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC.i616
  %674 = inttoptr i64 %671 to i64*
  %675 = load i64, i64* %674
  store i64 %675, i64* %RCX.i617, align 8
  store %struct.Memory* %loadMem_426a7f, %struct.Memory** %MEMORY
  %loadMem_426a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 5
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 9
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RSI.i615 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RCX.i614
  %686 = load i64, i64* %PC.i613
  %687 = add i64 %686, 2
  store i64 %687, i64* %PC.i613
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RSI.i615, align 8
  store %struct.Memory* %loadMem_426a83, %struct.Memory** %MEMORY
  %loadMem_426a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 5
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %PC.i611
  %698 = add i64 %697, 7
  store i64 %698, i64* %PC.i611
  %699 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_426a85, %struct.Memory** %MEMORY
  %loadMem_426a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 5
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %707 = bitcast %union.anon* %706 to %struct.anon.2*
  %CL.i608 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %707, i32 0, i32 0
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %RAX.i609
  %712 = load i8, i8* %CL.i608
  %713 = zext i8 %712 to i64
  %714 = load i64, i64* %PC.i607
  %715 = add i64 %714, 2
  store i64 %715, i64* %PC.i607
  %716 = trunc i64 %713 to i5
  switch i5 %716, label %723 [
    i5 0, label %routine_shll__cl___eax.exit610
    i5 1, label %717
  ]

; <label>:717:                                    ; preds = %block_426a6b
  %718 = trunc i64 %711 to i32
  %719 = shl i32 %718, 1
  %720 = icmp slt i32 %718, 0
  %721 = icmp slt i32 %719, 0
  %722 = xor i1 %720, %721
  br label %732

; <label>:723:                                    ; preds = %block_426a6b
  %724 = and i64 %713, 31
  %725 = add i64 %724, 4294967295
  %726 = and i64 %711, 4294967295
  %727 = and i64 %725, 4294967295
  %728 = shl i64 %726, %727
  %729 = trunc i64 %728 to i32
  %730 = icmp slt i32 %729, 0
  %731 = shl i32 %729, 1
  br label %732

; <label>:732:                                    ; preds = %723, %717
  %733 = phi i1 [ %720, %717 ], [ %730, %723 ]
  %734 = phi i1 [ %722, %717 ], [ false, %723 ]
  %735 = phi i32 [ %719, %717 ], [ %731, %723 ]
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RAX.i609, align 8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %738 = zext i1 %733 to i8
  store i8 %738, i8* %737, align 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %740 = and i32 %735, 254
  %741 = call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %739, align 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %745, align 1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %747 = icmp eq i32 %735, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %746, align 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %750 = lshr i32 %735, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %749, align 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %753 = zext i1 %734 to i8
  store i8 %753, i8* %752, align 1
  br label %routine_shll__cl___eax.exit610

routine_shll__cl___eax.exit610:                   ; preds = %block_426a6b, %732
  store %struct.Memory* %loadMem_426a8c, %struct.Memory** %MEMORY
  %loadMem_426a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %EAX.i605 = bitcast %union.anon* %759 to i32*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 9
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %ESI.i606 = bitcast %union.anon* %762 to i32*
  %763 = load i32, i32* %ESI.i606
  %764 = zext i32 %763 to i64
  %765 = load i32, i32* %EAX.i605
  %766 = zext i32 %765 to i64
  %767 = load i64, i64* %PC.i604
  %768 = add i64 %767, 2
  store i64 %768, i64* %PC.i604
  %769 = sub i32 %763, %765
  %770 = icmp ult i32 %763, %765
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %771, i8* %772, align 1
  %773 = and i32 %769, 255
  %774 = call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %777, i8* %778, align 1
  %779 = xor i64 %766, %764
  %780 = trunc i64 %779 to i32
  %781 = xor i32 %780, %769
  %782 = lshr i32 %781, 4
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %784, i8* %785, align 1
  %786 = icmp eq i32 %769, 0
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %787, i8* %788, align 1
  %789 = lshr i32 %769, 31
  %790 = trunc i32 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %790, i8* %791, align 1
  %792 = lshr i32 %763, 31
  %793 = lshr i32 %765, 31
  %794 = xor i32 %793, %792
  %795 = xor i32 %789, %792
  %796 = add i32 %795, %794
  %797 = icmp eq i32 %796, 2
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %798, i8* %799, align 1
  store %struct.Memory* %loadMem_426a8e, %struct.Memory** %MEMORY
  %loadMem_426a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %PC.i603
  %804 = add i64 %803, 34
  %805 = load i64, i64* %PC.i603
  %806 = add i64 %805, 6
  %807 = load i64, i64* %PC.i603
  %808 = add i64 %807, 6
  store i64 %808, i64* %PC.i603
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %810 = load i8, i8* %809, align 1
  %811 = icmp eq i8 %810, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %BRANCH_TAKEN, align 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %814 = select i1 %811, i64 %804, i64 %806
  store i64 %814, i64* %813, align 8
  store %struct.Memory* %loadMem_426a90, %struct.Memory** %MEMORY
  %loadBr_426a90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a90 = icmp eq i8 %loadBr_426a90, 1
  br i1 %cmpBr_426a90, label %block_.L_426ab2, label %block_426a96

block_426a96:                                     ; preds = %routine_shll__cl___eax.exit610
  %loadMem_426a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 1
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i601
  %822 = add i64 %821, 8
  store i64 %822, i64* %PC.i601
  %823 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %823, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_426a96, %struct.Memory** %MEMORY
  %loadMem_426a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %RAX.i600
  %831 = load i64, i64* %PC.i599
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC.i599
  %833 = inttoptr i64 %830 to i64*
  %834 = load i64, i64* %833
  store i64 %834, i64* %RAX.i600, align 8
  store %struct.Memory* %loadMem_426a9e, %struct.Memory** %MEMORY
  %loadMem_426aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 5
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 15
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %RBP.i598
  %845 = sub i64 %844, 24
  %846 = load i64, i64* %PC.i596
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC.i596
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = sext i32 %849 to i64
  store i64 %850, i64* %RCX.i597, align 8
  store %struct.Memory* %loadMem_426aa1, %struct.Memory** %MEMORY
  %loadMem_426aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 1
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 5
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %RAX.i594
  %861 = load i64, i64* %RCX.i595
  %862 = mul i64 %861, 8
  %863 = add i64 %862, %860
  %864 = load i64, i64* %PC.i593
  %865 = add i64 %864, 4
  store i64 %865, i64* %PC.i593
  %866 = inttoptr i64 %863 to i64*
  %867 = load i64, i64* %866
  store i64 %867, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_426aa5, %struct.Memory** %MEMORY
  %loadMem_426aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 1
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %873 to i64*
  %874 = load i64, i64* %RAX.i592
  %875 = load i64, i64* %PC.i591
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC.i591
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %879, align 1
  %880 = and i32 %878, 255
  %881 = call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %884, i8* %885, align 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %886, align 1
  %887 = icmp eq i32 %878, 0
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %888, i8* %889, align 1
  %890 = lshr i32 %878, 31
  %891 = trunc i32 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %891, i8* %892, align 1
  %893 = lshr i32 %878, 31
  %894 = xor i32 %890, %893
  %895 = add i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %897, i8* %898, align 1
  store %struct.Memory* %loadMem_426aa9, %struct.Memory** %MEMORY
  %loadMem_426aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %PC.i590
  %903 = add i64 %902, 133
  %904 = load i64, i64* %PC.i590
  %905 = add i64 %904, 6
  %906 = load i64, i64* %PC.i590
  %907 = add i64 %906, 6
  store i64 %907, i64* %PC.i590
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %909 = load i8, i8* %908, align 1
  store i8 %909, i8* %BRANCH_TAKEN, align 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %911 = icmp ne i8 %909, 0
  %912 = select i1 %911, i64 %903, i64 %905
  store i64 %912, i64* %910, align 8
  store %struct.Memory* %loadMem_426aac, %struct.Memory** %MEMORY
  %loadBr_426aac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426aac = icmp eq i8 %loadBr_426aac, 1
  br i1 %cmpBr_426aac, label %block_.L_426b31, label %block_.L_426ab2

block_.L_426ab2:                                  ; preds = %block_426a96, %routine_shll__cl___eax.exit610
  %loadMem_426ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 11
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RDI.i589 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %PC.i588
  %920 = add i64 %919, 10
  store i64 %920, i64* %PC.i588
  store i64 ptrtoint (%G__0x4bfdd3_type* @G__0x4bfdd3 to i64), i64* %RDI.i589, align 8
  store %struct.Memory* %loadMem_426ab2, %struct.Memory** %MEMORY
  %loadMem_426abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 9
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RSI.i587 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %PC.i586
  %928 = add i64 %927, 5
  store i64 %928, i64* %PC.i586
  store i64 1, i64* %RSI.i587, align 8
  store %struct.Memory* %loadMem_426abc, %struct.Memory** %MEMORY
  %loadMem_426ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 7
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RDX.i584 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 15
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RBP.i585
  %939 = sub i64 %938, 16
  %940 = load i64, i64* %PC.i583
  %941 = add i64 %940, 4
  store i64 %941, i64* %PC.i583
  %942 = inttoptr i64 %939 to i64*
  %943 = load i64, i64* %942
  store i64 %943, i64* %RDX.i584, align 8
  store %struct.Memory* %loadMem_426ac1, %struct.Memory** %MEMORY
  %loadMem1_426ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %PC.i582
  %948 = add i64 %947, 548923
  %949 = load i64, i64* %PC.i582
  %950 = add i64 %949, 5
  %951 = load i64, i64* %PC.i582
  %952 = add i64 %951, 5
  store i64 %952, i64* %PC.i582
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %954 = load i64, i64* %953, align 8
  %955 = add i64 %954, -8
  %956 = inttoptr i64 %955 to i64*
  store i64 %950, i64* %956
  store i64 %955, i64* %953, align 8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %948, i64* %957, align 8
  store %struct.Memory* %loadMem1_426ac5, %struct.Memory** %MEMORY
  %loadMem2_426ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426ac5 = load i64, i64* %3
  %call2_426ac5 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426ac5, %struct.Memory* %loadMem2_426ac5)
  store %struct.Memory* %call2_426ac5, %struct.Memory** %MEMORY
  %loadMem_426aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 11
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RDI.i581 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %PC.i580
  %965 = add i64 %964, 10
  store i64 %965, i64* %PC.i580
  store i64 ptrtoint (%G__0x4bfdeb_type* @G__0x4bfdeb to i64), i64* %RDI.i581, align 8
  store %struct.Memory* %loadMem_426aca, %struct.Memory** %MEMORY
  %loadMem_426ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 1
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 15
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %RAX.i578
  %976 = load i64, i64* %RBP.i579
  %977 = sub i64 %976, 20
  %978 = load i64, i64* %PC.i577
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC.i577
  %980 = trunc i64 %975 to i32
  %981 = inttoptr i64 %977 to i32*
  %982 = load i32, i32* %981
  %983 = add i32 %982, %980
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RAX.i578, align 8
  %985 = icmp ult i32 %983, %980
  %986 = icmp ult i32 %983, %982
  %987 = or i1 %985, %986
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %988, i8* %989, align 1
  %990 = and i32 %983, 255
  %991 = call i32 @llvm.ctpop.i32(i32 %990)
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  %994 = xor i8 %993, 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %994, i8* %995, align 1
  %996 = xor i32 %982, %980
  %997 = xor i32 %996, %983
  %998 = lshr i32 %997, 4
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1000, i8* %1001, align 1
  %1002 = icmp eq i32 %983, 0
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1003, i8* %1004, align 1
  %1005 = lshr i32 %983, 31
  %1006 = trunc i32 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1006, i8* %1007, align 1
  %1008 = lshr i32 %980, 31
  %1009 = lshr i32 %982, 31
  %1010 = xor i32 %1005, %1008
  %1011 = xor i32 %1005, %1009
  %1012 = add i32 %1010, %1011
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1014, i8* %1015, align 1
  store %struct.Memory* %loadMem_426ad4, %struct.Memory** %MEMORY
  %loadMem_426ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %1021 to i32*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 15
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RBP.i576
  %1026 = sub i64 %1025, 20
  %1027 = load i32, i32* %EAX.i575
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %PC.i574
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC.i574
  %1031 = inttoptr i64 %1026 to i32*
  store i32 %1027, i32* %1031
  store %struct.Memory* %loadMem_426ad7, %struct.Memory** %MEMORY
  %loadMem_426ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 7
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RDX.i573 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %PC.i572
  %1039 = add i64 %1038, 8
  store i64 %1039, i64* %PC.i572
  %1040 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %1040, i64* %RDX.i573, align 8
  store %struct.Memory* %loadMem_426ada, %struct.Memory** %MEMORY
  %loadMem_426ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 7
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RDX.i571
  %1048 = load i64, i64* %PC.i570
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %PC.i570
  %1050 = inttoptr i64 %1047 to i64*
  %1051 = load i64, i64* %1050
  store i64 %1051, i64* %RDX.i571, align 8
  store %struct.Memory* %loadMem_426ae2, %struct.Memory** %MEMORY
  %loadMem_426ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 5
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 15
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %1060 to i64*
  %1061 = load i64, i64* %RBP.i569
  %1062 = sub i64 %1061, 24
  %1063 = load i64, i64* %PC.i567
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %PC.i567
  %1065 = inttoptr i64 %1062 to i32*
  %1066 = load i32, i32* %1065
  %1067 = sext i32 %1066 to i64
  store i64 %1067, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_426ae5, %struct.Memory** %MEMORY
  %loadMem_426ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 5
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 7
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RDX.i566
  %1078 = load i64, i64* %RCX.i565
  %1079 = mul i64 %1078, 8
  %1080 = add i64 %1079, %1077
  %1081 = load i64, i64* %PC.i564
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %PC.i564
  %1083 = inttoptr i64 %1080 to i64*
  %1084 = load i64, i64* %1083
  store i64 %1084, i64* %RCX.i565, align 8
  store %struct.Memory* %loadMem_426ae9, %struct.Memory** %MEMORY
  %loadMem_426aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 5
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 9
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RSI.i563 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RCX.i562
  %1095 = load i64, i64* %PC.i561
  %1096 = add i64 %1095, 2
  store i64 %1096, i64* %PC.i561
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RSI.i563, align 8
  store %struct.Memory* %loadMem_426aed, %struct.Memory** %MEMORY
  %loadMem_426aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 7
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 15
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %RBP.i560
  %1110 = sub i64 %1109, 16
  %1111 = load i64, i64* %PC.i558
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %PC.i558
  %1113 = inttoptr i64 %1110 to i64*
  %1114 = load i64, i64* %1113
  store i64 %1114, i64* %RDX.i559, align 8
  store %struct.Memory* %loadMem_426aef, %struct.Memory** %MEMORY
  %loadMem1_426af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %PC.i557
  %1119 = add i64 %1118, 548557
  %1120 = load i64, i64* %PC.i557
  %1121 = add i64 %1120, 5
  %1122 = load i64, i64* %PC.i557
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %PC.i557
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1125 = load i64, i64* %1124, align 8
  %1126 = add i64 %1125, -8
  %1127 = inttoptr i64 %1126 to i64*
  store i64 %1121, i64* %1127
  store i64 %1126, i64* %1124, align 8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1119, i64* %1128, align 8
  store %struct.Memory* %loadMem1_426af3, %struct.Memory** %MEMORY
  %loadMem2_426af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426af3 = load i64, i64* %3
  %call2_426af3 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426af3, %struct.Memory* %loadMem2_426af3)
  store %struct.Memory* %call2_426af3, %struct.Memory** %MEMORY
  %loadMem_426af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 11
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RDI.i556 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %PC.i555
  %1136 = add i64 %1135, 10
  store i64 %1136, i64* %PC.i555
  store i64 ptrtoint (%G__0x4bfdfe_type* @G__0x4bfdfe to i64), i64* %RDI.i556, align 8
  store %struct.Memory* %loadMem_426af8, %struct.Memory** %MEMORY
  %loadMem_426b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RAX.i553
  %1147 = load i64, i64* %RBP.i554
  %1148 = sub i64 %1147, 20
  %1149 = load i64, i64* %PC.i552
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %PC.i552
  %1151 = trunc i64 %1146 to i32
  %1152 = inttoptr i64 %1148 to i32*
  %1153 = load i32, i32* %1152
  %1154 = add i32 %1153, %1151
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i553, align 8
  %1156 = icmp ult i32 %1154, %1151
  %1157 = icmp ult i32 %1154, %1153
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1159, i8* %1160, align 1
  %1161 = and i32 %1154, 255
  %1162 = call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1165, i8* %1166, align 1
  %1167 = xor i32 %1153, %1151
  %1168 = xor i32 %1167, %1154
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1171, i8* %1172, align 1
  %1173 = icmp eq i32 %1154, 0
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1174, i8* %1175, align 1
  %1176 = lshr i32 %1154, 31
  %1177 = trunc i32 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1177, i8* %1178, align 1
  %1179 = lshr i32 %1151, 31
  %1180 = lshr i32 %1153, 31
  %1181 = xor i32 %1176, %1179
  %1182 = xor i32 %1176, %1180
  %1183 = add i32 %1181, %1182
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1185, i8* %1186, align 1
  store %struct.Memory* %loadMem_426b02, %struct.Memory** %MEMORY
  %loadMem_426b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %EAX.i550 = bitcast %union.anon* %1192 to i32*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 15
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RBP.i551
  %1197 = sub i64 %1196, 20
  %1198 = load i32, i32* %EAX.i550
  %1199 = zext i32 %1198 to i64
  %1200 = load i64, i64* %PC.i549
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %PC.i549
  %1202 = inttoptr i64 %1197 to i32*
  store i32 %1198, i32* %1202
  store %struct.Memory* %loadMem_426b05, %struct.Memory** %MEMORY
  %loadMem_426b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 5
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i547
  %1210 = add i64 %1209, 8
  store i64 %1210, i64* %PC.i547
  %1211 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %1211, i64* %RCX.i548, align 8
  store %struct.Memory* %loadMem_426b08, %struct.Memory** %MEMORY
  %loadMem_426b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 5
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RCX.i546
  %1219 = load i64, i64* %PC.i545
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %PC.i545
  %1221 = inttoptr i64 %1218 to i64*
  %1222 = load i64, i64* %1221
  store i64 %1222, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_426b10, %struct.Memory** %MEMORY
  %loadMem_426b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 7
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 15
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %1231 to i64*
  %1232 = load i64, i64* %RBP.i544
  %1233 = sub i64 %1232, 24
  %1234 = load i64, i64* %PC.i542
  %1235 = add i64 %1234, 4
  store i64 %1235, i64* %PC.i542
  %1236 = inttoptr i64 %1233 to i32*
  %1237 = load i32, i32* %1236
  %1238 = sext i32 %1237 to i64
  store i64 %1238, i64* %RDX.i543, align 8
  store %struct.Memory* %loadMem_426b13, %struct.Memory** %MEMORY
  %loadMem_426b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 5
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 7
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RDX.i541 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RCX.i540
  %1249 = load i64, i64* %RDX.i541
  %1250 = mul i64 %1249, 8
  %1251 = add i64 %1250, %1248
  %1252 = load i64, i64* %PC.i539
  %1253 = add i64 %1252, 4
  store i64 %1253, i64* %PC.i539
  %1254 = inttoptr i64 %1251 to i64*
  %1255 = load i64, i64* %1254
  store i64 %1255, i64* %RCX.i540, align 8
  store %struct.Memory* %loadMem_426b17, %struct.Memory** %MEMORY
  %loadMem_426b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 5
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 9
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RSI.i538 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RCX.i537
  %1266 = load i64, i64* %PC.i536
  %1267 = add i64 %1266, 2
  store i64 %1267, i64* %PC.i536
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RSI.i538, align 8
  store %struct.Memory* %loadMem_426b1b, %struct.Memory** %MEMORY
  %loadMem_426b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 7
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 15
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RBP.i535
  %1281 = sub i64 %1280, 16
  %1282 = load i64, i64* %PC.i533
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC.i533
  %1284 = inttoptr i64 %1281 to i64*
  %1285 = load i64, i64* %1284
  store i64 %1285, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_426b1d, %struct.Memory** %MEMORY
  %loadMem1_426b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i532
  %1290 = add i64 %1289, 548511
  %1291 = load i64, i64* %PC.i532
  %1292 = add i64 %1291, 5
  %1293 = load i64, i64* %PC.i532
  %1294 = add i64 %1293, 5
  store i64 %1294, i64* %PC.i532
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1296 = load i64, i64* %1295, align 8
  %1297 = add i64 %1296, -8
  %1298 = inttoptr i64 %1297 to i64*
  store i64 %1292, i64* %1298
  store i64 %1297, i64* %1295, align 8
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1290, i64* %1299, align 8
  store %struct.Memory* %loadMem1_426b21, %struct.Memory** %MEMORY
  %loadMem2_426b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b21 = load i64, i64* %3
  %call2_426b21 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426b21, %struct.Memory* %loadMem2_426b21)
  store %struct.Memory* %call2_426b21, %struct.Memory** %MEMORY
  %loadMem_426b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 1
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 15
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RAX.i530
  %1310 = load i64, i64* %RBP.i531
  %1311 = sub i64 %1310, 20
  %1312 = load i64, i64* %PC.i529
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %PC.i529
  %1314 = trunc i64 %1309 to i32
  %1315 = inttoptr i64 %1311 to i32*
  %1316 = load i32, i32* %1315
  %1317 = add i32 %1316, %1314
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i530, align 8
  %1319 = icmp ult i32 %1317, %1314
  %1320 = icmp ult i32 %1317, %1316
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1322, i8* %1323, align 1
  %1324 = and i32 %1317, 255
  %1325 = call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1329, align 1
  %1330 = xor i32 %1316, %1314
  %1331 = xor i32 %1330, %1317
  %1332 = lshr i32 %1331, 4
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1334, i8* %1335, align 1
  %1336 = icmp eq i32 %1317, 0
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1337, i8* %1338, align 1
  %1339 = lshr i32 %1317, 31
  %1340 = trunc i32 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1340, i8* %1341, align 1
  %1342 = lshr i32 %1314, 31
  %1343 = lshr i32 %1316, 31
  %1344 = xor i32 %1339, %1342
  %1345 = xor i32 %1339, %1343
  %1346 = add i32 %1344, %1345
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1348, i8* %1349, align 1
  store %struct.Memory* %loadMem_426b26, %struct.Memory** %MEMORY
  %loadMem_426b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %EAX.i527 = bitcast %union.anon* %1355 to i32*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 15
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %RBP.i528
  %1360 = sub i64 %1359, 20
  %1361 = load i32, i32* %EAX.i527
  %1362 = zext i32 %1361 to i64
  %1363 = load i64, i64* %PC.i526
  %1364 = add i64 %1363, 3
  store i64 %1364, i64* %PC.i526
  %1365 = inttoptr i64 %1360 to i32*
  store i32 %1361, i32* %1365
  store %struct.Memory* %loadMem_426b29, %struct.Memory** %MEMORY
  %loadMem_426b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i525
  %1370 = add i64 %1369, 32
  %1371 = load i64, i64* %PC.i525
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %PC.i525
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1370, i64* %1373, align 8
  store %struct.Memory* %loadMem_426b2c, %struct.Memory** %MEMORY
  br label %block_.L_426b4c

block_.L_426b31:                                  ; preds = %block_426a96
  %loadMem_426b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 11
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RDI.i524 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %PC.i523
  %1381 = add i64 %1380, 10
  store i64 %1381, i64* %PC.i523
  store i64 ptrtoint (%G__0x4bfdd3_type* @G__0x4bfdd3 to i64), i64* %RDI.i524, align 8
  store %struct.Memory* %loadMem_426b31, %struct.Memory** %MEMORY
  %loadMem_426b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 9
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %ESI.i521 = bitcast %union.anon* %1387 to i32*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 9
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RSI.i522 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %RSI.i522
  %1392 = load i32, i32* %ESI.i521
  %1393 = zext i32 %1392 to i64
  %1394 = load i64, i64* %PC.i520
  %1395 = add i64 %1394, 2
  store i64 %1395, i64* %PC.i520
  %1396 = xor i64 %1393, %1391
  %1397 = trunc i64 %1396 to i32
  %1398 = and i64 %1396, 4294967295
  store i64 %1398, i64* %RSI.i522, align 8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1399, align 1
  %1400 = and i32 %1397, 255
  %1401 = call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1404, i8* %1405, align 1
  %1406 = icmp eq i32 %1397, 0
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1407, i8* %1408, align 1
  %1409 = lshr i32 %1397, 31
  %1410 = trunc i32 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1410, i8* %1411, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1412, align 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1413, align 1
  store %struct.Memory* %loadMem_426b3b, %struct.Memory** %MEMORY
  %loadMem_426b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 7
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 15
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RBP.i519
  %1424 = sub i64 %1423, 16
  %1425 = load i64, i64* %PC.i517
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC.i517
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427
  store i64 %1428, i64* %RDX.i518, align 8
  store %struct.Memory* %loadMem_426b3d, %struct.Memory** %MEMORY
  %loadMem1_426b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %PC.i516
  %1433 = add i64 %1432, 548799
  %1434 = load i64, i64* %PC.i516
  %1435 = add i64 %1434, 5
  %1436 = load i64, i64* %PC.i516
  %1437 = add i64 %1436, 5
  store i64 %1437, i64* %PC.i516
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1439 = load i64, i64* %1438, align 8
  %1440 = add i64 %1439, -8
  %1441 = inttoptr i64 %1440 to i64*
  store i64 %1435, i64* %1441
  store i64 %1440, i64* %1438, align 8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1433, i64* %1442, align 8
  store %struct.Memory* %loadMem1_426b41, %struct.Memory** %MEMORY
  %loadMem2_426b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b41 = load i64, i64* %3
  %call2_426b41 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426b41, %struct.Memory* %loadMem2_426b41)
  store %struct.Memory* %call2_426b41, %struct.Memory** %MEMORY
  %loadMem_426b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 1
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %RAX.i514
  %1453 = load i64, i64* %RBP.i515
  %1454 = sub i64 %1453, 20
  %1455 = load i64, i64* %PC.i513
  %1456 = add i64 %1455, 3
  store i64 %1456, i64* %PC.i513
  %1457 = trunc i64 %1452 to i32
  %1458 = inttoptr i64 %1454 to i32*
  %1459 = load i32, i32* %1458
  %1460 = add i32 %1459, %1457
  %1461 = zext i32 %1460 to i64
  store i64 %1461, i64* %RAX.i514, align 8
  %1462 = icmp ult i32 %1460, %1457
  %1463 = icmp ult i32 %1460, %1459
  %1464 = or i1 %1462, %1463
  %1465 = zext i1 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1465, i8* %1466, align 1
  %1467 = and i32 %1460, 255
  %1468 = call i32 @llvm.ctpop.i32(i32 %1467)
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = xor i8 %1470, 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1471, i8* %1472, align 1
  %1473 = xor i32 %1459, %1457
  %1474 = xor i32 %1473, %1460
  %1475 = lshr i32 %1474, 4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1477, i8* %1478, align 1
  %1479 = icmp eq i32 %1460, 0
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1480, i8* %1481, align 1
  %1482 = lshr i32 %1460, 31
  %1483 = trunc i32 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1483, i8* %1484, align 1
  %1485 = lshr i32 %1457, 31
  %1486 = lshr i32 %1459, 31
  %1487 = xor i32 %1482, %1485
  %1488 = xor i32 %1482, %1486
  %1489 = add i32 %1487, %1488
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1
  store %struct.Memory* %loadMem_426b46, %struct.Memory** %MEMORY
  %loadMem_426b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %1498 to i32*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 15
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RBP.i512
  %1503 = sub i64 %1502, 20
  %1504 = load i32, i32* %EAX.i511
  %1505 = zext i32 %1504 to i64
  %1506 = load i64, i64* %PC.i510
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i510
  %1508 = inttoptr i64 %1503 to i32*
  store i32 %1504, i32* %1508
  store %struct.Memory* %loadMem_426b49, %struct.Memory** %MEMORY
  br label %block_.L_426b4c

block_.L_426b4c:                                  ; preds = %block_.L_426b31, %block_.L_426ab2
  %loadMem_426b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 1
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %PC.i508
  %1516 = add i64 %1515, 5
  store i64 %1516, i64* %PC.i508
  store i64 1, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_426b4c, %struct.Memory** %MEMORY
  %loadMem_426b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 5
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %PC.i506
  %1524 = add i64 %1523, 8
  store i64 %1524, i64* %PC.i506
  %1525 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %1525, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_426b51, %struct.Memory** %MEMORY
  %loadMem_426b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RCX.i505
  %1533 = load i64, i64* %PC.i504
  %1534 = add i64 %1533, 3
  store i64 %1534, i64* %PC.i504
  %1535 = inttoptr i64 %1532 to i64*
  %1536 = load i64, i64* %1535
  store i64 %1536, i64* %RCX.i505, align 8
  store %struct.Memory* %loadMem_426b59, %struct.Memory** %MEMORY
  %loadMem_426b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 7
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RDX.i502 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 15
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1545 to i64*
  %1546 = load i64, i64* %RBP.i503
  %1547 = sub i64 %1546, 24
  %1548 = load i64, i64* %PC.i501
  %1549 = add i64 %1548, 4
  store i64 %1549, i64* %PC.i501
  %1550 = inttoptr i64 %1547 to i32*
  %1551 = load i32, i32* %1550
  %1552 = sext i32 %1551 to i64
  store i64 %1552, i64* %RDX.i502, align 8
  store %struct.Memory* %loadMem_426b5c, %struct.Memory** %MEMORY
  %loadMem_426b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 5
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 7
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RCX.i499
  %1563 = load i64, i64* %RDX.i500
  %1564 = mul i64 %1563, 8
  %1565 = add i64 %1564, %1562
  %1566 = load i64, i64* %PC.i498
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %PC.i498
  %1568 = inttoptr i64 %1565 to i64*
  %1569 = load i64, i64* %1568
  store i64 %1569, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_426b60, %struct.Memory** %MEMORY
  %loadMem_426b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 5
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 9
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RSI.i497 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %RCX.i496
  %1580 = add i64 %1579, 4
  %1581 = load i64, i64* %PC.i495
  %1582 = add i64 %1581, 3
  store i64 %1582, i64* %PC.i495
  %1583 = inttoptr i64 %1580 to i32*
  %1584 = load i32, i32* %1583
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RSI.i497, align 8
  store %struct.Memory* %loadMem_426b64, %struct.Memory** %MEMORY
  %loadMem_426b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 5
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %PC.i493
  %1593 = add i64 %1592, 7
  store i64 %1593, i64* %PC.i493
  %1594 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_426b67, %struct.Memory** %MEMORY
  %loadMem_426b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 33
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1598 to i64*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 5
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %1602 = bitcast %union.anon* %1601 to %struct.anon.2*
  %CL.i490 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1602, i32 0, i32 0
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 1
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RAX.i491
  %1607 = load i8, i8* %CL.i490
  %1608 = zext i8 %1607 to i64
  %1609 = load i64, i64* %PC.i489
  %1610 = add i64 %1609, 2
  store i64 %1610, i64* %PC.i489
  %1611 = trunc i64 %1608 to i5
  switch i5 %1611, label %1618 [
    i5 0, label %routine_shll__cl___eax.exit492
    i5 1, label %1612
  ]

; <label>:1612:                                   ; preds = %block_.L_426b4c
  %1613 = trunc i64 %1606 to i32
  %1614 = shl i32 %1613, 1
  %1615 = icmp slt i32 %1613, 0
  %1616 = icmp slt i32 %1614, 0
  %1617 = xor i1 %1615, %1616
  br label %1627

; <label>:1618:                                   ; preds = %block_.L_426b4c
  %1619 = and i64 %1608, 31
  %1620 = add i64 %1619, 4294967295
  %1621 = and i64 %1606, 4294967295
  %1622 = and i64 %1620, 4294967295
  %1623 = shl i64 %1621, %1622
  %1624 = trunc i64 %1623 to i32
  %1625 = icmp slt i32 %1624, 0
  %1626 = shl i32 %1624, 1
  br label %1627

; <label>:1627:                                   ; preds = %1618, %1612
  %1628 = phi i1 [ %1615, %1612 ], [ %1625, %1618 ]
  %1629 = phi i1 [ %1617, %1612 ], [ false, %1618 ]
  %1630 = phi i32 [ %1614, %1612 ], [ %1626, %1618 ]
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RAX.i491, align 8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1633 = zext i1 %1628 to i8
  store i8 %1633, i8* %1632, align 1
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1635 = and i32 %1630, 254
  %1636 = call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %1634, align 1
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1640, align 1
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1642 = icmp eq i32 %1630, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %1641, align 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1645 = lshr i32 %1630, 31
  %1646 = trunc i32 %1645 to i8
  store i8 %1646, i8* %1644, align 1
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1648 = zext i1 %1629 to i8
  store i8 %1648, i8* %1647, align 1
  br label %routine_shll__cl___eax.exit492

routine_shll__cl___eax.exit492:                   ; preds = %block_.L_426b4c, %1627
  store %struct.Memory* %loadMem_426b6e, %struct.Memory** %MEMORY
  %loadMem_426b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %EAX.i487 = bitcast %union.anon* %1654 to i32*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 9
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %ESI.i488 = bitcast %union.anon* %1657 to i32*
  %1658 = load i32, i32* %ESI.i488
  %1659 = zext i32 %1658 to i64
  %1660 = load i32, i32* %EAX.i487
  %1661 = zext i32 %1660 to i64
  %1662 = load i64, i64* %PC.i486
  %1663 = add i64 %1662, 2
  store i64 %1663, i64* %PC.i486
  %1664 = sub i32 %1658, %1660
  %1665 = icmp ult i32 %1658, %1660
  %1666 = zext i1 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1666, i8* %1667, align 1
  %1668 = and i32 %1664, 255
  %1669 = call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1672, i8* %1673, align 1
  %1674 = xor i64 %1661, %1659
  %1675 = trunc i64 %1674 to i32
  %1676 = xor i32 %1675, %1664
  %1677 = lshr i32 %1676, 4
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1679, i8* %1680, align 1
  %1681 = icmp eq i32 %1664, 0
  %1682 = zext i1 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1682, i8* %1683, align 1
  %1684 = lshr i32 %1664, 31
  %1685 = trunc i32 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1685, i8* %1686, align 1
  %1687 = lshr i32 %1658, 31
  %1688 = lshr i32 %1660, 31
  %1689 = xor i32 %1688, %1687
  %1690 = xor i32 %1684, %1687
  %1691 = add i32 %1690, %1689
  %1692 = icmp eq i32 %1691, 2
  %1693 = zext i1 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1693, i8* %1694, align 1
  store %struct.Memory* %loadMem_426b70, %struct.Memory** %MEMORY
  %loadMem_426b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %PC.i485
  %1699 = add i64 %1698, 108
  %1700 = load i64, i64* %PC.i485
  %1701 = add i64 %1700, 6
  %1702 = load i64, i64* %PC.i485
  %1703 = add i64 %1702, 6
  store i64 %1703, i64* %PC.i485
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1705 = load i8, i8* %1704, align 1
  %1706 = icmp eq i8 %1705, 0
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %BRANCH_TAKEN, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1709 = select i1 %1706, i64 %1699, i64 %1701
  store i64 %1709, i64* %1708, align 8
  store %struct.Memory* %loadMem_426b72, %struct.Memory** %MEMORY
  %loadBr_426b72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b72 = icmp eq i8 %loadBr_426b72, 1
  br i1 %cmpBr_426b72, label %block_.L_426bde, label %block_426b78

block_426b78:                                     ; preds = %routine_shll__cl___eax.exit492
  %loadMem_426b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 1
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %PC.i483
  %1717 = add i64 %1716, 8
  store i64 %1717, i64* %PC.i483
  %1718 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %1718, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_426b78, %struct.Memory** %MEMORY
  %loadMem_426b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 1
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RAX.i482
  %1726 = load i64, i64* %PC.i481
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i481
  %1728 = inttoptr i64 %1725 to i64*
  %1729 = load i64, i64* %1728
  store i64 %1729, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_426b80, %struct.Memory** %MEMORY
  %loadMem_426b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 5
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i480
  %1740 = sub i64 %1739, 24
  %1741 = load i64, i64* %PC.i478
  %1742 = add i64 %1741, 4
  store i64 %1742, i64* %PC.i478
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = sext i32 %1744 to i64
  store i64 %1745, i64* %RCX.i479, align 8
  store %struct.Memory* %loadMem_426b83, %struct.Memory** %MEMORY
  %loadMem_426b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 5
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RAX.i476
  %1756 = load i64, i64* %RCX.i477
  %1757 = mul i64 %1756, 8
  %1758 = add i64 %1757, %1755
  %1759 = load i64, i64* %PC.i475
  %1760 = add i64 %1759, 4
  store i64 %1760, i64* %PC.i475
  %1761 = inttoptr i64 %1758 to i64*
  %1762 = load i64, i64* %1761
  store i64 %1762, i64* %RAX.i476, align 8
  store %struct.Memory* %loadMem_426b87, %struct.Memory** %MEMORY
  %loadMem_426b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 1
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %RAX.i474
  %1770 = add i64 %1769, 4
  %1771 = load i64, i64* %PC.i473
  %1772 = add i64 %1771, 4
  store i64 %1772, i64* %PC.i473
  %1773 = inttoptr i64 %1770 to i32*
  %1774 = load i32, i32* %1773
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1775, align 1
  %1776 = and i32 %1774, 255
  %1777 = call i32 @llvm.ctpop.i32(i32 %1776)
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = xor i8 %1779, 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1780, i8* %1781, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1782, align 1
  %1783 = icmp eq i32 %1774, 0
  %1784 = zext i1 %1783 to i8
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1784, i8* %1785, align 1
  %1786 = lshr i32 %1774, 31
  %1787 = trunc i32 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1787, i8* %1788, align 1
  %1789 = lshr i32 %1774, 31
  %1790 = xor i32 %1786, %1789
  %1791 = add i32 %1790, %1789
  %1792 = icmp eq i32 %1791, 2
  %1793 = zext i1 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1793, i8* %1794, align 1
  store %struct.Memory* %loadMem_426b8b, %struct.Memory** %MEMORY
  %loadMem_426b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %PC.i472
  %1799 = add i64 %1798, 79
  %1800 = load i64, i64* %PC.i472
  %1801 = add i64 %1800, 6
  %1802 = load i64, i64* %PC.i472
  %1803 = add i64 %1802, 6
  store i64 %1803, i64* %PC.i472
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1805 = load i8, i8* %1804, align 1
  %1806 = icmp eq i8 %1805, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %BRANCH_TAKEN, align 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1809 = select i1 %1806, i64 %1799, i64 %1801
  store i64 %1809, i64* %1808, align 8
  store %struct.Memory* %loadMem_426b8f, %struct.Memory** %MEMORY
  %loadBr_426b8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b8f = icmp eq i8 %loadBr_426b8f, 1
  br i1 %cmpBr_426b8f, label %block_.L_426bde, label %block_426b95

block_426b95:                                     ; preds = %block_426b78
  %loadMem_426b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 1
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %PC.i470
  %1817 = add i64 %1816, 5
  store i64 %1817, i64* %PC.i470
  store i64 1, i64* %RAX.i471, align 8
  store %struct.Memory* %loadMem_426b95, %struct.Memory** %MEMORY
  %loadMem_426b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 5
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %1823 to i64*
  %1824 = load i64, i64* %PC.i468
  %1825 = add i64 %1824, 8
  store i64 %1825, i64* %PC.i468
  %1826 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %1826, i64* %RCX.i469, align 8
  store %struct.Memory* %loadMem_426b9a, %struct.Memory** %MEMORY
  %loadMem_426ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 5
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RCX.i467
  %1834 = load i64, i64* %PC.i466
  %1835 = add i64 %1834, 3
  store i64 %1835, i64* %PC.i466
  %1836 = inttoptr i64 %1833 to i64*
  %1837 = load i64, i64* %1836
  store i64 %1837, i64* %RCX.i467, align 8
  store %struct.Memory* %loadMem_426ba2, %struct.Memory** %MEMORY
  %loadMem_426ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 7
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 15
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %1846 to i64*
  %1847 = load i64, i64* %RBP.i465
  %1848 = sub i64 %1847, 24
  %1849 = load i64, i64* %PC.i463
  %1850 = add i64 %1849, 4
  store i64 %1850, i64* %PC.i463
  %1851 = inttoptr i64 %1848 to i32*
  %1852 = load i32, i32* %1851
  %1853 = sext i32 %1852 to i64
  store i64 %1853, i64* %RDX.i464, align 8
  store %struct.Memory* %loadMem_426ba5, %struct.Memory** %MEMORY
  %loadMem_426ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 5
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %1859 to i64*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 7
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %RCX.i461
  %1864 = load i64, i64* %RDX.i462
  %1865 = mul i64 %1864, 8
  %1866 = add i64 %1865, %1863
  %1867 = load i64, i64* %PC.i460
  %1868 = add i64 %1867, 4
  store i64 %1868, i64* %PC.i460
  %1869 = inttoptr i64 %1866 to i64*
  %1870 = load i64, i64* %1869
  store i64 %1870, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_426ba9, %struct.Memory** %MEMORY
  %loadMem_426bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 5
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 9
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RSI.i459 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RCX.i458
  %1881 = add i64 %1880, 8
  %1882 = load i64, i64* %PC.i457
  %1883 = add i64 %1882, 3
  store i64 %1883, i64* %PC.i457
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RSI.i459, align 8
  store %struct.Memory* %loadMem_426bad, %struct.Memory** %MEMORY
  %loadMem_426bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 5
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i455
  %1894 = add i64 %1893, 7
  store i64 %1894, i64* %PC.i455
  %1895 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %1896 = zext i32 %1895 to i64
  store i64 %1896, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_426bb0, %struct.Memory** %MEMORY
  %loadMem_426bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 5
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %1903 = bitcast %union.anon* %1902 to %struct.anon.2*
  %CL.i452 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1903, i32 0, i32 0
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 1
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %RAX.i453
  %1908 = load i8, i8* %CL.i452
  %1909 = zext i8 %1908 to i64
  %1910 = load i64, i64* %PC.i451
  %1911 = add i64 %1910, 2
  store i64 %1911, i64* %PC.i451
  %1912 = trunc i64 %1909 to i5
  switch i5 %1912, label %1919 [
    i5 0, label %routine_shll__cl___eax.exit454
    i5 1, label %1913
  ]

; <label>:1913:                                   ; preds = %block_426b95
  %1914 = trunc i64 %1907 to i32
  %1915 = shl i32 %1914, 1
  %1916 = icmp slt i32 %1914, 0
  %1917 = icmp slt i32 %1915, 0
  %1918 = xor i1 %1916, %1917
  br label %1928

; <label>:1919:                                   ; preds = %block_426b95
  %1920 = and i64 %1909, 31
  %1921 = add i64 %1920, 4294967295
  %1922 = and i64 %1907, 4294967295
  %1923 = and i64 %1921, 4294967295
  %1924 = shl i64 %1922, %1923
  %1925 = trunc i64 %1924 to i32
  %1926 = icmp slt i32 %1925, 0
  %1927 = shl i32 %1925, 1
  br label %1928

; <label>:1928:                                   ; preds = %1919, %1913
  %1929 = phi i1 [ %1916, %1913 ], [ %1926, %1919 ]
  %1930 = phi i1 [ %1918, %1913 ], [ false, %1919 ]
  %1931 = phi i32 [ %1915, %1913 ], [ %1927, %1919 ]
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RAX.i453, align 8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1934 = zext i1 %1929 to i8
  store i8 %1934, i8* %1933, align 1
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1936 = and i32 %1931, 254
  %1937 = call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %1935, align 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1941, align 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1943 = icmp eq i32 %1931, 0
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %1942, align 1
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1946 = lshr i32 %1931, 31
  %1947 = trunc i32 %1946 to i8
  store i8 %1947, i8* %1945, align 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1949 = zext i1 %1930 to i8
  store i8 %1949, i8* %1948, align 1
  br label %routine_shll__cl___eax.exit454

routine_shll__cl___eax.exit454:                   ; preds = %block_426b95, %1928
  store %struct.Memory* %loadMem_426bb7, %struct.Memory** %MEMORY
  %loadMem_426bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 1
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %1955 to i32*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 9
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %ESI.i450 = bitcast %union.anon* %1958 to i32*
  %1959 = load i32, i32* %ESI.i450
  %1960 = zext i32 %1959 to i64
  %1961 = load i32, i32* %EAX.i449
  %1962 = zext i32 %1961 to i64
  %1963 = load i64, i64* %PC.i448
  %1964 = add i64 %1963, 2
  store i64 %1964, i64* %PC.i448
  %1965 = sub i32 %1959, %1961
  %1966 = icmp ult i32 %1959, %1961
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1968, align 1
  %1969 = and i32 %1965, 255
  %1970 = call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1973, i8* %1974, align 1
  %1975 = xor i64 %1962, %1960
  %1976 = trunc i64 %1975 to i32
  %1977 = xor i32 %1976, %1965
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1980, i8* %1981, align 1
  %1982 = icmp eq i32 %1965, 0
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1983, i8* %1984, align 1
  %1985 = lshr i32 %1965, 31
  %1986 = trunc i32 %1985 to i8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1986, i8* %1987, align 1
  %1988 = lshr i32 %1959, 31
  %1989 = lshr i32 %1961, 31
  %1990 = xor i32 %1989, %1988
  %1991 = xor i32 %1985, %1988
  %1992 = add i32 %1991, %1990
  %1993 = icmp eq i32 %1992, 2
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1994, i8* %1995, align 1
  store %struct.Memory* %loadMem_426bb9, %struct.Memory** %MEMORY
  %loadMem_426bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %PC.i447
  %2000 = add i64 %1999, 35
  %2001 = load i64, i64* %PC.i447
  %2002 = add i64 %2001, 6
  %2003 = load i64, i64* %PC.i447
  %2004 = add i64 %2003, 6
  store i64 %2004, i64* %PC.i447
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2006 = load i8, i8* %2005, align 1
  %2007 = icmp eq i8 %2006, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %BRANCH_TAKEN, align 1
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2010 = select i1 %2007, i64 %2000, i64 %2002
  store i64 %2010, i64* %2009, align 8
  store %struct.Memory* %loadMem_426bbb, %struct.Memory** %MEMORY
  %loadBr_426bbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426bbb = icmp eq i8 %loadBr_426bbb, 1
  br i1 %cmpBr_426bbb, label %block_.L_426bde, label %block_426bc1

block_426bc1:                                     ; preds = %routine_shll__cl___eax.exit454
  %loadMem_426bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 1
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %2016 to i64*
  %2017 = load i64, i64* %PC.i445
  %2018 = add i64 %2017, 8
  store i64 %2018, i64* %PC.i445
  %2019 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %2019, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_426bc1, %struct.Memory** %MEMORY
  %loadMem_426bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 1
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %2025 to i64*
  %2026 = load i64, i64* %RAX.i444
  %2027 = load i64, i64* %PC.i443
  %2028 = add i64 %2027, 3
  store i64 %2028, i64* %PC.i443
  %2029 = inttoptr i64 %2026 to i64*
  %2030 = load i64, i64* %2029
  store i64 %2030, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_426bc9, %struct.Memory** %MEMORY
  %loadMem_426bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 5
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 15
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RBP.i442
  %2041 = sub i64 %2040, 24
  %2042 = load i64, i64* %PC.i440
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC.i440
  %2044 = inttoptr i64 %2041 to i32*
  %2045 = load i32, i32* %2044
  %2046 = sext i32 %2045 to i64
  store i64 %2046, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_426bcc, %struct.Memory** %MEMORY
  %loadMem_426bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 1
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 5
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %RAX.i438
  %2057 = load i64, i64* %RCX.i439
  %2058 = mul i64 %2057, 8
  %2059 = add i64 %2058, %2056
  %2060 = load i64, i64* %PC.i437
  %2061 = add i64 %2060, 4
  store i64 %2061, i64* %PC.i437
  %2062 = inttoptr i64 %2059 to i64*
  %2063 = load i64, i64* %2062
  store i64 %2063, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_426bd0, %struct.Memory** %MEMORY
  %loadMem_426bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 1
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %RAX.i436
  %2071 = add i64 %2070, 8
  %2072 = load i64, i64* %PC.i435
  %2073 = add i64 %2072, 4
  store i64 %2073, i64* %PC.i435
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2076, align 1
  %2077 = and i32 %2075, 255
  %2078 = call i32 @llvm.ctpop.i32(i32 %2077)
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  %2081 = xor i8 %2080, 1
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2081, i8* %2082, align 1
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2083, align 1
  %2084 = icmp eq i32 %2075, 0
  %2085 = zext i1 %2084 to i8
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2085, i8* %2086, align 1
  %2087 = lshr i32 %2075, 31
  %2088 = trunc i32 %2087 to i8
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2088, i8* %2089, align 1
  %2090 = lshr i32 %2075, 31
  %2091 = xor i32 %2087, %2090
  %2092 = add i32 %2091, %2090
  %2093 = icmp eq i32 %2092, 2
  %2094 = zext i1 %2093 to i8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2094, i8* %2095, align 1
  store %struct.Memory* %loadMem_426bd4, %struct.Memory** %MEMORY
  %loadMem_426bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %PC.i434
  %2100 = add i64 %2099, 174
  %2101 = load i64, i64* %PC.i434
  %2102 = add i64 %2101, 6
  %2103 = load i64, i64* %PC.i434
  %2104 = add i64 %2103, 6
  store i64 %2104, i64* %PC.i434
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2106 = load i8, i8* %2105, align 1
  store i8 %2106, i8* %BRANCH_TAKEN, align 1
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2108 = icmp ne i8 %2106, 0
  %2109 = select i1 %2108, i64 %2100, i64 %2102
  store i64 %2109, i64* %2107, align 8
  store %struct.Memory* %loadMem_426bd8, %struct.Memory** %MEMORY
  %loadBr_426bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426bd8 = icmp eq i8 %loadBr_426bd8, 1
  br i1 %cmpBr_426bd8, label %block_.L_426c86, label %block_.L_426bde

block_.L_426bde:                                  ; preds = %block_426bc1, %routine_shll__cl___eax.exit454, %block_426b78, %routine_shll__cl___eax.exit492
  %loadMem_426bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 11
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RDI.i433 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %PC.i432
  %2117 = add i64 %2116, 10
  store i64 %2117, i64* %PC.i432
  store i64 ptrtoint (%G__0x4bfe11_type* @G__0x4bfe11 to i64), i64* %RDI.i433, align 8
  store %struct.Memory* %loadMem_426bde, %struct.Memory** %MEMORY
  %loadMem_426be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 9
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RSI.i431 = bitcast %union.anon* %2123 to i64*
  %2124 = load i64, i64* %PC.i430
  %2125 = add i64 %2124, 5
  store i64 %2125, i64* %PC.i430
  store i64 1, i64* %RSI.i431, align 8
  store %struct.Memory* %loadMem_426be8, %struct.Memory** %MEMORY
  %loadMem_426bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 7
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i429
  %2136 = sub i64 %2135, 16
  %2137 = load i64, i64* %PC.i427
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i427
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RDX.i428, align 8
  store %struct.Memory* %loadMem_426bed, %struct.Memory** %MEMORY
  %loadMem1_426bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2143 to i64*
  %2144 = load i64, i64* %PC.i426
  %2145 = add i64 %2144, 548623
  %2146 = load i64, i64* %PC.i426
  %2147 = add i64 %2146, 5
  %2148 = load i64, i64* %PC.i426
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC.i426
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2151 = load i64, i64* %2150, align 8
  %2152 = add i64 %2151, -8
  %2153 = inttoptr i64 %2152 to i64*
  store i64 %2147, i64* %2153
  store i64 %2152, i64* %2150, align 8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2145, i64* %2154, align 8
  store %struct.Memory* %loadMem1_426bf1, %struct.Memory** %MEMORY
  %loadMem2_426bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426bf1 = load i64, i64* %3
  %call2_426bf1 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426bf1, %struct.Memory* %loadMem2_426bf1)
  store %struct.Memory* %call2_426bf1, %struct.Memory** %MEMORY
  %loadMem_426bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 1
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 15
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %2163 to i64*
  %2164 = load i64, i64* %RAX.i424
  %2165 = load i64, i64* %RBP.i425
  %2166 = sub i64 %2165, 20
  %2167 = load i64, i64* %PC.i423
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i423
  %2169 = trunc i64 %2164 to i32
  %2170 = inttoptr i64 %2166 to i32*
  %2171 = load i32, i32* %2170
  %2172 = add i32 %2171, %2169
  %2173 = zext i32 %2172 to i64
  store i64 %2173, i64* %RAX.i424, align 8
  %2174 = icmp ult i32 %2172, %2169
  %2175 = icmp ult i32 %2172, %2171
  %2176 = or i1 %2174, %2175
  %2177 = zext i1 %2176 to i8
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2177, i8* %2178, align 1
  %2179 = and i32 %2172, 255
  %2180 = call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2183, i8* %2184, align 1
  %2185 = xor i32 %2171, %2169
  %2186 = xor i32 %2185, %2172
  %2187 = lshr i32 %2186, 4
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2189, i8* %2190, align 1
  %2191 = icmp eq i32 %2172, 0
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i32 %2172, 31
  %2195 = trunc i32 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2195, i8* %2196, align 1
  %2197 = lshr i32 %2169, 31
  %2198 = lshr i32 %2171, 31
  %2199 = xor i32 %2194, %2197
  %2200 = xor i32 %2194, %2198
  %2201 = add i32 %2199, %2200
  %2202 = icmp eq i32 %2201, 2
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2203, i8* %2204, align 1
  store %struct.Memory* %loadMem_426bf6, %struct.Memory** %MEMORY
  %loadMem_426bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 1
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %2210 to i32*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i422
  %2215 = sub i64 %2214, 20
  %2216 = load i32, i32* %EAX.i421
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC.i420
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i420
  %2220 = inttoptr i64 %2215 to i32*
  store i32 %2216, i32* %2220
  store %struct.Memory* %loadMem_426bf9, %struct.Memory** %MEMORY
  %loadMem_426bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 15
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RBP.i419
  %2228 = sub i64 %2227, 28
  %2229 = load i64, i64* %PC.i418
  %2230 = add i64 %2229, 7
  store i64 %2230, i64* %PC.i418
  %2231 = inttoptr i64 %2228 to i32*
  store i32 1, i32* %2231
  store %struct.Memory* %loadMem_426bfc, %struct.Memory** %MEMORY
  br label %block_.L_426c03

block_.L_426c03:                                  ; preds = %block_426c0d, %block_.L_426bde
  %loadMem_426c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 15
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %2237 to i64*
  %2238 = load i64, i64* %RBP.i417
  %2239 = sub i64 %2238, 28
  %2240 = load i64, i64* %PC.i416
  %2241 = add i64 %2240, 4
  store i64 %2241, i64* %PC.i416
  %2242 = inttoptr i64 %2239 to i32*
  %2243 = load i32, i32* %2242
  %2244 = sub i32 %2243, 3
  %2245 = icmp ult i32 %2243, 3
  %2246 = zext i1 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2246, i8* %2247, align 1
  %2248 = and i32 %2244, 255
  %2249 = call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2252, i8* %2253, align 1
  %2254 = xor i32 %2243, 3
  %2255 = xor i32 %2254, %2244
  %2256 = lshr i32 %2255, 4
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2258, i8* %2259, align 1
  %2260 = icmp eq i32 %2244, 0
  %2261 = zext i1 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2261, i8* %2262, align 1
  %2263 = lshr i32 %2244, 31
  %2264 = trunc i32 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2264, i8* %2265, align 1
  %2266 = lshr i32 %2243, 31
  %2267 = xor i32 %2263, %2266
  %2268 = add i32 %2267, %2266
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2270, i8* %2271, align 1
  store %struct.Memory* %loadMem_426c03, %struct.Memory** %MEMORY
  %loadMem_426c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2274 to i64*
  %2275 = load i64, i64* %PC.i415
  %2276 = add i64 %2275, 122
  %2277 = load i64, i64* %PC.i415
  %2278 = add i64 %2277, 6
  %2279 = load i64, i64* %PC.i415
  %2280 = add i64 %2279, 6
  store i64 %2280, i64* %PC.i415
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2282 = load i8, i8* %2281, align 1
  %2283 = icmp ne i8 %2282, 0
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2285 = load i8, i8* %2284, align 1
  %2286 = icmp ne i8 %2285, 0
  %2287 = xor i1 %2283, %2286
  %2288 = xor i1 %2287, true
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %BRANCH_TAKEN, align 1
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2291 = select i1 %2287, i64 %2278, i64 %2276
  store i64 %2291, i64* %2290, align 8
  store %struct.Memory* %loadMem_426c07, %struct.Memory** %MEMORY
  %loadBr_426c07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426c07 = icmp eq i8 %loadBr_426c07, 1
  br i1 %cmpBr_426c07, label %block_.L_426c81, label %block_426c0d

block_426c0d:                                     ; preds = %block_.L_426c03
  %loadMem_426c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 11
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RDI.i414 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %PC.i413
  %2299 = add i64 %2298, 10
  store i64 %2299, i64* %PC.i413
  store i64 ptrtoint (%G__0x4bfe27_type* @G__0x4bfe27 to i64), i64* %RDI.i414, align 8
  store %struct.Memory* %loadMem_426c0d, %struct.Memory** %MEMORY
  %loadMem_426c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 1
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %PC.i411
  %2307 = add i64 %2306, 8
  store i64 %2307, i64* %PC.i411
  %2308 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %2308, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_426c17, %struct.Memory** %MEMORY
  %loadMem_426c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 1
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %RAX.i410
  %2316 = load i64, i64* %PC.i409
  %2317 = add i64 %2316, 3
  store i64 %2317, i64* %PC.i409
  %2318 = inttoptr i64 %2315 to i64*
  %2319 = load i64, i64* %2318
  store i64 %2319, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_426c1f, %struct.Memory** %MEMORY
  %loadMem_426c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 15
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %RBP.i408
  %2330 = sub i64 %2329, 24
  %2331 = load i64, i64* %PC.i406
  %2332 = add i64 %2331, 4
  store i64 %2332, i64* %PC.i406
  %2333 = inttoptr i64 %2330 to i32*
  %2334 = load i32, i32* %2333
  %2335 = sext i32 %2334 to i64
  store i64 %2335, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_426c22, %struct.Memory** %MEMORY
  %loadMem_426c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 5
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RAX.i404
  %2346 = load i64, i64* %RCX.i405
  %2347 = mul i64 %2346, 8
  %2348 = add i64 %2347, %2345
  %2349 = load i64, i64* %PC.i403
  %2350 = add i64 %2349, 4
  store i64 %2350, i64* %PC.i403
  %2351 = inttoptr i64 %2348 to i64*
  %2352 = load i64, i64* %2351
  store i64 %2352, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_426c26, %struct.Memory** %MEMORY
  %loadMem_426c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 5
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RBP.i402
  %2363 = sub i64 %2362, 28
  %2364 = load i64, i64* %PC.i400
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %PC.i400
  %2366 = inttoptr i64 %2363 to i32*
  %2367 = load i32, i32* %2366
  %2368 = sext i32 %2367 to i64
  store i64 %2368, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_426c2a, %struct.Memory** %MEMORY
  %loadMem_426c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 1
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 5
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 9
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RSI.i399 = bitcast %union.anon* %2380 to i64*
  %2381 = load i64, i64* %RAX.i397
  %2382 = load i64, i64* %RCX.i398
  %2383 = mul i64 %2382, 4
  %2384 = add i64 %2383, %2381
  %2385 = load i64, i64* %PC.i396
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC.i396
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RSI.i399, align 8
  store %struct.Memory* %loadMem_426c2e, %struct.Memory** %MEMORY
  %loadMem_426c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 7
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RDX.i394 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 15
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %RBP.i395
  %2400 = sub i64 %2399, 16
  %2401 = load i64, i64* %PC.i393
  %2402 = add i64 %2401, 4
  store i64 %2402, i64* %PC.i393
  %2403 = inttoptr i64 %2400 to i64*
  %2404 = load i64, i64* %2403
  store i64 %2404, i64* %RDX.i394, align 8
  store %struct.Memory* %loadMem_426c31, %struct.Memory** %MEMORY
  %loadMem1_426c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %PC.i392
  %2409 = add i64 %2408, 548235
  %2410 = load i64, i64* %PC.i392
  %2411 = add i64 %2410, 5
  %2412 = load i64, i64* %PC.i392
  %2413 = add i64 %2412, 5
  store i64 %2413, i64* %PC.i392
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2415 = load i64, i64* %2414, align 8
  %2416 = add i64 %2415, -8
  %2417 = inttoptr i64 %2416 to i64*
  store i64 %2411, i64* %2417
  store i64 %2416, i64* %2414, align 8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2409, i64* %2418, align 8
  store %struct.Memory* %loadMem1_426c35, %struct.Memory** %MEMORY
  %loadMem2_426c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c35 = load i64, i64* %3
  %call2_426c35 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426c35, %struct.Memory* %loadMem2_426c35)
  store %struct.Memory* %call2_426c35, %struct.Memory** %MEMORY
  %loadMem_426c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 11
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RDI.i391 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %PC.i390
  %2426 = add i64 %2425, 10
  store i64 %2426, i64* %PC.i390
  store i64 ptrtoint (%G__0x4bfe38_type* @G__0x4bfe38 to i64), i64* %RDI.i391, align 8
  store %struct.Memory* %loadMem_426c3a, %struct.Memory** %MEMORY
  %loadMem_426c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 1
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 15
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %2435 to i64*
  %2436 = load i64, i64* %RAX.i388
  %2437 = load i64, i64* %RBP.i389
  %2438 = sub i64 %2437, 20
  %2439 = load i64, i64* %PC.i387
  %2440 = add i64 %2439, 3
  store i64 %2440, i64* %PC.i387
  %2441 = trunc i64 %2436 to i32
  %2442 = inttoptr i64 %2438 to i32*
  %2443 = load i32, i32* %2442
  %2444 = add i32 %2443, %2441
  %2445 = zext i32 %2444 to i64
  store i64 %2445, i64* %RAX.i388, align 8
  %2446 = icmp ult i32 %2444, %2441
  %2447 = icmp ult i32 %2444, %2443
  %2448 = or i1 %2446, %2447
  %2449 = zext i1 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2449, i8* %2450, align 1
  %2451 = and i32 %2444, 255
  %2452 = call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2455, i8* %2456, align 1
  %2457 = xor i32 %2443, %2441
  %2458 = xor i32 %2457, %2444
  %2459 = lshr i32 %2458, 4
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2461, i8* %2462, align 1
  %2463 = icmp eq i32 %2444, 0
  %2464 = zext i1 %2463 to i8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2464, i8* %2465, align 1
  %2466 = lshr i32 %2444, 31
  %2467 = trunc i32 %2466 to i8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2467, i8* %2468, align 1
  %2469 = lshr i32 %2441, 31
  %2470 = lshr i32 %2443, 31
  %2471 = xor i32 %2466, %2469
  %2472 = xor i32 %2466, %2470
  %2473 = add i32 %2471, %2472
  %2474 = icmp eq i32 %2473, 2
  %2475 = zext i1 %2474 to i8
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2475, i8* %2476, align 1
  store %struct.Memory* %loadMem_426c44, %struct.Memory** %MEMORY
  %loadMem_426c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %EAX.i385 = bitcast %union.anon* %2482 to i32*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 15
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %RBP.i386
  %2487 = sub i64 %2486, 20
  %2488 = load i32, i32* %EAX.i385
  %2489 = zext i32 %2488 to i64
  %2490 = load i64, i64* %PC.i384
  %2491 = add i64 %2490, 3
  store i64 %2491, i64* %PC.i384
  %2492 = inttoptr i64 %2487 to i32*
  store i32 %2488, i32* %2492
  store %struct.Memory* %loadMem_426c47, %struct.Memory** %MEMORY
  %loadMem_426c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 5
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i382
  %2500 = add i64 %2499, 8
  store i64 %2500, i64* %PC.i382
  %2501 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %2501, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_426c4a, %struct.Memory** %MEMORY
  %loadMem_426c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 33
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 5
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RCX.i381
  %2509 = load i64, i64* %PC.i380
  %2510 = add i64 %2509, 3
  store i64 %2510, i64* %PC.i380
  %2511 = inttoptr i64 %2508 to i64*
  %2512 = load i64, i64* %2511
  store i64 %2512, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_426c52, %struct.Memory** %MEMORY
  %loadMem_426c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 7
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 15
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RBP.i379
  %2523 = sub i64 %2522, 24
  %2524 = load i64, i64* %PC.i377
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %PC.i377
  %2526 = inttoptr i64 %2523 to i32*
  %2527 = load i32, i32* %2526
  %2528 = sext i32 %2527 to i64
  store i64 %2528, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_426c55, %struct.Memory** %MEMORY
  %loadMem_426c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 5
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 7
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %RCX.i375
  %2539 = load i64, i64* %RDX.i376
  %2540 = mul i64 %2539, 8
  %2541 = add i64 %2540, %2538
  %2542 = load i64, i64* %PC.i374
  %2543 = add i64 %2542, 4
  store i64 %2543, i64* %PC.i374
  %2544 = inttoptr i64 %2541 to i64*
  %2545 = load i64, i64* %2544
  store i64 %2545, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_426c59, %struct.Memory** %MEMORY
  %loadMem_426c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 7
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RDX.i372 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 15
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %RBP.i373
  %2556 = sub i64 %2555, 28
  %2557 = load i64, i64* %PC.i371
  %2558 = add i64 %2557, 4
  store i64 %2558, i64* %PC.i371
  %2559 = inttoptr i64 %2556 to i32*
  %2560 = load i32, i32* %2559
  %2561 = sext i32 %2560 to i64
  store i64 %2561, i64* %RDX.i372, align 8
  store %struct.Memory* %loadMem_426c5d, %struct.Memory** %MEMORY
  %loadMem_426c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 5
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 7
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RDX.i369 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 9
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RSI.i370 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %RCX.i368
  %2575 = load i64, i64* %RDX.i369
  %2576 = mul i64 %2575, 4
  %2577 = add i64 %2576, %2574
  %2578 = load i64, i64* %PC.i367
  %2579 = add i64 %2578, 3
  store i64 %2579, i64* %PC.i367
  %2580 = inttoptr i64 %2577 to i32*
  %2581 = load i32, i32* %2580
  %2582 = zext i32 %2581 to i64
  store i64 %2582, i64* %RSI.i370, align 8
  store %struct.Memory* %loadMem_426c61, %struct.Memory** %MEMORY
  %loadMem_426c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 7
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RDX.i365 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RBP.i366
  %2593 = sub i64 %2592, 16
  %2594 = load i64, i64* %PC.i364
  %2595 = add i64 %2594, 4
  store i64 %2595, i64* %PC.i364
  %2596 = inttoptr i64 %2593 to i64*
  %2597 = load i64, i64* %2596
  store i64 %2597, i64* %RDX.i365, align 8
  store %struct.Memory* %loadMem_426c64, %struct.Memory** %MEMORY
  %loadMem1_426c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %PC.i363
  %2602 = add i64 %2601, 548184
  %2603 = load i64, i64* %PC.i363
  %2604 = add i64 %2603, 5
  %2605 = load i64, i64* %PC.i363
  %2606 = add i64 %2605, 5
  store i64 %2606, i64* %PC.i363
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2608 = load i64, i64* %2607, align 8
  %2609 = add i64 %2608, -8
  %2610 = inttoptr i64 %2609 to i64*
  store i64 %2604, i64* %2610
  store i64 %2609, i64* %2607, align 8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2602, i64* %2611, align 8
  store %struct.Memory* %loadMem1_426c68, %struct.Memory** %MEMORY
  %loadMem2_426c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c68 = load i64, i64* %3
  %call2_426c68 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426c68, %struct.Memory* %loadMem2_426c68)
  store %struct.Memory* %call2_426c68, %struct.Memory** %MEMORY
  %loadMem_426c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 1
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RAX.i361
  %2622 = load i64, i64* %RBP.i362
  %2623 = sub i64 %2622, 20
  %2624 = load i64, i64* %PC.i360
  %2625 = add i64 %2624, 3
  store i64 %2625, i64* %PC.i360
  %2626 = trunc i64 %2621 to i32
  %2627 = inttoptr i64 %2623 to i32*
  %2628 = load i32, i32* %2627
  %2629 = add i32 %2628, %2626
  %2630 = zext i32 %2629 to i64
  store i64 %2630, i64* %RAX.i361, align 8
  %2631 = icmp ult i32 %2629, %2626
  %2632 = icmp ult i32 %2629, %2628
  %2633 = or i1 %2631, %2632
  %2634 = zext i1 %2633 to i8
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2634, i8* %2635, align 1
  %2636 = and i32 %2629, 255
  %2637 = call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2640, i8* %2641, align 1
  %2642 = xor i32 %2628, %2626
  %2643 = xor i32 %2642, %2629
  %2644 = lshr i32 %2643, 4
  %2645 = trunc i32 %2644 to i8
  %2646 = and i8 %2645, 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2646, i8* %2647, align 1
  %2648 = icmp eq i32 %2629, 0
  %2649 = zext i1 %2648 to i8
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2649, i8* %2650, align 1
  %2651 = lshr i32 %2629, 31
  %2652 = trunc i32 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2652, i8* %2653, align 1
  %2654 = lshr i32 %2626, 31
  %2655 = lshr i32 %2628, 31
  %2656 = xor i32 %2651, %2654
  %2657 = xor i32 %2651, %2655
  %2658 = add i32 %2656, %2657
  %2659 = icmp eq i32 %2658, 2
  %2660 = zext i1 %2659 to i8
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2660, i8* %2661, align 1
  store %struct.Memory* %loadMem_426c6d, %struct.Memory** %MEMORY
  %loadMem_426c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 1
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %2667 to i32*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 15
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %2670 to i64*
  %2671 = load i64, i64* %RBP.i359
  %2672 = sub i64 %2671, 20
  %2673 = load i32, i32* %EAX.i358
  %2674 = zext i32 %2673 to i64
  %2675 = load i64, i64* %PC.i357
  %2676 = add i64 %2675, 3
  store i64 %2676, i64* %PC.i357
  %2677 = inttoptr i64 %2672 to i32*
  store i32 %2673, i32* %2677
  store %struct.Memory* %loadMem_426c70, %struct.Memory** %MEMORY
  %loadMem_426c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 15
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %RBP.i356
  %2688 = sub i64 %2687, 28
  %2689 = load i64, i64* %PC.i354
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC.i354
  %2691 = inttoptr i64 %2688 to i32*
  %2692 = load i32, i32* %2691
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_426c73, %struct.Memory** %MEMORY
  %loadMem_426c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 1
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2699 to i64*
  %2700 = load i64, i64* %RAX.i353
  %2701 = load i64, i64* %PC.i352
  %2702 = add i64 %2701, 3
  store i64 %2702, i64* %PC.i352
  %2703 = trunc i64 %2700 to i32
  %2704 = add i32 1, %2703
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RAX.i353, align 8
  %2706 = icmp ult i32 %2704, %2703
  %2707 = icmp ult i32 %2704, 1
  %2708 = or i1 %2706, %2707
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2709, i8* %2710, align 1
  %2711 = and i32 %2704, 255
  %2712 = call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2715, i8* %2716, align 1
  %2717 = xor i64 1, %2700
  %2718 = trunc i64 %2717 to i32
  %2719 = xor i32 %2718, %2704
  %2720 = lshr i32 %2719, 4
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2722, i8* %2723, align 1
  %2724 = icmp eq i32 %2704, 0
  %2725 = zext i1 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2725, i8* %2726, align 1
  %2727 = lshr i32 %2704, 31
  %2728 = trunc i32 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2728, i8* %2729, align 1
  %2730 = lshr i32 %2703, 31
  %2731 = xor i32 %2727, %2730
  %2732 = add i32 %2731, %2727
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2734, i8* %2735, align 1
  store %struct.Memory* %loadMem_426c76, %struct.Memory** %MEMORY
  %loadMem_426c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 1
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %EAX.i350 = bitcast %union.anon* %2741 to i32*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RBP.i351
  %2746 = sub i64 %2745, 28
  %2747 = load i32, i32* %EAX.i350
  %2748 = zext i32 %2747 to i64
  %2749 = load i64, i64* %PC.i349
  %2750 = add i64 %2749, 3
  store i64 %2750, i64* %PC.i349
  %2751 = inttoptr i64 %2746 to i32*
  store i32 %2747, i32* %2751
  store %struct.Memory* %loadMem_426c79, %struct.Memory** %MEMORY
  %loadMem_426c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %PC.i348
  %2756 = add i64 %2755, -121
  %2757 = load i64, i64* %PC.i348
  %2758 = add i64 %2757, 5
  store i64 %2758, i64* %PC.i348
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2756, i64* %2759, align 8
  store %struct.Memory* %loadMem_426c7c, %struct.Memory** %MEMORY
  br label %block_.L_426c03

block_.L_426c81:                                  ; preds = %block_.L_426c03
  %loadMem_426c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %PC.i347
  %2764 = add i64 %2763, 32
  %2765 = load i64, i64* %PC.i347
  %2766 = add i64 %2765, 5
  store i64 %2766, i64* %PC.i347
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2764, i64* %2767, align 8
  store %struct.Memory* %loadMem_426c81, %struct.Memory** %MEMORY
  br label %block_.L_426ca1

block_.L_426c86:                                  ; preds = %block_426bc1
  %loadMem_426c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 11
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RDI.i346 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %PC.i345
  %2775 = add i64 %2774, 10
  store i64 %2775, i64* %PC.i345
  store i64 ptrtoint (%G__0x4bfe11_type* @G__0x4bfe11 to i64), i64* %RDI.i346, align 8
  store %struct.Memory* %loadMem_426c86, %struct.Memory** %MEMORY
  %loadMem_426c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 9
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %ESI.i343 = bitcast %union.anon* %2781 to i32*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 9
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RSI.i344 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RSI.i344
  %2786 = load i32, i32* %ESI.i343
  %2787 = zext i32 %2786 to i64
  %2788 = load i64, i64* %PC.i342
  %2789 = add i64 %2788, 2
  store i64 %2789, i64* %PC.i342
  %2790 = xor i64 %2787, %2785
  %2791 = trunc i64 %2790 to i32
  %2792 = and i64 %2790, 4294967295
  store i64 %2792, i64* %RSI.i344, align 8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2793, align 1
  %2794 = and i32 %2791, 255
  %2795 = call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2798, i8* %2799, align 1
  %2800 = icmp eq i32 %2791, 0
  %2801 = zext i1 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2801, i8* %2802, align 1
  %2803 = lshr i32 %2791, 31
  %2804 = trunc i32 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2804, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2806, align 1
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2807, align 1
  store %struct.Memory* %loadMem_426c90, %struct.Memory** %MEMORY
  %loadMem_426c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 7
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 15
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %2816 to i64*
  %2817 = load i64, i64* %RBP.i341
  %2818 = sub i64 %2817, 16
  %2819 = load i64, i64* %PC.i339
  %2820 = add i64 %2819, 4
  store i64 %2820, i64* %PC.i339
  %2821 = inttoptr i64 %2818 to i64*
  %2822 = load i64, i64* %2821
  store i64 %2822, i64* %RDX.i340, align 8
  store %struct.Memory* %loadMem_426c92, %struct.Memory** %MEMORY
  %loadMem1_426c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2825 to i64*
  %2826 = load i64, i64* %PC.i338
  %2827 = add i64 %2826, 548458
  %2828 = load i64, i64* %PC.i338
  %2829 = add i64 %2828, 5
  %2830 = load i64, i64* %PC.i338
  %2831 = add i64 %2830, 5
  store i64 %2831, i64* %PC.i338
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2833 = load i64, i64* %2832, align 8
  %2834 = add i64 %2833, -8
  %2835 = inttoptr i64 %2834 to i64*
  store i64 %2829, i64* %2835
  store i64 %2834, i64* %2832, align 8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2827, i64* %2836, align 8
  store %struct.Memory* %loadMem1_426c96, %struct.Memory** %MEMORY
  %loadMem2_426c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c96 = load i64, i64* %3
  %call2_426c96 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426c96, %struct.Memory* %loadMem2_426c96)
  store %struct.Memory* %call2_426c96, %struct.Memory** %MEMORY
  %loadMem_426c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 1
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 15
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %RAX.i336
  %2847 = load i64, i64* %RBP.i337
  %2848 = sub i64 %2847, 20
  %2849 = load i64, i64* %PC.i335
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i335
  %2851 = trunc i64 %2846 to i32
  %2852 = inttoptr i64 %2848 to i32*
  %2853 = load i32, i32* %2852
  %2854 = add i32 %2853, %2851
  %2855 = zext i32 %2854 to i64
  store i64 %2855, i64* %RAX.i336, align 8
  %2856 = icmp ult i32 %2854, %2851
  %2857 = icmp ult i32 %2854, %2853
  %2858 = or i1 %2856, %2857
  %2859 = zext i1 %2858 to i8
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2859, i8* %2860, align 1
  %2861 = and i32 %2854, 255
  %2862 = call i32 @llvm.ctpop.i32(i32 %2861)
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = xor i8 %2864, 1
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2865, i8* %2866, align 1
  %2867 = xor i32 %2853, %2851
  %2868 = xor i32 %2867, %2854
  %2869 = lshr i32 %2868, 4
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2871, i8* %2872, align 1
  %2873 = icmp eq i32 %2854, 0
  %2874 = zext i1 %2873 to i8
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2874, i8* %2875, align 1
  %2876 = lshr i32 %2854, 31
  %2877 = trunc i32 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2877, i8* %2878, align 1
  %2879 = lshr i32 %2851, 31
  %2880 = lshr i32 %2853, 31
  %2881 = xor i32 %2876, %2879
  %2882 = xor i32 %2876, %2880
  %2883 = add i32 %2881, %2882
  %2884 = icmp eq i32 %2883, 2
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2885, i8* %2886, align 1
  store %struct.Memory* %loadMem_426c9b, %struct.Memory** %MEMORY
  %loadMem_426c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 1
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %2892 to i32*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 15
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %RBP.i334
  %2897 = sub i64 %2896, 20
  %2898 = load i32, i32* %EAX.i333
  %2899 = zext i32 %2898 to i64
  %2900 = load i64, i64* %PC.i332
  %2901 = add i64 %2900, 3
  store i64 %2901, i64* %PC.i332
  %2902 = inttoptr i64 %2897 to i32*
  store i32 %2898, i32* %2902
  store %struct.Memory* %loadMem_426c9e, %struct.Memory** %MEMORY
  br label %block_.L_426ca1

block_.L_426ca1:                                  ; preds = %block_.L_426c86, %block_.L_426c81
  %loadMem_426ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2905 to i64*
  %2906 = load i64, i64* %PC.i331
  %2907 = add i64 %2906, 5
  %2908 = load i64, i64* %PC.i331
  %2909 = add i64 %2908, 5
  store i64 %2909, i64* %PC.i331
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2907, i64* %2910, align 8
  store %struct.Memory* %loadMem_426ca1, %struct.Memory** %MEMORY
  br label %block_.L_426ca6

block_.L_426ca6:                                  ; preds = %block_.L_426ca1
  %loadMem_426ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 1
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 15
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RBP.i330
  %2921 = sub i64 %2920, 24
  %2922 = load i64, i64* %PC.i328
  %2923 = add i64 %2922, 3
  store i64 %2923, i64* %PC.i328
  %2924 = inttoptr i64 %2921 to i32*
  %2925 = load i32, i32* %2924
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_426ca6, %struct.Memory** %MEMORY
  %loadMem_426ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 1
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %RAX.i327
  %2934 = load i64, i64* %PC.i326
  %2935 = add i64 %2934, 3
  store i64 %2935, i64* %PC.i326
  %2936 = trunc i64 %2933 to i32
  %2937 = add i32 1, %2936
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RAX.i327, align 8
  %2939 = icmp ult i32 %2937, %2936
  %2940 = icmp ult i32 %2937, 1
  %2941 = or i1 %2939, %2940
  %2942 = zext i1 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2942, i8* %2943, align 1
  %2944 = and i32 %2937, 255
  %2945 = call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2948, i8* %2949, align 1
  %2950 = xor i64 1, %2933
  %2951 = trunc i64 %2950 to i32
  %2952 = xor i32 %2951, %2937
  %2953 = lshr i32 %2952, 4
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2955, i8* %2956, align 1
  %2957 = icmp eq i32 %2937, 0
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2958, i8* %2959, align 1
  %2960 = lshr i32 %2937, 31
  %2961 = trunc i32 %2960 to i8
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2961, i8* %2962, align 1
  %2963 = lshr i32 %2936, 31
  %2964 = xor i32 %2960, %2963
  %2965 = add i32 %2964, %2960
  %2966 = icmp eq i32 %2965, 2
  %2967 = zext i1 %2966 to i8
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2967, i8* %2968, align 1
  store %struct.Memory* %loadMem_426ca9, %struct.Memory** %MEMORY
  %loadMem_426cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 1
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %EAX.i324 = bitcast %union.anon* %2974 to i32*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 15
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RBP.i325
  %2979 = sub i64 %2978, 24
  %2980 = load i32, i32* %EAX.i324
  %2981 = zext i32 %2980 to i64
  %2982 = load i64, i64* %PC.i323
  %2983 = add i64 %2982, 3
  store i64 %2983, i64* %PC.i323
  %2984 = inttoptr i64 %2979 to i32*
  store i32 %2980, i32* %2984
  store %struct.Memory* %loadMem_426cac, %struct.Memory** %MEMORY
  %loadMem_426caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %PC.i322
  %2989 = add i64 %2988, -603
  %2990 = load i64, i64* %PC.i322
  %2991 = add i64 %2990, 5
  store i64 %2991, i64* %PC.i322
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2989, i64* %2992, align 8
  store %struct.Memory* %loadMem_426caf, %struct.Memory** %MEMORY
  br label %block_.L_426a54

block_.L_426cb4:                                  ; preds = %block_.L_426a54
  %loadMem_426cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 1
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %PC.i320
  %3000 = add i64 %2999, 8
  store i64 %3000, i64* %PC.i320
  %3001 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3001, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_426cb4, %struct.Memory** %MEMORY
  %loadMem_426cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RAX.i319
  %3009 = add i64 %3008, 24
  %3010 = load i64, i64* %PC.i318
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i318
  %3012 = inttoptr i64 %3009 to i32*
  %3013 = load i32, i32* %3012
  %3014 = sub i32 %3013, 1
  %3015 = icmp ult i32 %3013, 1
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3016, i8* %3017, align 1
  %3018 = and i32 %3014, 255
  %3019 = call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3022, i8* %3023, align 1
  %3024 = xor i32 %3013, 1
  %3025 = xor i32 %3024, %3014
  %3026 = lshr i32 %3025, 4
  %3027 = trunc i32 %3026 to i8
  %3028 = and i8 %3027, 1
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3028, i8* %3029, align 1
  %3030 = icmp eq i32 %3014, 0
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3031, i8* %3032, align 1
  %3033 = lshr i32 %3014, 31
  %3034 = trunc i32 %3033 to i8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3034, i8* %3035, align 1
  %3036 = lshr i32 %3013, 31
  %3037 = xor i32 %3033, %3036
  %3038 = add i32 %3037, %3036
  %3039 = icmp eq i32 %3038, 2
  %3040 = zext i1 %3039 to i8
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3040, i8* %3041, align 1
  store %struct.Memory* %loadMem_426cbc, %struct.Memory** %MEMORY
  %loadMem_426cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3044 to i64*
  %3045 = load i64, i64* %PC.i317
  %3046 = add i64 %3045, 636
  %3047 = load i64, i64* %PC.i317
  %3048 = add i64 %3047, 6
  %3049 = load i64, i64* %PC.i317
  %3050 = add i64 %3049, 6
  store i64 %3050, i64* %PC.i317
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3052 = load i8, i8* %3051, align 1
  %3053 = icmp eq i8 %3052, 0
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %BRANCH_TAKEN, align 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3056 = select i1 %3053, i64 %3046, i64 %3048
  store i64 %3056, i64* %3055, align 8
  store %struct.Memory* %loadMem_426cc0, %struct.Memory** %MEMORY
  %loadBr_426cc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426cc0 = icmp eq i8 %loadBr_426cc0, 1
  br i1 %cmpBr_426cc0, label %block_.L_426f3c, label %block_426cc6

block_426cc6:                                     ; preds = %block_.L_426cb4
  %loadMem_426cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 15
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RBP.i316
  %3064 = sub i64 %3063, 24
  %3065 = load i64, i64* %PC.i315
  %3066 = add i64 %3065, 7
  store i64 %3066, i64* %PC.i315
  %3067 = inttoptr i64 %3064 to i32*
  store i32 0, i32* %3067
  store %struct.Memory* %loadMem_426cc6, %struct.Memory** %MEMORY
  br label %block_.L_426ccd

block_.L_426ccd:                                  ; preds = %block_.L_426f29, %block_426cc6
  %loadMem_426ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 1
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 15
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %3076 to i64*
  %3077 = load i64, i64* %RBP.i314
  %3078 = sub i64 %3077, 24
  %3079 = load i64, i64* %PC.i312
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i312
  %3081 = inttoptr i64 %3078 to i32*
  %3082 = load i32, i32* %3081
  %3083 = zext i32 %3082 to i64
  store i64 %3083, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_426ccd, %struct.Memory** %MEMORY
  %loadMem_426cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 5
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %3089 to i64*
  %3090 = load i64, i64* %PC.i310
  %3091 = add i64 %3090, 8
  store i64 %3091, i64* %PC.i310
  %3092 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3092, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_426cd0, %struct.Memory** %MEMORY
  %loadMem_426cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %EAX.i308 = bitcast %union.anon* %3098 to i32*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 5
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %3101 to i64*
  %3102 = load i32, i32* %EAX.i308
  %3103 = zext i32 %3102 to i64
  %3104 = load i64, i64* %RCX.i309
  %3105 = add i64 %3104, 72004
  %3106 = load i64, i64* %PC.i307
  %3107 = add i64 %3106, 6
  store i64 %3107, i64* %PC.i307
  %3108 = inttoptr i64 %3105 to i32*
  %3109 = load i32, i32* %3108
  %3110 = sub i32 %3102, %3109
  %3111 = icmp ult i32 %3102, %3109
  %3112 = zext i1 %3111 to i8
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3112, i8* %3113, align 1
  %3114 = and i32 %3110, 255
  %3115 = call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3118, i8* %3119, align 1
  %3120 = xor i32 %3109, %3102
  %3121 = xor i32 %3120, %3110
  %3122 = lshr i32 %3121, 4
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3124, i8* %3125, align 1
  %3126 = icmp eq i32 %3110, 0
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i32 %3110, 31
  %3130 = trunc i32 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i32 %3102, 31
  %3133 = lshr i32 %3109, 31
  %3134 = xor i32 %3133, %3132
  %3135 = xor i32 %3129, %3132
  %3136 = add i32 %3135, %3134
  %3137 = icmp eq i32 %3136, 2
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3138, i8* %3139, align 1
  store %struct.Memory* %loadMem_426cd8, %struct.Memory** %MEMORY
  %loadMem_426cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %PC.i306
  %3144 = add i64 %3143, 601
  %3145 = load i64, i64* %PC.i306
  %3146 = add i64 %3145, 6
  %3147 = load i64, i64* %PC.i306
  %3148 = add i64 %3147, 6
  store i64 %3148, i64* %PC.i306
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3150 = load i8, i8* %3149, align 1
  %3151 = icmp ne i8 %3150, 0
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3153 = load i8, i8* %3152, align 1
  %3154 = icmp ne i8 %3153, 0
  %3155 = xor i1 %3151, %3154
  %3156 = xor i1 %3155, true
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %BRANCH_TAKEN, align 1
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3159 = select i1 %3155, i64 %3146, i64 %3144
  store i64 %3159, i64* %3158, align 8
  store %struct.Memory* %loadMem_426cde, %struct.Memory** %MEMORY
  %loadBr_426cde = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426cde = icmp eq i8 %loadBr_426cde, 1
  br i1 %cmpBr_426cde, label %block_.L_426f37, label %block_426ce4

block_426ce4:                                     ; preds = %block_.L_426ccd
  %loadMem_426ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 1
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %PC.i304
  %3167 = add i64 %3166, 5
  store i64 %3167, i64* %PC.i304
  store i64 1, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_426ce4, %struct.Memory** %MEMORY
  %loadMem_426ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 5
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %3173 to i64*
  %3174 = load i64, i64* %PC.i302
  %3175 = add i64 %3174, 8
  store i64 %3175, i64* %PC.i302
  %3176 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %3176, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_426ce9, %struct.Memory** %MEMORY
  %loadMem_426cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RCX.i301
  %3184 = add i64 %3183, 8
  %3185 = load i64, i64* %PC.i300
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i300
  %3187 = inttoptr i64 %3184 to i64*
  %3188 = load i64, i64* %3187
  store i64 %3188, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_426cf1, %struct.Memory** %MEMORY
  %loadMem_426cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 7
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 15
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %3197 to i64*
  %3198 = load i64, i64* %RBP.i299
  %3199 = sub i64 %3198, 24
  %3200 = load i64, i64* %PC.i297
  %3201 = add i64 %3200, 4
  store i64 %3201, i64* %PC.i297
  %3202 = inttoptr i64 %3199 to i32*
  %3203 = load i32, i32* %3202
  %3204 = sext i32 %3203 to i64
  store i64 %3204, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_426cf5, %struct.Memory** %MEMORY
  %loadMem_426cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 5
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 7
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %RCX.i295
  %3215 = load i64, i64* %RDX.i296
  %3216 = mul i64 %3215, 8
  %3217 = add i64 %3216, %3214
  %3218 = load i64, i64* %PC.i294
  %3219 = add i64 %3218, 4
  store i64 %3219, i64* %PC.i294
  %3220 = inttoptr i64 %3217 to i64*
  %3221 = load i64, i64* %3220
  store i64 %3221, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_426cf9, %struct.Memory** %MEMORY
  %loadMem_426cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 33
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 5
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 9
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RSI.i293 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RCX.i292
  %3232 = load i64, i64* %PC.i291
  %3233 = add i64 %3232, 2
  store i64 %3233, i64* %PC.i291
  %3234 = inttoptr i64 %3231 to i32*
  %3235 = load i32, i32* %3234
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %RSI.i293, align 8
  store %struct.Memory* %loadMem_426cfd, %struct.Memory** %MEMORY
  %loadMem_426cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 5
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %PC.i289
  %3244 = add i64 %3243, 7
  store i64 %3244, i64* %PC.i289
  %3245 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %3246 = zext i32 %3245 to i64
  store i64 %3246, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_426cff, %struct.Memory** %MEMORY
  %loadMem_426d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 5
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %3253 = bitcast %union.anon* %3252 to %struct.anon.2*
  %CL.i286 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3253, i32 0, i32 0
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 1
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %RAX.i287
  %3258 = load i8, i8* %CL.i286
  %3259 = zext i8 %3258 to i64
  %3260 = load i64, i64* %PC.i285
  %3261 = add i64 %3260, 2
  store i64 %3261, i64* %PC.i285
  %3262 = trunc i64 %3259 to i5
  switch i5 %3262, label %3269 [
    i5 0, label %routine_shll__cl___eax.exit288
    i5 1, label %3263
  ]

; <label>:3263:                                   ; preds = %block_426ce4
  %3264 = trunc i64 %3257 to i32
  %3265 = shl i32 %3264, 1
  %3266 = icmp slt i32 %3264, 0
  %3267 = icmp slt i32 %3265, 0
  %3268 = xor i1 %3266, %3267
  br label %3278

; <label>:3269:                                   ; preds = %block_426ce4
  %3270 = and i64 %3259, 31
  %3271 = add i64 %3270, 4294967295
  %3272 = and i64 %3257, 4294967295
  %3273 = and i64 %3271, 4294967295
  %3274 = shl i64 %3272, %3273
  %3275 = trunc i64 %3274 to i32
  %3276 = icmp slt i32 %3275, 0
  %3277 = shl i32 %3275, 1
  br label %3278

; <label>:3278:                                   ; preds = %3269, %3263
  %3279 = phi i1 [ %3266, %3263 ], [ %3276, %3269 ]
  %3280 = phi i1 [ %3268, %3263 ], [ false, %3269 ]
  %3281 = phi i32 [ %3265, %3263 ], [ %3277, %3269 ]
  %3282 = zext i32 %3281 to i64
  store i64 %3282, i64* %RAX.i287, align 8
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3284 = zext i1 %3279 to i8
  store i8 %3284, i8* %3283, align 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3286 = and i32 %3281, 254
  %3287 = call i32 @llvm.ctpop.i32(i32 %3286)
  %3288 = trunc i32 %3287 to i8
  %3289 = and i8 %3288, 1
  %3290 = xor i8 %3289, 1
  store i8 %3290, i8* %3285, align 1
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3291, align 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3293 = icmp eq i32 %3281, 0
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %3292, align 1
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3296 = lshr i32 %3281, 31
  %3297 = trunc i32 %3296 to i8
  store i8 %3297, i8* %3295, align 1
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3299 = zext i1 %3280 to i8
  store i8 %3299, i8* %3298, align 1
  br label %routine_shll__cl___eax.exit288

routine_shll__cl___eax.exit288:                   ; preds = %block_426ce4, %3278
  store %struct.Memory* %loadMem_426d06, %struct.Memory** %MEMORY
  %loadMem_426d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 1
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %3305 to i32*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 9
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %ESI.i284 = bitcast %union.anon* %3308 to i32*
  %3309 = load i32, i32* %ESI.i284
  %3310 = zext i32 %3309 to i64
  %3311 = load i32, i32* %EAX.i283
  %3312 = zext i32 %3311 to i64
  %3313 = load i64, i64* %PC.i282
  %3314 = add i64 %3313, 2
  store i64 %3314, i64* %PC.i282
  %3315 = sub i32 %3309, %3311
  %3316 = icmp ult i32 %3309, %3311
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3317, i8* %3318, align 1
  %3319 = and i32 %3315, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = xor i64 %3312, %3310
  %3326 = trunc i64 %3325 to i32
  %3327 = xor i32 %3326, %3315
  %3328 = lshr i32 %3327, 4
  %3329 = trunc i32 %3328 to i8
  %3330 = and i8 %3329, 1
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3330, i8* %3331, align 1
  %3332 = icmp eq i32 %3315, 0
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3333, i8* %3334, align 1
  %3335 = lshr i32 %3315, 31
  %3336 = trunc i32 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3336, i8* %3337, align 1
  %3338 = lshr i32 %3309, 31
  %3339 = lshr i32 %3311, 31
  %3340 = xor i32 %3339, %3338
  %3341 = xor i32 %3335, %3338
  %3342 = add i32 %3341, %3340
  %3343 = icmp eq i32 %3342, 2
  %3344 = zext i1 %3343 to i8
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3344, i8* %3345, align 1
  store %struct.Memory* %loadMem_426d08, %struct.Memory** %MEMORY
  %loadMem_426d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %PC.i281
  %3350 = add i64 %3349, 35
  %3351 = load i64, i64* %PC.i281
  %3352 = add i64 %3351, 6
  %3353 = load i64, i64* %PC.i281
  %3354 = add i64 %3353, 6
  store i64 %3354, i64* %PC.i281
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3356 = load i8, i8* %3355, align 1
  %3357 = icmp eq i8 %3356, 0
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %BRANCH_TAKEN, align 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3360 = select i1 %3357, i64 %3350, i64 %3352
  store i64 %3360, i64* %3359, align 8
  store %struct.Memory* %loadMem_426d0a, %struct.Memory** %MEMORY
  %loadBr_426d0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d0a = icmp eq i8 %loadBr_426d0a, 1
  br i1 %cmpBr_426d0a, label %block_.L_426d2d, label %block_426d10

block_426d10:                                     ; preds = %routine_shll__cl___eax.exit288
  %loadMem_426d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 1
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %3366 to i64*
  %3367 = load i64, i64* %PC.i279
  %3368 = add i64 %3367, 8
  store i64 %3368, i64* %PC.i279
  %3369 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %3369, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_426d10, %struct.Memory** %MEMORY
  %loadMem_426d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 1
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RAX.i278
  %3377 = add i64 %3376, 8
  %3378 = load i64, i64* %PC.i277
  %3379 = add i64 %3378, 4
  store i64 %3379, i64* %PC.i277
  %3380 = inttoptr i64 %3377 to i64*
  %3381 = load i64, i64* %3380
  store i64 %3381, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_426d18, %struct.Memory** %MEMORY
  %loadMem_426d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 5
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 15
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RBP.i276
  %3392 = sub i64 %3391, 24
  %3393 = load i64, i64* %PC.i274
  %3394 = add i64 %3393, 4
  store i64 %3394, i64* %PC.i274
  %3395 = inttoptr i64 %3392 to i32*
  %3396 = load i32, i32* %3395
  %3397 = sext i32 %3396 to i64
  store i64 %3397, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_426d1c, %struct.Memory** %MEMORY
  %loadMem_426d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 1
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 5
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RAX.i272
  %3408 = load i64, i64* %RCX.i273
  %3409 = mul i64 %3408, 8
  %3410 = add i64 %3409, %3407
  %3411 = load i64, i64* %PC.i271
  %3412 = add i64 %3411, 4
  store i64 %3412, i64* %PC.i271
  %3413 = inttoptr i64 %3410 to i64*
  %3414 = load i64, i64* %3413
  store i64 %3414, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_426d20, %struct.Memory** %MEMORY
  %loadMem_426d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 1
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %RAX.i270
  %3422 = load i64, i64* %PC.i269
  %3423 = add i64 %3422, 3
  store i64 %3423, i64* %PC.i269
  %3424 = inttoptr i64 %3421 to i32*
  %3425 = load i32, i32* %3424
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3426, align 1
  %3427 = and i32 %3425, 255
  %3428 = call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3431, i8* %3432, align 1
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3433, align 1
  %3434 = icmp eq i32 %3425, 0
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3435, i8* %3436, align 1
  %3437 = lshr i32 %3425, 31
  %3438 = trunc i32 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3438, i8* %3439, align 1
  %3440 = lshr i32 %3425, 31
  %3441 = xor i32 %3437, %3440
  %3442 = add i32 %3441, %3440
  %3443 = icmp eq i32 %3442, 2
  %3444 = zext i1 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3444, i8* %3445, align 1
  store %struct.Memory* %loadMem_426d24, %struct.Memory** %MEMORY
  %loadMem_426d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3448 to i64*
  %3449 = load i64, i64* %PC.i268
  %3450 = add i64 %3449, 135
  %3451 = load i64, i64* %PC.i268
  %3452 = add i64 %3451, 6
  %3453 = load i64, i64* %PC.i268
  %3454 = add i64 %3453, 6
  store i64 %3454, i64* %PC.i268
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3456 = load i8, i8* %3455, align 1
  store i8 %3456, i8* %BRANCH_TAKEN, align 1
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3458 = icmp ne i8 %3456, 0
  %3459 = select i1 %3458, i64 %3450, i64 %3452
  store i64 %3459, i64* %3457, align 8
  store %struct.Memory* %loadMem_426d27, %struct.Memory** %MEMORY
  %loadBr_426d27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d27 = icmp eq i8 %loadBr_426d27, 1
  br i1 %cmpBr_426d27, label %block_.L_426dae, label %block_.L_426d2d

block_.L_426d2d:                                  ; preds = %block_426d10, %routine_shll__cl___eax.exit288
  %loadMem_426d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 11
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RDI.i267 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %PC.i266
  %3467 = add i64 %3466, 10
  store i64 %3467, i64* %PC.i266
  store i64 ptrtoint (%G__0x4bfe49_type* @G__0x4bfe49 to i64), i64* %RDI.i267, align 8
  store %struct.Memory* %loadMem_426d2d, %struct.Memory** %MEMORY
  %loadMem_426d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 9
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %PC.i264
  %3475 = add i64 %3474, 5
  store i64 %3475, i64* %PC.i264
  store i64 1, i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_426d37, %struct.Memory** %MEMORY
  %loadMem_426d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 7
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %RBP.i263
  %3486 = sub i64 %3485, 16
  %3487 = load i64, i64* %PC.i261
  %3488 = add i64 %3487, 4
  store i64 %3488, i64* %PC.i261
  %3489 = inttoptr i64 %3486 to i64*
  %3490 = load i64, i64* %3489
  store i64 %3490, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_426d3c, %struct.Memory** %MEMORY
  %loadMem1_426d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %PC.i260
  %3495 = add i64 %3494, 548288
  %3496 = load i64, i64* %PC.i260
  %3497 = add i64 %3496, 5
  %3498 = load i64, i64* %PC.i260
  %3499 = add i64 %3498, 5
  store i64 %3499, i64* %PC.i260
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3501 = load i64, i64* %3500, align 8
  %3502 = add i64 %3501, -8
  %3503 = inttoptr i64 %3502 to i64*
  store i64 %3497, i64* %3503
  store i64 %3502, i64* %3500, align 8
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3495, i64* %3504, align 8
  store %struct.Memory* %loadMem1_426d40, %struct.Memory** %MEMORY
  %loadMem2_426d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d40 = load i64, i64* %3
  %call2_426d40 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426d40, %struct.Memory* %loadMem2_426d40)
  store %struct.Memory* %call2_426d40, %struct.Memory** %MEMORY
  %loadMem_426d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 11
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %3510 to i64*
  %3511 = load i64, i64* %PC.i258
  %3512 = add i64 %3511, 10
  store i64 %3512, i64* %PC.i258
  store i64 ptrtoint (%G__0x4bfe61_type* @G__0x4bfe61 to i64), i64* %RDI.i259, align 8
  store %struct.Memory* %loadMem_426d45, %struct.Memory** %MEMORY
  %loadMem_426d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 1
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 15
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %RAX.i256
  %3523 = load i64, i64* %RBP.i257
  %3524 = sub i64 %3523, 20
  %3525 = load i64, i64* %PC.i255
  %3526 = add i64 %3525, 3
  store i64 %3526, i64* %PC.i255
  %3527 = trunc i64 %3522 to i32
  %3528 = inttoptr i64 %3524 to i32*
  %3529 = load i32, i32* %3528
  %3530 = add i32 %3529, %3527
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RAX.i256, align 8
  %3532 = icmp ult i32 %3530, %3527
  %3533 = icmp ult i32 %3530, %3529
  %3534 = or i1 %3532, %3533
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3535, i8* %3536, align 1
  %3537 = and i32 %3530, 255
  %3538 = call i32 @llvm.ctpop.i32(i32 %3537)
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  %3541 = xor i8 %3540, 1
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3541, i8* %3542, align 1
  %3543 = xor i32 %3529, %3527
  %3544 = xor i32 %3543, %3530
  %3545 = lshr i32 %3544, 4
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3547, i8* %3548, align 1
  %3549 = icmp eq i32 %3530, 0
  %3550 = zext i1 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3550, i8* %3551, align 1
  %3552 = lshr i32 %3530, 31
  %3553 = trunc i32 %3552 to i8
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3553, i8* %3554, align 1
  %3555 = lshr i32 %3527, 31
  %3556 = lshr i32 %3529, 31
  %3557 = xor i32 %3552, %3555
  %3558 = xor i32 %3552, %3556
  %3559 = add i32 %3557, %3558
  %3560 = icmp eq i32 %3559, 2
  %3561 = zext i1 %3560 to i8
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3561, i8* %3562, align 1
  store %struct.Memory* %loadMem_426d4f, %struct.Memory** %MEMORY
  %loadMem_426d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 33
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3565 to i64*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 1
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %EAX.i253 = bitcast %union.anon* %3568 to i32*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 15
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RBP.i254
  %3573 = sub i64 %3572, 20
  %3574 = load i32, i32* %EAX.i253
  %3575 = zext i32 %3574 to i64
  %3576 = load i64, i64* %PC.i252
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC.i252
  %3578 = inttoptr i64 %3573 to i32*
  store i32 %3574, i32* %3578
  store %struct.Memory* %loadMem_426d52, %struct.Memory** %MEMORY
  %loadMem_426d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 7
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %PC.i250
  %3586 = add i64 %3585, 8
  store i64 %3586, i64* %PC.i250
  %3587 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %3587, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_426d55, %struct.Memory** %MEMORY
  %loadMem_426d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 33
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 7
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RDX.i249
  %3595 = add i64 %3594, 8
  %3596 = load i64, i64* %PC.i248
  %3597 = add i64 %3596, 4
  store i64 %3597, i64* %PC.i248
  %3598 = inttoptr i64 %3595 to i64*
  %3599 = load i64, i64* %3598
  store i64 %3599, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_426d5d, %struct.Memory** %MEMORY
  %loadMem_426d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 5
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 15
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %3608 to i64*
  %3609 = load i64, i64* %RBP.i247
  %3610 = sub i64 %3609, 24
  %3611 = load i64, i64* %PC.i245
  %3612 = add i64 %3611, 4
  store i64 %3612, i64* %PC.i245
  %3613 = inttoptr i64 %3610 to i32*
  %3614 = load i32, i32* %3613
  %3615 = sext i32 %3614 to i64
  store i64 %3615, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_426d61, %struct.Memory** %MEMORY
  %loadMem_426d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 33
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 5
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 7
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %3624 to i64*
  %3625 = load i64, i64* %RDX.i244
  %3626 = load i64, i64* %RCX.i243
  %3627 = mul i64 %3626, 8
  %3628 = add i64 %3627, %3625
  %3629 = load i64, i64* %PC.i242
  %3630 = add i64 %3629, 4
  store i64 %3630, i64* %PC.i242
  %3631 = inttoptr i64 %3628 to i64*
  %3632 = load i64, i64* %3631
  store i64 %3632, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_426d65, %struct.Memory** %MEMORY
  %loadMem_426d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 5
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 9
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %RCX.i240
  %3643 = load i64, i64* %PC.i239
  %3644 = add i64 %3643, 2
  store i64 %3644, i64* %PC.i239
  %3645 = inttoptr i64 %3642 to i32*
  %3646 = load i32, i32* %3645
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_426d69, %struct.Memory** %MEMORY
  %loadMem_426d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 33
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3650 to i64*
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 7
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 15
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3656 to i64*
  %3657 = load i64, i64* %RBP.i238
  %3658 = sub i64 %3657, 16
  %3659 = load i64, i64* %PC.i236
  %3660 = add i64 %3659, 4
  store i64 %3660, i64* %PC.i236
  %3661 = inttoptr i64 %3658 to i64*
  %3662 = load i64, i64* %3661
  store i64 %3662, i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_426d6b, %struct.Memory** %MEMORY
  %loadMem1_426d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %PC.i235
  %3667 = add i64 %3666, 547921
  %3668 = load i64, i64* %PC.i235
  %3669 = add i64 %3668, 5
  %3670 = load i64, i64* %PC.i235
  %3671 = add i64 %3670, 5
  store i64 %3671, i64* %PC.i235
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3673 = load i64, i64* %3672, align 8
  %3674 = add i64 %3673, -8
  %3675 = inttoptr i64 %3674 to i64*
  store i64 %3669, i64* %3675
  store i64 %3674, i64* %3672, align 8
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3667, i64* %3676, align 8
  store %struct.Memory* %loadMem1_426d6f, %struct.Memory** %MEMORY
  %loadMem2_426d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d6f = load i64, i64* %3
  %call2_426d6f = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426d6f, %struct.Memory* %loadMem2_426d6f)
  store %struct.Memory* %call2_426d6f, %struct.Memory** %MEMORY
  %loadMem_426d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 11
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RDI.i234 = bitcast %union.anon* %3682 to i64*
  %3683 = load i64, i64* %PC.i233
  %3684 = add i64 %3683, 10
  store i64 %3684, i64* %PC.i233
  store i64 ptrtoint (%G__0x4bfe74_type* @G__0x4bfe74 to i64), i64* %RDI.i234, align 8
  store %struct.Memory* %loadMem_426d74, %struct.Memory** %MEMORY
  %loadMem_426d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 15
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RAX.i231
  %3695 = load i64, i64* %RBP.i232
  %3696 = sub i64 %3695, 20
  %3697 = load i64, i64* %PC.i230
  %3698 = add i64 %3697, 3
  store i64 %3698, i64* %PC.i230
  %3699 = trunc i64 %3694 to i32
  %3700 = inttoptr i64 %3696 to i32*
  %3701 = load i32, i32* %3700
  %3702 = add i32 %3701, %3699
  %3703 = zext i32 %3702 to i64
  store i64 %3703, i64* %RAX.i231, align 8
  %3704 = icmp ult i32 %3702, %3699
  %3705 = icmp ult i32 %3702, %3701
  %3706 = or i1 %3704, %3705
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3707, i8* %3708, align 1
  %3709 = and i32 %3702, 255
  %3710 = call i32 @llvm.ctpop.i32(i32 %3709)
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = xor i8 %3712, 1
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3713, i8* %3714, align 1
  %3715 = xor i32 %3701, %3699
  %3716 = xor i32 %3715, %3702
  %3717 = lshr i32 %3716, 4
  %3718 = trunc i32 %3717 to i8
  %3719 = and i8 %3718, 1
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3719, i8* %3720, align 1
  %3721 = icmp eq i32 %3702, 0
  %3722 = zext i1 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3722, i8* %3723, align 1
  %3724 = lshr i32 %3702, 31
  %3725 = trunc i32 %3724 to i8
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3725, i8* %3726, align 1
  %3727 = lshr i32 %3699, 31
  %3728 = lshr i32 %3701, 31
  %3729 = xor i32 %3724, %3727
  %3730 = xor i32 %3724, %3728
  %3731 = add i32 %3729, %3730
  %3732 = icmp eq i32 %3731, 2
  %3733 = zext i1 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3733, i8* %3734, align 1
  store %struct.Memory* %loadMem_426d7e, %struct.Memory** %MEMORY
  %loadMem_426d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 1
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %3740 to i32*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 15
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RBP.i229
  %3745 = sub i64 %3744, 20
  %3746 = load i32, i32* %EAX.i228
  %3747 = zext i32 %3746 to i64
  %3748 = load i64, i64* %PC.i227
  %3749 = add i64 %3748, 3
  store i64 %3749, i64* %PC.i227
  %3750 = inttoptr i64 %3745 to i32*
  store i32 %3746, i32* %3750
  store %struct.Memory* %loadMem_426d81, %struct.Memory** %MEMORY
  %loadMem_426d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 5
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %PC.i225
  %3758 = add i64 %3757, 8
  store i64 %3758, i64* %PC.i225
  %3759 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %3759, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_426d84, %struct.Memory** %MEMORY
  %loadMem_426d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 33
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 5
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %3765 to i64*
  %3766 = load i64, i64* %RCX.i224
  %3767 = add i64 %3766, 8
  %3768 = load i64, i64* %PC.i223
  %3769 = add i64 %3768, 4
  store i64 %3769, i64* %PC.i223
  %3770 = inttoptr i64 %3767 to i64*
  %3771 = load i64, i64* %3770
  store i64 %3771, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_426d8c, %struct.Memory** %MEMORY
  %loadMem_426d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 33
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 7
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 15
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %RBP.i222
  %3782 = sub i64 %3781, 24
  %3783 = load i64, i64* %PC.i220
  %3784 = add i64 %3783, 4
  store i64 %3784, i64* %PC.i220
  %3785 = inttoptr i64 %3782 to i32*
  %3786 = load i32, i32* %3785
  %3787 = sext i32 %3786 to i64
  store i64 %3787, i64* %RDX.i221, align 8
  store %struct.Memory* %loadMem_426d90, %struct.Memory** %MEMORY
  %loadMem_426d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 5
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 7
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RDX.i219 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %RCX.i218
  %3798 = load i64, i64* %RDX.i219
  %3799 = mul i64 %3798, 8
  %3800 = add i64 %3799, %3797
  %3801 = load i64, i64* %PC.i217
  %3802 = add i64 %3801, 4
  store i64 %3802, i64* %PC.i217
  %3803 = inttoptr i64 %3800 to i64*
  %3804 = load i64, i64* %3803
  store i64 %3804, i64* %RCX.i218, align 8
  store %struct.Memory* %loadMem_426d94, %struct.Memory** %MEMORY
  %loadMem_426d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 5
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 9
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RSI.i216 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %RCX.i215
  %3815 = load i64, i64* %PC.i214
  %3816 = add i64 %3815, 2
  store i64 %3816, i64* %PC.i214
  %3817 = inttoptr i64 %3814 to i32*
  %3818 = load i32, i32* %3817
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RSI.i216, align 8
  store %struct.Memory* %loadMem_426d98, %struct.Memory** %MEMORY
  %loadMem_426d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 7
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 15
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %RBP.i213
  %3830 = sub i64 %3829, 16
  %3831 = load i64, i64* %PC.i211
  %3832 = add i64 %3831, 4
  store i64 %3832, i64* %PC.i211
  %3833 = inttoptr i64 %3830 to i64*
  %3834 = load i64, i64* %3833
  store i64 %3834, i64* %RDX.i212, align 8
  store %struct.Memory* %loadMem_426d9a, %struct.Memory** %MEMORY
  %loadMem1_426d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %PC.i210
  %3839 = add i64 %3838, 547874
  %3840 = load i64, i64* %PC.i210
  %3841 = add i64 %3840, 5
  %3842 = load i64, i64* %PC.i210
  %3843 = add i64 %3842, 5
  store i64 %3843, i64* %PC.i210
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3845 = load i64, i64* %3844, align 8
  %3846 = add i64 %3845, -8
  %3847 = inttoptr i64 %3846 to i64*
  store i64 %3841, i64* %3847
  store i64 %3846, i64* %3844, align 8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3839, i64* %3848, align 8
  store %struct.Memory* %loadMem1_426d9e, %struct.Memory** %MEMORY
  %loadMem2_426d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d9e = load i64, i64* %3
  %call2_426d9e = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426d9e, %struct.Memory* %loadMem2_426d9e)
  store %struct.Memory* %call2_426d9e, %struct.Memory** %MEMORY
  %loadMem_426da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 15
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RAX.i208
  %3859 = load i64, i64* %RBP.i209
  %3860 = sub i64 %3859, 20
  %3861 = load i64, i64* %PC.i207
  %3862 = add i64 %3861, 3
  store i64 %3862, i64* %PC.i207
  %3863 = trunc i64 %3858 to i32
  %3864 = inttoptr i64 %3860 to i32*
  %3865 = load i32, i32* %3864
  %3866 = add i32 %3865, %3863
  %3867 = zext i32 %3866 to i64
  store i64 %3867, i64* %RAX.i208, align 8
  %3868 = icmp ult i32 %3866, %3863
  %3869 = icmp ult i32 %3866, %3865
  %3870 = or i1 %3868, %3869
  %3871 = zext i1 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3871, i8* %3872, align 1
  %3873 = and i32 %3866, 255
  %3874 = call i32 @llvm.ctpop.i32(i32 %3873)
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  %3877 = xor i8 %3876, 1
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3877, i8* %3878, align 1
  %3879 = xor i32 %3865, %3863
  %3880 = xor i32 %3879, %3866
  %3881 = lshr i32 %3880, 4
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3883, i8* %3884, align 1
  %3885 = icmp eq i32 %3866, 0
  %3886 = zext i1 %3885 to i8
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3886, i8* %3887, align 1
  %3888 = lshr i32 %3866, 31
  %3889 = trunc i32 %3888 to i8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3889, i8* %3890, align 1
  %3891 = lshr i32 %3863, 31
  %3892 = lshr i32 %3865, 31
  %3893 = xor i32 %3888, %3891
  %3894 = xor i32 %3888, %3892
  %3895 = add i32 %3893, %3894
  %3896 = icmp eq i32 %3895, 2
  %3897 = zext i1 %3896 to i8
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3897, i8* %3898, align 1
  store %struct.Memory* %loadMem_426da3, %struct.Memory** %MEMORY
  %loadMem_426da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 1
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %3904 to i32*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 15
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %RBP.i206
  %3909 = sub i64 %3908, 20
  %3910 = load i32, i32* %EAX.i205
  %3911 = zext i32 %3910 to i64
  %3912 = load i64, i64* %PC.i204
  %3913 = add i64 %3912, 3
  store i64 %3913, i64* %PC.i204
  %3914 = inttoptr i64 %3909 to i32*
  store i32 %3910, i32* %3914
  store %struct.Memory* %loadMem_426da6, %struct.Memory** %MEMORY
  %loadMem_426da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 33
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3917 to i64*
  %3918 = load i64, i64* %PC.i203
  %3919 = add i64 %3918, 32
  %3920 = load i64, i64* %PC.i203
  %3921 = add i64 %3920, 5
  store i64 %3921, i64* %PC.i203
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3919, i64* %3922, align 8
  store %struct.Memory* %loadMem_426da9, %struct.Memory** %MEMORY
  br label %block_.L_426dc9

block_.L_426dae:                                  ; preds = %block_426d10
  %loadMem_426dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 11
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RDI.i202 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %PC.i201
  %3930 = add i64 %3929, 10
  store i64 %3930, i64* %PC.i201
  store i64 ptrtoint (%G__0x4bfe49_type* @G__0x4bfe49 to i64), i64* %RDI.i202, align 8
  store %struct.Memory* %loadMem_426dae, %struct.Memory** %MEMORY
  %loadMem_426db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 9
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %ESI.i199 = bitcast %union.anon* %3936 to i32*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 9
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RSI.i200 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %RSI.i200
  %3941 = load i32, i32* %ESI.i199
  %3942 = zext i32 %3941 to i64
  %3943 = load i64, i64* %PC.i198
  %3944 = add i64 %3943, 2
  store i64 %3944, i64* %PC.i198
  %3945 = xor i64 %3942, %3940
  %3946 = trunc i64 %3945 to i32
  %3947 = and i64 %3945, 4294967295
  store i64 %3947, i64* %RSI.i200, align 8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3948, align 1
  %3949 = and i32 %3946, 255
  %3950 = call i32 @llvm.ctpop.i32(i32 %3949)
  %3951 = trunc i32 %3950 to i8
  %3952 = and i8 %3951, 1
  %3953 = xor i8 %3952, 1
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3953, i8* %3954, align 1
  %3955 = icmp eq i32 %3946, 0
  %3956 = zext i1 %3955 to i8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3956, i8* %3957, align 1
  %3958 = lshr i32 %3946, 31
  %3959 = trunc i32 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3959, i8* %3960, align 1
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3961, align 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3962, align 1
  store %struct.Memory* %loadMem_426db8, %struct.Memory** %MEMORY
  %loadMem_426dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 33
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 7
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %RDX.i196 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 15
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3971 to i64*
  %3972 = load i64, i64* %RBP.i197
  %3973 = sub i64 %3972, 16
  %3974 = load i64, i64* %PC.i195
  %3975 = add i64 %3974, 4
  store i64 %3975, i64* %PC.i195
  %3976 = inttoptr i64 %3973 to i64*
  %3977 = load i64, i64* %3976
  store i64 %3977, i64* %RDX.i196, align 8
  store %struct.Memory* %loadMem_426dba, %struct.Memory** %MEMORY
  %loadMem1_426dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %PC.i194
  %3982 = add i64 %3981, 548162
  %3983 = load i64, i64* %PC.i194
  %3984 = add i64 %3983, 5
  %3985 = load i64, i64* %PC.i194
  %3986 = add i64 %3985, 5
  store i64 %3986, i64* %PC.i194
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3988 = load i64, i64* %3987, align 8
  %3989 = add i64 %3988, -8
  %3990 = inttoptr i64 %3989 to i64*
  store i64 %3984, i64* %3990
  store i64 %3989, i64* %3987, align 8
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3982, i64* %3991, align 8
  store %struct.Memory* %loadMem1_426dbe, %struct.Memory** %MEMORY
  %loadMem2_426dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426dbe = load i64, i64* %3
  %call2_426dbe = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426dbe, %struct.Memory* %loadMem2_426dbe)
  store %struct.Memory* %call2_426dbe, %struct.Memory** %MEMORY
  %loadMem_426dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 1
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %3997 to i64*
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 15
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %4000 to i64*
  %4001 = load i64, i64* %RAX.i192
  %4002 = load i64, i64* %RBP.i193
  %4003 = sub i64 %4002, 20
  %4004 = load i64, i64* %PC.i191
  %4005 = add i64 %4004, 3
  store i64 %4005, i64* %PC.i191
  %4006 = trunc i64 %4001 to i32
  %4007 = inttoptr i64 %4003 to i32*
  %4008 = load i32, i32* %4007
  %4009 = add i32 %4008, %4006
  %4010 = zext i32 %4009 to i64
  store i64 %4010, i64* %RAX.i192, align 8
  %4011 = icmp ult i32 %4009, %4006
  %4012 = icmp ult i32 %4009, %4008
  %4013 = or i1 %4011, %4012
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4014, i8* %4015, align 1
  %4016 = and i32 %4009, 255
  %4017 = call i32 @llvm.ctpop.i32(i32 %4016)
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4020, i8* %4021, align 1
  %4022 = xor i32 %4008, %4006
  %4023 = xor i32 %4022, %4009
  %4024 = lshr i32 %4023, 4
  %4025 = trunc i32 %4024 to i8
  %4026 = and i8 %4025, 1
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4026, i8* %4027, align 1
  %4028 = icmp eq i32 %4009, 0
  %4029 = zext i1 %4028 to i8
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4029, i8* %4030, align 1
  %4031 = lshr i32 %4009, 31
  %4032 = trunc i32 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4032, i8* %4033, align 1
  %4034 = lshr i32 %4006, 31
  %4035 = lshr i32 %4008, 31
  %4036 = xor i32 %4031, %4034
  %4037 = xor i32 %4031, %4035
  %4038 = add i32 %4036, %4037
  %4039 = icmp eq i32 %4038, 2
  %4040 = zext i1 %4039 to i8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4040, i8* %4041, align 1
  store %struct.Memory* %loadMem_426dc3, %struct.Memory** %MEMORY
  %loadMem_426dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 1
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %4047 to i32*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i190
  %4052 = sub i64 %4051, 20
  %4053 = load i32, i32* %EAX.i189
  %4054 = zext i32 %4053 to i64
  %4055 = load i64, i64* %PC.i188
  %4056 = add i64 %4055, 3
  store i64 %4056, i64* %PC.i188
  %4057 = inttoptr i64 %4052 to i32*
  store i32 %4053, i32* %4057
  store %struct.Memory* %loadMem_426dc6, %struct.Memory** %MEMORY
  br label %block_.L_426dc9

block_.L_426dc9:                                  ; preds = %block_.L_426dae, %block_.L_426d2d
  %loadMem_426dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %PC.i186
  %4065 = add i64 %4064, 5
  store i64 %4065, i64* %PC.i186
  store i64 1, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_426dc9, %struct.Memory** %MEMORY
  %loadMem_426dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 5
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %PC.i184
  %4073 = add i64 %4072, 8
  store i64 %4073, i64* %PC.i184
  %4074 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %4074, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_426dce, %struct.Memory** %MEMORY
  %loadMem_426dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4077 to i64*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 5
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %4080 to i64*
  %4081 = load i64, i64* %RCX.i183
  %4082 = add i64 %4081, 8
  %4083 = load i64, i64* %PC.i182
  %4084 = add i64 %4083, 4
  store i64 %4084, i64* %PC.i182
  %4085 = inttoptr i64 %4082 to i64*
  %4086 = load i64, i64* %4085
  store i64 %4086, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_426dd6, %struct.Memory** %MEMORY
  %loadMem_426dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 7
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 15
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RBP.i181
  %4097 = sub i64 %4096, 24
  %4098 = load i64, i64* %PC.i179
  %4099 = add i64 %4098, 4
  store i64 %4099, i64* %PC.i179
  %4100 = inttoptr i64 %4097 to i32*
  %4101 = load i32, i32* %4100
  %4102 = sext i32 %4101 to i64
  store i64 %4102, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_426dda, %struct.Memory** %MEMORY
  %loadMem_426dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 5
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 7
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RCX.i177
  %4113 = load i64, i64* %RDX.i178
  %4114 = mul i64 %4113, 8
  %4115 = add i64 %4114, %4112
  %4116 = load i64, i64* %PC.i176
  %4117 = add i64 %4116, 4
  store i64 %4117, i64* %PC.i176
  %4118 = inttoptr i64 %4115 to i64*
  %4119 = load i64, i64* %4118
  store i64 %4119, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_426dde, %struct.Memory** %MEMORY
  %loadMem_426de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 33
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 5
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 9
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RSI.i175 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %RCX.i174
  %4130 = add i64 %4129, 4
  %4131 = load i64, i64* %PC.i173
  %4132 = add i64 %4131, 3
  store i64 %4132, i64* %PC.i173
  %4133 = inttoptr i64 %4130 to i32*
  %4134 = load i32, i32* %4133
  %4135 = zext i32 %4134 to i64
  store i64 %4135, i64* %RSI.i175, align 8
  store %struct.Memory* %loadMem_426de2, %struct.Memory** %MEMORY
  %loadMem_426de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 5
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %PC.i171
  %4143 = add i64 %4142, 7
  store i64 %4143, i64* %PC.i171
  %4144 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %4145 = zext i32 %4144 to i64
  store i64 %4145, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_426de5, %struct.Memory** %MEMORY
  %loadMem_426dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 33
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 5
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %4152 = bitcast %union.anon* %4151 to %struct.anon.2*
  %CL.i168 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4152, i32 0, i32 0
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 1
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RAX.i169
  %4157 = load i8, i8* %CL.i168
  %4158 = zext i8 %4157 to i64
  %4159 = load i64, i64* %PC.i167
  %4160 = add i64 %4159, 2
  store i64 %4160, i64* %PC.i167
  %4161 = trunc i64 %4158 to i5
  switch i5 %4161, label %4168 [
    i5 0, label %routine_shll__cl___eax.exit170
    i5 1, label %4162
  ]

; <label>:4162:                                   ; preds = %block_.L_426dc9
  %4163 = trunc i64 %4156 to i32
  %4164 = shl i32 %4163, 1
  %4165 = icmp slt i32 %4163, 0
  %4166 = icmp slt i32 %4164, 0
  %4167 = xor i1 %4165, %4166
  br label %4177

; <label>:4168:                                   ; preds = %block_.L_426dc9
  %4169 = and i64 %4158, 31
  %4170 = add i64 %4169, 4294967295
  %4171 = and i64 %4156, 4294967295
  %4172 = and i64 %4170, 4294967295
  %4173 = shl i64 %4171, %4172
  %4174 = trunc i64 %4173 to i32
  %4175 = icmp slt i32 %4174, 0
  %4176 = shl i32 %4174, 1
  br label %4177

; <label>:4177:                                   ; preds = %4168, %4162
  %4178 = phi i1 [ %4165, %4162 ], [ %4175, %4168 ]
  %4179 = phi i1 [ %4167, %4162 ], [ false, %4168 ]
  %4180 = phi i32 [ %4164, %4162 ], [ %4176, %4168 ]
  %4181 = zext i32 %4180 to i64
  store i64 %4181, i64* %RAX.i169, align 8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4183 = zext i1 %4178 to i8
  store i8 %4183, i8* %4182, align 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4185 = and i32 %4180, 254
  %4186 = call i32 @llvm.ctpop.i32(i32 %4185)
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = xor i8 %4188, 1
  store i8 %4189, i8* %4184, align 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4190, align 1
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4192 = icmp eq i32 %4180, 0
  %4193 = zext i1 %4192 to i8
  store i8 %4193, i8* %4191, align 1
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4195 = lshr i32 %4180, 31
  %4196 = trunc i32 %4195 to i8
  store i8 %4196, i8* %4194, align 1
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4198 = zext i1 %4179 to i8
  store i8 %4198, i8* %4197, align 1
  br label %routine_shll__cl___eax.exit170

routine_shll__cl___eax.exit170:                   ; preds = %block_.L_426dc9, %4177
  store %struct.Memory* %loadMem_426dec, %struct.Memory** %MEMORY
  %loadMem_426dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 1
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %4204 to i32*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 9
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %ESI.i166 = bitcast %union.anon* %4207 to i32*
  %4208 = load i32, i32* %ESI.i166
  %4209 = zext i32 %4208 to i64
  %4210 = load i32, i32* %EAX.i165
  %4211 = zext i32 %4210 to i64
  %4212 = load i64, i64* %PC.i164
  %4213 = add i64 %4212, 2
  store i64 %4213, i64* %PC.i164
  %4214 = sub i32 %4208, %4210
  %4215 = icmp ult i32 %4208, %4210
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4216, i8* %4217, align 1
  %4218 = and i32 %4214, 255
  %4219 = call i32 @llvm.ctpop.i32(i32 %4218)
  %4220 = trunc i32 %4219 to i8
  %4221 = and i8 %4220, 1
  %4222 = xor i8 %4221, 1
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4222, i8* %4223, align 1
  %4224 = xor i64 %4211, %4209
  %4225 = trunc i64 %4224 to i32
  %4226 = xor i32 %4225, %4214
  %4227 = lshr i32 %4226, 4
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4229, i8* %4230, align 1
  %4231 = icmp eq i32 %4214, 0
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4232, i8* %4233, align 1
  %4234 = lshr i32 %4214, 31
  %4235 = trunc i32 %4234 to i8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4235, i8* %4236, align 1
  %4237 = lshr i32 %4208, 31
  %4238 = lshr i32 %4210, 31
  %4239 = xor i32 %4238, %4237
  %4240 = xor i32 %4234, %4237
  %4241 = add i32 %4240, %4239
  %4242 = icmp eq i32 %4241, 2
  %4243 = zext i1 %4242 to i8
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4243, i8* %4244, align 1
  store %struct.Memory* %loadMem_426dee, %struct.Memory** %MEMORY
  %loadMem_426df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4247 to i64*
  %4248 = load i64, i64* %PC.i163
  %4249 = add i64 %4248, 111
  %4250 = load i64, i64* %PC.i163
  %4251 = add i64 %4250, 6
  %4252 = load i64, i64* %PC.i163
  %4253 = add i64 %4252, 6
  store i64 %4253, i64* %PC.i163
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4255 = load i8, i8* %4254, align 1
  %4256 = icmp eq i8 %4255, 0
  %4257 = zext i1 %4256 to i8
  store i8 %4257, i8* %BRANCH_TAKEN, align 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4259 = select i1 %4256, i64 %4249, i64 %4251
  store i64 %4259, i64* %4258, align 8
  store %struct.Memory* %loadMem_426df0, %struct.Memory** %MEMORY
  %loadBr_426df0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426df0 = icmp eq i8 %loadBr_426df0, 1
  br i1 %cmpBr_426df0, label %block_.L_426e5f, label %block_426df6

block_426df6:                                     ; preds = %routine_shll__cl___eax.exit170
  %loadMem_426df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 1
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %4265 to i64*
  %4266 = load i64, i64* %PC.i161
  %4267 = add i64 %4266, 8
  store i64 %4267, i64* %PC.i161
  %4268 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %4268, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_426df6, %struct.Memory** %MEMORY
  %loadMem_426dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 1
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %4274 to i64*
  %4275 = load i64, i64* %RAX.i160
  %4276 = add i64 %4275, 8
  %4277 = load i64, i64* %PC.i159
  %4278 = add i64 %4277, 4
  store i64 %4278, i64* %PC.i159
  %4279 = inttoptr i64 %4276 to i64*
  %4280 = load i64, i64* %4279
  store i64 %4280, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_426dfe, %struct.Memory** %MEMORY
  %loadMem_426e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 5
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 15
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RBP.i158
  %4291 = sub i64 %4290, 24
  %4292 = load i64, i64* %PC.i156
  %4293 = add i64 %4292, 4
  store i64 %4293, i64* %PC.i156
  %4294 = inttoptr i64 %4291 to i32*
  %4295 = load i32, i32* %4294
  %4296 = sext i32 %4295 to i64
  store i64 %4296, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_426e02, %struct.Memory** %MEMORY
  %loadMem_426e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 1
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 5
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RAX.i154
  %4307 = load i64, i64* %RCX.i155
  %4308 = mul i64 %4307, 8
  %4309 = add i64 %4308, %4306
  %4310 = load i64, i64* %PC.i153
  %4311 = add i64 %4310, 4
  store i64 %4311, i64* %PC.i153
  %4312 = inttoptr i64 %4309 to i64*
  %4313 = load i64, i64* %4312
  store i64 %4313, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_426e06, %struct.Memory** %MEMORY
  %loadMem_426e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %4319 to i64*
  %4320 = load i64, i64* %RAX.i152
  %4321 = add i64 %4320, 4
  %4322 = load i64, i64* %PC.i151
  %4323 = add i64 %4322, 4
  store i64 %4323, i64* %PC.i151
  %4324 = inttoptr i64 %4321 to i32*
  %4325 = load i32, i32* %4324
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4326, align 1
  %4327 = and i32 %4325, 255
  %4328 = call i32 @llvm.ctpop.i32(i32 %4327)
  %4329 = trunc i32 %4328 to i8
  %4330 = and i8 %4329, 1
  %4331 = xor i8 %4330, 1
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4331, i8* %4332, align 1
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4333, align 1
  %4334 = icmp eq i32 %4325, 0
  %4335 = zext i1 %4334 to i8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4335, i8* %4336, align 1
  %4337 = lshr i32 %4325, 31
  %4338 = trunc i32 %4337 to i8
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4338, i8* %4339, align 1
  %4340 = lshr i32 %4325, 31
  %4341 = xor i32 %4337, %4340
  %4342 = add i32 %4341, %4340
  %4343 = icmp eq i32 %4342, 2
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4344, i8* %4345, align 1
  store %struct.Memory* %loadMem_426e0a, %struct.Memory** %MEMORY
  %loadMem_426e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4348 to i64*
  %4349 = load i64, i64* %PC.i150
  %4350 = add i64 %4349, 81
  %4351 = load i64, i64* %PC.i150
  %4352 = add i64 %4351, 6
  %4353 = load i64, i64* %PC.i150
  %4354 = add i64 %4353, 6
  store i64 %4354, i64* %PC.i150
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4356 = load i8, i8* %4355, align 1
  %4357 = icmp eq i8 %4356, 0
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %BRANCH_TAKEN, align 1
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4360 = select i1 %4357, i64 %4350, i64 %4352
  store i64 %4360, i64* %4359, align 8
  store %struct.Memory* %loadMem_426e0e, %struct.Memory** %MEMORY
  %loadBr_426e0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e0e = icmp eq i8 %loadBr_426e0e, 1
  br i1 %cmpBr_426e0e, label %block_.L_426e5f, label %block_426e14

block_426e14:                                     ; preds = %block_426df6
  %loadMem_426e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 1
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %4366 to i64*
  %4367 = load i64, i64* %PC.i148
  %4368 = add i64 %4367, 5
  store i64 %4368, i64* %PC.i148
  store i64 1, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_426e14, %struct.Memory** %MEMORY
  %loadMem_426e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 5
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %PC.i146
  %4376 = add i64 %4375, 8
  store i64 %4376, i64* %PC.i146
  %4377 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %4377, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_426e19, %struct.Memory** %MEMORY
  %loadMem_426e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 5
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RCX.i145
  %4385 = add i64 %4384, 8
  %4386 = load i64, i64* %PC.i144
  %4387 = add i64 %4386, 4
  store i64 %4387, i64* %PC.i144
  %4388 = inttoptr i64 %4385 to i64*
  %4389 = load i64, i64* %4388
  store i64 %4389, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_426e21, %struct.Memory** %MEMORY
  %loadMem_426e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 7
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 15
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %4398 to i64*
  %4399 = load i64, i64* %RBP.i143
  %4400 = sub i64 %4399, 24
  %4401 = load i64, i64* %PC.i141
  %4402 = add i64 %4401, 4
  store i64 %4402, i64* %PC.i141
  %4403 = inttoptr i64 %4400 to i32*
  %4404 = load i32, i32* %4403
  %4405 = sext i32 %4404 to i64
  store i64 %4405, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_426e25, %struct.Memory** %MEMORY
  %loadMem_426e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 33
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 5
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 7
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %4414 to i64*
  %4415 = load i64, i64* %RCX.i139
  %4416 = load i64, i64* %RDX.i140
  %4417 = mul i64 %4416, 8
  %4418 = add i64 %4417, %4415
  %4419 = load i64, i64* %PC.i138
  %4420 = add i64 %4419, 4
  store i64 %4420, i64* %PC.i138
  %4421 = inttoptr i64 %4418 to i64*
  %4422 = load i64, i64* %4421
  store i64 %4422, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_426e29, %struct.Memory** %MEMORY
  %loadMem_426e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 5
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 9
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RSI.i137 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RCX.i136
  %4433 = add i64 %4432, 8
  %4434 = load i64, i64* %PC.i135
  %4435 = add i64 %4434, 3
  store i64 %4435, i64* %PC.i135
  %4436 = inttoptr i64 %4433 to i32*
  %4437 = load i32, i32* %4436
  %4438 = zext i32 %4437 to i64
  store i64 %4438, i64* %RSI.i137, align 8
  store %struct.Memory* %loadMem_426e2d, %struct.Memory** %MEMORY
  %loadMem_426e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 5
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %PC.i133
  %4446 = add i64 %4445, 7
  store i64 %4446, i64* %PC.i133
  %4447 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %4448 = zext i32 %4447 to i64
  store i64 %4448, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_426e30, %struct.Memory** %MEMORY
  %loadMem_426e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 5
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %4455 = bitcast %union.anon* %4454 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4455, i32 0, i32 0
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 1
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RAX.i132
  %4460 = load i8, i8* %CL.i
  %4461 = zext i8 %4460 to i64
  %4462 = load i64, i64* %PC.i131
  %4463 = add i64 %4462, 2
  store i64 %4463, i64* %PC.i131
  %4464 = trunc i64 %4461 to i5
  switch i5 %4464, label %4471 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %4465
  ]

; <label>:4465:                                   ; preds = %block_426e14
  %4466 = trunc i64 %4459 to i32
  %4467 = shl i32 %4466, 1
  %4468 = icmp slt i32 %4466, 0
  %4469 = icmp slt i32 %4467, 0
  %4470 = xor i1 %4468, %4469
  br label %4480

; <label>:4471:                                   ; preds = %block_426e14
  %4472 = and i64 %4461, 31
  %4473 = add i64 %4472, 4294967295
  %4474 = and i64 %4459, 4294967295
  %4475 = and i64 %4473, 4294967295
  %4476 = shl i64 %4474, %4475
  %4477 = trunc i64 %4476 to i32
  %4478 = icmp slt i32 %4477, 0
  %4479 = shl i32 %4477, 1
  br label %4480

; <label>:4480:                                   ; preds = %4471, %4465
  %4481 = phi i1 [ %4468, %4465 ], [ %4478, %4471 ]
  %4482 = phi i1 [ %4470, %4465 ], [ false, %4471 ]
  %4483 = phi i32 [ %4467, %4465 ], [ %4479, %4471 ]
  %4484 = zext i32 %4483 to i64
  store i64 %4484, i64* %RAX.i132, align 8
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4486 = zext i1 %4481 to i8
  store i8 %4486, i8* %4485, align 1
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4488 = and i32 %4483, 254
  %4489 = call i32 @llvm.ctpop.i32(i32 %4488)
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = xor i8 %4491, 1
  store i8 %4492, i8* %4487, align 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4493, align 1
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4495 = icmp eq i32 %4483, 0
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %4494, align 1
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4498 = lshr i32 %4483, 31
  %4499 = trunc i32 %4498 to i8
  store i8 %4499, i8* %4497, align 1
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4501 = zext i1 %4482 to i8
  store i8 %4501, i8* %4500, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %block_426e14, %4480
  store %struct.Memory* %loadMem_426e37, %struct.Memory** %MEMORY
  %loadMem_426e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 33
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4504 to i64*
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 1
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %4507 to i32*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 9
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %ESI.i130 = bitcast %union.anon* %4510 to i32*
  %4511 = load i32, i32* %ESI.i130
  %4512 = zext i32 %4511 to i64
  %4513 = load i32, i32* %EAX.i129
  %4514 = zext i32 %4513 to i64
  %4515 = load i64, i64* %PC.i128
  %4516 = add i64 %4515, 2
  store i64 %4516, i64* %PC.i128
  %4517 = sub i32 %4511, %4513
  %4518 = icmp ult i32 %4511, %4513
  %4519 = zext i1 %4518 to i8
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4519, i8* %4520, align 1
  %4521 = and i32 %4517, 255
  %4522 = call i32 @llvm.ctpop.i32(i32 %4521)
  %4523 = trunc i32 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = xor i8 %4524, 1
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4525, i8* %4526, align 1
  %4527 = xor i64 %4514, %4512
  %4528 = trunc i64 %4527 to i32
  %4529 = xor i32 %4528, %4517
  %4530 = lshr i32 %4529, 4
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4532, i8* %4533, align 1
  %4534 = icmp eq i32 %4517, 0
  %4535 = zext i1 %4534 to i8
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4535, i8* %4536, align 1
  %4537 = lshr i32 %4517, 31
  %4538 = trunc i32 %4537 to i8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4538, i8* %4539, align 1
  %4540 = lshr i32 %4511, 31
  %4541 = lshr i32 %4513, 31
  %4542 = xor i32 %4541, %4540
  %4543 = xor i32 %4537, %4540
  %4544 = add i32 %4543, %4542
  %4545 = icmp eq i32 %4544, 2
  %4546 = zext i1 %4545 to i8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4546, i8* %4547, align 1
  store %struct.Memory* %loadMem_426e39, %struct.Memory** %MEMORY
  %loadMem_426e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4550 to i64*
  %4551 = load i64, i64* %PC.i127
  %4552 = add i64 %4551, 36
  %4553 = load i64, i64* %PC.i127
  %4554 = add i64 %4553, 6
  %4555 = load i64, i64* %PC.i127
  %4556 = add i64 %4555, 6
  store i64 %4556, i64* %PC.i127
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4558 = load i8, i8* %4557, align 1
  %4559 = icmp eq i8 %4558, 0
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %BRANCH_TAKEN, align 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4562 = select i1 %4559, i64 %4552, i64 %4554
  store i64 %4562, i64* %4561, align 8
  store %struct.Memory* %loadMem_426e3b, %struct.Memory** %MEMORY
  %loadBr_426e3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e3b = icmp eq i8 %loadBr_426e3b, 1
  br i1 %cmpBr_426e3b, label %block_.L_426e5f, label %block_426e41

block_426e41:                                     ; preds = %routine_shll__cl___eax.exit
  %loadMem_426e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 33
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 1
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %4568 to i64*
  %4569 = load i64, i64* %PC.i125
  %4570 = add i64 %4569, 8
  store i64 %4570, i64* %PC.i125
  %4571 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %4571, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_426e41, %struct.Memory** %MEMORY
  %loadMem_426e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 1
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %4577 to i64*
  %4578 = load i64, i64* %RAX.i124
  %4579 = add i64 %4578, 8
  %4580 = load i64, i64* %PC.i123
  %4581 = add i64 %4580, 4
  store i64 %4581, i64* %PC.i123
  %4582 = inttoptr i64 %4579 to i64*
  %4583 = load i64, i64* %4582
  store i64 %4583, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_426e49, %struct.Memory** %MEMORY
  %loadMem_426e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 5
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 15
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RBP.i122
  %4594 = sub i64 %4593, 24
  %4595 = load i64, i64* %PC.i120
  %4596 = add i64 %4595, 4
  store i64 %4596, i64* %PC.i120
  %4597 = inttoptr i64 %4594 to i32*
  %4598 = load i32, i32* %4597
  %4599 = sext i32 %4598 to i64
  store i64 %4599, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_426e4d, %struct.Memory** %MEMORY
  %loadMem_426e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 1
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 5
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RAX.i118
  %4610 = load i64, i64* %RCX.i119
  %4611 = mul i64 %4610, 8
  %4612 = add i64 %4611, %4609
  %4613 = load i64, i64* %PC.i117
  %4614 = add i64 %4613, 4
  store i64 %4614, i64* %PC.i117
  %4615 = inttoptr i64 %4612 to i64*
  %4616 = load i64, i64* %4615
  store i64 %4616, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_426e51, %struct.Memory** %MEMORY
  %loadMem_426e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 33
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 1
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %RAX.i116
  %4624 = add i64 %4623, 8
  %4625 = load i64, i64* %PC.i115
  %4626 = add i64 %4625, 4
  store i64 %4626, i64* %PC.i115
  %4627 = inttoptr i64 %4624 to i32*
  %4628 = load i32, i32* %4627
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4629, align 1
  %4630 = and i32 %4628, 255
  %4631 = call i32 @llvm.ctpop.i32(i32 %4630)
  %4632 = trunc i32 %4631 to i8
  %4633 = and i8 %4632, 1
  %4634 = xor i8 %4633, 1
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4634, i8* %4635, align 1
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4636, align 1
  %4637 = icmp eq i32 %4628, 0
  %4638 = zext i1 %4637 to i8
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4638, i8* %4639, align 1
  %4640 = lshr i32 %4628, 31
  %4641 = trunc i32 %4640 to i8
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4641, i8* %4642, align 1
  %4643 = lshr i32 %4628, 31
  %4644 = xor i32 %4640, %4643
  %4645 = add i32 %4644, %4643
  %4646 = icmp eq i32 %4645, 2
  %4647 = zext i1 %4646 to i8
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4647, i8* %4648, align 1
  store %struct.Memory* %loadMem_426e55, %struct.Memory** %MEMORY
  %loadMem_426e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4651 to i64*
  %4652 = load i64, i64* %PC.i114
  %4653 = add i64 %4652, 176
  %4654 = load i64, i64* %PC.i114
  %4655 = add i64 %4654, 6
  %4656 = load i64, i64* %PC.i114
  %4657 = add i64 %4656, 6
  store i64 %4657, i64* %PC.i114
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4659 = load i8, i8* %4658, align 1
  store i8 %4659, i8* %BRANCH_TAKEN, align 1
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4661 = icmp ne i8 %4659, 0
  %4662 = select i1 %4661, i64 %4653, i64 %4655
  store i64 %4662, i64* %4660, align 8
  store %struct.Memory* %loadMem_426e59, %struct.Memory** %MEMORY
  %loadBr_426e59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e59 = icmp eq i8 %loadBr_426e59, 1
  br i1 %cmpBr_426e59, label %block_.L_426f09, label %block_.L_426e5f

block_.L_426e5f:                                  ; preds = %block_426e41, %routine_shll__cl___eax.exit, %block_426df6, %routine_shll__cl___eax.exit170
  %loadMem_426e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 33
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 11
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RDI.i113 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %PC.i112
  %4670 = add i64 %4669, 10
  store i64 %4670, i64* %PC.i112
  store i64 ptrtoint (%G__0x4bfe87_type* @G__0x4bfe87 to i64), i64* %RDI.i113, align 8
  store %struct.Memory* %loadMem_426e5f, %struct.Memory** %MEMORY
  %loadMem_426e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4672 = getelementptr inbounds %struct.GPR, %struct.GPR* %4671, i32 0, i32 33
  %4673 = getelementptr inbounds %struct.Reg, %struct.Reg* %4672, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4673 to i64*
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 9
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %4676 to i64*
  %4677 = load i64, i64* %PC.i110
  %4678 = add i64 %4677, 5
  store i64 %4678, i64* %PC.i110
  store i64 1, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_426e69, %struct.Memory** %MEMORY
  %loadMem_426e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 33
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4681 to i64*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 7
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 15
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %4687 to i64*
  %4688 = load i64, i64* %RBP.i109
  %4689 = sub i64 %4688, 16
  %4690 = load i64, i64* %PC.i107
  %4691 = add i64 %4690, 4
  store i64 %4691, i64* %PC.i107
  %4692 = inttoptr i64 %4689 to i64*
  %4693 = load i64, i64* %4692
  store i64 %4693, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_426e6e, %struct.Memory** %MEMORY
  %loadMem1_426e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 33
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4696 to i64*
  %4697 = load i64, i64* %PC.i106
  %4698 = add i64 %4697, 547982
  %4699 = load i64, i64* %PC.i106
  %4700 = add i64 %4699, 5
  %4701 = load i64, i64* %PC.i106
  %4702 = add i64 %4701, 5
  store i64 %4702, i64* %PC.i106
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4704 = load i64, i64* %4703, align 8
  %4705 = add i64 %4704, -8
  %4706 = inttoptr i64 %4705 to i64*
  store i64 %4700, i64* %4706
  store i64 %4705, i64* %4703, align 8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4698, i64* %4707, align 8
  store %struct.Memory* %loadMem1_426e72, %struct.Memory** %MEMORY
  %loadMem2_426e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426e72 = load i64, i64* %3
  %call2_426e72 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426e72, %struct.Memory* %loadMem2_426e72)
  store %struct.Memory* %call2_426e72, %struct.Memory** %MEMORY
  %loadMem_426e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 1
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 15
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %RAX.i104
  %4718 = load i64, i64* %RBP.i105
  %4719 = sub i64 %4718, 20
  %4720 = load i64, i64* %PC.i103
  %4721 = add i64 %4720, 3
  store i64 %4721, i64* %PC.i103
  %4722 = trunc i64 %4717 to i32
  %4723 = inttoptr i64 %4719 to i32*
  %4724 = load i32, i32* %4723
  %4725 = add i32 %4724, %4722
  %4726 = zext i32 %4725 to i64
  store i64 %4726, i64* %RAX.i104, align 8
  %4727 = icmp ult i32 %4725, %4722
  %4728 = icmp ult i32 %4725, %4724
  %4729 = or i1 %4727, %4728
  %4730 = zext i1 %4729 to i8
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4730, i8* %4731, align 1
  %4732 = and i32 %4725, 255
  %4733 = call i32 @llvm.ctpop.i32(i32 %4732)
  %4734 = trunc i32 %4733 to i8
  %4735 = and i8 %4734, 1
  %4736 = xor i8 %4735, 1
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4736, i8* %4737, align 1
  %4738 = xor i32 %4724, %4722
  %4739 = xor i32 %4738, %4725
  %4740 = lshr i32 %4739, 4
  %4741 = trunc i32 %4740 to i8
  %4742 = and i8 %4741, 1
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4742, i8* %4743, align 1
  %4744 = icmp eq i32 %4725, 0
  %4745 = zext i1 %4744 to i8
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4745, i8* %4746, align 1
  %4747 = lshr i32 %4725, 31
  %4748 = trunc i32 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4748, i8* %4749, align 1
  %4750 = lshr i32 %4722, 31
  %4751 = lshr i32 %4724, 31
  %4752 = xor i32 %4747, %4750
  %4753 = xor i32 %4747, %4751
  %4754 = add i32 %4752, %4753
  %4755 = icmp eq i32 %4754, 2
  %4756 = zext i1 %4755 to i8
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4756, i8* %4757, align 1
  store %struct.Memory* %loadMem_426e77, %struct.Memory** %MEMORY
  %loadMem_426e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 1
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %EAX.i101 = bitcast %union.anon* %4763 to i32*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 15
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4766 to i64*
  %4767 = load i64, i64* %RBP.i102
  %4768 = sub i64 %4767, 20
  %4769 = load i32, i32* %EAX.i101
  %4770 = zext i32 %4769 to i64
  %4771 = load i64, i64* %PC.i100
  %4772 = add i64 %4771, 3
  store i64 %4772, i64* %PC.i100
  %4773 = inttoptr i64 %4768 to i32*
  store i32 %4769, i32* %4773
  store %struct.Memory* %loadMem_426e7a, %struct.Memory** %MEMORY
  %loadMem_426e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 15
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RBP.i99
  %4781 = sub i64 %4780, 28
  %4782 = load i64, i64* %PC.i98
  %4783 = add i64 %4782, 7
  store i64 %4783, i64* %PC.i98
  %4784 = inttoptr i64 %4781 to i32*
  store i32 1, i32* %4784
  store %struct.Memory* %loadMem_426e7d, %struct.Memory** %MEMORY
  br label %block_.L_426e84

block_.L_426e84:                                  ; preds = %block_426e8e, %block_.L_426e5f
  %loadMem_426e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 33
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 15
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RBP.i97
  %4792 = sub i64 %4791, 28
  %4793 = load i64, i64* %PC.i96
  %4794 = add i64 %4793, 4
  store i64 %4794, i64* %PC.i96
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = sub i32 %4796, 3
  %4798 = icmp ult i32 %4796, 3
  %4799 = zext i1 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4799, i8* %4800, align 1
  %4801 = and i32 %4797, 255
  %4802 = call i32 @llvm.ctpop.i32(i32 %4801)
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4805, i8* %4806, align 1
  %4807 = xor i32 %4796, 3
  %4808 = xor i32 %4807, %4797
  %4809 = lshr i32 %4808, 4
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4811, i8* %4812, align 1
  %4813 = icmp eq i32 %4797, 0
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4814, i8* %4815, align 1
  %4816 = lshr i32 %4797, 31
  %4817 = trunc i32 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4817, i8* %4818, align 1
  %4819 = lshr i32 %4796, 31
  %4820 = xor i32 %4816, %4819
  %4821 = add i32 %4820, %4819
  %4822 = icmp eq i32 %4821, 2
  %4823 = zext i1 %4822 to i8
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4823, i8* %4824, align 1
  store %struct.Memory* %loadMem_426e84, %struct.Memory** %MEMORY
  %loadMem_426e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 33
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %PC.i95
  %4829 = add i64 %4828, 124
  %4830 = load i64, i64* %PC.i95
  %4831 = add i64 %4830, 6
  %4832 = load i64, i64* %PC.i95
  %4833 = add i64 %4832, 6
  store i64 %4833, i64* %PC.i95
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4835 = load i8, i8* %4834, align 1
  %4836 = icmp ne i8 %4835, 0
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4838 = load i8, i8* %4837, align 1
  %4839 = icmp ne i8 %4838, 0
  %4840 = xor i1 %4836, %4839
  %4841 = xor i1 %4840, true
  %4842 = zext i1 %4841 to i8
  store i8 %4842, i8* %BRANCH_TAKEN, align 1
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4844 = select i1 %4840, i64 %4831, i64 %4829
  store i64 %4844, i64* %4843, align 8
  store %struct.Memory* %loadMem_426e88, %struct.Memory** %MEMORY
  %loadBr_426e88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e88 = icmp eq i8 %loadBr_426e88, 1
  br i1 %cmpBr_426e88, label %block_.L_426f04, label %block_426e8e

block_426e8e:                                     ; preds = %block_.L_426e84
  %loadMem_426e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 11
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %PC.i93
  %4852 = add i64 %4851, 10
  store i64 %4852, i64* %PC.i93
  store i64 ptrtoint (%G__0x4bfe9d_type* @G__0x4bfe9d to i64), i64* %RDI.i94, align 8
  store %struct.Memory* %loadMem_426e8e, %struct.Memory** %MEMORY
  %loadMem_426e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 1
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %PC.i91
  %4860 = add i64 %4859, 8
  store i64 %4860, i64* %PC.i91
  %4861 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %4861, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_426e98, %struct.Memory** %MEMORY
  %loadMem_426ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 33
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 1
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %RAX.i90
  %4869 = add i64 %4868, 8
  %4870 = load i64, i64* %PC.i89
  %4871 = add i64 %4870, 4
  store i64 %4871, i64* %PC.i89
  %4872 = inttoptr i64 %4869 to i64*
  %4873 = load i64, i64* %4872
  store i64 %4873, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_426ea0, %struct.Memory** %MEMORY
  %loadMem_426ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 5
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 15
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %RBP.i88
  %4884 = sub i64 %4883, 24
  %4885 = load i64, i64* %PC.i86
  %4886 = add i64 %4885, 4
  store i64 %4886, i64* %PC.i86
  %4887 = inttoptr i64 %4884 to i32*
  %4888 = load i32, i32* %4887
  %4889 = sext i32 %4888 to i64
  store i64 %4889, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_426ea4, %struct.Memory** %MEMORY
  %loadMem_426ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4892 to i64*
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 1
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 5
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4898 to i64*
  %4899 = load i64, i64* %RAX.i84
  %4900 = load i64, i64* %RCX.i85
  %4901 = mul i64 %4900, 8
  %4902 = add i64 %4901, %4899
  %4903 = load i64, i64* %PC.i83
  %4904 = add i64 %4903, 4
  store i64 %4904, i64* %PC.i83
  %4905 = inttoptr i64 %4902 to i64*
  %4906 = load i64, i64* %4905
  store i64 %4906, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_426ea8, %struct.Memory** %MEMORY
  %loadMem_426eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 33
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 5
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %4912 to i64*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 15
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %4915 to i64*
  %4916 = load i64, i64* %RBP.i82
  %4917 = sub i64 %4916, 28
  %4918 = load i64, i64* %PC.i80
  %4919 = add i64 %4918, 4
  store i64 %4919, i64* %PC.i80
  %4920 = inttoptr i64 %4917 to i32*
  %4921 = load i32, i32* %4920
  %4922 = sext i32 %4921 to i64
  store i64 %4922, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_426eac, %struct.Memory** %MEMORY
  %loadMem_426eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 33
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 1
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4928 to i64*
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 5
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 9
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %4934 to i64*
  %4935 = load i64, i64* %RAX.i77
  %4936 = load i64, i64* %RCX.i78
  %4937 = mul i64 %4936, 4
  %4938 = add i64 %4937, %4935
  %4939 = load i64, i64* %PC.i76
  %4940 = add i64 %4939, 3
  store i64 %4940, i64* %PC.i76
  %4941 = inttoptr i64 %4938 to i32*
  %4942 = load i32, i32* %4941
  %4943 = zext i32 %4942 to i64
  store i64 %4943, i64* %RSI.i79, align 8
  store %struct.Memory* %loadMem_426eb0, %struct.Memory** %MEMORY
  %loadMem_426eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 33
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 7
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 15
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4952 to i64*
  %4953 = load i64, i64* %RBP.i75
  %4954 = sub i64 %4953, 16
  %4955 = load i64, i64* %PC.i73
  %4956 = add i64 %4955, 4
  store i64 %4956, i64* %PC.i73
  %4957 = inttoptr i64 %4954 to i64*
  %4958 = load i64, i64* %4957
  store i64 %4958, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_426eb3, %struct.Memory** %MEMORY
  %loadMem1_426eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 33
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4961 to i64*
  %4962 = load i64, i64* %PC.i72
  %4963 = add i64 %4962, 547593
  %4964 = load i64, i64* %PC.i72
  %4965 = add i64 %4964, 5
  %4966 = load i64, i64* %PC.i72
  %4967 = add i64 %4966, 5
  store i64 %4967, i64* %PC.i72
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4969 = load i64, i64* %4968, align 8
  %4970 = add i64 %4969, -8
  %4971 = inttoptr i64 %4970 to i64*
  store i64 %4965, i64* %4971
  store i64 %4970, i64* %4968, align 8
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4963, i64* %4972, align 8
  store %struct.Memory* %loadMem1_426eb7, %struct.Memory** %MEMORY
  %loadMem2_426eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426eb7 = load i64, i64* %3
  %call2_426eb7 = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426eb7, %struct.Memory* %loadMem2_426eb7)
  store %struct.Memory* %call2_426eb7, %struct.Memory** %MEMORY
  %loadMem_426ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 33
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 11
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %4978 to i64*
  %4979 = load i64, i64* %PC.i70
  %4980 = add i64 %4979, 10
  store i64 %4980, i64* %PC.i70
  store i64 ptrtoint (%G__0x4bfeae_type* @G__0x4bfeae to i64), i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_426ebc, %struct.Memory** %MEMORY
  %loadMem_426ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RAX.i68
  %4991 = load i64, i64* %RBP.i69
  %4992 = sub i64 %4991, 20
  %4993 = load i64, i64* %PC.i67
  %4994 = add i64 %4993, 3
  store i64 %4994, i64* %PC.i67
  %4995 = trunc i64 %4990 to i32
  %4996 = inttoptr i64 %4992 to i32*
  %4997 = load i32, i32* %4996
  %4998 = add i32 %4997, %4995
  %4999 = zext i32 %4998 to i64
  store i64 %4999, i64* %RAX.i68, align 8
  %5000 = icmp ult i32 %4998, %4995
  %5001 = icmp ult i32 %4998, %4997
  %5002 = or i1 %5000, %5001
  %5003 = zext i1 %5002 to i8
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5003, i8* %5004, align 1
  %5005 = and i32 %4998, 255
  %5006 = call i32 @llvm.ctpop.i32(i32 %5005)
  %5007 = trunc i32 %5006 to i8
  %5008 = and i8 %5007, 1
  %5009 = xor i8 %5008, 1
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5009, i8* %5010, align 1
  %5011 = xor i32 %4997, %4995
  %5012 = xor i32 %5011, %4998
  %5013 = lshr i32 %5012, 4
  %5014 = trunc i32 %5013 to i8
  %5015 = and i8 %5014, 1
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5015, i8* %5016, align 1
  %5017 = icmp eq i32 %4998, 0
  %5018 = zext i1 %5017 to i8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5018, i8* %5019, align 1
  %5020 = lshr i32 %4998, 31
  %5021 = trunc i32 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5021, i8* %5022, align 1
  %5023 = lshr i32 %4995, 31
  %5024 = lshr i32 %4997, 31
  %5025 = xor i32 %5020, %5023
  %5026 = xor i32 %5020, %5024
  %5027 = add i32 %5025, %5026
  %5028 = icmp eq i32 %5027, 2
  %5029 = zext i1 %5028 to i8
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5029, i8* %5030, align 1
  store %struct.Memory* %loadMem_426ec6, %struct.Memory** %MEMORY
  %loadMem_426ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 1
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %5036 to i32*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 15
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %5039 to i64*
  %5040 = load i64, i64* %RBP.i66
  %5041 = sub i64 %5040, 20
  %5042 = load i32, i32* %EAX.i65
  %5043 = zext i32 %5042 to i64
  %5044 = load i64, i64* %PC.i64
  %5045 = add i64 %5044, 3
  store i64 %5045, i64* %PC.i64
  %5046 = inttoptr i64 %5041 to i32*
  store i32 %5042, i32* %5046
  store %struct.Memory* %loadMem_426ec9, %struct.Memory** %MEMORY
  %loadMem_426ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 33
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 5
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %5052 to i64*
  %5053 = load i64, i64* %PC.i62
  %5054 = add i64 %5053, 8
  store i64 %5054, i64* %PC.i62
  %5055 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %5055, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_426ecc, %struct.Memory** %MEMORY
  %loadMem_426ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 5
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %5061 to i64*
  %5062 = load i64, i64* %RCX.i61
  %5063 = add i64 %5062, 8
  %5064 = load i64, i64* %PC.i60
  %5065 = add i64 %5064, 4
  store i64 %5065, i64* %PC.i60
  %5066 = inttoptr i64 %5063 to i64*
  %5067 = load i64, i64* %5066
  store i64 %5067, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_426ed4, %struct.Memory** %MEMORY
  %loadMem_426ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 7
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 15
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RBP.i59
  %5078 = sub i64 %5077, 24
  %5079 = load i64, i64* %PC.i57
  %5080 = add i64 %5079, 4
  store i64 %5080, i64* %PC.i57
  %5081 = inttoptr i64 %5078 to i32*
  %5082 = load i32, i32* %5081
  %5083 = sext i32 %5082 to i64
  store i64 %5083, i64* %RDX.i58, align 8
  store %struct.Memory* %loadMem_426ed8, %struct.Memory** %MEMORY
  %loadMem_426edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 5
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 7
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RCX.i55
  %5094 = load i64, i64* %RDX.i56
  %5095 = mul i64 %5094, 8
  %5096 = add i64 %5095, %5093
  %5097 = load i64, i64* %PC.i54
  %5098 = add i64 %5097, 4
  store i64 %5098, i64* %PC.i54
  %5099 = inttoptr i64 %5096 to i64*
  %5100 = load i64, i64* %5099
  store i64 %5100, i64* %RCX.i55, align 8
  store %struct.Memory* %loadMem_426edc, %struct.Memory** %MEMORY
  %loadMem_426ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 33
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 7
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RDX.i52 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 15
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RBP.i53
  %5111 = sub i64 %5110, 28
  %5112 = load i64, i64* %PC.i51
  %5113 = add i64 %5112, 4
  store i64 %5113, i64* %PC.i51
  %5114 = inttoptr i64 %5111 to i32*
  %5115 = load i32, i32* %5114
  %5116 = sext i32 %5115 to i64
  store i64 %5116, i64* %RDX.i52, align 8
  store %struct.Memory* %loadMem_426ee0, %struct.Memory** %MEMORY
  %loadMem_426ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 5
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5122 to i64*
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 7
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 9
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %5128 to i64*
  %5129 = load i64, i64* %RCX.i
  %5130 = load i64, i64* %RDX.i49
  %5131 = mul i64 %5130, 4
  %5132 = add i64 %5131, %5129
  %5133 = load i64, i64* %PC.i48
  %5134 = add i64 %5133, 3
  store i64 %5134, i64* %PC.i48
  %5135 = inttoptr i64 %5132 to i32*
  %5136 = load i32, i32* %5135
  %5137 = zext i32 %5136 to i64
  store i64 %5137, i64* %RSI.i50, align 8
  store %struct.Memory* %loadMem_426ee4, %struct.Memory** %MEMORY
  %loadMem_426ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5139 = getelementptr inbounds %struct.GPR, %struct.GPR* %5138, i32 0, i32 33
  %5140 = getelementptr inbounds %struct.Reg, %struct.Reg* %5139, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5140 to i64*
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 7
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 15
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5146 to i64*
  %5147 = load i64, i64* %RBP.i47
  %5148 = sub i64 %5147, 16
  %5149 = load i64, i64* %PC.i45
  %5150 = add i64 %5149, 4
  store i64 %5150, i64* %PC.i45
  %5151 = inttoptr i64 %5148 to i64*
  %5152 = load i64, i64* %5151
  store i64 %5152, i64* %RDX.i46, align 8
  store %struct.Memory* %loadMem_426ee7, %struct.Memory** %MEMORY
  %loadMem1_426eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5155 to i64*
  %5156 = load i64, i64* %PC.i44
  %5157 = add i64 %5156, 547541
  %5158 = load i64, i64* %PC.i44
  %5159 = add i64 %5158, 5
  %5160 = load i64, i64* %PC.i44
  %5161 = add i64 %5160, 5
  store i64 %5161, i64* %PC.i44
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5163 = load i64, i64* %5162, align 8
  %5164 = add i64 %5163, -8
  %5165 = inttoptr i64 %5164 to i64*
  store i64 %5159, i64* %5165
  store i64 %5164, i64* %5162, align 8
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5157, i64* %5166, align 8
  store %struct.Memory* %loadMem1_426eeb, %struct.Memory** %MEMORY
  %loadMem2_426eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426eeb = load i64, i64* %3
  %call2_426eeb = call %struct.Memory* @sub_4ac9c0.se_v(%struct.State* %0, i64 %loadPC_426eeb, %struct.Memory* %loadMem2_426eeb)
  store %struct.Memory* %call2_426eeb, %struct.Memory** %MEMORY
  %loadMem_426ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5169 to i64*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 1
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 15
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %5175 to i64*
  %5176 = load i64, i64* %RAX.i42
  %5177 = load i64, i64* %RBP.i43
  %5178 = sub i64 %5177, 20
  %5179 = load i64, i64* %PC.i41
  %5180 = add i64 %5179, 3
  store i64 %5180, i64* %PC.i41
  %5181 = trunc i64 %5176 to i32
  %5182 = inttoptr i64 %5178 to i32*
  %5183 = load i32, i32* %5182
  %5184 = add i32 %5183, %5181
  %5185 = zext i32 %5184 to i64
  store i64 %5185, i64* %RAX.i42, align 8
  %5186 = icmp ult i32 %5184, %5181
  %5187 = icmp ult i32 %5184, %5183
  %5188 = or i1 %5186, %5187
  %5189 = zext i1 %5188 to i8
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5189, i8* %5190, align 1
  %5191 = and i32 %5184, 255
  %5192 = call i32 @llvm.ctpop.i32(i32 %5191)
  %5193 = trunc i32 %5192 to i8
  %5194 = and i8 %5193, 1
  %5195 = xor i8 %5194, 1
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5195, i8* %5196, align 1
  %5197 = xor i32 %5183, %5181
  %5198 = xor i32 %5197, %5184
  %5199 = lshr i32 %5198, 4
  %5200 = trunc i32 %5199 to i8
  %5201 = and i8 %5200, 1
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5201, i8* %5202, align 1
  %5203 = icmp eq i32 %5184, 0
  %5204 = zext i1 %5203 to i8
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5204, i8* %5205, align 1
  %5206 = lshr i32 %5184, 31
  %5207 = trunc i32 %5206 to i8
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5207, i8* %5208, align 1
  %5209 = lshr i32 %5181, 31
  %5210 = lshr i32 %5183, 31
  %5211 = xor i32 %5206, %5209
  %5212 = xor i32 %5206, %5210
  %5213 = add i32 %5211, %5212
  %5214 = icmp eq i32 %5213, 2
  %5215 = zext i1 %5214 to i8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5215, i8* %5216, align 1
  store %struct.Memory* %loadMem_426ef0, %struct.Memory** %MEMORY
  %loadMem_426ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 1
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %5222 to i32*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 15
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %5225 to i64*
  %5226 = load i64, i64* %RBP.i40
  %5227 = sub i64 %5226, 20
  %5228 = load i32, i32* %EAX.i39
  %5229 = zext i32 %5228 to i64
  %5230 = load i64, i64* %PC.i38
  %5231 = add i64 %5230, 3
  store i64 %5231, i64* %PC.i38
  %5232 = inttoptr i64 %5227 to i32*
  store i32 %5228, i32* %5232
  store %struct.Memory* %loadMem_426ef3, %struct.Memory** %MEMORY
  %loadMem_426ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 33
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 1
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %5238 to i64*
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 15
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %5241 to i64*
  %5242 = load i64, i64* %RBP.i37
  %5243 = sub i64 %5242, 28
  %5244 = load i64, i64* %PC.i35
  %5245 = add i64 %5244, 3
  store i64 %5245, i64* %PC.i35
  %5246 = inttoptr i64 %5243 to i32*
  %5247 = load i32, i32* %5246
  %5248 = zext i32 %5247 to i64
  store i64 %5248, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_426ef6, %struct.Memory** %MEMORY
  %loadMem_426ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 33
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5251 to i64*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 1
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %5254 to i64*
  %5255 = load i64, i64* %RAX.i34
  %5256 = load i64, i64* %PC.i33
  %5257 = add i64 %5256, 3
  store i64 %5257, i64* %PC.i33
  %5258 = trunc i64 %5255 to i32
  %5259 = add i32 1, %5258
  %5260 = zext i32 %5259 to i64
  store i64 %5260, i64* %RAX.i34, align 8
  %5261 = icmp ult i32 %5259, %5258
  %5262 = icmp ult i32 %5259, 1
  %5263 = or i1 %5261, %5262
  %5264 = zext i1 %5263 to i8
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5264, i8* %5265, align 1
  %5266 = and i32 %5259, 255
  %5267 = call i32 @llvm.ctpop.i32(i32 %5266)
  %5268 = trunc i32 %5267 to i8
  %5269 = and i8 %5268, 1
  %5270 = xor i8 %5269, 1
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5270, i8* %5271, align 1
  %5272 = xor i64 1, %5255
  %5273 = trunc i64 %5272 to i32
  %5274 = xor i32 %5273, %5259
  %5275 = lshr i32 %5274, 4
  %5276 = trunc i32 %5275 to i8
  %5277 = and i8 %5276, 1
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5277, i8* %5278, align 1
  %5279 = icmp eq i32 %5259, 0
  %5280 = zext i1 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5280, i8* %5281, align 1
  %5282 = lshr i32 %5259, 31
  %5283 = trunc i32 %5282 to i8
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5283, i8* %5284, align 1
  %5285 = lshr i32 %5258, 31
  %5286 = xor i32 %5282, %5285
  %5287 = add i32 %5286, %5282
  %5288 = icmp eq i32 %5287, 2
  %5289 = zext i1 %5288 to i8
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5289, i8* %5290, align 1
  store %struct.Memory* %loadMem_426ef9, %struct.Memory** %MEMORY
  %loadMem_426efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 33
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5293 to i64*
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 1
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %EAX.i31 = bitcast %union.anon* %5296 to i32*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 15
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %RBP.i32
  %5301 = sub i64 %5300, 28
  %5302 = load i32, i32* %EAX.i31
  %5303 = zext i32 %5302 to i64
  %5304 = load i64, i64* %PC.i30
  %5305 = add i64 %5304, 3
  store i64 %5305, i64* %PC.i30
  %5306 = inttoptr i64 %5301 to i32*
  store i32 %5302, i32* %5306
  store %struct.Memory* %loadMem_426efc, %struct.Memory** %MEMORY
  %loadMem_426eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 33
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5309 to i64*
  %5310 = load i64, i64* %PC.i29
  %5311 = add i64 %5310, -123
  %5312 = load i64, i64* %PC.i29
  %5313 = add i64 %5312, 5
  store i64 %5313, i64* %PC.i29
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5311, i64* %5314, align 8
  store %struct.Memory* %loadMem_426eff, %struct.Memory** %MEMORY
  br label %block_.L_426e84

block_.L_426f04:                                  ; preds = %block_.L_426e84
  %loadMem_426f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %PC.i28
  %5319 = add i64 %5318, 32
  %5320 = load i64, i64* %PC.i28
  %5321 = add i64 %5320, 5
  store i64 %5321, i64* %PC.i28
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5319, i64* %5322, align 8
  store %struct.Memory* %loadMem_426f04, %struct.Memory** %MEMORY
  br label %block_.L_426f24

block_.L_426f09:                                  ; preds = %block_426e41
  %loadMem_426f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 33
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 11
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %PC.i27
  %5330 = add i64 %5329, 10
  store i64 %5330, i64* %PC.i27
  store i64 ptrtoint (%G__0x4bfe87_type* @G__0x4bfe87 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_426f09, %struct.Memory** %MEMORY
  %loadMem_426f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 33
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5333 to i64*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 9
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5336 to i32*
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 9
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5339 to i64*
  %5340 = load i64, i64* %RSI.i
  %5341 = load i32, i32* %ESI.i
  %5342 = zext i32 %5341 to i64
  %5343 = load i64, i64* %PC.i26
  %5344 = add i64 %5343, 2
  store i64 %5344, i64* %PC.i26
  %5345 = xor i64 %5342, %5340
  %5346 = trunc i64 %5345 to i32
  %5347 = and i64 %5345, 4294967295
  store i64 %5347, i64* %RSI.i, align 8
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5348, align 1
  %5349 = and i32 %5346, 255
  %5350 = call i32 @llvm.ctpop.i32(i32 %5349)
  %5351 = trunc i32 %5350 to i8
  %5352 = and i8 %5351, 1
  %5353 = xor i8 %5352, 1
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5353, i8* %5354, align 1
  %5355 = icmp eq i32 %5346, 0
  %5356 = zext i1 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5356, i8* %5357, align 1
  %5358 = lshr i32 %5346, 31
  %5359 = trunc i32 %5358 to i8
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5359, i8* %5360, align 1
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5361, align 1
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5362, align 1
  store %struct.Memory* %loadMem_426f13, %struct.Memory** %MEMORY
  %loadMem_426f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 33
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 7
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5368 to i64*
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 15
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %RBP.i25
  %5373 = sub i64 %5372, 16
  %5374 = load i64, i64* %PC.i24
  %5375 = add i64 %5374, 4
  store i64 %5375, i64* %PC.i24
  %5376 = inttoptr i64 %5373 to i64*
  %5377 = load i64, i64* %5376
  store i64 %5377, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_426f15, %struct.Memory** %MEMORY
  %loadMem1_426f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5380 to i64*
  %5381 = load i64, i64* %PC.i23
  %5382 = add i64 %5381, 547815
  %5383 = load i64, i64* %PC.i23
  %5384 = add i64 %5383, 5
  %5385 = load i64, i64* %PC.i23
  %5386 = add i64 %5385, 5
  store i64 %5386, i64* %PC.i23
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5388 = load i64, i64* %5387, align 8
  %5389 = add i64 %5388, -8
  %5390 = inttoptr i64 %5389 to i64*
  store i64 %5384, i64* %5390
  store i64 %5389, i64* %5387, align 8
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5382, i64* %5391, align 8
  store %struct.Memory* %loadMem1_426f19, %struct.Memory** %MEMORY
  %loadMem2_426f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426f19 = load i64, i64* %3
  %call2_426f19 = call %struct.Memory* @sub_4acb00.u_1(%struct.State* %0, i64 %loadPC_426f19, %struct.Memory* %loadMem2_426f19)
  store %struct.Memory* %call2_426f19, %struct.Memory** %MEMORY
  %loadMem_426f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 33
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5394 to i64*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 1
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 15
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %5400 to i64*
  %5401 = load i64, i64* %RAX.i21
  %5402 = load i64, i64* %RBP.i22
  %5403 = sub i64 %5402, 20
  %5404 = load i64, i64* %PC.i20
  %5405 = add i64 %5404, 3
  store i64 %5405, i64* %PC.i20
  %5406 = trunc i64 %5401 to i32
  %5407 = inttoptr i64 %5403 to i32*
  %5408 = load i32, i32* %5407
  %5409 = add i32 %5408, %5406
  %5410 = zext i32 %5409 to i64
  store i64 %5410, i64* %RAX.i21, align 8
  %5411 = icmp ult i32 %5409, %5406
  %5412 = icmp ult i32 %5409, %5408
  %5413 = or i1 %5411, %5412
  %5414 = zext i1 %5413 to i8
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5414, i8* %5415, align 1
  %5416 = and i32 %5409, 255
  %5417 = call i32 @llvm.ctpop.i32(i32 %5416)
  %5418 = trunc i32 %5417 to i8
  %5419 = and i8 %5418, 1
  %5420 = xor i8 %5419, 1
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5420, i8* %5421, align 1
  %5422 = xor i32 %5408, %5406
  %5423 = xor i32 %5422, %5409
  %5424 = lshr i32 %5423, 4
  %5425 = trunc i32 %5424 to i8
  %5426 = and i8 %5425, 1
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5426, i8* %5427, align 1
  %5428 = icmp eq i32 %5409, 0
  %5429 = zext i1 %5428 to i8
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5429, i8* %5430, align 1
  %5431 = lshr i32 %5409, 31
  %5432 = trunc i32 %5431 to i8
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5432, i8* %5433, align 1
  %5434 = lshr i32 %5406, 31
  %5435 = lshr i32 %5408, 31
  %5436 = xor i32 %5431, %5434
  %5437 = xor i32 %5431, %5435
  %5438 = add i32 %5436, %5437
  %5439 = icmp eq i32 %5438, 2
  %5440 = zext i1 %5439 to i8
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5440, i8* %5441, align 1
  store %struct.Memory* %loadMem_426f1e, %struct.Memory** %MEMORY
  %loadMem_426f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 33
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5444 to i64*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 1
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %EAX.i18 = bitcast %union.anon* %5447 to i32*
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 15
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %5450 to i64*
  %5451 = load i64, i64* %RBP.i19
  %5452 = sub i64 %5451, 20
  %5453 = load i32, i32* %EAX.i18
  %5454 = zext i32 %5453 to i64
  %5455 = load i64, i64* %PC.i17
  %5456 = add i64 %5455, 3
  store i64 %5456, i64* %PC.i17
  %5457 = inttoptr i64 %5452 to i32*
  store i32 %5453, i32* %5457
  store %struct.Memory* %loadMem_426f21, %struct.Memory** %MEMORY
  br label %block_.L_426f24

block_.L_426f24:                                  ; preds = %block_.L_426f09, %block_.L_426f04
  %loadMem_426f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 33
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5460 to i64*
  %5461 = load i64, i64* %PC.i16
  %5462 = add i64 %5461, 5
  %5463 = load i64, i64* %PC.i16
  %5464 = add i64 %5463, 5
  store i64 %5464, i64* %PC.i16
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5462, i64* %5465, align 8
  store %struct.Memory* %loadMem_426f24, %struct.Memory** %MEMORY
  br label %block_.L_426f29

block_.L_426f29:                                  ; preds = %block_.L_426f24
  %loadMem_426f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 1
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 15
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5474 to i64*
  %5475 = load i64, i64* %RBP.i15
  %5476 = sub i64 %5475, 24
  %5477 = load i64, i64* %PC.i13
  %5478 = add i64 %5477, 3
  store i64 %5478, i64* %PC.i13
  %5479 = inttoptr i64 %5476 to i32*
  %5480 = load i32, i32* %5479
  %5481 = zext i32 %5480 to i64
  store i64 %5481, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_426f29, %struct.Memory** %MEMORY
  %loadMem_426f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 33
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5484 to i64*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 1
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %RAX.i12
  %5489 = load i64, i64* %PC.i11
  %5490 = add i64 %5489, 3
  store i64 %5490, i64* %PC.i11
  %5491 = trunc i64 %5488 to i32
  %5492 = add i32 1, %5491
  %5493 = zext i32 %5492 to i64
  store i64 %5493, i64* %RAX.i12, align 8
  %5494 = icmp ult i32 %5492, %5491
  %5495 = icmp ult i32 %5492, 1
  %5496 = or i1 %5494, %5495
  %5497 = zext i1 %5496 to i8
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5497, i8* %5498, align 1
  %5499 = and i32 %5492, 255
  %5500 = call i32 @llvm.ctpop.i32(i32 %5499)
  %5501 = trunc i32 %5500 to i8
  %5502 = and i8 %5501, 1
  %5503 = xor i8 %5502, 1
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5503, i8* %5504, align 1
  %5505 = xor i64 1, %5488
  %5506 = trunc i64 %5505 to i32
  %5507 = xor i32 %5506, %5492
  %5508 = lshr i32 %5507, 4
  %5509 = trunc i32 %5508 to i8
  %5510 = and i8 %5509, 1
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5510, i8* %5511, align 1
  %5512 = icmp eq i32 %5492, 0
  %5513 = zext i1 %5512 to i8
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5513, i8* %5514, align 1
  %5515 = lshr i32 %5492, 31
  %5516 = trunc i32 %5515 to i8
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5516, i8* %5517, align 1
  %5518 = lshr i32 %5491, 31
  %5519 = xor i32 %5515, %5518
  %5520 = add i32 %5519, %5515
  %5521 = icmp eq i32 %5520, 2
  %5522 = zext i1 %5521 to i8
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5522, i8* %5523, align 1
  store %struct.Memory* %loadMem_426f2c, %struct.Memory** %MEMORY
  %loadMem_426f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 1
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5529 to i32*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 15
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %5532 to i64*
  %5533 = load i64, i64* %RBP.i10
  %5534 = sub i64 %5533, 24
  %5535 = load i32, i32* %EAX.i
  %5536 = zext i32 %5535 to i64
  %5537 = load i64, i64* %PC.i9
  %5538 = add i64 %5537, 3
  store i64 %5538, i64* %PC.i9
  %5539 = inttoptr i64 %5534 to i32*
  store i32 %5535, i32* %5539
  store %struct.Memory* %loadMem_426f2f, %struct.Memory** %MEMORY
  %loadMem_426f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5542 to i64*
  %5543 = load i64, i64* %PC.i8
  %5544 = add i64 %5543, -613
  %5545 = load i64, i64* %PC.i8
  %5546 = add i64 %5545, 5
  store i64 %5546, i64* %PC.i8
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5544, i64* %5547, align 8
  store %struct.Memory* %loadMem_426f32, %struct.Memory** %MEMORY
  br label %block_.L_426ccd

block_.L_426f37:                                  ; preds = %block_.L_426ccd
  %loadMem_426f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 33
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5550 to i64*
  %5551 = load i64, i64* %PC.i7
  %5552 = add i64 %5551, 5
  %5553 = load i64, i64* %PC.i7
  %5554 = add i64 %5553, 5
  store i64 %5554, i64* %PC.i7
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5552, i64* %5555, align 8
  store %struct.Memory* %loadMem_426f37, %struct.Memory** %MEMORY
  br label %block_.L_426f3c

block_.L_426f3c:                                  ; preds = %block_.L_426f37, %block_.L_426cb4
  %loadMem_426f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 33
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 1
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 15
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5564 to i64*
  %5565 = load i64, i64* %RBP.i6
  %5566 = sub i64 %5565, 20
  %5567 = load i64, i64* %PC.i5
  %5568 = add i64 %5567, 3
  store i64 %5568, i64* %PC.i5
  %5569 = inttoptr i64 %5566 to i32*
  %5570 = load i32, i32* %5569
  %5571 = zext i32 %5570 to i64
  store i64 %5571, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_426f3c, %struct.Memory** %MEMORY
  %loadMem_426f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 13
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5577 to i64*
  %5578 = load i64, i64* %RSP.i
  %5579 = load i64, i64* %PC.i4
  %5580 = add i64 %5579, 4
  store i64 %5580, i64* %PC.i4
  %5581 = add i64 32, %5578
  store i64 %5581, i64* %RSP.i, align 8
  %5582 = icmp ult i64 %5581, %5578
  %5583 = icmp ult i64 %5581, 32
  %5584 = or i1 %5582, %5583
  %5585 = zext i1 %5584 to i8
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5585, i8* %5586, align 1
  %5587 = trunc i64 %5581 to i32
  %5588 = and i32 %5587, 255
  %5589 = call i32 @llvm.ctpop.i32(i32 %5588)
  %5590 = trunc i32 %5589 to i8
  %5591 = and i8 %5590, 1
  %5592 = xor i8 %5591, 1
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5592, i8* %5593, align 1
  %5594 = xor i64 32, %5578
  %5595 = xor i64 %5594, %5581
  %5596 = lshr i64 %5595, 4
  %5597 = trunc i64 %5596 to i8
  %5598 = and i8 %5597, 1
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5598, i8* %5599, align 1
  %5600 = icmp eq i64 %5581, 0
  %5601 = zext i1 %5600 to i8
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5601, i8* %5602, align 1
  %5603 = lshr i64 %5581, 63
  %5604 = trunc i64 %5603 to i8
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5604, i8* %5605, align 1
  %5606 = lshr i64 %5578, 63
  %5607 = xor i64 %5603, %5606
  %5608 = add i64 %5607, %5603
  %5609 = icmp eq i64 %5608, 2
  %5610 = zext i1 %5609 to i8
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5610, i8* %5611, align 1
  store %struct.Memory* %loadMem_426f3f, %struct.Memory** %MEMORY
  %loadMem_426f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 33
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5614 to i64*
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 15
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5617 to i64*
  %5618 = load i64, i64* %PC.i2
  %5619 = add i64 %5618, 1
  store i64 %5619, i64* %PC.i2
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5621 = load i64, i64* %5620, align 8
  %5622 = add i64 %5621, 8
  %5623 = inttoptr i64 %5621 to i64*
  %5624 = load i64, i64* %5623
  store i64 %5624, i64* %RBP.i3, align 8
  store i64 %5622, i64* %5620, align 8
  store %struct.Memory* %loadMem_426f43, %struct.Memory** %MEMORY
  %loadMem_426f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 33
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %PC.i1
  %5629 = add i64 %5628, 1
  store i64 %5629, i64* %PC.i1
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5632 = load i64, i64* %5631, align 8
  %5633 = inttoptr i64 %5632 to i64*
  %5634 = load i64, i64* %5633
  store i64 %5634, i64* %5630, align 8
  %5635 = add i64 %5632, 8
  store i64 %5635, i64* %5631, align 8
  store %struct.Memory* %loadMem_426f44, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_426f44
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

define %struct.Memory* @routine_movq__0x4bfd9d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfd9d_type* @G__0x4bfd9d to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq_0x93c__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x725600___rax_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7493120
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 120, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x70f6d0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movq__0x4bfdb7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfdb7_type* @G__0x4bfdb7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7242a0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72000
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

define %struct.Memory* @routine_jge_.L_426cb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__cl___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = trunc i64 %15 to i5
  switch i5 %18, label %25 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %19
  ]

; <label>:19:                                     ; preds = %block_400488
  %20 = trunc i64 %13 to i32
  %21 = shl i32 %20, 1
  %22 = icmp slt i32 %20, 0
  %23 = icmp slt i32 %21, 0
  %24 = xor i1 %22, %23
  br label %34

; <label>:25:                                     ; preds = %block_400488
  %26 = and i64 %15, 31
  %27 = add i64 %26, 4294967295
  %28 = and i64 %13, 4294967295
  %29 = and i64 %27, 4294967295
  %30 = shl i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 0
  %33 = shl i32 %31, 1
  br label %34

; <label>:34:                                     ; preds = %25, %19
  %35 = phi i1 [ %22, %19 ], [ %32, %25 ]
  %36 = phi i1 [ %24, %19 ], [ false, %25 ]
  %37 = phi i32 [ %21, %19 ], [ %33, %25 ]
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %RAX, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %40 = zext i1 %35 to i8
  store i8 %40, i8* %39, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %42 = and i32 %37, 254
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  store i8 %46, i8* %41, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %49 = icmp eq i32 %37, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %48, align 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = lshr i32 %37, 31
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %51, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %55 = zext i1 %36 to i8
  store i8 %55, i8* %54, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400488, %34
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jne_.L_426ab2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = xor i32 %25, %28
  %30 = add i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_426b31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bfdd3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfdd3_type* @G__0x4bfdd3 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x4bfdeb___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfdeb_type* @G__0x4bfdeb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rcx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__0x4bfdfe___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfdfe_type* @G__0x4bfdfe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_426b4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_426bde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_426c86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bfe11___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe11_type* @G__0x4bfe11 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_426c81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bfe27___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe27_type* @G__0x4bfe27 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
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
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4bfe38___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe38_type* @G__0x4bfe38 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_426c03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426ca1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426ca6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426a54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_426f3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72004
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

define %struct.Memory* @routine_jge_.L_426f37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_426d2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_426dae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bfe49___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe49_type* @G__0x4bfe49 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4bfe61___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe61_type* @G__0x4bfe61 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4bfe74___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe74_type* @G__0x4bfe74 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_426dc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_426e5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_426f09(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bfe87___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe87_type* @G__0x4bfe87 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_426f04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bfe9d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfe9d_type* @G__0x4bfe9d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4bfeae___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bfeae_type* @G__0x4bfeae to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_426e84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426f24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426f29(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426ccd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_426f3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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
