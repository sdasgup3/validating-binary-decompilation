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
%G_0x618d70_type = type <{ [4 x i8] }>
%G_0x6195c0_type = type <{ [4 x i8] }>
%G_0x6195e0_type = type <{ [4 x i8] }>
%G_0x6195e4_type = type <{ [4 x i8] }>
%G_0x6195f0_type = type <{ [8 x i8] }>
%G_0x6195f8_type = type <{ [4 x i8] }>
%G_0x6195fc_type = type <{ [4 x i8] }>
%G_0x619610_type = type <{ [4 x i8] }>
%G__0x416871_type = type <{ [8 x i8] }>
%G__0x416880_type = type <{ [8 x i8] }>
%G__0x416894_type = type <{ [8 x i8] }>
%G__0x4168b3_type = type <{ [8 x i8] }>
%G__0x4168d2_type = type <{ [8 x i8] }>
%G__0x4168f4_type = type <{ [8 x i8] }>
%G__0x416918_type = type <{ [8 x i8] }>
%G__0x41692c_type = type <{ [8 x i8] }>
%G__0x416952_type = type <{ [8 x i8] }>
%G__0x416975_type = type <{ [8 x i8] }>
%G__0x41699b_type = type <{ [8 x i8] }>
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
@G_0x618d70 = global %G_0x618d70_type zeroinitializer
@G_0x6195c0 = global %G_0x6195c0_type zeroinitializer
@G_0x6195e0 = global %G_0x6195e0_type zeroinitializer
@G_0x6195e4 = global %G_0x6195e4_type zeroinitializer
@G_0x6195f0 = global %G_0x6195f0_type zeroinitializer
@G_0x6195f8 = global %G_0x6195f8_type zeroinitializer
@G_0x6195fc = global %G_0x6195fc_type zeroinitializer
@G_0x619610 = global %G_0x619610_type zeroinitializer
@G__0x416871 = global %G__0x416871_type zeroinitializer
@G__0x416880 = global %G__0x416880_type zeroinitializer
@G__0x416894 = global %G__0x416894_type zeroinitializer
@G__0x4168b3 = global %G__0x4168b3_type zeroinitializer
@G__0x4168d2 = global %G__0x4168d2_type zeroinitializer
@G__0x4168f4 = global %G__0x4168f4_type zeroinitializer
@G__0x416918 = global %G__0x416918_type zeroinitializer
@G__0x41692c = global %G__0x41692c_type zeroinitializer
@G__0x416952 = global %G__0x416952_type zeroinitializer
@G__0x416975 = global %G__0x416975_type zeroinitializer
@G__0x41699b = global %G__0x41699b_type zeroinitializer

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

declare %struct.Memory* @sub_4141c0.spec_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415620.debug_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4144f0.spec_load(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415630.spec_initbufs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415660.spec_compress(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_414e80.spec_reset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_414e50.spec_rewind(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415690.spec_uncompress(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_415250 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_415250, %struct.Memory** %MEMORY
  %loadMem_415251 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_415251, %struct.Memory** %MEMORY
  %loadMem_415254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i44 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i44
  %36 = load i64, i64* %PC.i43
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i43
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i44, align 8
  %39 = icmp ult i64 %35, 144
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
  %49 = xor i64 144, %35
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
  store %struct.Memory* %loadMem_415254, %struct.Memory** %MEMORY
  %loadMem_41525b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i67
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i67
  store i64 ptrtoint (%G__0x416871_type* @G__0x416871 to i64), i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_41525b, %struct.Memory** %MEMORY
  %loadMem_415265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i77
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i76
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i76
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_415265, %struct.Memory** %MEMORY
  %loadMem_41526c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %EDI.i128 = bitcast %union.anon* %91 to i32*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i129
  %96 = sub i64 %95, 8
  %97 = load i32, i32* %EDI.i128
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC.i127
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC.i127
  %101 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %101
  store %struct.Memory* %loadMem_41526c, %struct.Memory** %MEMORY
  %loadMem_41526f = load %struct.Memory*, %struct.Memory** %MEMORY
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 33
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RSI.i159 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RBP.i160
  %112 = sub i64 %111, 16
  %113 = load i64, i64* %RSI.i159
  %114 = load i64, i64* %PC.i158
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC.i158
  %116 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %116
  store %struct.Memory* %loadMem_41526f, %struct.Memory** %MEMORY
  %loadMem_415273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i192
  %124 = sub i64 %123, 28
  %125 = load i64, i64* %PC.i191
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC.i191
  %127 = inttoptr i64 %124 to i32*
  store i32 64, i32* %127
  store %struct.Memory* %loadMem_415273, %struct.Memory** %MEMORY
  %loadMem_41527a = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i223
  %138 = sub i64 %137, 40
  %139 = load i64, i64* %RAX.i222
  %140 = load i64, i64* %PC.i221
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i221
  %142 = inttoptr i64 %138 to i64*
  store i64 %139, i64* %142
  store %struct.Memory* %loadMem_41527a, %struct.Memory** %MEMORY
  %loadMem_41527e = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i291
  %147 = add i64 %146, 12
  store i64 %147, i64* %PC.i291
  store i64 10, i64* bitcast (%G_0x6195c0_type* @G_0x6195c0 to i64*)
  store %struct.Memory* %loadMem_41527e, %struct.Memory** %MEMORY
  %loadMem_41528a = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 15
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RBP.i300
  %155 = sub i64 %154, 8
  %156 = load i64, i64* %PC.i299
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC.i299
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = sub i32 %159, 1
  %161 = icmp ult i32 %159, 1
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
  %170 = xor i32 %159, 1
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
  store %struct.Memory* %loadMem_41528a, %struct.Memory** %MEMORY
  %loadMem_41528e = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %PC.i312
  %192 = add i64 %191, 18
  %193 = load i64, i64* %PC.i312
  %194 = add i64 %193, 6
  %195 = load i64, i64* %PC.i312
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC.i312
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %198 = load i8, i8* %197, align 1
  %199 = icmp ne i8 %198, 0
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %201 = load i8, i8* %200, align 1
  %202 = icmp ne i8 %201, 0
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %204 = load i8, i8* %203, align 1
  %205 = icmp ne i8 %204, 0
  %206 = xor i1 %202, %205
  %207 = or i1 %199, %206
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %BRANCH_TAKEN, align 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = select i1 %207, i64 %192, i64 %194
  store i64 %210, i64* %209, align 8
  store %struct.Memory* %loadMem_41528e, %struct.Memory** %MEMORY
  %loadBr_41528e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41528e = icmp eq i8 %loadBr_41528e, 1
  br i1 %cmpBr_41528e, label %block_.L_4152a0, label %block_415294

block_415294:                                     ; preds = %entry
  %loadMem_415294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %RBP.i321
  %221 = sub i64 %220, 16
  %222 = load i64, i64* %PC.i319
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC.i319
  %224 = inttoptr i64 %221 to i64*
  %225 = load i64, i64* %224
  store i64 %225, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_415294, %struct.Memory** %MEMORY
  %loadMem_415298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RAX.i343
  %233 = add i64 %232, 8
  %234 = load i64, i64* %PC.i342
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC.i342
  %236 = inttoptr i64 %233 to i64*
  %237 = load i64, i64* %236
  store i64 %237, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_415298, %struct.Memory** %MEMORY
  %loadMem_41529c = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i379
  %248 = sub i64 %247, 40
  %249 = load i64, i64* %RAX.i378
  %250 = load i64, i64* %PC.i377
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC.i377
  %252 = inttoptr i64 %248 to i64*
  store i64 %249, i64* %252
  store %struct.Memory* %loadMem_41529c, %struct.Memory** %MEMORY
  br label %block_.L_4152a0

block_.L_4152a0:                                  ; preds = %block_415294, %entry
  %loadMem_4152a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RBP.i430
  %260 = sub i64 %259, 8
  %261 = load i64, i64* %PC.i429
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC.i429
  %263 = inttoptr i64 %260 to i32*
  %264 = load i32, i32* %263
  %265 = sub i32 %264, 2
  %266 = icmp ult i32 %264, 2
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %267, i8* %268, align 1
  %269 = and i32 %265, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1
  %275 = xor i32 %264, 2
  %276 = xor i32 %275, %265
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %279, i8* %280, align 1
  %281 = icmp eq i32 %265, 0
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %283, align 1
  %284 = lshr i32 %265, 31
  %285 = trunc i32 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %285, i8* %286, align 1
  %287 = lshr i32 %264, 31
  %288 = xor i32 %284, %287
  %289 = add i32 %288, %287
  %290 = icmp eq i32 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1
  store %struct.Memory* %loadMem_4152a0, %struct.Memory** %MEMORY
  %loadMem_4152a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %PC.i444
  %297 = add i64 %296, 22
  %298 = load i64, i64* %PC.i444
  %299 = add i64 %298, 6
  %300 = load i64, i64* %PC.i444
  %301 = add i64 %300, 6
  store i64 %301, i64* %PC.i444
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %303 = load i8, i8* %302, align 1
  %304 = icmp ne i8 %303, 0
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %306 = load i8, i8* %305, align 1
  %307 = icmp ne i8 %306, 0
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %309 = load i8, i8* %308, align 1
  %310 = icmp ne i8 %309, 0
  %311 = xor i1 %307, %310
  %312 = or i1 %304, %311
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %BRANCH_TAKEN, align 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %315 = select i1 %312, i64 %297, i64 %299
  store i64 %315, i64* %314, align 8
  store %struct.Memory* %loadMem_4152a4, %struct.Memory** %MEMORY
  %loadBr_4152a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4152a4 = icmp eq i8 %loadBr_4152a4, 1
  br i1 %cmpBr_4152a4, label %block_.L_4152ba, label %block_4152aa

block_4152aa:                                     ; preds = %block_.L_4152a0
  %loadMem_4152aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RBP.i451
  %326 = sub i64 %325, 16
  %327 = load i64, i64* %PC.i449
  %328 = add i64 %327, 4
  store i64 %328, i64* %PC.i449
  %329 = inttoptr i64 %326 to i64*
  %330 = load i64, i64* %329
  store i64 %330, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_4152aa, %struct.Memory** %MEMORY
  %loadMem_4152ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 11
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RDI.i448 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RAX.i447
  %341 = add i64 %340, 16
  %342 = load i64, i64* %PC.i446
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC.i446
  %344 = inttoptr i64 %341 to i64*
  %345 = load i64, i64* %344
  store i64 %345, i64* %RDI.i448, align 8
  store %struct.Memory* %loadMem_4152ae, %struct.Memory** %MEMORY
  %loadMem1_4152b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %PC.i445
  %350 = add i64 %349, -84274
  %351 = load i64, i64* %PC.i445
  %352 = add i64 %351, 5
  %353 = load i64, i64* %PC.i445
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC.i445
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %352, i64* %358
  store i64 %357, i64* %355, align 8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %350, i64* %359, align 8
  store %struct.Memory* %loadMem1_4152b2, %struct.Memory** %MEMORY
  %loadMem2_4152b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4152b2 = load i64, i64* %3
  %360 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %loadMem2_4152b2)
  store %struct.Memory* %360, %struct.Memory** %MEMORY
  %loadMem_4152b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %366 to i32*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i443
  %371 = sub i64 %370, 28
  %372 = load i32, i32* %EAX.i442
  %373 = zext i32 %372 to i64
  %374 = load i64, i64* %PC.i441
  %375 = add i64 %374, 3
  store i64 %375, i64* %PC.i441
  %376 = inttoptr i64 %371 to i32*
  store i32 %372, i32* %376
  store %struct.Memory* %loadMem_4152b7, %struct.Memory** %MEMORY
  br label %block_.L_4152ba

block_.L_4152ba:                                  ; preds = %block_4152aa, %block_.L_4152a0
  %loadMem_4152ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i440
  %384 = sub i64 %383, 8
  %385 = load i64, i64* %PC.i439
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC.i439
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = sub i32 %388, 3
  %390 = icmp ult i32 %388, 3
  %391 = zext i1 %390 to i8
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %391, i8* %392, align 1
  %393 = and i32 %389, 255
  %394 = call i32 @llvm.ctpop.i32(i32 %393)
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %397, i8* %398, align 1
  %399 = xor i32 %388, 3
  %400 = xor i32 %399, %389
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %403, i8* %404, align 1
  %405 = icmp eq i32 %389, 0
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %406, i8* %407, align 1
  %408 = lshr i32 %389, 31
  %409 = trunc i32 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %409, i8* %410, align 1
  %411 = lshr i32 %388, 31
  %412 = xor i32 %408, %411
  %413 = add i32 %412, %411
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1
  store %struct.Memory* %loadMem_4152ba, %struct.Memory** %MEMORY
  %loadMem_4152be = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %PC.i438
  %421 = add i64 %420, 27
  %422 = load i64, i64* %PC.i438
  %423 = add i64 %422, 6
  %424 = load i64, i64* %PC.i438
  %425 = add i64 %424, 6
  store i64 %425, i64* %PC.i438
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %427 = load i8, i8* %426, align 1
  %428 = icmp ne i8 %427, 0
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %430 = load i8, i8* %429, align 1
  %431 = icmp ne i8 %430, 0
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %433 = load i8, i8* %432, align 1
  %434 = icmp ne i8 %433, 0
  %435 = xor i1 %431, %434
  %436 = or i1 %428, %435
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %BRANCH_TAKEN, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %439 = select i1 %436, i64 %421, i64 %423
  store i64 %439, i64* %438, align 8
  store %struct.Memory* %loadMem_4152be, %struct.Memory** %MEMORY
  %loadBr_4152be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4152be = icmp eq i8 %loadBr_4152be, 1
  br i1 %cmpBr_4152be, label %block_.L_4152d9, label %block_4152c4

block_4152c4:                                     ; preds = %block_.L_4152ba
  %loadMem_4152c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i437
  %450 = sub i64 %449, 16
  %451 = load i64, i64* %PC.i435
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC.i435
  %453 = inttoptr i64 %450 to i64*
  %454 = load i64, i64* %453
  store i64 %454, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_4152c4, %struct.Memory** %MEMORY
  %loadMem_4152c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 11
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RDI.i434 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RAX.i433
  %465 = add i64 %464, 24
  %466 = load i64, i64* %PC.i432
  %467 = add i64 %466, 4
  store i64 %467, i64* %PC.i432
  %468 = inttoptr i64 %465 to i64*
  %469 = load i64, i64* %468
  store i64 %469, i64* %RDI.i434, align 8
  store %struct.Memory* %loadMem_4152c8, %struct.Memory** %MEMORY
  %loadMem1_4152cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %PC.i431
  %474 = add i64 %473, -84300
  %475 = load i64, i64* %PC.i431
  %476 = add i64 %475, 5
  %477 = load i64, i64* %PC.i431
  %478 = add i64 %477, 5
  store i64 %478, i64* %PC.i431
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = add i64 %480, -8
  %482 = inttoptr i64 %481 to i64*
  store i64 %476, i64* %482
  store i64 %481, i64* %479, align 8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %474, i64* %483, align 8
  store %struct.Memory* %loadMem1_4152cc, %struct.Memory** %MEMORY
  %loadMem2_4152cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4152cc = load i64, i64* %3
  %484 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %loadMem2_4152cc)
  store %struct.Memory* %484, %struct.Memory** %MEMORY
  %loadMem_4152d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %EAX.i427 = bitcast %union.anon* %490 to i32*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 15
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %RBP.i428
  %495 = sub i64 %494, 32
  %496 = load i32, i32* %EAX.i427
  %497 = zext i32 %496 to i64
  %498 = load i64, i64* %PC.i426
  %499 = add i64 %498, 3
  store i64 %499, i64* %PC.i426
  %500 = inttoptr i64 %495 to i32*
  store i32 %496, i32* %500
  store %struct.Memory* %loadMem_4152d1, %struct.Memory** %MEMORY
  %loadMem_4152d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %PC.i425
  %505 = add i64 %504, 11
  %506 = load i64, i64* %PC.i425
  %507 = add i64 %506, 5
  store i64 %507, i64* %PC.i425
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %505, i64* %508, align 8
  store %struct.Memory* %loadMem_4152d4, %struct.Memory** %MEMORY
  br label %block_.L_4152df

block_.L_4152d9:                                  ; preds = %block_.L_4152ba
  %loadMem_4152d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RBP.i424
  %519 = sub i64 %518, 28
  %520 = load i64, i64* %PC.i422
  %521 = add i64 %520, 3
  store i64 %521, i64* %PC.i422
  %522 = inttoptr i64 %519 to i32*
  %523 = load i32, i32* %522
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_4152d9, %struct.Memory** %MEMORY
  %loadMem_4152dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %530 to i32*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i421
  %535 = sub i64 %534, 32
  %536 = load i32, i32* %EAX.i420
  %537 = zext i32 %536 to i64
  %538 = load i64, i64* %PC.i419
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC.i419
  %540 = inttoptr i64 %535 to i32*
  store i32 %536, i32* %540
  store %struct.Memory* %loadMem_4152dc, %struct.Memory** %MEMORY
  br label %block_.L_4152df

block_.L_4152df:                                  ; preds = %block_.L_4152d9, %block_4152c4
  %loadMem_4152df = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i418
  %551 = sub i64 %550, 28
  %552 = load i64, i64* %PC.i416
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC.i416
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_4152df, %struct.Memory** %MEMORY
  %loadMem_4152e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RAX.i415
  %564 = load i64, i64* %PC.i414
  %565 = add i64 %564, 3
  store i64 %565, i64* %PC.i414
  %566 = and i64 %563, 4294967295
  %567 = shl i64 %566, 19
  %568 = trunc i64 %567 to i32
  %569 = icmp slt i32 %568, 0
  %570 = shl i32 %568, 1
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX.i415, align 8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %573 = zext i1 %569 to i8
  store i8 %573, i8* %572, align 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %574, align 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %575, align 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %577 = icmp eq i32 %570, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %576, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %580 = lshr i32 %570, 31
  %581 = trunc i32 %580 to i8
  store i8 %581, i8* %579, align 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %582, align 1
  store %struct.Memory* %loadMem_4152e2, %struct.Memory** %MEMORY
  %loadMem_4152e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 1
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %EAX.i413 = bitcast %union.anon* %588 to i32*
  %589 = load i32, i32* %EAX.i413
  %590 = zext i32 %589 to i64
  %591 = load i64, i64* %PC.i412
  %592 = add i64 %591, 7
  store i64 %592, i64* %PC.i412
  store i32 %589, i32* bitcast (%G_0x6195e0_type* @G_0x6195e0 to i32*)
  store %struct.Memory* %loadMem_4152e5, %struct.Memory** %MEMORY
  %loadMem_4152ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 15
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RBP.i411
  %603 = sub i64 %602, 32
  %604 = load i64, i64* %PC.i409
  %605 = add i64 %604, 3
  store i64 %605, i64* %PC.i409
  %606 = inttoptr i64 %603 to i32*
  %607 = load i32, i32* %606
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_4152ec, %struct.Memory** %MEMORY
  %loadMem_4152ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RAX.i408
  %616 = load i64, i64* %PC.i407
  %617 = add i64 %616, 3
  store i64 %617, i64* %PC.i407
  %618 = and i64 %615, 4294967295
  %619 = shl i64 %618, 19
  %620 = trunc i64 %619 to i32
  %621 = icmp slt i32 %620, 0
  %622 = shl i32 %620, 1
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX.i408, align 8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %625 = zext i1 %621 to i8
  store i8 %625, i8* %624, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %626, align 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %627, align 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %629 = icmp eq i32 %622, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %628, align 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %632 = lshr i32 %622, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %631, align 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %634, align 1
  store %struct.Memory* %loadMem_4152ef, %struct.Memory** %MEMORY
  %loadMem_4152f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %EAX.i406 = bitcast %union.anon* %640 to i32*
  %641 = load i32, i32* %EAX.i406
  %642 = zext i32 %641 to i64
  %643 = load i64, i64* %PC.i405
  %644 = add i64 %643, 7
  store i64 %644, i64* %PC.i405
  store i32 %641, i32* bitcast (%G_0x6195f8_type* @G_0x6195f8 to i32*)
  store %struct.Memory* %loadMem_4152f2, %struct.Memory** %MEMORY
  %loadMem_4152f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 15
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RBP.i404
  %655 = sub i64 %654, 28
  %656 = load i64, i64* %PC.i402
  %657 = add i64 %656, 3
  store i64 %657, i64* %PC.i402
  %658 = inttoptr i64 %655 to i32*
  %659 = load i32, i32* %658
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_4152f9, %struct.Memory** %MEMORY
  %loadMem_4152fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %RAX.i401
  %668 = load i64, i64* %PC.i400
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC.i400
  %670 = and i64 %667, 4294967295
  %671 = shl i64 %670, 19
  %672 = trunc i64 %671 to i32
  %673 = icmp slt i32 %672, 0
  %674 = shl i32 %672, 1
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX.i401, align 8
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %677 = zext i1 %673 to i8
  store i8 %677, i8* %676, align 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %678, align 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %679, align 1
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %681 = icmp eq i32 %674, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %680, align 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %684 = lshr i32 %674, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %683, align 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %686, align 1
  store %struct.Memory* %loadMem_4152fc, %struct.Memory** %MEMORY
  %loadMem_4152ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %692 to i32*
  %693 = load i32, i32* %EAX.i399
  %694 = zext i32 %693 to i64
  %695 = load i64, i64* %PC.i398
  %696 = add i64 %695, 7
  store i64 %696, i64* %PC.i398
  store i32 %693, i32* bitcast (%G_0x619610_type* @G_0x619610 to i32*)
  store %struct.Memory* %loadMem_4152ff, %struct.Memory** %MEMORY
  %loadMem1_415306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %PC.i397
  %701 = add i64 %700, -4422
  %702 = load i64, i64* %PC.i397
  %703 = add i64 %702, 5
  %704 = load i64, i64* %PC.i397
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i397
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %703, i64* %709
  store i64 %708, i64* %706, align 8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %701, i64* %710, align 8
  store %struct.Memory* %loadMem1_415306, %struct.Memory** %MEMORY
  %loadMem2_415306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415306 = load i64, i64* %3
  %call2_415306 = call %struct.Memory* @sub_4141c0.spec_init(%struct.State* %0, i64 %loadPC_415306, %struct.Memory* %loadMem2_415306)
  store %struct.Memory* %call2_415306, %struct.Memory** %MEMORY
  %loadMem_41530b = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %EAX.i395 = bitcast %union.anon* %716 to i32*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i396
  %721 = sub i64 %720, 52
  %722 = load i32, i32* %EAX.i395
  %723 = zext i32 %722 to i64
  %724 = load i64, i64* %PC.i394
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i394
  %726 = inttoptr i64 %721 to i32*
  store i32 %722, i32* %726
  store %struct.Memory* %loadMem_41530b, %struct.Memory** %MEMORY
  %loadMem1_41530e = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %PC.i393
  %731 = add i64 %730, 786
  %732 = load i64, i64* %PC.i393
  %733 = add i64 %732, 5
  %734 = load i64, i64* %PC.i393
  %735 = add i64 %734, 5
  store i64 %735, i64* %PC.i393
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = add i64 %737, -8
  %739 = inttoptr i64 %738 to i64*
  store i64 %733, i64* %739
  store i64 %738, i64* %736, align 8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %731, i64* %740, align 8
  store %struct.Memory* %loadMem1_41530e, %struct.Memory** %MEMORY
  %loadMem2_41530e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41530e = load i64, i64* %3
  %call2_41530e = call %struct.Memory* @sub_415620.debug_time(%struct.State* %0, i64 %loadPC_41530e, %struct.Memory* %loadMem2_41530e)
  store %struct.Memory* %call2_41530e, %struct.Memory** %MEMORY
  %loadMem_415313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 5
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %PC.i391
  %748 = add i64 %747, 5
  store i64 %748, i64* %PC.i391
  store i64 2, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_415313, %struct.Memory** %MEMORY
  %loadMem_415318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 5
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %ECX.i390 = bitcast %union.anon* %754 to i32*
  %755 = load i32, i32* %ECX.i390
  %756 = zext i32 %755 to i64
  %757 = load i64, i64* %PC.i389
  %758 = add i64 %757, 7
  store i64 %758, i64* %PC.i389
  %759 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %760 = sub i32 %755, %759
  %761 = icmp ult i32 %755, %759
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %762, i8* %763, align 1
  %764 = and i32 %760, 255
  %765 = call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %768, i8* %769, align 1
  %770 = xor i32 %759, %755
  %771 = xor i32 %770, %760
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %774, i8* %775, align 1
  %776 = icmp eq i32 %760, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1
  %779 = lshr i32 %760, 31
  %780 = trunc i32 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1
  %782 = lshr i32 %755, 31
  %783 = lshr i32 %759, 31
  %784 = xor i32 %783, %782
  %785 = xor i32 %779, %782
  %786 = add i32 %785, %784
  %787 = icmp eq i32 %786, 2
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %788, i8* %789, align 1
  store %struct.Memory* %loadMem_415318, %struct.Memory** %MEMORY
  %loadMem_41531f = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %795 to i32*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 15
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %RBP.i388
  %800 = sub i64 %799, 56
  %801 = load i32, i32* %EAX.i387
  %802 = zext i32 %801 to i64
  %803 = load i64, i64* %PC.i386
  %804 = add i64 %803, 3
  store i64 %804, i64* %PC.i386
  %805 = inttoptr i64 %800 to i32*
  store i32 %801, i32* %805
  store %struct.Memory* %loadMem_41531f, %struct.Memory** %MEMORY
  %loadMem_415322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 33
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %PC.i385
  %810 = add i64 %809, 26
  %811 = load i64, i64* %PC.i385
  %812 = add i64 %811, 6
  %813 = load i64, i64* %PC.i385
  %814 = add i64 %813, 6
  store i64 %814, i64* %PC.i385
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %816 = load i8, i8* %815, align 1
  %817 = icmp ne i8 %816, 0
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %819 = load i8, i8* %818, align 1
  %820 = icmp ne i8 %819, 0
  %821 = xor i1 %817, %820
  %822 = xor i1 %821, true
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %BRANCH_TAKEN, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %825 = select i1 %821, i64 %812, i64 %810
  store i64 %825, i64* %824, align 8
  store %struct.Memory* %loadMem_415322, %struct.Memory** %MEMORY
  %loadBr_415322 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415322 = icmp eq i8 %loadBr_415322, 1
  br i1 %cmpBr_415322, label %block_.L_41533c, label %block_415328

block_415328:                                     ; preds = %block_.L_4152df
  %loadMem_415328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 11
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RDI.i384 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %PC.i383
  %833 = add i64 %832, 10
  store i64 %833, i64* %PC.i383
  store i64 ptrtoint (%G__0x416880_type* @G__0x416880 to i64), i64* %RDI.i384, align 8
  store %struct.Memory* %loadMem_415328, %struct.Memory** %MEMORY
  %loadMem_415332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %840 = bitcast %union.anon* %839 to %struct.anon.2*
  %AL.i382 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %840, i32 0, i32 0
  %841 = load i64, i64* %PC.i381
  %842 = add i64 %841, 2
  store i64 %842, i64* %PC.i381
  store i8 0, i8* %AL.i382, align 1
  store %struct.Memory* %loadMem_415332, %struct.Memory** %MEMORY
  %loadMem1_415334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %845 to i64*
  %846 = load i64, i64* %PC.i380
  %847 = add i64 %846, -84564
  %848 = load i64, i64* %PC.i380
  %849 = add i64 %848, 5
  %850 = load i64, i64* %PC.i380
  %851 = add i64 %850, 5
  store i64 %851, i64* %PC.i380
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %853 = load i64, i64* %852, align 8
  %854 = add i64 %853, -8
  %855 = inttoptr i64 %854 to i64*
  store i64 %849, i64* %855
  store i64 %854, i64* %852, align 8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %847, i64* %856, align 8
  store %struct.Memory* %loadMem1_415334, %struct.Memory** %MEMORY
  %loadMem2_415334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415334 = load i64, i64* %3
  %857 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_415334)
  store %struct.Memory* %857, %struct.Memory** %MEMORY
  %loadMem_415339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %EAX.i375 = bitcast %union.anon* %863 to i32*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i376
  %868 = sub i64 %867, 60
  %869 = load i32, i32* %EAX.i375
  %870 = zext i32 %869 to i64
  %871 = load i64, i64* %PC.i374
  %872 = add i64 %871, 3
  store i64 %872, i64* %PC.i374
  %873 = inttoptr i64 %868 to i32*
  store i32 %869, i32* %873
  store %struct.Memory* %loadMem_415339, %struct.Memory** %MEMORY
  br label %block_.L_41533c

block_.L_41533c:                                  ; preds = %block_415328, %block_.L_4152df
  %loadMem_41533c = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 11
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %EDI.i372 = bitcast %union.anon* %879 to i32*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 11
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RDI.i373 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RDI.i373
  %884 = load i32, i32* %EDI.i372
  %885 = zext i32 %884 to i64
  %886 = load i64, i64* %PC.i371
  %887 = add i64 %886, 2
  store i64 %887, i64* %PC.i371
  %888 = xor i64 %885, %883
  %889 = trunc i64 %888 to i32
  %890 = and i64 %888, 4294967295
  store i64 %890, i64* %RDI.i373, align 8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %891, align 1
  %892 = and i32 %889, 255
  %893 = call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %896, i8* %897, align 1
  %898 = icmp eq i32 %889, 0
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %899, i8* %900, align 1
  %901 = lshr i32 %889, 31
  %902 = trunc i32 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %902, i8* %903, align 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %904, align 1
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %905, align 1
  store %struct.Memory* %loadMem_41533c, %struct.Memory** %MEMORY
  %loadMem_41533e = load %struct.Memory*, %struct.Memory** %MEMORY
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 33
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 9
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RSI.i369 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 15
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %RBP.i370
  %916 = sub i64 %915, 40
  %917 = load i64, i64* %PC.i368
  %918 = add i64 %917, 4
  store i64 %918, i64* %PC.i368
  %919 = inttoptr i64 %916 to i64*
  %920 = load i64, i64* %919
  store i64 %920, i64* %RSI.i369, align 8
  store %struct.Memory* %loadMem_41533e, %struct.Memory** %MEMORY
  %loadMem_415342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 15
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RBP.i367
  %931 = sub i64 %930, 28
  %932 = load i64, i64* %PC.i365
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i365
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_415342, %struct.Memory** %MEMORY
  %loadMem_415345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 1
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %RAX.i364
  %944 = load i64, i64* %PC.i363
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC.i363
  %946 = and i64 %943, 4294967295
  %947 = shl i64 %946, 19
  %948 = trunc i64 %947 to i32
  %949 = icmp slt i32 %948, 0
  %950 = shl i32 %948, 1
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i364, align 8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %953 = zext i1 %949 to i8
  store i8 %953, i8* %952, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %954, align 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %955, align 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %957 = icmp eq i32 %950, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %956, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %960 = lshr i32 %950, 31
  %961 = trunc i32 %960 to i8
  store i8 %961, i8* %959, align 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %962, align 1
  store %struct.Memory* %loadMem_415345, %struct.Memory** %MEMORY
  %loadMem_415348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 1
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %968 to i32*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 7
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %971 to i64*
  %972 = load i32, i32* %EAX.i361
  %973 = zext i32 %972 to i64
  %974 = load i64, i64* %PC.i360
  %975 = add i64 %974, 2
  store i64 %975, i64* %PC.i360
  %976 = and i64 %973, 4294967295
  store i64 %976, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_415348, %struct.Memory** %MEMORY
  %loadMem1_41534a = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %PC.i359
  %981 = add i64 %980, -3674
  %982 = load i64, i64* %PC.i359
  %983 = add i64 %982, 5
  %984 = load i64, i64* %PC.i359
  %985 = add i64 %984, 5
  store i64 %985, i64* %PC.i359
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %987 = load i64, i64* %986, align 8
  %988 = add i64 %987, -8
  %989 = inttoptr i64 %988 to i64*
  store i64 %983, i64* %989
  store i64 %988, i64* %986, align 8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %981, i64* %990, align 8
  store %struct.Memory* %loadMem1_41534a, %struct.Memory** %MEMORY
  %loadMem2_41534a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41534a = load i64, i64* %3
  %call2_41534a = call %struct.Memory* @sub_4144f0.spec_load(%struct.State* %0, i64 %loadPC_41534a, %struct.Memory* %loadMem2_41534a)
  store %struct.Memory* %call2_41534a, %struct.Memory** %MEMORY
  %loadMem_41534f = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 7
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %PC.i357
  %998 = add i64 %997, 5
  store i64 %998, i64* %PC.i357
  store i64 3, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_41534f, %struct.Memory** %MEMORY
  %loadMem_415354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 7
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %EDX.i356 = bitcast %union.anon* %1004 to i32*
  %1005 = load i32, i32* %EDX.i356
  %1006 = zext i32 %1005 to i64
  %1007 = load i64, i64* %PC.i355
  %1008 = add i64 %1007, 7
  store i64 %1008, i64* %PC.i355
  %1009 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %1010 = sub i32 %1005, %1009
  %1011 = icmp ult i32 %1005, %1009
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1012, i8* %1013, align 1
  %1014 = and i32 %1010, 255
  %1015 = call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1018, i8* %1019, align 1
  %1020 = xor i32 %1009, %1005
  %1021 = xor i32 %1020, %1010
  %1022 = lshr i32 %1021, 4
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1024, i8* %1025, align 1
  %1026 = icmp eq i32 %1010, 0
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1027, i8* %1028, align 1
  %1029 = lshr i32 %1010, 31
  %1030 = trunc i32 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1030, i8* %1031, align 1
  %1032 = lshr i32 %1005, 31
  %1033 = lshr i32 %1009, 31
  %1034 = xor i32 %1033, %1032
  %1035 = xor i32 %1029, %1032
  %1036 = add i32 %1035, %1034
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1038, i8* %1039, align 1
  store %struct.Memory* %loadMem_415354, %struct.Memory** %MEMORY
  %loadMem_41535b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %1045 to i32*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 15
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1048 to i64*
  %1049 = load i64, i64* %RBP.i354
  %1050 = sub i64 %1049, 64
  %1051 = load i32, i32* %EAX.i353
  %1052 = zext i32 %1051 to i64
  %1053 = load i64, i64* %PC.i352
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i352
  %1055 = inttoptr i64 %1050 to i32*
  store i32 %1051, i32* %1055
  store %struct.Memory* %loadMem_41535b, %struct.Memory** %MEMORY
  %loadMem_41535e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %PC.i351
  %1060 = add i64 %1059, 33
  %1061 = load i64, i64* %PC.i351
  %1062 = add i64 %1061, 6
  %1063 = load i64, i64* %PC.i351
  %1064 = add i64 %1063, 6
  store i64 %1064, i64* %PC.i351
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1066 = load i8, i8* %1065, align 1
  %1067 = icmp ne i8 %1066, 0
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1069 = load i8, i8* %1068, align 1
  %1070 = icmp ne i8 %1069, 0
  %1071 = xor i1 %1067, %1070
  %1072 = xor i1 %1071, true
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %BRANCH_TAKEN, align 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1075 = select i1 %1071, i64 %1062, i64 %1060
  store i64 %1075, i64* %1074, align 8
  store %struct.Memory* %loadMem_41535e, %struct.Memory** %MEMORY
  %loadBr_41535e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41535e = icmp eq i8 %loadBr_41535e, 1
  br i1 %cmpBr_41535e, label %block_.L_41537f, label %block_415364

block_415364:                                     ; preds = %block_.L_41533c
  %loadMem_415364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 11
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RDI.i350 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %PC.i349
  %1083 = add i64 %1082, 10
  store i64 %1083, i64* %PC.i349
  store i64 ptrtoint (%G__0x416894_type* @G__0x416894 to i64), i64* %RDI.i350, align 8
  store %struct.Memory* %loadMem_415364, %struct.Memory** %MEMORY
  %loadMem_41536e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 9
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RSI.i348 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %PC.i347
  %1091 = add i64 %1090, 7
  store i64 %1091, i64* %PC.i347
  %1092 = load i32, i32* bitcast (%G_0x6195e4_type* @G_0x6195e4 to i32*)
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RSI.i348, align 8
  store %struct.Memory* %loadMem_41536e, %struct.Memory** %MEMORY
  %loadMem_415375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 1
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %1100 = bitcast %union.anon* %1099 to %struct.anon.2*
  %AL.i346 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1100, i32 0, i32 0
  %1101 = load i64, i64* %PC.i345
  %1102 = add i64 %1101, 2
  store i64 %1102, i64* %PC.i345
  store i8 0, i8* %AL.i346, align 1
  store %struct.Memory* %loadMem_415375, %struct.Memory** %MEMORY
  %loadMem1_415377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i344
  %1107 = add i64 %1106, -84631
  %1108 = load i64, i64* %PC.i344
  %1109 = add i64 %1108, 5
  %1110 = load i64, i64* %PC.i344
  %1111 = add i64 %1110, 5
  store i64 %1111, i64* %PC.i344
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1113 = load i64, i64* %1112, align 8
  %1114 = add i64 %1113, -8
  %1115 = inttoptr i64 %1114 to i64*
  store i64 %1109, i64* %1115
  store i64 %1114, i64* %1112, align 8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1107, i64* %1116, align 8
  store %struct.Memory* %loadMem1_415377, %struct.Memory** %MEMORY
  %loadMem2_415377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415377 = load i64, i64* %3
  %1117 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_415377)
  store %struct.Memory* %1117, %struct.Memory** %MEMORY
  %loadMem_41537c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 1
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %EAX.i340 = bitcast %union.anon* %1123 to i32*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %RBP.i341
  %1128 = sub i64 %1127, 68
  %1129 = load i32, i32* %EAX.i340
  %1130 = zext i32 %1129 to i64
  %1131 = load i64, i64* %PC.i339
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i339
  %1133 = inttoptr i64 %1128 to i32*
  store i32 %1129, i32* %1133
  store %struct.Memory* %loadMem_41537c, %struct.Memory** %MEMORY
  br label %block_.L_41537f

block_.L_41537f:                                  ; preds = %block_415364, %block_.L_41533c
  %loadMem_41537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 1
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %PC.i337
  %1141 = add i64 %1140, 5
  store i64 %1141, i64* %PC.i337
  store i64 1024, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_41537f, %struct.Memory** %MEMORY
  %loadMem_415384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 5
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i336
  %1152 = sub i64 %1151, 28
  %1153 = load i64, i64* %PC.i334
  %1154 = add i64 %1153, 3
  store i64 %1154, i64* %PC.i334
  %1155 = inttoptr i64 %1152 to i32*
  %1156 = load i32, i32* %1155
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_415384, %struct.Memory** %MEMORY
  %loadMem_415387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 5
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RCX.i333
  %1165 = load i64, i64* %PC.i332
  %1166 = add i64 %1165, 3
  store i64 %1166, i64* %PC.i332
  %1167 = and i64 %1164, 4294967295
  %1168 = shl i64 %1167, 19
  %1169 = trunc i64 %1168 to i32
  %1170 = icmp slt i32 %1169, 0
  %1171 = shl i32 %1169, 1
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RCX.i333, align 8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1174 = zext i1 %1170 to i8
  store i8 %1174, i8* %1173, align 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1175, align 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1176, align 1
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1178 = icmp eq i32 %1171, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %1177, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1181 = lshr i32 %1171, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %1180, align 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1183, align 1
  store %struct.Memory* %loadMem_415387, %struct.Memory** %MEMORY
  %loadMem_41538a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 33
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 1
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %1189 to i32*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 15
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %RBP.i331
  %1194 = sub i64 %1193, 72
  %1195 = load i32, i32* %EAX.i330
  %1196 = zext i32 %1195 to i64
  %1197 = load i64, i64* %PC.i329
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC.i329
  %1199 = inttoptr i64 %1194 to i32*
  store i32 %1195, i32* %1199
  store %struct.Memory* %loadMem_41538a, %struct.Memory** %MEMORY
  %loadMem_41538d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 5
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %ECX.i327 = bitcast %union.anon* %1205 to i32*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 1
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %1208 to i64*
  %1209 = load i32, i32* %ECX.i327
  %1210 = zext i32 %1209 to i64
  %1211 = load i64, i64* %PC.i326
  %1212 = add i64 %1211, 2
  store i64 %1212, i64* %PC.i326
  %1213 = and i64 %1210, 4294967295
  store i64 %1213, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_41538d, %struct.Memory** %MEMORY
  %loadMem_41538f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %PC.i325
  %1218 = add i64 %1217, 1
  store i64 %1218, i64* %PC.i325
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1221 = bitcast %union.anon* %1220 to i32*
  %1222 = load i32, i32* %1221, align 8
  %1223 = sext i32 %1222 to i64
  %1224 = lshr i64 %1223, 32
  store i64 %1224, i64* %1219, align 8
  store %struct.Memory* %loadMem_41538f, %struct.Memory** %MEMORY
  %loadMem_415390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 5
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RBP.i324
  %1235 = sub i64 %1234, 72
  %1236 = load i64, i64* %PC.i322
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC.i322
  %1238 = inttoptr i64 %1235 to i32*
  %1239 = load i32, i32* %1238
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_415390, %struct.Memory** %MEMORY
  %loadMem_415393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 5
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %ECX.i318 = bitcast %union.anon* %1246 to i32*
  %1247 = load i32, i32* %ECX.i318
  %1248 = zext i32 %1247 to i64
  %1249 = load i64, i64* %PC.i317
  %1250 = add i64 %1249, 2
  store i64 %1250, i64* %PC.i317
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1252 = bitcast %union.anon* %1251 to i32*
  %1253 = load i32, i32* %1252, align 8
  %1254 = zext i32 %1253 to i64
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1256 = bitcast %union.anon* %1255 to i32*
  %1257 = load i32, i32* %1256, align 8
  %1258 = zext i32 %1257 to i64
  %1259 = shl i64 %1248, 32
  %1260 = ashr exact i64 %1259, 32
  %1261 = shl i64 %1258, 32
  %1262 = or i64 %1261, %1254
  %1263 = sdiv i64 %1262, %1260
  %1264 = shl i64 %1263, 32
  %1265 = ashr exact i64 %1264, 32
  %1266 = icmp eq i64 %1263, %1265
  br i1 %1266, label %1271, label %1267

; <label>:1267:                                   ; preds = %block_.L_41537f
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1269 = load i64, i64* %1268, align 8
  %1270 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1269, %struct.Memory* %loadMem_415393)
  br label %routine_idivl__ecx.exit

; <label>:1271:                                   ; preds = %block_.L_41537f
  %1272 = srem i64 %1262, %1260
  %1273 = getelementptr inbounds %union.anon, %union.anon* %1251, i64 0, i32 0
  %1274 = and i64 %1263, 4294967295
  store i64 %1274, i64* %1273, align 8
  %1275 = getelementptr inbounds %union.anon, %union.anon* %1255, i64 0, i32 0
  %1276 = and i64 %1272, 4294967295
  store i64 %1276, i64* %1275, align 8
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1277, align 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1278, align 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1279, align 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1281, align 1
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1282, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1267, %1271
  %1283 = phi %struct.Memory* [ %1270, %1267 ], [ %loadMem_415393, %1271 ]
  store %struct.Memory* %1283, %struct.Memory** %MEMORY
  %loadMem_415395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 1
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %EAX.i315 = bitcast %union.anon* %1289 to i32*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 11
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RDI.i316 = bitcast %union.anon* %1292 to i64*
  %1293 = load i32, i32* %EAX.i315
  %1294 = zext i32 %1293 to i64
  %1295 = load i64, i64* %PC.i314
  %1296 = add i64 %1295, 3
  store i64 %1296, i64* %PC.i314
  %1297 = shl i64 %1294, 32
  %1298 = ashr exact i64 %1297, 32
  store i64 %1298, i64* %RDI.i316, align 8
  store %struct.Memory* %loadMem_415395, %struct.Memory** %MEMORY
  %loadMem1_415398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %PC.i313
  %1303 = add i64 %1302, -84552
  %1304 = load i64, i64* %PC.i313
  %1305 = add i64 %1304, 5
  %1306 = load i64, i64* %PC.i313
  %1307 = add i64 %1306, 5
  store i64 %1307, i64* %PC.i313
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1309 = load i64, i64* %1308, align 8
  %1310 = add i64 %1309, -8
  %1311 = inttoptr i64 %1310 to i64*
  store i64 %1305, i64* %1311
  store i64 %1310, i64* %1308, align 8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1303, i64* %1312, align 8
  store %struct.Memory* %loadMem1_415398, %struct.Memory** %MEMORY
  %loadMem2_415398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415398 = load i64, i64* %3
  %1313 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_415398)
  store %struct.Memory* %1313, %struct.Memory** %MEMORY
  %loadMem_41539d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 1
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 15
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RBP.i311
  %1324 = sub i64 %1323, 48
  %1325 = load i64, i64* %RAX.i310
  %1326 = load i64, i64* %PC.i309
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i309
  %1328 = inttoptr i64 %1324 to i64*
  store i64 %1325, i64* %1328
  store %struct.Memory* %loadMem_41539d, %struct.Memory** %MEMORY
  %loadMem_4153a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 15
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %RBP.i308
  %1336 = sub i64 %1335, 48
  %1337 = load i64, i64* %PC.i307
  %1338 = add i64 %1337, 5
  store i64 %1338, i64* %PC.i307
  %1339 = inttoptr i64 %1336 to i64*
  %1340 = load i64, i64* %1339
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1341, align 1
  %1342 = trunc i64 %1340 to i32
  %1343 = and i32 %1342, 255
  %1344 = call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1347, i8* %1348, align 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1349, align 1
  %1350 = icmp eq i64 %1340, 0
  %1351 = zext i1 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1351, i8* %1352, align 1
  %1353 = lshr i64 %1340, 63
  %1354 = trunc i64 %1353 to i8
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1354, i8* %1355, align 1
  %1356 = lshr i64 %1340, 63
  %1357 = xor i64 %1353, %1356
  %1358 = add i64 %1357, %1356
  %1359 = icmp eq i64 %1358, 2
  %1360 = zext i1 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1360, i8* %1361, align 1
  store %struct.Memory* %loadMem_4153a1, %struct.Memory** %MEMORY
  %loadMem_4153a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %PC.i306
  %1366 = add i64 %1365, 33
  %1367 = load i64, i64* %PC.i306
  %1368 = add i64 %1367, 6
  %1369 = load i64, i64* %PC.i306
  %1370 = add i64 %1369, 6
  store i64 %1370, i64* %PC.i306
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1372 = load i8, i8* %1371, align 1
  %1373 = icmp eq i8 %1372, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %BRANCH_TAKEN, align 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1376 = select i1 %1373, i64 %1366, i64 %1368
  store i64 %1376, i64* %1375, align 8
  store %struct.Memory* %loadMem_4153a6, %struct.Memory** %MEMORY
  %loadBr_4153a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4153a6 = icmp eq i8 %loadBr_4153a6, 1
  br i1 %cmpBr_4153a6, label %block_.L_4153c7, label %block_4153ac

block_4153ac:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_4153ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 11
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RDI.i305 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %PC.i304
  %1384 = add i64 %1383, 10
  store i64 %1384, i64* %PC.i304
  store i64 ptrtoint (%G__0x4168b3_type* @G__0x4168b3 to i64), i64* %RDI.i305, align 8
  store %struct.Memory* %loadMem_4153ac, %struct.Memory** %MEMORY
  %loadMem_4153b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 1
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %1391 = bitcast %union.anon* %1390 to %struct.anon.2*
  %AL.i303 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1391, i32 0, i32 0
  %1392 = load i64, i64* %PC.i302
  %1393 = add i64 %1392, 2
  store i64 %1393, i64* %PC.i302
  store i8 0, i8* %AL.i303, align 1
  store %struct.Memory* %loadMem_4153b6, %struct.Memory** %MEMORY
  %loadMem1_4153b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %PC.i301
  %1398 = add i64 %1397, -84696
  %1399 = load i64, i64* %PC.i301
  %1400 = add i64 %1399, 5
  %1401 = load i64, i64* %PC.i301
  %1402 = add i64 %1401, 5
  store i64 %1402, i64* %PC.i301
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1404 = load i64, i64* %1403, align 8
  %1405 = add i64 %1404, -8
  %1406 = inttoptr i64 %1405 to i64*
  store i64 %1400, i64* %1406
  store i64 %1405, i64* %1403, align 8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1398, i64* %1407, align 8
  store %struct.Memory* %loadMem1_4153b8, %struct.Memory** %MEMORY
  %loadMem2_4153b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4153b8 = load i64, i64* %3
  %1408 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4153b8)
  store %struct.Memory* %1408, %struct.Memory** %MEMORY
  %loadMem_4153bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 11
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %EDI.i297 = bitcast %union.anon* %1414 to i32*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 11
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RDI.i298
  %1419 = load i32, i32* %EDI.i297
  %1420 = zext i32 %1419 to i64
  %1421 = load i64, i64* %PC.i296
  %1422 = add i64 %1421, 2
  store i64 %1422, i64* %PC.i296
  %1423 = xor i64 %1420, %1418
  %1424 = trunc i64 %1423 to i32
  %1425 = and i64 %1423, 4294967295
  store i64 %1425, i64* %RDI.i298, align 8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1426, align 1
  %1427 = and i32 %1424, 255
  %1428 = call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1431, i8* %1432, align 1
  %1433 = icmp eq i32 %1424, 0
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1434, i8* %1435, align 1
  %1436 = lshr i32 %1424, 31
  %1437 = trunc i32 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1437, i8* %1438, align 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1439, align 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1440, align 1
  store %struct.Memory* %loadMem_4153bd, %struct.Memory** %MEMORY
  %loadMem_4153bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 1
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %1446 to i32*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 15
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %RBP.i295
  %1451 = sub i64 %1450, 76
  %1452 = load i32, i32* %EAX.i294
  %1453 = zext i32 %1452 to i64
  %1454 = load i64, i64* %PC.i293
  %1455 = add i64 %1454, 3
  store i64 %1455, i64* %PC.i293
  %1456 = inttoptr i64 %1451 to i32*
  store i32 %1452, i32* %1456
  store %struct.Memory* %loadMem_4153bf, %struct.Memory** %MEMORY
  %loadMem1_4153c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %PC.i292
  %1461 = add i64 %1460, -84514
  %1462 = load i64, i64* %PC.i292
  %1463 = add i64 %1462, 5
  %1464 = load i64, i64* %PC.i292
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC.i292
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1467 = load i64, i64* %1466, align 8
  %1468 = add i64 %1467, -8
  %1469 = inttoptr i64 %1468 to i64*
  store i64 %1463, i64* %1469
  store i64 %1468, i64* %1466, align 8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1461, i64* %1470, align 8
  store %struct.Memory* %loadMem1_4153c2, %struct.Memory** %MEMORY
  %loadMem2_4153c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4153c2 = load i64, i64* %3
  %1471 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %loadMem2_4153c2)
  store %struct.Memory* %1471, %struct.Memory** %MEMORY
  br label %block_.L_4153c7

block_.L_4153c7:                                  ; preds = %block_4153ac, %routine_idivl__ecx.exit
  %loadMem_4153c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 15
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1477 to i64*
  %1478 = load i64, i64* %RBP.i290
  %1479 = sub i64 %1478, 20
  %1480 = load i64, i64* %PC.i289
  %1481 = add i64 %1480, 7
  store i64 %1481, i64* %PC.i289
  %1482 = inttoptr i64 %1479 to i32*
  store i32 0, i32* %1482
  store %struct.Memory* %loadMem_4153c7, %struct.Memory** %MEMORY
  br label %block_.L_4153ce

block_.L_4153ce:                                  ; preds = %block_4153e3, %block_.L_4153c7
  %loadMem_4153ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i288
  %1493 = sub i64 %1492, 20
  %1494 = load i64, i64* %PC.i286
  %1495 = add i64 %1494, 7
  store i64 %1495, i64* %PC.i286
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496
  %1498 = sext i32 %1497 to i64
  %1499 = mul i64 %1498, 1027
  %1500 = trunc i64 %1499 to i32
  %1501 = and i64 %1499, 4294967295
  store i64 %1501, i64* %RAX.i287, align 8
  %1502 = shl i64 %1499, 32
  %1503 = ashr exact i64 %1502, 32
  %1504 = icmp ne i64 %1503, %1499
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1505, i8* %1506, align 1
  %1507 = and i32 %1500, 255
  %1508 = call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1511, i8* %1512, align 1
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1513, align 1
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1514, align 1
  %1515 = lshr i32 %1500, 31
  %1516 = trunc i32 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1516, i8* %1517, align 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1505, i8* %1518, align 1
  store %struct.Memory* %loadMem_4153ce, %struct.Memory** %MEMORY
  %loadMem_4153d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 5
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RBP.i285
  %1529 = sub i64 %1528, 28
  %1530 = load i64, i64* %PC.i283
  %1531 = add i64 %1530, 3
  store i64 %1531, i64* %PC.i283
  %1532 = inttoptr i64 %1529 to i32*
  %1533 = load i32, i32* %1532
  %1534 = zext i32 %1533 to i64
  store i64 %1534, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_4153d5, %struct.Memory** %MEMORY
  %loadMem_4153d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 5
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RCX.i282
  %1542 = load i64, i64* %PC.i281
  %1543 = add i64 %1542, 3
  store i64 %1543, i64* %PC.i281
  %1544 = and i64 %1541, 4294967295
  %1545 = shl i64 %1544, 19
  %1546 = trunc i64 %1545 to i32
  %1547 = icmp slt i32 %1546, 0
  %1548 = shl i32 %1546, 1
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i282, align 8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1551 = zext i1 %1547 to i8
  store i8 %1551, i8* %1550, align 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1552, align 1
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1553, align 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1555 = icmp eq i32 %1548, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %1554, align 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1558 = lshr i32 %1548, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %1557, align 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1560, align 1
  store %struct.Memory* %loadMem_4153d8, %struct.Memory** %MEMORY
  %loadMem_4153db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 1
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %1566 to i32*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 5
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %ECX.i280 = bitcast %union.anon* %1569 to i32*
  %1570 = load i32, i32* %EAX.i279
  %1571 = zext i32 %1570 to i64
  %1572 = load i32, i32* %ECX.i280
  %1573 = zext i32 %1572 to i64
  %1574 = load i64, i64* %PC.i278
  %1575 = add i64 %1574, 2
  store i64 %1575, i64* %PC.i278
  %1576 = sub i32 %1570, %1572
  %1577 = icmp ult i32 %1570, %1572
  %1578 = zext i1 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1578, i8* %1579, align 1
  %1580 = and i32 %1576, 255
  %1581 = call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1584, i8* %1585, align 1
  %1586 = xor i64 %1573, %1571
  %1587 = trunc i64 %1586 to i32
  %1588 = xor i32 %1587, %1576
  %1589 = lshr i32 %1588, 4
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1591, i8* %1592, align 1
  %1593 = icmp eq i32 %1576, 0
  %1594 = zext i1 %1593 to i8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1594, i8* %1595, align 1
  %1596 = lshr i32 %1576, 31
  %1597 = trunc i32 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1597, i8* %1598, align 1
  %1599 = lshr i32 %1570, 31
  %1600 = lshr i32 %1572, 31
  %1601 = xor i32 %1600, %1599
  %1602 = xor i32 %1596, %1599
  %1603 = add i32 %1602, %1601
  %1604 = icmp eq i32 %1603, 2
  %1605 = zext i1 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1605, i8* %1606, align 1
  store %struct.Memory* %loadMem_4153db, %struct.Memory** %MEMORY
  %loadMem_4153dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %PC.i277
  %1611 = add i64 %1610, 54
  %1612 = load i64, i64* %PC.i277
  %1613 = add i64 %1612, 6
  %1614 = load i64, i64* %PC.i277
  %1615 = add i64 %1614, 6
  store i64 %1615, i64* %PC.i277
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1617 = load i8, i8* %1616, align 1
  %1618 = icmp ne i8 %1617, 0
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1620 = load i8, i8* %1619, align 1
  %1621 = icmp ne i8 %1620, 0
  %1622 = xor i1 %1618, %1621
  %1623 = xor i1 %1622, true
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %BRANCH_TAKEN, align 1
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1626 = select i1 %1622, i64 %1613, i64 %1611
  store i64 %1626, i64* %1625, align 8
  store %struct.Memory* %loadMem_4153dd, %struct.Memory** %MEMORY
  %loadBr_4153dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4153dd = icmp eq i8 %loadBr_4153dd, 1
  br i1 %cmpBr_4153dd, label %block_.L_415413, label %block_4153e3

block_4153e3:                                     ; preds = %block_.L_4153ce
  %loadMem_4153e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %PC.i275
  %1634 = add i64 %1633, 8
  store i64 %1634, i64* %PC.i275
  %1635 = load i64, i64* bitcast (%G_0x6195f0_type* @G_0x6195f0 to i64*)
  store i64 %1635, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_4153e3, %struct.Memory** %MEMORY
  %loadMem_4153eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 5
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 15
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %RBP.i274
  %1646 = sub i64 %1645, 20
  %1647 = load i64, i64* %PC.i272
  %1648 = add i64 %1647, 7
  store i64 %1648, i64* %PC.i272
  %1649 = inttoptr i64 %1646 to i32*
  %1650 = load i32, i32* %1649
  %1651 = sext i32 %1650 to i64
  %1652 = mul i64 %1651, 1027
  %1653 = trunc i64 %1652 to i32
  %1654 = and i64 %1652, 4294967295
  store i64 %1654, i64* %RCX.i273, align 8
  %1655 = shl i64 %1652, 32
  %1656 = ashr exact i64 %1655, 32
  %1657 = icmp ne i64 %1656, %1652
  %1658 = zext i1 %1657 to i8
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1658, i8* %1659, align 1
  %1660 = and i32 %1653, 255
  %1661 = call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1664, i8* %1665, align 1
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1666, align 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1667, align 1
  %1668 = lshr i32 %1653, 31
  %1669 = trunc i32 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1669, i8* %1670, align 1
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1658, i8* %1671, align 1
  store %struct.Memory* %loadMem_4153eb, %struct.Memory** %MEMORY
  %loadMem_4153f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 5
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %1677 to i32*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 7
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %1680 to i64*
  %1681 = load i32, i32* %ECX.i270
  %1682 = zext i32 %1681 to i64
  %1683 = load i64, i64* %PC.i269
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC.i269
  %1685 = shl i64 %1682, 32
  %1686 = ashr exact i64 %1685, 32
  store i64 %1686, i64* %RDX.i271, align 8
  store %struct.Memory* %loadMem_4153f2, %struct.Memory** %MEMORY
  %loadMem_4153f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 9
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %1693 = bitcast %union.anon* %1692 to %struct.anon.2*
  %SIL.i266 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1693, i32 0, i32 0
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 1
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 7
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RAX.i267
  %1701 = load i64, i64* %RDX.i268
  %1702 = add i64 %1701, %1700
  %1703 = load i64, i64* %PC.i265
  %1704 = add i64 %1703, 4
  store i64 %1704, i64* %PC.i265
  %1705 = inttoptr i64 %1702 to i8*
  %1706 = load i8, i8* %1705
  store i8 %1706, i8* %SIL.i266, align 1
  store %struct.Memory* %loadMem_4153f5, %struct.Memory** %MEMORY
  %loadMem_4153f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 1
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 15
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %RBP.i264
  %1717 = sub i64 %1716, 48
  %1718 = load i64, i64* %PC.i262
  %1719 = add i64 %1718, 4
  store i64 %1719, i64* %PC.i262
  %1720 = inttoptr i64 %1717 to i64*
  %1721 = load i64, i64* %1720
  store i64 %1721, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_4153f9, %struct.Memory** %MEMORY
  %loadMem_4153fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 7
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %RBP.i261
  %1732 = sub i64 %1731, 20
  %1733 = load i64, i64* %PC.i259
  %1734 = add i64 %1733, 4
  store i64 %1734, i64* %PC.i259
  %1735 = inttoptr i64 %1732 to i32*
  %1736 = load i32, i32* %1735
  %1737 = sext i32 %1736 to i64
  store i64 %1737, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_4153fd, %struct.Memory** %MEMORY
  %loadMem_415401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 9
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %1744 = bitcast %union.anon* %1743 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1744, i32 0, i32 0
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 7
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %1750 to i64*
  %1751 = load i64, i64* %RAX.i257
  %1752 = load i64, i64* %RDX.i258
  %1753 = add i64 %1752, %1751
  %1754 = load i8, i8* %SIL.i
  %1755 = zext i8 %1754 to i64
  %1756 = load i64, i64* %PC.i256
  %1757 = add i64 %1756, 4
  store i64 %1757, i64* %PC.i256
  %1758 = inttoptr i64 %1753 to i8*
  store i8 %1754, i8* %1758
  store %struct.Memory* %loadMem_415401, %struct.Memory** %MEMORY
  %loadMem_415405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 1
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 15
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %RBP.i255
  %1769 = sub i64 %1768, 20
  %1770 = load i64, i64* %PC.i253
  %1771 = add i64 %1770, 3
  store i64 %1771, i64* %PC.i253
  %1772 = inttoptr i64 %1769 to i32*
  %1773 = load i32, i32* %1772
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_415405, %struct.Memory** %MEMORY
  %loadMem_415408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 1
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %1780 to i64*
  %1781 = load i64, i64* %RAX.i252
  %1782 = load i64, i64* %PC.i251
  %1783 = add i64 %1782, 3
  store i64 %1783, i64* %PC.i251
  %1784 = trunc i64 %1781 to i32
  %1785 = add i32 1, %1784
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RAX.i252, align 8
  %1787 = icmp ult i32 %1785, %1784
  %1788 = icmp ult i32 %1785, 1
  %1789 = or i1 %1787, %1788
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1790, i8* %1791, align 1
  %1792 = and i32 %1785, 255
  %1793 = call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1796, i8* %1797, align 1
  %1798 = xor i64 1, %1781
  %1799 = trunc i64 %1798 to i32
  %1800 = xor i32 %1799, %1785
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1803, i8* %1804, align 1
  %1805 = icmp eq i32 %1785, 0
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i32 %1785, 31
  %1809 = trunc i32 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1784, 31
  %1812 = xor i32 %1808, %1811
  %1813 = add i32 %1812, %1808
  %1814 = icmp eq i32 %1813, 2
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1815, i8* %1816, align 1
  store %struct.Memory* %loadMem_415408, %struct.Memory** %MEMORY
  %loadMem_41540b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 1
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %EAX.i249 = bitcast %union.anon* %1822 to i32*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 15
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %RBP.i250
  %1827 = sub i64 %1826, 20
  %1828 = load i32, i32* %EAX.i249
  %1829 = zext i32 %1828 to i64
  %1830 = load i64, i64* %PC.i248
  %1831 = add i64 %1830, 3
  store i64 %1831, i64* %PC.i248
  %1832 = inttoptr i64 %1827 to i32*
  store i32 %1828, i32* %1832
  store %struct.Memory* %loadMem_41540b, %struct.Memory** %MEMORY
  %loadMem_41540e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1835 to i64*
  %1836 = load i64, i64* %PC.i247
  %1837 = add i64 %1836, -64
  %1838 = load i64, i64* %PC.i247
  %1839 = add i64 %1838, 5
  store i64 %1839, i64* %PC.i247
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1837, i64* %1840, align 8
  store %struct.Memory* %loadMem_41540e, %struct.Memory** %MEMORY
  br label %block_.L_4153ce

block_.L_415413:                                  ; preds = %block_.L_4153ce
  %loadMem1_415413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %PC.i246
  %1845 = add i64 %1844, 541
  %1846 = load i64, i64* %PC.i246
  %1847 = add i64 %1846, 5
  %1848 = load i64, i64* %PC.i246
  %1849 = add i64 %1848, 5
  store i64 %1849, i64* %PC.i246
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1851 = load i64, i64* %1850, align 8
  %1852 = add i64 %1851, -8
  %1853 = inttoptr i64 %1852 to i64*
  store i64 %1847, i64* %1853
  store i64 %1852, i64* %1850, align 8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1845, i64* %1854, align 8
  store %struct.Memory* %loadMem1_415413, %struct.Memory** %MEMORY
  %loadMem2_415413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415413 = load i64, i64* %3
  %call2_415413 = call %struct.Memory* @sub_415630.spec_initbufs(%struct.State* %0, i64 %loadPC_415413, %struct.Memory* %loadMem2_415413)
  store %struct.Memory* %call2_415413, %struct.Memory** %MEMORY
  %loadMem_415418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i245
  %1862 = sub i64 %1861, 24
  %1863 = load i64, i64* %PC.i244
  %1864 = add i64 %1863, 7
  store i64 %1864, i64* %PC.i244
  %1865 = inttoptr i64 %1862 to i32*
  store i32 5, i32* %1865
  store %struct.Memory* %loadMem_415418, %struct.Memory** %MEMORY
  br label %block_.L_41541f

block_.L_41541f:                                  ; preds = %block_.L_4155cc, %block_.L_415413
  %loadMem_41541f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i243
  %1873 = sub i64 %1872, 24
  %1874 = load i64, i64* %PC.i242
  %1875 = add i64 %1874, 4
  store i64 %1875, i64* %PC.i242
  %1876 = inttoptr i64 %1873 to i32*
  %1877 = load i32, i32* %1876
  %1878 = sub i32 %1877, 9
  %1879 = icmp ult i32 %1877, 9
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1880, i8* %1881, align 1
  %1882 = and i32 %1878, 255
  %1883 = call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1886, i8* %1887, align 1
  %1888 = xor i32 %1877, 9
  %1889 = xor i32 %1888, %1878
  %1890 = lshr i32 %1889, 4
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1892, i8* %1893, align 1
  %1894 = icmp eq i32 %1878, 0
  %1895 = zext i1 %1894 to i8
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1895, i8* %1896, align 1
  %1897 = lshr i32 %1878, 31
  %1898 = trunc i32 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1898, i8* %1899, align 1
  %1900 = lshr i32 %1877, 31
  %1901 = xor i32 %1897, %1900
  %1902 = add i32 %1901, %1900
  %1903 = icmp eq i32 %1902, 2
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1904, i8* %1905, align 1
  store %struct.Memory* %loadMem_41541f, %struct.Memory** %MEMORY
  %loadMem_415423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %PC.i241
  %1910 = add i64 %1909, 468
  %1911 = load i64, i64* %PC.i241
  %1912 = add i64 %1911, 6
  %1913 = load i64, i64* %PC.i241
  %1914 = add i64 %1913, 6
  store i64 %1914, i64* %PC.i241
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1916 = load i8, i8* %1915, align 1
  %1917 = icmp eq i8 %1916, 0
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1919 = load i8, i8* %1918, align 1
  %1920 = icmp ne i8 %1919, 0
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1922 = load i8, i8* %1921, align 1
  %1923 = icmp ne i8 %1922, 0
  %1924 = xor i1 %1920, %1923
  %1925 = xor i1 %1924, true
  %1926 = and i1 %1917, %1925
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %BRANCH_TAKEN, align 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1929 = select i1 %1926, i64 %1910, i64 %1912
  store i64 %1929, i64* %1928, align 8
  store %struct.Memory* %loadMem_415423, %struct.Memory** %MEMORY
  %loadBr_415423 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415423 = icmp eq i8 %loadBr_415423, 1
  br i1 %cmpBr_415423, label %block_.L_4155f7, label %block_415429

block_415429:                                     ; preds = %block_.L_41541f
  %loadMem1_415429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %PC.i240
  %1934 = add i64 %1933, 503
  %1935 = load i64, i64* %PC.i240
  %1936 = add i64 %1935, 5
  %1937 = load i64, i64* %PC.i240
  %1938 = add i64 %1937, 5
  store i64 %1938, i64* %PC.i240
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1940 = load i64, i64* %1939, align 8
  %1941 = add i64 %1940, -8
  %1942 = inttoptr i64 %1941 to i64*
  store i64 %1936, i64* %1942
  store i64 %1941, i64* %1939, align 8
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1934, i64* %1943, align 8
  store %struct.Memory* %loadMem1_415429, %struct.Memory** %MEMORY
  %loadMem2_415429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415429 = load i64, i64* %3
  %call2_415429 = call %struct.Memory* @sub_415620.debug_time(%struct.State* %0, i64 %loadPC_415429, %struct.Memory* %loadMem2_415429)
  store %struct.Memory* %call2_415429, %struct.Memory** %MEMORY
  %loadMem_41542e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 5
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %PC.i238
  %1951 = add i64 %1950, 5
  store i64 %1951, i64* %PC.i238
  store i64 2, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_41542e, %struct.Memory** %MEMORY
  %loadMem_415433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 5
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %ECX.i237 = bitcast %union.anon* %1957 to i32*
  %1958 = load i32, i32* %ECX.i237
  %1959 = zext i32 %1958 to i64
  %1960 = load i64, i64* %PC.i236
  %1961 = add i64 %1960, 7
  store i64 %1961, i64* %PC.i236
  %1962 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %1963 = sub i32 %1958, %1962
  %1964 = icmp ult i32 %1958, %1962
  %1965 = zext i1 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1965, i8* %1966, align 1
  %1967 = and i32 %1963, 255
  %1968 = call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1971, i8* %1972, align 1
  %1973 = xor i32 %1962, %1958
  %1974 = xor i32 %1973, %1963
  %1975 = lshr i32 %1974, 4
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1977, i8* %1978, align 1
  %1979 = icmp eq i32 %1963, 0
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1980, i8* %1981, align 1
  %1982 = lshr i32 %1963, 31
  %1983 = trunc i32 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1983, i8* %1984, align 1
  %1985 = lshr i32 %1958, 31
  %1986 = lshr i32 %1962, 31
  %1987 = xor i32 %1986, %1985
  %1988 = xor i32 %1982, %1985
  %1989 = add i32 %1988, %1987
  %1990 = icmp eq i32 %1989, 2
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1991, i8* %1992, align 1
  store %struct.Memory* %loadMem_415433, %struct.Memory** %MEMORY
  %loadMem_41543a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 1
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %1998 to i32*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 15
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %2001 to i64*
  %2002 = load i64, i64* %RBP.i235
  %2003 = sub i64 %2002, 80
  %2004 = load i32, i32* %EAX.i234
  %2005 = zext i32 %2004 to i64
  %2006 = load i64, i64* %PC.i233
  %2007 = add i64 %2006, 3
  store i64 %2007, i64* %PC.i233
  %2008 = inttoptr i64 %2003 to i32*
  store i32 %2004, i32* %2008
  store %struct.Memory* %loadMem_41543a, %struct.Memory** %MEMORY
  %loadMem_41543d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %PC.i232
  %2013 = add i64 %2012, 29
  %2014 = load i64, i64* %PC.i232
  %2015 = add i64 %2014, 6
  %2016 = load i64, i64* %PC.i232
  %2017 = add i64 %2016, 6
  store i64 %2017, i64* %PC.i232
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2019 = load i8, i8* %2018, align 1
  %2020 = icmp ne i8 %2019, 0
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2022 = load i8, i8* %2021, align 1
  %2023 = icmp ne i8 %2022, 0
  %2024 = xor i1 %2020, %2023
  %2025 = xor i1 %2024, true
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %BRANCH_TAKEN, align 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2028 = select i1 %2024, i64 %2015, i64 %2013
  store i64 %2028, i64* %2027, align 8
  store %struct.Memory* %loadMem_41543d, %struct.Memory** %MEMORY
  %loadBr_41543d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41543d = icmp eq i8 %loadBr_41543d, 1
  br i1 %cmpBr_41543d, label %block_.L_41545a, label %block_415443

block_415443:                                     ; preds = %block_415429
  %loadMem_415443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 11
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %PC.i230
  %2036 = add i64 %2035, 10
  store i64 %2036, i64* %PC.i230
  store i64 ptrtoint (%G__0x4168d2_type* @G__0x4168d2 to i64), i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_415443, %struct.Memory** %MEMORY
  %loadMem_41544d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 9
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RSI.i228 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 15
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %RBP.i229
  %2047 = sub i64 %2046, 24
  %2048 = load i64, i64* %PC.i227
  %2049 = add i64 %2048, 3
  store i64 %2049, i64* %PC.i227
  %2050 = inttoptr i64 %2047 to i32*
  %2051 = load i32, i32* %2050
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RSI.i228, align 8
  store %struct.Memory* %loadMem_41544d, %struct.Memory** %MEMORY
  %loadMem_415450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %2059 = bitcast %union.anon* %2058 to %struct.anon.2*
  %AL.i226 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2059, i32 0, i32 0
  %2060 = load i64, i64* %PC.i225
  %2061 = add i64 %2060, 2
  store i64 %2061, i64* %PC.i225
  store i8 0, i8* %AL.i226, align 1
  store %struct.Memory* %loadMem_415450, %struct.Memory** %MEMORY
  %loadMem1_415452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %PC.i224
  %2066 = add i64 %2065, -84850
  %2067 = load i64, i64* %PC.i224
  %2068 = add i64 %2067, 5
  %2069 = load i64, i64* %PC.i224
  %2070 = add i64 %2069, 5
  store i64 %2070, i64* %PC.i224
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2072 = load i64, i64* %2071, align 8
  %2073 = add i64 %2072, -8
  %2074 = inttoptr i64 %2073 to i64*
  store i64 %2068, i64* %2074
  store i64 %2073, i64* %2071, align 8
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2066, i64* %2075, align 8
  store %struct.Memory* %loadMem1_415452, %struct.Memory** %MEMORY
  %loadMem2_415452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415452 = load i64, i64* %3
  %2076 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_415452)
  store %struct.Memory* %2076, %struct.Memory** %MEMORY
  %loadMem_415457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 1
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %2082 to i32*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 15
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %RBP.i220
  %2087 = sub i64 %2086, 84
  %2088 = load i32, i32* %EAX.i219
  %2089 = zext i32 %2088 to i64
  %2090 = load i64, i64* %PC.i218
  %2091 = add i64 %2090, 3
  store i64 %2091, i64* %PC.i218
  %2092 = inttoptr i64 %2087 to i32*
  store i32 %2088, i32* %2092
  store %struct.Memory* %loadMem_415457, %struct.Memory** %MEMORY
  br label %block_.L_41545a

block_.L_41545a:                                  ; preds = %block_415443, %block_415429
  %loadMem_41545a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 11
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %EDI.i216 = bitcast %union.anon* %2098 to i32*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 11
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RDI.i217 = bitcast %union.anon* %2101 to i64*
  %2102 = load i64, i64* %RDI.i217
  %2103 = load i32, i32* %EDI.i216
  %2104 = zext i32 %2103 to i64
  %2105 = load i64, i64* %PC.i215
  %2106 = add i64 %2105, 2
  store i64 %2106, i64* %PC.i215
  %2107 = xor i64 %2104, %2102
  %2108 = trunc i64 %2107 to i32
  %2109 = and i64 %2107, 4294967295
  store i64 %2109, i64* %RDI.i217, align 8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2110, align 1
  %2111 = and i32 %2108, 255
  %2112 = call i32 @llvm.ctpop.i32(i32 %2111)
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2115, i8* %2116, align 1
  %2117 = icmp eq i32 %2108, 0
  %2118 = zext i1 %2117 to i8
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2118, i8* %2119, align 1
  %2120 = lshr i32 %2108, 31
  %2121 = trunc i32 %2120 to i8
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2121, i8* %2122, align 1
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2123, align 1
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2124, align 1
  store %struct.Memory* %loadMem_41545a, %struct.Memory** %MEMORY
  %loadMem_41545c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 9
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RSI.i214 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %PC.i213
  %2132 = add i64 %2131, 5
  store i64 %2132, i64* %PC.i213
  store i64 1, i64* %RSI.i214, align 8
  store %struct.Memory* %loadMem_41545c, %struct.Memory** %MEMORY
  %loadMem_415461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 7
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 15
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %RBP.i212
  %2143 = sub i64 %2142, 24
  %2144 = load i64, i64* %PC.i210
  %2145 = add i64 %2144, 3
  store i64 %2145, i64* %PC.i210
  %2146 = inttoptr i64 %2143 to i32*
  %2147 = load i32, i32* %2146
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RDX.i211, align 8
  store %struct.Memory* %loadMem_415461, %struct.Memory** %MEMORY
  %loadMem1_415464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %PC.i209
  %2153 = add i64 %2152, 508
  %2154 = load i64, i64* %PC.i209
  %2155 = add i64 %2154, 5
  %2156 = load i64, i64* %PC.i209
  %2157 = add i64 %2156, 5
  store i64 %2157, i64* %PC.i209
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2159 = load i64, i64* %2158, align 8
  %2160 = add i64 %2159, -8
  %2161 = inttoptr i64 %2160 to i64*
  store i64 %2155, i64* %2161
  store i64 %2160, i64* %2158, align 8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2153, i64* %2162, align 8
  store %struct.Memory* %loadMem1_415464, %struct.Memory** %MEMORY
  %loadMem2_415464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415464 = load i64, i64* %3
  %call2_415464 = call %struct.Memory* @sub_415660.spec_compress(%struct.State* %0, i64 %loadPC_415464, %struct.Memory* %loadMem2_415464)
  store %struct.Memory* %call2_415464, %struct.Memory** %MEMORY
  %loadMem1_415469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2165 to i64*
  %2166 = load i64, i64* %PC.i208
  %2167 = add i64 %2166, 439
  %2168 = load i64, i64* %PC.i208
  %2169 = add i64 %2168, 5
  %2170 = load i64, i64* %PC.i208
  %2171 = add i64 %2170, 5
  store i64 %2171, i64* %PC.i208
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2173 = load i64, i64* %2172, align 8
  %2174 = add i64 %2173, -8
  %2175 = inttoptr i64 %2174 to i64*
  store i64 %2169, i64* %2175
  store i64 %2174, i64* %2172, align 8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2167, i64* %2176, align 8
  store %struct.Memory* %loadMem1_415469, %struct.Memory** %MEMORY
  %loadMem2_415469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415469 = load i64, i64* %3
  %call2_415469 = call %struct.Memory* @sub_415620.debug_time(%struct.State* %0, i64 %loadPC_415469, %struct.Memory* %loadMem2_415469)
  store %struct.Memory* %call2_415469, %struct.Memory** %MEMORY
  %loadMem_41546e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 7
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %PC.i206
  %2184 = add i64 %2183, 5
  store i64 %2184, i64* %PC.i206
  store i64 3, i64* %RDX.i207, align 8
  store %struct.Memory* %loadMem_41546e, %struct.Memory** %MEMORY
  %loadMem_415473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 7
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %EDX.i205 = bitcast %union.anon* %2190 to i32*
  %2191 = load i32, i32* %EDX.i205
  %2192 = zext i32 %2191 to i64
  %2193 = load i64, i64* %PC.i204
  %2194 = add i64 %2193, 7
  store i64 %2194, i64* %PC.i204
  %2195 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %2196 = sub i32 %2191, %2195
  %2197 = icmp ult i32 %2191, %2195
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2198, i8* %2199, align 1
  %2200 = and i32 %2196, 255
  %2201 = call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2204, i8* %2205, align 1
  %2206 = xor i32 %2195, %2191
  %2207 = xor i32 %2206, %2196
  %2208 = lshr i32 %2207, 4
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2210, i8* %2211, align 1
  %2212 = icmp eq i32 %2196, 0
  %2213 = zext i1 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2213, i8* %2214, align 1
  %2215 = lshr i32 %2196, 31
  %2216 = trunc i32 %2215 to i8
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2216, i8* %2217, align 1
  %2218 = lshr i32 %2191, 31
  %2219 = lshr i32 %2195, 31
  %2220 = xor i32 %2219, %2218
  %2221 = xor i32 %2215, %2218
  %2222 = add i32 %2221, %2220
  %2223 = icmp eq i32 %2222, 2
  %2224 = zext i1 %2223 to i8
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2224, i8* %2225, align 1
  store %struct.Memory* %loadMem_415473, %struct.Memory** %MEMORY
  %loadMem_41547a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 1
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %2231 to i32*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 15
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RBP.i203
  %2236 = sub i64 %2235, 88
  %2237 = load i32, i32* %EAX.i202
  %2238 = zext i32 %2237 to i64
  %2239 = load i64, i64* %PC.i201
  %2240 = add i64 %2239, 3
  store i64 %2240, i64* %PC.i201
  %2241 = inttoptr i64 %2236 to i32*
  store i32 %2237, i32* %2241
  store %struct.Memory* %loadMem_41547a, %struct.Memory** %MEMORY
  %loadMem_41547d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %PC.i200
  %2246 = add i64 %2245, 33
  %2247 = load i64, i64* %PC.i200
  %2248 = add i64 %2247, 6
  %2249 = load i64, i64* %PC.i200
  %2250 = add i64 %2249, 6
  store i64 %2250, i64* %PC.i200
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2252 = load i8, i8* %2251, align 1
  %2253 = icmp ne i8 %2252, 0
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2255 = load i8, i8* %2254, align 1
  %2256 = icmp ne i8 %2255, 0
  %2257 = xor i1 %2253, %2256
  %2258 = xor i1 %2257, true
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %BRANCH_TAKEN, align 1
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2261 = select i1 %2257, i64 %2248, i64 %2246
  store i64 %2261, i64* %2260, align 8
  store %struct.Memory* %loadMem_41547d, %struct.Memory** %MEMORY
  %loadBr_41547d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41547d = icmp eq i8 %loadBr_41547d, 1
  br i1 %cmpBr_41547d, label %block_.L_41549e, label %block_415483

block_415483:                                     ; preds = %block_.L_41545a
  %loadMem_415483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 11
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RDI.i199 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %PC.i198
  %2269 = add i64 %2268, 10
  store i64 %2269, i64* %PC.i198
  store i64 ptrtoint (%G__0x4168f4_type* @G__0x4168f4 to i64), i64* %RDI.i199, align 8
  store %struct.Memory* %loadMem_415483, %struct.Memory** %MEMORY
  %loadMem_41548d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 9
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RSI.i197 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %PC.i196
  %2277 = add i64 %2276, 7
  store i64 %2277, i64* %PC.i196
  %2278 = load i32, i32* bitcast (%G_0x6195fc_type* @G_0x6195fc to i32*)
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RSI.i197, align 8
  store %struct.Memory* %loadMem_41548d, %struct.Memory** %MEMORY
  %loadMem_415494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %2286 = bitcast %union.anon* %2285 to %struct.anon.2*
  %AL.i195 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2286, i32 0, i32 0
  %2287 = load i64, i64* %PC.i194
  %2288 = add i64 %2287, 2
  store i64 %2288, i64* %PC.i194
  store i8 0, i8* %AL.i195, align 1
  store %struct.Memory* %loadMem_415494, %struct.Memory** %MEMORY
  %loadMem1_415496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %PC.i193
  %2293 = add i64 %2292, -84918
  %2294 = load i64, i64* %PC.i193
  %2295 = add i64 %2294, 5
  %2296 = load i64, i64* %PC.i193
  %2297 = add i64 %2296, 5
  store i64 %2297, i64* %PC.i193
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2299 = load i64, i64* %2298, align 8
  %2300 = add i64 %2299, -8
  %2301 = inttoptr i64 %2300 to i64*
  store i64 %2295, i64* %2301
  store i64 %2300, i64* %2298, align 8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2293, i64* %2302, align 8
  store %struct.Memory* %loadMem1_415496, %struct.Memory** %MEMORY
  %loadMem2_415496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415496 = load i64, i64* %3
  %2303 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_415496)
  store %struct.Memory* %2303, %struct.Memory** %MEMORY
  %loadMem_41549b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 1
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %2309 to i32*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 15
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RBP.i190
  %2314 = sub i64 %2313, 92
  %2315 = load i32, i32* %EAX.i189
  %2316 = zext i32 %2315 to i64
  %2317 = load i64, i64* %PC.i188
  %2318 = add i64 %2317, 3
  store i64 %2318, i64* %PC.i188
  %2319 = inttoptr i64 %2314 to i32*
  store i32 %2315, i32* %2319
  store %struct.Memory* %loadMem_41549b, %struct.Memory** %MEMORY
  br label %block_.L_41549e

block_.L_41549e:                                  ; preds = %block_415483, %block_.L_41545a
  %loadMem_41549e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 11
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %EDI.i186 = bitcast %union.anon* %2325 to i32*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 11
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RDI.i187 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %RDI.i187
  %2330 = load i32, i32* %EDI.i186
  %2331 = zext i32 %2330 to i64
  %2332 = load i64, i64* %PC.i185
  %2333 = add i64 %2332, 2
  store i64 %2333, i64* %PC.i185
  %2334 = xor i64 %2331, %2329
  %2335 = trunc i64 %2334 to i32
  %2336 = and i64 %2334, 4294967295
  store i64 %2336, i64* %RDI.i187, align 8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2337, align 1
  %2338 = and i32 %2335, 255
  %2339 = call i32 @llvm.ctpop.i32(i32 %2338)
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2342, i8* %2343, align 1
  %2344 = icmp eq i32 %2335, 0
  %2345 = zext i1 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2345, i8* %2346, align 1
  %2347 = lshr i32 %2335, 31
  %2348 = trunc i32 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2348, i8* %2349, align 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2350, align 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2351, align 1
  store %struct.Memory* %loadMem_41549e, %struct.Memory** %MEMORY
  %loadMem1_4154a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %PC.i184
  %2356 = add i64 %2355, -1568
  %2357 = load i64, i64* %PC.i184
  %2358 = add i64 %2357, 5
  %2359 = load i64, i64* %PC.i184
  %2360 = add i64 %2359, 5
  store i64 %2360, i64* %PC.i184
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2362 = load i64, i64* %2361, align 8
  %2363 = add i64 %2362, -8
  %2364 = inttoptr i64 %2363 to i64*
  store i64 %2358, i64* %2364
  store i64 %2363, i64* %2361, align 8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2356, i64* %2365, align 8
  store %struct.Memory* %loadMem1_4154a0, %struct.Memory** %MEMORY
  %loadMem2_4154a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154a0 = load i64, i64* %3
  %call2_4154a0 = call %struct.Memory* @sub_414e80.spec_reset(%struct.State* %0, i64 %loadPC_4154a0, %struct.Memory* %loadMem2_4154a0)
  store %struct.Memory* %call2_4154a0, %struct.Memory** %MEMORY
  %loadMem_4154a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 11
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RDI.i183 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %PC.i182
  %2373 = add i64 %2372, 5
  store i64 %2373, i64* %PC.i182
  store i64 1, i64* %RDI.i183, align 8
  store %struct.Memory* %loadMem_4154a5, %struct.Memory** %MEMORY
  %loadMem_4154aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 1
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %2379 to i32*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i181
  %2384 = sub i64 %2383, 96
  %2385 = load i32, i32* %EAX.i180
  %2386 = zext i32 %2385 to i64
  %2387 = load i64, i64* %PC.i179
  %2388 = add i64 %2387, 3
  store i64 %2388, i64* %PC.i179
  %2389 = inttoptr i64 %2384 to i32*
  store i32 %2385, i32* %2389
  store %struct.Memory* %loadMem_4154aa, %struct.Memory** %MEMORY
  %loadMem1_4154ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %PC.i178
  %2394 = add i64 %2393, -1629
  %2395 = load i64, i64* %PC.i178
  %2396 = add i64 %2395, 5
  %2397 = load i64, i64* %PC.i178
  %2398 = add i64 %2397, 5
  store i64 %2398, i64* %PC.i178
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2400 = load i64, i64* %2399, align 8
  %2401 = add i64 %2400, -8
  %2402 = inttoptr i64 %2401 to i64*
  store i64 %2396, i64* %2402
  store i64 %2401, i64* %2399, align 8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2394, i64* %2403, align 8
  store %struct.Memory* %loadMem1_4154ad, %struct.Memory** %MEMORY
  %loadMem2_4154ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154ad = load i64, i64* %3
  %call2_4154ad = call %struct.Memory* @sub_414e50.spec_rewind(%struct.State* %0, i64 %loadPC_4154ad, %struct.Memory* %loadMem2_4154ad)
  store %struct.Memory* %call2_4154ad, %struct.Memory** %MEMORY
  %loadMem_4154b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 1
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %2409 to i32*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 15
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %RBP.i177
  %2414 = sub i64 %2413, 100
  %2415 = load i32, i32* %EAX.i176
  %2416 = zext i32 %2415 to i64
  %2417 = load i64, i64* %PC.i175
  %2418 = add i64 %2417, 3
  store i64 %2418, i64* %PC.i175
  %2419 = inttoptr i64 %2414 to i32*
  store i32 %2415, i32* %2419
  store %struct.Memory* %loadMem_4154b2, %struct.Memory** %MEMORY
  %loadMem1_4154b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %PC.i174
  %2424 = add i64 %2423, 363
  %2425 = load i64, i64* %PC.i174
  %2426 = add i64 %2425, 5
  %2427 = load i64, i64* %PC.i174
  %2428 = add i64 %2427, 5
  store i64 %2428, i64* %PC.i174
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2430 = load i64, i64* %2429, align 8
  %2431 = add i64 %2430, -8
  %2432 = inttoptr i64 %2431 to i64*
  store i64 %2426, i64* %2432
  store i64 %2431, i64* %2429, align 8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2424, i64* %2433, align 8
  store %struct.Memory* %loadMem1_4154b5, %struct.Memory** %MEMORY
  %loadMem2_4154b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154b5 = load i64, i64* %3
  %call2_4154b5 = call %struct.Memory* @sub_415620.debug_time(%struct.State* %0, i64 %loadPC_4154b5, %struct.Memory* %loadMem2_4154b5)
  store %struct.Memory* %call2_4154b5, %struct.Memory** %MEMORY
  %loadMem_4154ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 11
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RDI.i173 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %PC.i172
  %2441 = add i64 %2440, 5
  store i64 %2441, i64* %PC.i172
  store i64 2, i64* %RDI.i173, align 8
  store %struct.Memory* %loadMem_4154ba, %struct.Memory** %MEMORY
  %loadMem_4154bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 11
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %EDI.i171 = bitcast %union.anon* %2447 to i32*
  %2448 = load i32, i32* %EDI.i171
  %2449 = zext i32 %2448 to i64
  %2450 = load i64, i64* %PC.i170
  %2451 = add i64 %2450, 7
  store i64 %2451, i64* %PC.i170
  %2452 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %2453 = sub i32 %2448, %2452
  %2454 = icmp ult i32 %2448, %2452
  %2455 = zext i1 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2455, i8* %2456, align 1
  %2457 = and i32 %2453, 255
  %2458 = call i32 @llvm.ctpop.i32(i32 %2457)
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  %2461 = xor i8 %2460, 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2461, i8* %2462, align 1
  %2463 = xor i32 %2452, %2448
  %2464 = xor i32 %2463, %2453
  %2465 = lshr i32 %2464, 4
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2467, i8* %2468, align 1
  %2469 = icmp eq i32 %2453, 0
  %2470 = zext i1 %2469 to i8
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2470, i8* %2471, align 1
  %2472 = lshr i32 %2453, 31
  %2473 = trunc i32 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2473, i8* %2474, align 1
  %2475 = lshr i32 %2448, 31
  %2476 = lshr i32 %2452, 31
  %2477 = xor i32 %2476, %2475
  %2478 = xor i32 %2472, %2475
  %2479 = add i32 %2478, %2477
  %2480 = icmp eq i32 %2479, 2
  %2481 = zext i1 %2480 to i8
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2481, i8* %2482, align 1
  store %struct.Memory* %loadMem_4154bf, %struct.Memory** %MEMORY
  %loadMem_4154c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 1
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %2488 to i32*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 15
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2491 to i64*
  %2492 = load i64, i64* %RBP.i169
  %2493 = sub i64 %2492, 104
  %2494 = load i32, i32* %EAX.i168
  %2495 = zext i32 %2494 to i64
  %2496 = load i64, i64* %PC.i167
  %2497 = add i64 %2496, 3
  store i64 %2497, i64* %PC.i167
  %2498 = inttoptr i64 %2493 to i32*
  store i32 %2494, i32* %2498
  store %struct.Memory* %loadMem_4154c6, %struct.Memory** %MEMORY
  %loadMem_4154c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %PC.i166
  %2503 = add i64 %2502, 26
  %2504 = load i64, i64* %PC.i166
  %2505 = add i64 %2504, 6
  %2506 = load i64, i64* %PC.i166
  %2507 = add i64 %2506, 6
  store i64 %2507, i64* %PC.i166
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2509 = load i8, i8* %2508, align 1
  %2510 = icmp ne i8 %2509, 0
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2512 = load i8, i8* %2511, align 1
  %2513 = icmp ne i8 %2512, 0
  %2514 = xor i1 %2510, %2513
  %2515 = xor i1 %2514, true
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %BRANCH_TAKEN, align 1
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2518 = select i1 %2514, i64 %2505, i64 %2503
  store i64 %2518, i64* %2517, align 8
  store %struct.Memory* %loadMem_4154c9, %struct.Memory** %MEMORY
  %loadBr_4154c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4154c9 = icmp eq i8 %loadBr_4154c9, 1
  br i1 %cmpBr_4154c9, label %block_.L_4154e3, label %block_4154cf

block_4154cf:                                     ; preds = %block_.L_41549e
  %loadMem_4154cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 11
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RDI.i165 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %PC.i164
  %2526 = add i64 %2525, 10
  store i64 %2526, i64* %PC.i164
  store i64 ptrtoint (%G__0x416918_type* @G__0x416918 to i64), i64* %RDI.i165, align 8
  store %struct.Memory* %loadMem_4154cf, %struct.Memory** %MEMORY
  %loadMem_4154d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 1
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %2533 = bitcast %union.anon* %2532 to %struct.anon.2*
  %AL.i163 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2533, i32 0, i32 0
  %2534 = load i64, i64* %PC.i162
  %2535 = add i64 %2534, 2
  store i64 %2535, i64* %PC.i162
  store i8 0, i8* %AL.i163, align 1
  store %struct.Memory* %loadMem_4154d9, %struct.Memory** %MEMORY
  %loadMem1_4154db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %PC.i161
  %2540 = add i64 %2539, -84987
  %2541 = load i64, i64* %PC.i161
  %2542 = add i64 %2541, 5
  %2543 = load i64, i64* %PC.i161
  %2544 = add i64 %2543, 5
  store i64 %2544, i64* %PC.i161
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2546 = load i64, i64* %2545, align 8
  %2547 = add i64 %2546, -8
  %2548 = inttoptr i64 %2547 to i64*
  store i64 %2542, i64* %2548
  store i64 %2547, i64* %2545, align 8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2540, i64* %2549, align 8
  store %struct.Memory* %loadMem1_4154db, %struct.Memory** %MEMORY
  %loadMem2_4154db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154db = load i64, i64* %3
  %2550 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4154db)
  store %struct.Memory* %2550, %struct.Memory** %MEMORY
  %loadMem_4154e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 1
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %2556 to i32*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 15
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %RBP.i157
  %2561 = sub i64 %2560, 108
  %2562 = load i32, i32* %EAX.i156
  %2563 = zext i32 %2562 to i64
  %2564 = load i64, i64* %PC.i155
  %2565 = add i64 %2564, 3
  store i64 %2565, i64* %PC.i155
  %2566 = inttoptr i64 %2561 to i32*
  store i32 %2562, i32* %2566
  store %struct.Memory* %loadMem_4154e0, %struct.Memory** %MEMORY
  br label %block_.L_4154e3

block_.L_4154e3:                                  ; preds = %block_4154cf, %block_.L_41549e
  %loadMem_4154e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 11
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %PC.i153
  %2574 = add i64 %2573, 5
  store i64 %2574, i64* %PC.i153
  store i64 1, i64* %RDI.i154, align 8
  store %struct.Memory* %loadMem_4154e3, %struct.Memory** %MEMORY
  %loadMem_4154e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 9
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %ESI.i151 = bitcast %union.anon* %2580 to i32*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 9
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %2583 to i64*
  %2584 = load i64, i64* %RSI.i152
  %2585 = load i32, i32* %ESI.i151
  %2586 = zext i32 %2585 to i64
  %2587 = load i64, i64* %PC.i150
  %2588 = add i64 %2587, 2
  store i64 %2588, i64* %PC.i150
  %2589 = xor i64 %2586, %2584
  %2590 = trunc i64 %2589 to i32
  %2591 = and i64 %2589, 4294967295
  store i64 %2591, i64* %RSI.i152, align 8
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2592, align 1
  %2593 = and i32 %2590, 255
  %2594 = call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2597, i8* %2598, align 1
  %2599 = icmp eq i32 %2590, 0
  %2600 = zext i1 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2600, i8* %2601, align 1
  %2602 = lshr i32 %2590, 31
  %2603 = trunc i32 %2602 to i8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2603, i8* %2604, align 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2605, align 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2606, align 1
  store %struct.Memory* %loadMem_4154e8, %struct.Memory** %MEMORY
  %loadMem_4154ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 7
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 15
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %RBP.i149
  %2617 = sub i64 %2616, 24
  %2618 = load i64, i64* %PC.i147
  %2619 = add i64 %2618, 3
  store i64 %2619, i64* %PC.i147
  %2620 = inttoptr i64 %2617 to i32*
  %2621 = load i32, i32* %2620
  %2622 = zext i32 %2621 to i64
  store i64 %2622, i64* %RDX.i148, align 8
  store %struct.Memory* %loadMem_4154ea, %struct.Memory** %MEMORY
  %loadMem1_4154ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %PC.i146
  %2627 = add i64 %2626, 419
  %2628 = load i64, i64* %PC.i146
  %2629 = add i64 %2628, 5
  %2630 = load i64, i64* %PC.i146
  %2631 = add i64 %2630, 5
  store i64 %2631, i64* %PC.i146
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2633 = load i64, i64* %2632, align 8
  %2634 = add i64 %2633, -8
  %2635 = inttoptr i64 %2634 to i64*
  store i64 %2629, i64* %2635
  store i64 %2634, i64* %2632, align 8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2627, i64* %2636, align 8
  store %struct.Memory* %loadMem1_4154ed, %struct.Memory** %MEMORY
  %loadMem2_4154ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154ed = load i64, i64* %3
  %call2_4154ed = call %struct.Memory* @sub_415690.spec_uncompress(%struct.State* %0, i64 %loadPC_4154ed, %struct.Memory* %loadMem2_4154ed)
  store %struct.Memory* %call2_4154ed, %struct.Memory** %MEMORY
  %loadMem1_4154f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %PC.i145
  %2641 = add i64 %2640, 302
  %2642 = load i64, i64* %PC.i145
  %2643 = add i64 %2642, 5
  %2644 = load i64, i64* %PC.i145
  %2645 = add i64 %2644, 5
  store i64 %2645, i64* %PC.i145
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2647 = load i64, i64* %2646, align 8
  %2648 = add i64 %2647, -8
  %2649 = inttoptr i64 %2648 to i64*
  store i64 %2643, i64* %2649
  store i64 %2648, i64* %2646, align 8
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2641, i64* %2650, align 8
  store %struct.Memory* %loadMem1_4154f2, %struct.Memory** %MEMORY
  %loadMem2_4154f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154f2 = load i64, i64* %3
  %call2_4154f2 = call %struct.Memory* @sub_415620.debug_time(%struct.State* %0, i64 %loadPC_4154f2, %struct.Memory* %loadMem2_4154f2)
  store %struct.Memory* %call2_4154f2, %struct.Memory** %MEMORY
  %loadMem_4154f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 7
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %PC.i143
  %2658 = add i64 %2657, 5
  store i64 %2658, i64* %PC.i143
  store i64 3, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_4154f7, %struct.Memory** %MEMORY
  %loadMem_4154fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 7
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %EDX.i142 = bitcast %union.anon* %2664 to i32*
  %2665 = load i32, i32* %EDX.i142
  %2666 = zext i32 %2665 to i64
  %2667 = load i64, i64* %PC.i141
  %2668 = add i64 %2667, 7
  store i64 %2668, i64* %PC.i141
  %2669 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %2670 = sub i32 %2665, %2669
  %2671 = icmp ult i32 %2665, %2669
  %2672 = zext i1 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2672, i8* %2673, align 1
  %2674 = and i32 %2670, 255
  %2675 = call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2678, i8* %2679, align 1
  %2680 = xor i32 %2669, %2665
  %2681 = xor i32 %2680, %2670
  %2682 = lshr i32 %2681, 4
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2684, i8* %2685, align 1
  %2686 = icmp eq i32 %2670, 0
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2687, i8* %2688, align 1
  %2689 = lshr i32 %2670, 31
  %2690 = trunc i32 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i32 %2665, 31
  %2693 = lshr i32 %2669, 31
  %2694 = xor i32 %2693, %2692
  %2695 = xor i32 %2689, %2692
  %2696 = add i32 %2695, %2694
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2698, i8* %2699, align 1
  store %struct.Memory* %loadMem_4154fc, %struct.Memory** %MEMORY
  %loadMem_415503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 1
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %2705 to i32*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 15
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RBP.i140
  %2710 = sub i64 %2709, 112
  %2711 = load i32, i32* %EAX.i139
  %2712 = zext i32 %2711 to i64
  %2713 = load i64, i64* %PC.i138
  %2714 = add i64 %2713, 3
  store i64 %2714, i64* %PC.i138
  %2715 = inttoptr i64 %2710 to i32*
  store i32 %2711, i32* %2715
  store %struct.Memory* %loadMem_415503, %struct.Memory** %MEMORY
  %loadMem_415506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %PC.i137
  %2720 = add i64 %2719, 33
  %2721 = load i64, i64* %PC.i137
  %2722 = add i64 %2721, 6
  %2723 = load i64, i64* %PC.i137
  %2724 = add i64 %2723, 6
  store i64 %2724, i64* %PC.i137
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2726 = load i8, i8* %2725, align 1
  %2727 = icmp ne i8 %2726, 0
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2729 = load i8, i8* %2728, align 1
  %2730 = icmp ne i8 %2729, 0
  %2731 = xor i1 %2727, %2730
  %2732 = xor i1 %2731, true
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %BRANCH_TAKEN, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2735 = select i1 %2731, i64 %2722, i64 %2720
  store i64 %2735, i64* %2734, align 8
  store %struct.Memory* %loadMem_415506, %struct.Memory** %MEMORY
  %loadBr_415506 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415506 = icmp eq i8 %loadBr_415506, 1
  br i1 %cmpBr_415506, label %block_.L_415527, label %block_41550c

block_41550c:                                     ; preds = %block_.L_4154e3
  %loadMem_41550c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 11
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RDI.i136 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %PC.i135
  %2743 = add i64 %2742, 10
  store i64 %2743, i64* %PC.i135
  store i64 ptrtoint (%G__0x41692c_type* @G__0x41692c to i64), i64* %RDI.i136, align 8
  store %struct.Memory* %loadMem_41550c, %struct.Memory** %MEMORY
  %loadMem_415516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 9
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RSI.i134 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %PC.i133
  %2751 = add i64 %2750, 7
  store i64 %2751, i64* %PC.i133
  %2752 = load i32, i32* bitcast (%G_0x6195e4_type* @G_0x6195e4 to i32*)
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RSI.i134, align 8
  store %struct.Memory* %loadMem_415516, %struct.Memory** %MEMORY
  %loadMem_41551d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 1
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %2760 = bitcast %union.anon* %2759 to %struct.anon.2*
  %AL.i132 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2760, i32 0, i32 0
  %2761 = load i64, i64* %PC.i131
  %2762 = add i64 %2761, 2
  store i64 %2762, i64* %PC.i131
  store i8 0, i8* %AL.i132, align 1
  store %struct.Memory* %loadMem_41551d, %struct.Memory** %MEMORY
  %loadMem1_41551f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %PC.i130
  %2767 = add i64 %2766, -85055
  %2768 = load i64, i64* %PC.i130
  %2769 = add i64 %2768, 5
  %2770 = load i64, i64* %PC.i130
  %2771 = add i64 %2770, 5
  store i64 %2771, i64* %PC.i130
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2773 = load i64, i64* %2772, align 8
  %2774 = add i64 %2773, -8
  %2775 = inttoptr i64 %2774 to i64*
  store i64 %2769, i64* %2775
  store i64 %2774, i64* %2772, align 8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2767, i64* %2776, align 8
  store %struct.Memory* %loadMem1_41551f, %struct.Memory** %MEMORY
  %loadMem2_41551f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41551f = load i64, i64* %3
  %2777 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_41551f)
  store %struct.Memory* %2777, %struct.Memory** %MEMORY
  %loadMem_415524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 1
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %2783 to i32*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %RBP.i126
  %2788 = sub i64 %2787, 116
  %2789 = load i32, i32* %EAX.i125
  %2790 = zext i32 %2789 to i64
  %2791 = load i64, i64* %PC.i124
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %PC.i124
  %2793 = inttoptr i64 %2788 to i32*
  store i32 %2789, i32* %2793
  store %struct.Memory* %loadMem_415524, %struct.Memory** %MEMORY
  br label %block_.L_415527

block_.L_415527:                                  ; preds = %block_41550c, %block_.L_4154e3
  %loadMem_415527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RBP.i123
  %2801 = sub i64 %2800, 20
  %2802 = load i64, i64* %PC.i122
  %2803 = add i64 %2802, 7
  store i64 %2803, i64* %PC.i122
  %2804 = inttoptr i64 %2801 to i32*
  store i32 0, i32* %2804
  store %struct.Memory* %loadMem_415527, %struct.Memory** %MEMORY
  br label %block_.L_41552e

block_.L_41552e:                                  ; preds = %block_.L_415590, %block_.L_415527
  %loadMem_41552e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 1
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 15
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RBP.i121
  %2815 = sub i64 %2814, 20
  %2816 = load i64, i64* %PC.i119
  %2817 = add i64 %2816, 7
  store i64 %2817, i64* %PC.i119
  %2818 = inttoptr i64 %2815 to i32*
  %2819 = load i32, i32* %2818
  %2820 = sext i32 %2819 to i64
  %2821 = mul i64 %2820, 1027
  %2822 = trunc i64 %2821 to i32
  %2823 = and i64 %2821, 4294967295
  store i64 %2823, i64* %RAX.i120, align 8
  %2824 = shl i64 %2821, 32
  %2825 = ashr exact i64 %2824, 32
  %2826 = icmp ne i64 %2825, %2821
  %2827 = zext i1 %2826 to i8
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2827, i8* %2828, align 1
  %2829 = and i32 %2822, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2835, align 1
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2836, align 1
  %2837 = lshr i32 %2822, 31
  %2838 = trunc i32 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2838, i8* %2839, align 1
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2827, i8* %2840, align 1
  store %struct.Memory* %loadMem_41552e, %struct.Memory** %MEMORY
  %loadMem_415535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 5
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 15
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %RBP.i118
  %2851 = sub i64 %2850, 28
  %2852 = load i64, i64* %PC.i116
  %2853 = add i64 %2852, 3
  store i64 %2853, i64* %PC.i116
  %2854 = inttoptr i64 %2851 to i32*
  %2855 = load i32, i32* %2854
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_415535, %struct.Memory** %MEMORY
  %loadMem_415538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 5
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %RCX.i115
  %2864 = load i64, i64* %PC.i114
  %2865 = add i64 %2864, 3
  store i64 %2865, i64* %PC.i114
  %2866 = and i64 %2863, 4294967295
  %2867 = shl i64 %2866, 19
  %2868 = trunc i64 %2867 to i32
  %2869 = icmp slt i32 %2868, 0
  %2870 = shl i32 %2868, 1
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RCX.i115, align 8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2873 = zext i1 %2869 to i8
  store i8 %2873, i8* %2872, align 1
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2874, align 1
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2875, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2877 = icmp eq i32 %2870, 0
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %2876, align 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2880 = lshr i32 %2870, 31
  %2881 = trunc i32 %2880 to i8
  store i8 %2881, i8* %2879, align 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2882, align 1
  store %struct.Memory* %loadMem_415538, %struct.Memory** %MEMORY
  %loadMem_41553b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %2888 to i32*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 5
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %ECX.i113 = bitcast %union.anon* %2891 to i32*
  %2892 = load i32, i32* %EAX.i112
  %2893 = zext i32 %2892 to i64
  %2894 = load i32, i32* %ECX.i113
  %2895 = zext i32 %2894 to i64
  %2896 = load i64, i64* %PC.i111
  %2897 = add i64 %2896, 2
  store i64 %2897, i64* %PC.i111
  %2898 = sub i32 %2892, %2894
  %2899 = icmp ult i32 %2892, %2894
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2900, i8* %2901, align 1
  %2902 = and i32 %2898, 255
  %2903 = call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2906, i8* %2907, align 1
  %2908 = xor i64 %2895, %2893
  %2909 = trunc i64 %2908 to i32
  %2910 = xor i32 %2909, %2898
  %2911 = lshr i32 %2910, 4
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2913, i8* %2914, align 1
  %2915 = icmp eq i32 %2898, 0
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2916, i8* %2917, align 1
  %2918 = lshr i32 %2898, 31
  %2919 = trunc i32 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2919, i8* %2920, align 1
  %2921 = lshr i32 %2892, 31
  %2922 = lshr i32 %2894, 31
  %2923 = xor i32 %2922, %2921
  %2924 = xor i32 %2918, %2921
  %2925 = add i32 %2924, %2923
  %2926 = icmp eq i32 %2925, 2
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2927, i8* %2928, align 1
  store %struct.Memory* %loadMem_41553b, %struct.Memory** %MEMORY
  %loadMem_41553d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %PC.i110
  %2933 = add i64 %2932, 97
  %2934 = load i64, i64* %PC.i110
  %2935 = add i64 %2934, 6
  %2936 = load i64, i64* %PC.i110
  %2937 = add i64 %2936, 6
  store i64 %2937, i64* %PC.i110
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2939 = load i8, i8* %2938, align 1
  %2940 = icmp ne i8 %2939, 0
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2942 = load i8, i8* %2941, align 1
  %2943 = icmp ne i8 %2942, 0
  %2944 = xor i1 %2940, %2943
  %2945 = xor i1 %2944, true
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %BRANCH_TAKEN, align 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2948 = select i1 %2944, i64 %2935, i64 %2933
  store i64 %2948, i64* %2947, align 8
  store %struct.Memory* %loadMem_41553d, %struct.Memory** %MEMORY
  %loadBr_41553d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41553d = icmp eq i8 %loadBr_41553d, 1
  br i1 %cmpBr_41553d, label %block_.L_41559e, label %block_415543

block_415543:                                     ; preds = %block_.L_41552e
  %loadMem_415543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 33
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 1
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 15
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %RBP.i109
  %2959 = sub i64 %2958, 48
  %2960 = load i64, i64* %PC.i107
  %2961 = add i64 %2960, 4
  store i64 %2961, i64* %PC.i107
  %2962 = inttoptr i64 %2959 to i64*
  %2963 = load i64, i64* %2962
  store i64 %2963, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_415543, %struct.Memory** %MEMORY
  %loadMem_415547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 5
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 15
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %RBP.i106
  %2974 = sub i64 %2973, 20
  %2975 = load i64, i64* %PC.i104
  %2976 = add i64 %2975, 4
  store i64 %2976, i64* %PC.i104
  %2977 = inttoptr i64 %2974 to i32*
  %2978 = load i32, i32* %2977
  %2979 = sext i32 %2978 to i64
  store i64 %2979, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_415547, %struct.Memory** %MEMORY
  %loadMem_41554b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 7
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RAX.i102
  %2993 = load i64, i64* %RCX.i103
  %2994 = add i64 %2993, %2992
  %2995 = load i64, i64* %PC.i101
  %2996 = add i64 %2995, 4
  store i64 %2996, i64* %PC.i101
  %2997 = inttoptr i64 %2994 to i8*
  %2998 = load i8, i8* %2997
  %2999 = zext i8 %2998 to i64
  store i64 %2999, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_41554b, %struct.Memory** %MEMORY
  %loadMem_41554f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 1
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %PC.i99
  %3007 = add i64 %3006, 8
  store i64 %3007, i64* %PC.i99
  %3008 = load i64, i64* bitcast (%G_0x6195f0_type* @G_0x6195f0 to i64*)
  store i64 %3008, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_41554f, %struct.Memory** %MEMORY
  %loadMem_415557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 33
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 9
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RSI.i97 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 15
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %RBP.i98
  %3019 = sub i64 %3018, 20
  %3020 = load i64, i64* %PC.i96
  %3021 = add i64 %3020, 7
  store i64 %3021, i64* %PC.i96
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022
  %3024 = sext i32 %3023 to i64
  %3025 = mul i64 %3024, 1027
  %3026 = trunc i64 %3025 to i32
  %3027 = and i64 %3025, 4294967295
  store i64 %3027, i64* %RSI.i97, align 8
  %3028 = shl i64 %3025, 32
  %3029 = ashr exact i64 %3028, 32
  %3030 = icmp ne i64 %3029, %3025
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3031, i8* %3032, align 1
  %3033 = and i32 %3026, 255
  %3034 = call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3037, i8* %3038, align 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3039, align 1
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3040, align 1
  %3041 = lshr i32 %3026, 31
  %3042 = trunc i32 %3041 to i8
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3042, i8* %3043, align 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3031, i8* %3044, align 1
  store %struct.Memory* %loadMem_415557, %struct.Memory** %MEMORY
  %loadMem_41555e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 9
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %ESI.i94 = bitcast %union.anon* %3050 to i32*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 5
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %3053 to i64*
  %3054 = load i32, i32* %ESI.i94
  %3055 = zext i32 %3054 to i64
  %3056 = load i64, i64* %PC.i93
  %3057 = add i64 %3056, 3
  store i64 %3057, i64* %PC.i93
  %3058 = shl i64 %3055, 32
  %3059 = ashr exact i64 %3058, 32
  store i64 %3059, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_41555e, %struct.Memory** %MEMORY
  %loadMem_415561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 1
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 5
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 9
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RSI.i92 = bitcast %union.anon* %3071 to i64*
  %3072 = load i64, i64* %RAX.i90
  %3073 = load i64, i64* %RCX.i91
  %3074 = add i64 %3073, %3072
  %3075 = load i64, i64* %PC.i89
  %3076 = add i64 %3075, 4
  store i64 %3076, i64* %PC.i89
  %3077 = inttoptr i64 %3074 to i8*
  %3078 = load i8, i8* %3077
  %3079 = zext i8 %3078 to i64
  store i64 %3079, i64* %RSI.i92, align 8
  store %struct.Memory* %loadMem_415561, %struct.Memory** %MEMORY
  %loadMem_415565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 7
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3085 to i32*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 9
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %ESI.i88 = bitcast %union.anon* %3088 to i32*
  %3089 = load i32, i32* %EDX.i
  %3090 = zext i32 %3089 to i64
  %3091 = load i32, i32* %ESI.i88
  %3092 = zext i32 %3091 to i64
  %3093 = load i64, i64* %PC.i87
  %3094 = add i64 %3093, 2
  store i64 %3094, i64* %PC.i87
  %3095 = sub i32 %3089, %3091
  %3096 = icmp ult i32 %3089, %3091
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3097, i8* %3098, align 1
  %3099 = and i32 %3095, 255
  %3100 = call i32 @llvm.ctpop.i32(i32 %3099)
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3103, i8* %3104, align 1
  %3105 = xor i64 %3092, %3090
  %3106 = trunc i64 %3105 to i32
  %3107 = xor i32 %3106, %3095
  %3108 = lshr i32 %3107, 4
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3110, i8* %3111, align 1
  %3112 = icmp eq i32 %3095, 0
  %3113 = zext i1 %3112 to i8
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3113, i8* %3114, align 1
  %3115 = lshr i32 %3095, 31
  %3116 = trunc i32 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3116, i8* %3117, align 1
  %3118 = lshr i32 %3089, 31
  %3119 = lshr i32 %3091, 31
  %3120 = xor i32 %3119, %3118
  %3121 = xor i32 %3115, %3118
  %3122 = add i32 %3121, %3120
  %3123 = icmp eq i32 %3122, 2
  %3124 = zext i1 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3124, i8* %3125, align 1
  store %struct.Memory* %loadMem_415565, %struct.Memory** %MEMORY
  %loadMem_415567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %PC.i86
  %3130 = add i64 %3129, 36
  %3131 = load i64, i64* %PC.i86
  %3132 = add i64 %3131, 6
  %3133 = load i64, i64* %PC.i86
  %3134 = add i64 %3133, 6
  store i64 %3134, i64* %PC.i86
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3136 = load i8, i8* %3135, align 1
  store i8 %3136, i8* %BRANCH_TAKEN, align 1
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3138 = icmp ne i8 %3136, 0
  %3139 = select i1 %3138, i64 %3130, i64 %3132
  store i64 %3139, i64* %3137, align 8
  store %struct.Memory* %loadMem_415567, %struct.Memory** %MEMORY
  %loadBr_415567 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415567 = icmp eq i8 %loadBr_415567, 1
  br i1 %cmpBr_415567, label %block_.L_41558b, label %block_41556d

block_41556d:                                     ; preds = %block_415543
  %loadMem_41556d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 11
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %PC.i84
  %3147 = add i64 %3146, 10
  store i64 %3147, i64* %PC.i84
  store i64 ptrtoint (%G__0x416952_type* @G__0x416952 to i64), i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_41556d, %struct.Memory** %MEMORY
  %loadMem_415577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 9
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 15
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %RBP.i83
  %3158 = sub i64 %3157, 28
  %3159 = load i64, i64* %PC.i81
  %3160 = add i64 %3159, 3
  store i64 %3160, i64* %PC.i81
  %3161 = inttoptr i64 %3158 to i32*
  %3162 = load i32, i32* %3161
  %3163 = zext i32 %3162 to i64
  store i64 %3163, i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_415577, %struct.Memory** %MEMORY
  %loadMem_41557a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 1
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %3170 = bitcast %union.anon* %3169 to %struct.anon.2*
  %AL.i80 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3170, i32 0, i32 0
  %3171 = load i64, i64* %PC.i79
  %3172 = add i64 %3171, 2
  store i64 %3172, i64* %PC.i79
  store i8 0, i8* %AL.i80, align 1
  store %struct.Memory* %loadMem_41557a, %struct.Memory** %MEMORY
  %loadMem1_41557c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %PC.i78
  %3177 = add i64 %3176, -85148
  %3178 = load i64, i64* %PC.i78
  %3179 = add i64 %3178, 5
  %3180 = load i64, i64* %PC.i78
  %3181 = add i64 %3180, 5
  store i64 %3181, i64* %PC.i78
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3183 = load i64, i64* %3182, align 8
  %3184 = add i64 %3183, -8
  %3185 = inttoptr i64 %3184 to i64*
  store i64 %3179, i64* %3185
  store i64 %3184, i64* %3182, align 8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3177, i64* %3186, align 8
  store %struct.Memory* %loadMem1_41557c, %struct.Memory** %MEMORY
  %loadMem2_41557c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41557c = load i64, i64* %3
  %3187 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_41557c)
  store %struct.Memory* %3187, %struct.Memory** %MEMORY
  %loadMem_415581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 11
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %EDI.i74 = bitcast %union.anon* %3193 to i32*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 11
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RDI.i75 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RDI.i75
  %3198 = load i32, i32* %EDI.i74
  %3199 = zext i32 %3198 to i64
  %3200 = load i64, i64* %PC.i73
  %3201 = add i64 %3200, 2
  store i64 %3201, i64* %PC.i73
  %3202 = xor i64 %3199, %3197
  %3203 = trunc i64 %3202 to i32
  %3204 = and i64 %3202, 4294967295
  store i64 %3204, i64* %RDI.i75, align 8
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3205, align 1
  %3206 = and i32 %3203, 255
  %3207 = call i32 @llvm.ctpop.i32(i32 %3206)
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  %3210 = xor i8 %3209, 1
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3210, i8* %3211, align 1
  %3212 = icmp eq i32 %3203, 0
  %3213 = zext i1 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3213, i8* %3214, align 1
  %3215 = lshr i32 %3203, 31
  %3216 = trunc i32 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3216, i8* %3217, align 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3218, align 1
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3219, align 1
  store %struct.Memory* %loadMem_415581, %struct.Memory** %MEMORY
  %loadMem_415583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 1
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %3225 to i32*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 15
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3228 to i64*
  %3229 = load i64, i64* %RBP.i72
  %3230 = sub i64 %3229, 120
  %3231 = load i32, i32* %EAX.i71
  %3232 = zext i32 %3231 to i64
  %3233 = load i64, i64* %PC.i70
  %3234 = add i64 %3233, 3
  store i64 %3234, i64* %PC.i70
  %3235 = inttoptr i64 %3230 to i32*
  store i32 %3231, i32* %3235
  store %struct.Memory* %loadMem_415583, %struct.Memory** %MEMORY
  %loadMem1_415586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %PC.i69
  %3240 = add i64 %3239, -84966
  %3241 = load i64, i64* %PC.i69
  %3242 = add i64 %3241, 5
  %3243 = load i64, i64* %PC.i69
  %3244 = add i64 %3243, 5
  store i64 %3244, i64* %PC.i69
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3246 = load i64, i64* %3245, align 8
  %3247 = add i64 %3246, -8
  %3248 = inttoptr i64 %3247 to i64*
  store i64 %3242, i64* %3248
  store i64 %3247, i64* %3245, align 8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3240, i64* %3249, align 8
  store %struct.Memory* %loadMem1_415586, %struct.Memory** %MEMORY
  %loadMem2_415586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415586 = load i64, i64* %3
  %3250 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %loadMem2_415586)
  store %struct.Memory* %3250, %struct.Memory** %MEMORY
  br label %block_.L_41558b

block_.L_41558b:                                  ; preds = %block_41556d, %block_415543
  %loadMem_41558b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %PC.i66
  %3255 = add i64 %3254, 5
  %3256 = load i64, i64* %PC.i66
  %3257 = add i64 %3256, 5
  store i64 %3257, i64* %PC.i66
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3255, i64* %3258, align 8
  store %struct.Memory* %loadMem_41558b, %struct.Memory** %MEMORY
  br label %block_.L_415590

block_.L_415590:                                  ; preds = %block_.L_41558b
  %loadMem_415590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 1
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 15
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RBP.i65
  %3269 = sub i64 %3268, 20
  %3270 = load i64, i64* %PC.i63
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i63
  %3272 = inttoptr i64 %3269 to i32*
  %3273 = load i32, i32* %3272
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_415590, %struct.Memory** %MEMORY
  %loadMem_415593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 1
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %RAX.i62
  %3282 = load i64, i64* %PC.i61
  %3283 = add i64 %3282, 3
  store i64 %3283, i64* %PC.i61
  %3284 = trunc i64 %3281 to i32
  %3285 = add i32 1, %3284
  %3286 = zext i32 %3285 to i64
  store i64 %3286, i64* %RAX.i62, align 8
  %3287 = icmp ult i32 %3285, %3284
  %3288 = icmp ult i32 %3285, 1
  %3289 = or i1 %3287, %3288
  %3290 = zext i1 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3290, i8* %3291, align 1
  %3292 = and i32 %3285, 255
  %3293 = call i32 @llvm.ctpop.i32(i32 %3292)
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  %3296 = xor i8 %3295, 1
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3296, i8* %3297, align 1
  %3298 = xor i64 1, %3281
  %3299 = trunc i64 %3298 to i32
  %3300 = xor i32 %3299, %3285
  %3301 = lshr i32 %3300, 4
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3303, i8* %3304, align 1
  %3305 = icmp eq i32 %3285, 0
  %3306 = zext i1 %3305 to i8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3306, i8* %3307, align 1
  %3308 = lshr i32 %3285, 31
  %3309 = trunc i32 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3309, i8* %3310, align 1
  %3311 = lshr i32 %3284, 31
  %3312 = xor i32 %3308, %3311
  %3313 = add i32 %3312, %3308
  %3314 = icmp eq i32 %3313, 2
  %3315 = zext i1 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3315, i8* %3316, align 1
  store %struct.Memory* %loadMem_415593, %struct.Memory** %MEMORY
  %loadMem_415596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 1
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %3322 to i32*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 15
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %3325 to i64*
  %3326 = load i64, i64* %RBP.i60
  %3327 = sub i64 %3326, 20
  %3328 = load i32, i32* %EAX.i59
  %3329 = zext i32 %3328 to i64
  %3330 = load i64, i64* %PC.i58
  %3331 = add i64 %3330, 3
  store i64 %3331, i64* %PC.i58
  %3332 = inttoptr i64 %3327 to i32*
  store i32 %3328, i32* %3332
  store %struct.Memory* %loadMem_415596, %struct.Memory** %MEMORY
  %loadMem_415599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3335 to i64*
  %3336 = load i64, i64* %PC.i57
  %3337 = add i64 %3336, -107
  %3338 = load i64, i64* %PC.i57
  %3339 = add i64 %3338, 5
  store i64 %3339, i64* %PC.i57
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3337, i64* %3340, align 8
  store %struct.Memory* %loadMem_415599, %struct.Memory** %MEMORY
  br label %block_.L_41552e

block_.L_41559e:                                  ; preds = %block_.L_41552e
  %loadMem1_41559e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3343 to i64*
  %3344 = load i64, i64* %PC.i56
  %3345 = add i64 %3344, 130
  %3346 = load i64, i64* %PC.i56
  %3347 = add i64 %3346, 5
  %3348 = load i64, i64* %PC.i56
  %3349 = add i64 %3348, 5
  store i64 %3349, i64* %PC.i56
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3351 = load i64, i64* %3350, align 8
  %3352 = add i64 %3351, -8
  %3353 = inttoptr i64 %3352 to i64*
  store i64 %3347, i64* %3353
  store i64 %3352, i64* %3350, align 8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3345, i64* %3354, align 8
  store %struct.Memory* %loadMem1_41559e, %struct.Memory** %MEMORY
  %loadMem2_41559e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41559e = load i64, i64* %3
  %call2_41559e = call %struct.Memory* @sub_415620.debug_time(%struct.State* %0, i64 %loadPC_41559e, %struct.Memory* %loadMem2_41559e)
  store %struct.Memory* %call2_41559e, %struct.Memory** %MEMORY
  %loadMem_4155a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 5
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3360 to i64*
  %3361 = load i64, i64* %PC.i55
  %3362 = add i64 %3361, 5
  store i64 %3362, i64* %PC.i55
  store i64 3, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4155a3, %struct.Memory** %MEMORY
  %loadMem_4155a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 5
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3368 to i32*
  %3369 = load i32, i32* %ECX.i
  %3370 = zext i32 %3369 to i64
  %3371 = load i64, i64* %PC.i54
  %3372 = add i64 %3371, 7
  store i64 %3372, i64* %PC.i54
  %3373 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
  %3374 = sub i32 %3369, %3373
  %3375 = icmp ult i32 %3369, %3373
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3376, i8* %3377, align 1
  %3378 = and i32 %3374, 255
  %3379 = call i32 @llvm.ctpop.i32(i32 %3378)
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  %3382 = xor i8 %3381, 1
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3382, i8* %3383, align 1
  %3384 = xor i32 %3373, %3369
  %3385 = xor i32 %3384, %3374
  %3386 = lshr i32 %3385, 4
  %3387 = trunc i32 %3386 to i8
  %3388 = and i8 %3387, 1
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3388, i8* %3389, align 1
  %3390 = icmp eq i32 %3374, 0
  %3391 = zext i1 %3390 to i8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3391, i8* %3392, align 1
  %3393 = lshr i32 %3374, 31
  %3394 = trunc i32 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3394, i8* %3395, align 1
  %3396 = lshr i32 %3369, 31
  %3397 = lshr i32 %3373, 31
  %3398 = xor i32 %3397, %3396
  %3399 = xor i32 %3393, %3396
  %3400 = add i32 %3399, %3398
  %3401 = icmp eq i32 %3400, 2
  %3402 = zext i1 %3401 to i8
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3402, i8* %3403, align 1
  store %struct.Memory* %loadMem_4155a8, %struct.Memory** %MEMORY
  %loadMem_4155af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 1
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %3409 to i32*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 15
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %RBP.i53
  %3414 = sub i64 %3413, 124
  %3415 = load i32, i32* %EAX.i52
  %3416 = zext i32 %3415 to i64
  %3417 = load i64, i64* %PC.i51
  %3418 = add i64 %3417, 3
  store i64 %3418, i64* %PC.i51
  %3419 = inttoptr i64 %3414 to i32*
  store i32 %3415, i32* %3419
  store %struct.Memory* %loadMem_4155af, %struct.Memory** %MEMORY
  %loadMem_4155b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 33
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3422 to i64*
  %3423 = load i64, i64* %PC.i50
  %3424 = add i64 %3423, 26
  %3425 = load i64, i64* %PC.i50
  %3426 = add i64 %3425, 6
  %3427 = load i64, i64* %PC.i50
  %3428 = add i64 %3427, 6
  store i64 %3428, i64* %PC.i50
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3430 = load i8, i8* %3429, align 1
  %3431 = icmp ne i8 %3430, 0
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3433 = load i8, i8* %3432, align 1
  %3434 = icmp ne i8 %3433, 0
  %3435 = xor i1 %3431, %3434
  %3436 = xor i1 %3435, true
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %BRANCH_TAKEN, align 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3439 = select i1 %3435, i64 %3426, i64 %3424
  store i64 %3439, i64* %3438, align 8
  store %struct.Memory* %loadMem_4155b2, %struct.Memory** %MEMORY
  %loadBr_4155b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4155b2 = icmp eq i8 %loadBr_4155b2, 1
  br i1 %cmpBr_4155b2, label %block_.L_4155cc, label %block_4155b8

block_4155b8:                                     ; preds = %block_.L_41559e
  %loadMem_4155b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 11
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RDI.i49 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %PC.i48
  %3447 = add i64 %3446, 10
  store i64 %3447, i64* %PC.i48
  store i64 ptrtoint (%G__0x416975_type* @G__0x416975 to i64), i64* %RDI.i49, align 8
  store %struct.Memory* %loadMem_4155b8, %struct.Memory** %MEMORY
  %loadMem_4155c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 1
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %3454 = bitcast %union.anon* %3453 to %struct.anon.2*
  %AL.i47 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3454, i32 0, i32 0
  %3455 = load i64, i64* %PC.i46
  %3456 = add i64 %3455, 2
  store i64 %3456, i64* %PC.i46
  store i8 0, i8* %AL.i47, align 1
  store %struct.Memory* %loadMem_4155c2, %struct.Memory** %MEMORY
  %loadMem1_4155c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 33
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3459 to i64*
  %3460 = load i64, i64* %PC.i45
  %3461 = add i64 %3460, -85220
  %3462 = load i64, i64* %PC.i45
  %3463 = add i64 %3462, 5
  %3464 = load i64, i64* %PC.i45
  %3465 = add i64 %3464, 5
  store i64 %3465, i64* %PC.i45
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3467 = load i64, i64* %3466, align 8
  %3468 = add i64 %3467, -8
  %3469 = inttoptr i64 %3468 to i64*
  store i64 %3463, i64* %3469
  store i64 %3468, i64* %3466, align 8
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3461, i64* %3470, align 8
  store %struct.Memory* %loadMem1_4155c4, %struct.Memory** %MEMORY
  %loadMem2_4155c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4155c4 = load i64, i64* %3
  %3471 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4155c4)
  store %struct.Memory* %3471, %struct.Memory** %MEMORY
  %loadMem_4155c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 1
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %3477 to i32*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 15
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %RBP.i42
  %3482 = sub i64 %3481, 128
  %3483 = load i32, i32* %EAX.i41
  %3484 = zext i32 %3483 to i64
  %3485 = load i64, i64* %PC.i40
  %3486 = add i64 %3485, 3
  store i64 %3486, i64* %PC.i40
  %3487 = inttoptr i64 %3482 to i32*
  store i32 %3483, i32* %3487
  store %struct.Memory* %loadMem_4155c9, %struct.Memory** %MEMORY
  br label %block_.L_4155cc

block_.L_4155cc:                                  ; preds = %block_4155b8, %block_.L_41559e
  %loadMem_4155cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 11
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RDI.i39 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %PC.i38
  %3495 = add i64 %3494, 5
  store i64 %3495, i64* %PC.i38
  store i64 1, i64* %RDI.i39, align 8
  store %struct.Memory* %loadMem_4155cc, %struct.Memory** %MEMORY
  %loadMem1_4155d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %PC.i37
  %3500 = add i64 %3499, -1873
  %3501 = load i64, i64* %PC.i37
  %3502 = add i64 %3501, 5
  %3503 = load i64, i64* %PC.i37
  %3504 = add i64 %3503, 5
  store i64 %3504, i64* %PC.i37
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3506 = load i64, i64* %3505, align 8
  %3507 = add i64 %3506, -8
  %3508 = inttoptr i64 %3507 to i64*
  store i64 %3502, i64* %3508
  store i64 %3507, i64* %3505, align 8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3500, i64* %3509, align 8
  store %struct.Memory* %loadMem1_4155d1, %struct.Memory** %MEMORY
  %loadMem2_4155d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4155d1 = load i64, i64* %3
  %call2_4155d1 = call %struct.Memory* @sub_414e80.spec_reset(%struct.State* %0, i64 %loadPC_4155d1, %struct.Memory* %loadMem2_4155d1)
  store %struct.Memory* %call2_4155d1, %struct.Memory** %MEMORY
  %loadMem_4155d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 11
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3515 to i32*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 11
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %RDI.i36
  %3520 = load i32, i32* %EDI.i
  %3521 = zext i32 %3520 to i64
  %3522 = load i64, i64* %PC.i35
  %3523 = add i64 %3522, 2
  store i64 %3523, i64* %PC.i35
  %3524 = xor i64 %3521, %3519
  %3525 = trunc i64 %3524 to i32
  %3526 = and i64 %3524, 4294967295
  store i64 %3526, i64* %RDI.i36, align 8
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3527, align 1
  %3528 = and i32 %3525, 255
  %3529 = call i32 @llvm.ctpop.i32(i32 %3528)
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  %3532 = xor i8 %3531, 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3532, i8* %3533, align 1
  %3534 = icmp eq i32 %3525, 0
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3535, i8* %3536, align 1
  %3537 = lshr i32 %3525, 31
  %3538 = trunc i32 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3538, i8* %3539, align 1
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3540, align 1
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3541, align 1
  store %struct.Memory* %loadMem_4155d6, %struct.Memory** %MEMORY
  %loadMem_4155d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 33
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 1
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %EAX.i33 = bitcast %union.anon* %3547 to i32*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 15
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3550 to i64*
  %3551 = load i64, i64* %RBP.i34
  %3552 = sub i64 %3551, 132
  %3553 = load i32, i32* %EAX.i33
  %3554 = zext i32 %3553 to i64
  %3555 = load i64, i64* %PC.i32
  %3556 = add i64 %3555, 6
  store i64 %3556, i64* %PC.i32
  %3557 = inttoptr i64 %3552 to i32*
  store i32 %3553, i32* %3557
  store %struct.Memory* %loadMem_4155d8, %struct.Memory** %MEMORY
  %loadMem1_4155de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %PC.i31
  %3562 = add i64 %3561, -1934
  %3563 = load i64, i64* %PC.i31
  %3564 = add i64 %3563, 5
  %3565 = load i64, i64* %PC.i31
  %3566 = add i64 %3565, 5
  store i64 %3566, i64* %PC.i31
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3568 = load i64, i64* %3567, align 8
  %3569 = add i64 %3568, -8
  %3570 = inttoptr i64 %3569 to i64*
  store i64 %3564, i64* %3570
  store i64 %3569, i64* %3567, align 8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3562, i64* %3571, align 8
  store %struct.Memory* %loadMem1_4155de, %struct.Memory** %MEMORY
  %loadMem2_4155de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4155de = load i64, i64* %3
  %call2_4155de = call %struct.Memory* @sub_414e50.spec_rewind(%struct.State* %0, i64 %loadPC_4155de, %struct.Memory* %loadMem2_4155de)
  store %struct.Memory* %call2_4155de, %struct.Memory** %MEMORY
  %loadMem_4155e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 33
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3574 to i64*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 1
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %3577 to i32*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 15
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3580 to i64*
  %3581 = load i64, i64* %RBP.i30
  %3582 = sub i64 %3581, 136
  %3583 = load i32, i32* %EAX.i29
  %3584 = zext i32 %3583 to i64
  %3585 = load i64, i64* %PC.i28
  %3586 = add i64 %3585, 6
  store i64 %3586, i64* %PC.i28
  %3587 = inttoptr i64 %3582 to i32*
  store i32 %3583, i32* %3587
  store %struct.Memory* %loadMem_4155e3, %struct.Memory** %MEMORY
  %loadMem_4155e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 33
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 1
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 15
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %RBP.i27
  %3598 = sub i64 %3597, 24
  %3599 = load i64, i64* %PC.i25
  %3600 = add i64 %3599, 3
  store i64 %3600, i64* %PC.i25
  %3601 = inttoptr i64 %3598 to i32*
  %3602 = load i32, i32* %3601
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_4155e9, %struct.Memory** %MEMORY
  %loadMem_4155ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 1
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %RAX.i24
  %3611 = load i64, i64* %PC.i23
  %3612 = add i64 %3611, 3
  store i64 %3612, i64* %PC.i23
  %3613 = trunc i64 %3610 to i32
  %3614 = add i32 2, %3613
  %3615 = zext i32 %3614 to i64
  store i64 %3615, i64* %RAX.i24, align 8
  %3616 = icmp ult i32 %3614, %3613
  %3617 = icmp ult i32 %3614, 2
  %3618 = or i1 %3616, %3617
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3619, i8* %3620, align 1
  %3621 = and i32 %3614, 255
  %3622 = call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3625, i8* %3626, align 1
  %3627 = xor i64 2, %3610
  %3628 = trunc i64 %3627 to i32
  %3629 = xor i32 %3628, %3614
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3632, i8* %3633, align 1
  %3634 = icmp eq i32 %3614, 0
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3635, i8* %3636, align 1
  %3637 = lshr i32 %3614, 31
  %3638 = trunc i32 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3638, i8* %3639, align 1
  %3640 = lshr i32 %3613, 31
  %3641 = xor i32 %3637, %3640
  %3642 = add i32 %3641, %3637
  %3643 = icmp eq i32 %3642, 2
  %3644 = zext i1 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3644, i8* %3645, align 1
  store %struct.Memory* %loadMem_4155ec, %struct.Memory** %MEMORY
  %loadMem_4155ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 1
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %EAX.i21 = bitcast %union.anon* %3651 to i32*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 15
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RBP.i22
  %3656 = sub i64 %3655, 24
  %3657 = load i32, i32* %EAX.i21
  %3658 = zext i32 %3657 to i64
  %3659 = load i64, i64* %PC.i20
  %3660 = add i64 %3659, 3
  store i64 %3660, i64* %PC.i20
  %3661 = inttoptr i64 %3656 to i32*
  store i32 %3657, i32* %3661
  store %struct.Memory* %loadMem_4155ef, %struct.Memory** %MEMORY
  %loadMem_4155f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %PC.i19
  %3666 = add i64 %3665, -467
  %3667 = load i64, i64* %PC.i19
  %3668 = add i64 %3667, 5
  store i64 %3668, i64* %PC.i19
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3666, i64* %3669, align 8
  store %struct.Memory* %loadMem_4155f2, %struct.Memory** %MEMORY
  br label %block_.L_41541f

block_.L_4155f7:                                  ; preds = %block_.L_41541f
  %loadMem_4155f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 11
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %PC.i18
  %3677 = add i64 %3676, 10
  store i64 %3677, i64* %PC.i18
  store i64 ptrtoint (%G__0x41699b_type* @G__0x41699b to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4155f7, %struct.Memory** %MEMORY
  %loadMem_415601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 9
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RSI.i16 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 15
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3686 to i64*
  %3687 = load i64, i64* %RBP.i17
  %3688 = sub i64 %3687, 28
  %3689 = load i64, i64* %PC.i15
  %3690 = add i64 %3689, 3
  store i64 %3690, i64* %PC.i15
  %3691 = inttoptr i64 %3688 to i32*
  %3692 = load i32, i32* %3691
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RSI.i16, align 8
  store %struct.Memory* %loadMem_415601, %struct.Memory** %MEMORY
  %loadMem_415604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 1
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %3700 = bitcast %union.anon* %3699 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3700, i32 0, i32 0
  %3701 = load i64, i64* %PC.i14
  %3702 = add i64 %3701, 2
  store i64 %3702, i64* %PC.i14
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_415604, %struct.Memory** %MEMORY
  %loadMem1_415606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %PC.i13
  %3707 = add i64 %3706, -85286
  %3708 = load i64, i64* %PC.i13
  %3709 = add i64 %3708, 5
  %3710 = load i64, i64* %PC.i13
  %3711 = add i64 %3710, 5
  store i64 %3711, i64* %PC.i13
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3713 = load i64, i64* %3712, align 8
  %3714 = add i64 %3713, -8
  %3715 = inttoptr i64 %3714 to i64*
  store i64 %3709, i64* %3715
  store i64 %3714, i64* %3712, align 8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3707, i64* %3716, align 8
  store %struct.Memory* %loadMem1_415606, %struct.Memory** %MEMORY
  %loadMem2_415606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415606 = load i64, i64* %3
  %3717 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_415606)
  store %struct.Memory* %3717, %struct.Memory** %MEMORY
  %loadMem_41560b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 9
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %ESI.i9 = bitcast %union.anon* %3723 to i32*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 9
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RSI.i
  %3728 = load i32, i32* %ESI.i9
  %3729 = zext i32 %3728 to i64
  %3730 = load i64, i64* %PC.i8
  %3731 = add i64 %3730, 2
  store i64 %3731, i64* %PC.i8
  %3732 = xor i64 %3729, %3727
  %3733 = trunc i64 %3732 to i32
  %3734 = and i64 %3732, 4294967295
  store i64 %3734, i64* %RSI.i, align 8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3735, align 1
  %3736 = and i32 %3733, 255
  %3737 = call i32 @llvm.ctpop.i32(i32 %3736)
  %3738 = trunc i32 %3737 to i8
  %3739 = and i8 %3738, 1
  %3740 = xor i8 %3739, 1
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3740, i8* %3741, align 1
  %3742 = icmp eq i32 %3733, 0
  %3743 = zext i1 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3743, i8* %3744, align 1
  %3745 = lshr i32 %3733, 31
  %3746 = trunc i32 %3745 to i8
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3746, i8* %3747, align 1
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3748, align 1
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3749, align 1
  store %struct.Memory* %loadMem_41560b, %struct.Memory** %MEMORY
  %loadMem_41560d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 33
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3752 to i64*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 1
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3755 to i32*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 15
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3758 to i64*
  %3759 = load i64, i64* %RBP.i7
  %3760 = sub i64 %3759, 140
  %3761 = load i32, i32* %EAX.i
  %3762 = zext i32 %3761 to i64
  %3763 = load i64, i64* %PC.i6
  %3764 = add i64 %3763, 6
  store i64 %3764, i64* %PC.i6
  %3765 = inttoptr i64 %3760 to i32*
  store i32 %3761, i32* %3765
  store %struct.Memory* %loadMem_41560d, %struct.Memory** %MEMORY
  %loadMem_415613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 9
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3771 to i32*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 1
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3774 to i64*
  %3775 = load i32, i32* %ESI.i
  %3776 = zext i32 %3775 to i64
  %3777 = load i64, i64* %PC.i5
  %3778 = add i64 %3777, 2
  store i64 %3778, i64* %PC.i5
  %3779 = and i64 %3776, 4294967295
  store i64 %3779, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_415613, %struct.Memory** %MEMORY
  %loadMem_415615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 13
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %RSP.i
  %3787 = load i64, i64* %PC.i4
  %3788 = add i64 %3787, 7
  store i64 %3788, i64* %PC.i4
  %3789 = add i64 144, %3786
  store i64 %3789, i64* %RSP.i, align 8
  %3790 = icmp ult i64 %3789, %3786
  %3791 = icmp ult i64 %3789, 144
  %3792 = or i1 %3790, %3791
  %3793 = zext i1 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3793, i8* %3794, align 1
  %3795 = trunc i64 %3789 to i32
  %3796 = and i32 %3795, 255
  %3797 = call i32 @llvm.ctpop.i32(i32 %3796)
  %3798 = trunc i32 %3797 to i8
  %3799 = and i8 %3798, 1
  %3800 = xor i8 %3799, 1
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3800, i8* %3801, align 1
  %3802 = xor i64 144, %3786
  %3803 = xor i64 %3802, %3789
  %3804 = lshr i64 %3803, 4
  %3805 = trunc i64 %3804 to i8
  %3806 = and i8 %3805, 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3806, i8* %3807, align 1
  %3808 = icmp eq i64 %3789, 0
  %3809 = zext i1 %3808 to i8
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3809, i8* %3810, align 1
  %3811 = lshr i64 %3789, 63
  %3812 = trunc i64 %3811 to i8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3812, i8* %3813, align 1
  %3814 = lshr i64 %3786, 63
  %3815 = xor i64 %3811, %3814
  %3816 = add i64 %3815, %3811
  %3817 = icmp eq i64 %3816, 2
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3818, i8* %3819, align 1
  store %struct.Memory* %loadMem_415615, %struct.Memory** %MEMORY
  %loadMem_41561c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 15
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %PC.i2
  %3827 = add i64 %3826, 1
  store i64 %3827, i64* %PC.i2
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3829 = load i64, i64* %3828, align 8
  %3830 = add i64 %3829, 8
  %3831 = inttoptr i64 %3829 to i64*
  %3832 = load i64, i64* %3831
  store i64 %3832, i64* %RBP.i3, align 8
  store i64 %3830, i64* %3828, align 8
  store %struct.Memory* %loadMem_41561c, %struct.Memory** %MEMORY
  %loadMem_41561d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %PC.i1
  %3837 = add i64 %3836, 1
  store i64 %3837, i64* %PC.i1
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3840 = load i64, i64* %3839, align 8
  %3841 = inttoptr i64 %3840 to i64*
  %3842 = load i64, i64* %3841
  store i64 %3842, i64* %3838, align 8
  %3843 = add i64 %3840, 8
  store i64 %3843, i64* %3839, align 8
  store %struct.Memory* %loadMem_41561d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41561d
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 144
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 144
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
  %23 = xor i64 144, %9
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

define %struct.Memory* @routine_movq__0x416871___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416871_type* @G__0x416871 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__0x40__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 64, i32* %13
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

define %struct.Memory* @routine_movq__0xa__0x6195c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  store i64 10, i64* bitcast (%G_0x6195c0_type* @G_0x6195c0 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_4152a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_4152ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_4152d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4152df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_shll__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 19
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x6195e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6195e0_type* @G_0x6195e0 to i32*)
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

define %struct.Memory* @routine_movl__eax__0x6195f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6195f8_type* @G_0x6195f8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x619610(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x619610_type* @G_0x619610 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.spec_init(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.debug_time(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x618d70___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
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

define %struct.Memory* @routine_jge_.L_41533c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416880___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416880_type* @G__0x416880 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.spec_load(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x618d70___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
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

define %struct.Memory* @routine_jge_.L_41537f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416894___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416894_type* @G__0x416894 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6195e4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6195e4_type* @G_0x6195e4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x400___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1024, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 19
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4153c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4168b3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4168b3_type* @G__0x4168b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.exit_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x403__MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1027
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

define %struct.Memory* @routine_jge_.L_415413(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6195f0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6195f0_type* @G_0x6195f0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x403__MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1027
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

define %struct.Memory* @routine_movb___rax__rdx_1____sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil____rax__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %SIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
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

define %struct.Memory* @routine_jmpq_.L_4153ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.spec_initbufs(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 9
  %16 = icmp ult i32 %14, 9
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
  %25 = xor i32 %14, 9
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

define %struct.Memory* @routine_jg_.L_4155f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41545a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4168d2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4168d2_type* @G__0x4168d2 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_callq_.spec_compress(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41549e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4168f4___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4168f4_type* @G__0x4168f4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6195fc___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6195fc_type* @G_0x6195fc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.spec_reset(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.spec_rewind(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_0x618d70___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x618d70_type* @G_0x618d70 to i32*)
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

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4154e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416918___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416918_type* @G__0x416918 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_callq_.spec_uncompress(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_415527(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x41692c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x41692c_type* @G__0x41692c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41559e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  store i64 %22, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x403__MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1027
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl___rax__rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = zext i8 %21 to i64
  store i64 %22, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_je_.L_41558b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416952___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416952_type* @G__0x416952 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_415590(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41552e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 3, i64* %RCX, align 8
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

define %struct.Memory* @routine_jge_.L_4155cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x416975___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x416975_type* @G__0x416975 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_jmpq_.L_41541f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x41699b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x41699b_type* @G__0x41699b to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 144, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 144
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
  %25 = xor i64 144, %9
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
