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
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [4 x i8] }>
%G__0x57ad09_type = type <{ [8 x i8] }>
%G__0x57ad25_type = type <{ [8 x i8] }>
%G__0x57ad4a_type = type <{ [8 x i8] }>
%G__0x57ad65_type = type <{ [8 x i8] }>
%G__0x57ad6e_type = type <{ [8 x i8] }>
%G__0x57ad7c_type = type <{ [8 x i8] }>
%G__0x57f4e7_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xab0eec = global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G__0x57ad09 = global %G__0x57ad09_type zeroinitializer
@G__0x57ad25 = global %G__0x57ad25_type zeroinitializer
@G__0x57ad4a = global %G__0x57ad4a_type zeroinitializer
@G__0x57ad65 = global %G__0x57ad65_type zeroinitializer
@G__0x57ad6e = global %G__0x57ad6e_type zeroinitializer
@G__0x57ad7c = global %G__0x57ad7c_type zeroinitializer
@G__0x57f4e7 = global %G__0x57f4e7_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

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

declare %struct.Memory* @sub_44d3c0.owl_substantial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @compute_aa_status(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_418e80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_418e80, %struct.Memory** %MEMORY
  %loadMem_418e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i435 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i435
  %27 = load i64, i64* %PC.i434
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i434
  store i64 %26, i64* %RBP.i436, align 8
  store %struct.Memory* %loadMem_418e81, %struct.Memory** %MEMORY
  %loadMem_418e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i433 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i433
  %36 = load i64, i64* %PC.i432
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i432
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i433, align 8
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
  store %struct.Memory* %loadMem_418e84, %struct.Memory** %MEMORY
  %loadMem_418e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i430
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i430
  store i64 3, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_418e88, %struct.Memory** %MEMORY
  %loadMem_418e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i429
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i428
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i428
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_418e8d, %struct.Memory** %MEMORY
  %loadMem_418e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i426 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i427
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i426
  %103 = load i64, i64* %PC.i425
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i425
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_418e90, %struct.Memory** %MEMORY
  %loadMem_418e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RAX.i423
  %116 = load i64, i64* %RBP.i424
  %117 = sub i64 %116, 4
  %118 = load i64, i64* %PC.i422
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC.i422
  %120 = trunc i64 %115 to i32
  %121 = inttoptr i64 %117 to i32*
  %122 = load i32, i32* %121
  %123 = sub i32 %120, %122
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RAX.i423, align 8
  %125 = icmp ult i32 %120, %122
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %126, i8* %127, align 1
  %128 = and i32 %123, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %132, i8* %133, align 1
  %134 = xor i32 %122, %120
  %135 = xor i32 %134, %123
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %138, i8* %139, align 1
  %140 = icmp eq i32 %123, 0
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %141, i8* %142, align 1
  %143 = lshr i32 %123, 31
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %144, i8* %145, align 1
  %146 = lshr i32 %120, 31
  %147 = lshr i32 %122, 31
  %148 = xor i32 %147, %146
  %149 = xor i32 %143, %146
  %150 = add i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %152, i8* %153, align 1
  store %struct.Memory* %loadMem_418e94, %struct.Memory** %MEMORY
  %loadMem_418e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %159 to i32*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i421
  %164 = sub i64 %163, 20
  %165 = load i32, i32* %EAX.i420
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %PC.i419
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC.i419
  %169 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %169
  store %struct.Memory* %loadMem_418e97, %struct.Memory** %MEMORY
  %loadMem_418e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %PC.i417
  %177 = add i64 %176, 8
  store i64 %177, i64* %PC.i417
  %178 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store i64 %178, i64* %RSI.i418, align 8
  store %struct.Memory* %loadMem_418e9a, %struct.Memory** %MEMORY
  %loadMem_418ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RSI.i415 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i416
  %189 = sub i64 %188, 32
  %190 = load i64, i64* %RSI.i415
  %191 = load i64, i64* %PC.i414
  %192 = add i64 %191, 4
  store i64 %192, i64* %PC.i414
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193
  store %struct.Memory* %loadMem_418ea2, %struct.Memory** %MEMORY
  %loadMem_418ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %PC.i412
  %201 = add i64 %200, 7
  store i64 %201, i64* %PC.i412
  %202 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_418ea6, %struct.Memory** %MEMORY
  %loadMem_418ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %EAX.i410 = bitcast %union.anon* %209 to i32*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RBP.i411
  %214 = sub i64 %213, 36
  %215 = load i32, i32* %EAX.i410
  %216 = zext i32 %215 to i64
  %217 = load i64, i64* %PC.i409
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC.i409
  %219 = inttoptr i64 %214 to i32*
  store i32 %215, i32* %219
  store %struct.Memory* %loadMem_418ead, %struct.Memory** %MEMORY
  %loadMem_418eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %PC.i407
  %227 = add i64 %226, 7
  store i64 %227, i64* %PC.i407
  %228 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_418eb0, %struct.Memory** %MEMORY
  %loadMem_418eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %235 to i32*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 15
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RBP.i406
  %240 = sub i64 %239, 40
  %241 = load i32, i32* %EAX.i405
  %242 = zext i32 %241 to i64
  %243 = load i64, i64* %PC.i404
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC.i404
  %245 = inttoptr i64 %240 to i32*
  store i32 %241, i32* %245
  store %struct.Memory* %loadMem_418eb7, %struct.Memory** %MEMORY
  %loadMem_418eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %248 to i64*
  %249 = load i64, i64* %PC.i403
  %250 = add i64 %249, 12
  store i64 %250, i64* %PC.i403
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_418eba, %struct.Memory** %MEMORY
  %loadMem_418ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %PC.i402
  %255 = add i64 %254, 11
  store i64 %255, i64* %PC.i402
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_418ec6, %struct.Memory** %MEMORY
  %loadMem_418ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %PC.i401
  %260 = add i64 %259, 8
  store i64 %260, i64* %PC.i401
  %261 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %262, align 1
  %263 = and i32 %261, 255
  %264 = call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %267, i8* %268, align 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %269, align 1
  %270 = icmp eq i32 %261, 0
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %271, i8* %272, align 1
  %273 = lshr i32 %261, 31
  %274 = trunc i32 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %274, i8* %275, align 1
  %276 = lshr i32 %261, 31
  %277 = xor i32 %273, %276
  %278 = add i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %280, i8* %281, align 1
  store %struct.Memory* %loadMem_418ed1, %struct.Memory** %MEMORY
  %loadMem_418ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %PC.i400
  %286 = add i64 %285, 23
  %287 = load i64, i64* %PC.i400
  %288 = add i64 %287, 6
  %289 = load i64, i64* %PC.i400
  %290 = add i64 %289, 6
  store i64 %290, i64* %PC.i400
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %292 = load i8, i8* %291, align 1
  store i8 %292, i8* %BRANCH_TAKEN, align 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %294 = icmp ne i8 %292, 0
  %295 = select i1 %294, i64 %286, i64 %288
  store i64 %295, i64* %293, align 8
  store %struct.Memory* %loadMem_418ed9, %struct.Memory** %MEMORY
  %loadBr_418ed9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418ed9 = icmp eq i8 %loadBr_418ed9, 1
  br i1 %cmpBr_418ed9, label %block_.L_418ef0, label %block_418edf

block_418edf:                                     ; preds = %entry
  %loadMem_418edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %PC.i398
  %303 = add i64 %302, 7
  store i64 %303, i64* %PC.i398
  %304 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_418edf, %struct.Memory** %MEMORY
  %loadMem_418ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RAX.i397
  %313 = load i64, i64* %PC.i396
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i396
  %315 = trunc i64 %312 to i32
  %316 = add i32 -1, %315
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RAX.i397, align 8
  %318 = icmp ult i32 %316, %315
  %319 = icmp ult i32 %316, -1
  %320 = or i1 %318, %319
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %321, i8* %322, align 1
  %323 = and i32 %316, 255
  %324 = call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %327, i8* %328, align 1
  %329 = xor i64 -1, %312
  %330 = trunc i64 %329 to i32
  %331 = xor i32 %330, %316
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %334, i8* %335, align 1
  %336 = icmp eq i32 %316, 0
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %337, i8* %338, align 1
  %339 = lshr i32 %316, 31
  %340 = trunc i32 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %340, i8* %341, align 1
  %342 = lshr i32 %315, 31
  %343 = xor i32 %339, %342
  %344 = xor i32 %339, 1
  %345 = add i32 %343, %344
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %347, i8* %348, align 1
  store %struct.Memory* %loadMem_418ee6, %struct.Memory** %MEMORY
  %loadMem_418ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %EAX.i395 = bitcast %union.anon* %354 to i32*
  %355 = load i32, i32* %EAX.i395
  %356 = zext i32 %355 to i64
  %357 = load i64, i64* %PC.i394
  %358 = add i64 %357, 7
  store i64 %358, i64* %PC.i394
  store i32 %355, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_418ee9, %struct.Memory** %MEMORY
  br label %block_.L_418ef0

block_.L_418ef0:                                  ; preds = %block_418edf, %entry
  %loadMem_418ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %RBP.i393
  %366 = sub i64 %365, 24
  %367 = load i64, i64* %PC.i392
  %368 = add i64 %367, 7
  store i64 %368, i64* %PC.i392
  %369 = inttoptr i64 %366 to i32*
  store i32 21, i32* %369
  store %struct.Memory* %loadMem_418ef0, %struct.Memory** %MEMORY
  br label %block_.L_418ef7

block_.L_418ef7:                                  ; preds = %block_.L_419084, %block_.L_418ef0
  %loadMem_418ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RBP.i391
  %377 = sub i64 %376, 24
  %378 = load i64, i64* %PC.i390
  %379 = add i64 %378, 7
  store i64 %379, i64* %PC.i390
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380
  %382 = sub i32 %381, 400
  %383 = icmp ult i32 %381, 400
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %384, i8* %385, align 1
  %386 = and i32 %382, 255
  %387 = call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %390, i8* %391, align 1
  %392 = xor i32 %381, 400
  %393 = xor i32 %392, %382
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %396, i8* %397, align 1
  %398 = icmp eq i32 %382, 0
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %399, i8* %400, align 1
  %401 = lshr i32 %382, 31
  %402 = trunc i32 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %402, i8* %403, align 1
  %404 = lshr i32 %381, 31
  %405 = xor i32 %401, %404
  %406 = add i32 %405, %404
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %408, i8* %409, align 1
  store %struct.Memory* %loadMem_418ef7, %struct.Memory** %MEMORY
  %loadMem_418efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %PC.i389
  %414 = add i64 %413, 404
  %415 = load i64, i64* %PC.i389
  %416 = add i64 %415, 6
  %417 = load i64, i64* %PC.i389
  %418 = add i64 %417, 6
  store i64 %418, i64* %PC.i389
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %420 = load i8, i8* %419, align 1
  %421 = icmp ne i8 %420, 0
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %423 = load i8, i8* %422, align 1
  %424 = icmp ne i8 %423, 0
  %425 = xor i1 %421, %424
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %BRANCH_TAKEN, align 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %429 = select i1 %425, i64 %416, i64 %414
  store i64 %429, i64* %428, align 8
  store %struct.Memory* %loadMem_418efe, %struct.Memory** %MEMORY
  %loadBr_418efe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418efe = icmp eq i8 %loadBr_418efe, 1
  br i1 %cmpBr_418efe, label %block_.L_419092, label %block_418f04

block_418f04:                                     ; preds = %block_.L_418ef7
  %loadMem_418f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RBP.i388
  %440 = sub i64 %439, 24
  %441 = load i64, i64* %PC.i386
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC.i386
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = sext i32 %444 to i64
  store i64 %445, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_418f04, %struct.Memory** %MEMORY
  %loadMem_418f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 5
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %RAX.i384
  %456 = add i64 %455, 12099168
  %457 = load i64, i64* %PC.i383
  %458 = add i64 %457, 8
  store i64 %458, i64* %PC.i383
  %459 = inttoptr i64 %456 to i8*
  %460 = load i8, i8* %459
  %461 = zext i8 %460 to i64
  store i64 %461, i64* %RCX.i385, align 8
  store %struct.Memory* %loadMem_418f08, %struct.Memory** %MEMORY
  %loadMem_418f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 5
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %ECX.i381 = bitcast %union.anon* %467 to i32*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 15
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %470 to i64*
  %471 = load i32, i32* %ECX.i381
  %472 = zext i32 %471 to i64
  %473 = load i64, i64* %RBP.i382
  %474 = sub i64 %473, 20
  %475 = load i64, i64* %PC.i380
  %476 = add i64 %475, 3
  store i64 %476, i64* %PC.i380
  %477 = inttoptr i64 %474 to i32*
  %478 = load i32, i32* %477
  %479 = sub i32 %471, %478
  %480 = icmp ult i32 %471, %478
  %481 = zext i1 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %481, i8* %482, align 1
  %483 = and i32 %479, 255
  %484 = call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %487, i8* %488, align 1
  %489 = xor i32 %478, %471
  %490 = xor i32 %489, %479
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %493, i8* %494, align 1
  %495 = icmp eq i32 %479, 0
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %496, i8* %497, align 1
  %498 = lshr i32 %479, 31
  %499 = trunc i32 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1
  %501 = lshr i32 %471, 31
  %502 = lshr i32 %478, 31
  %503 = xor i32 %502, %501
  %504 = xor i32 %498, %501
  %505 = add i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %507, i8* %508, align 1
  store %struct.Memory* %loadMem_418f10, %struct.Memory** %MEMORY
  %loadMem_418f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %PC.i379
  %513 = add i64 %512, 323
  %514 = load i64, i64* %PC.i379
  %515 = add i64 %514, 6
  %516 = load i64, i64* %PC.i379
  %517 = add i64 %516, 6
  store i64 %517, i64* %PC.i379
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %519 = load i8, i8* %518, align 1
  %520 = icmp eq i8 %519, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %BRANCH_TAKEN, align 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %523 = select i1 %520, i64 %513, i64 %515
  store i64 %523, i64* %522, align 8
  store %struct.Memory* %loadMem_418f13, %struct.Memory** %MEMORY
  %loadBr_418f13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418f13 = icmp eq i8 %loadBr_418f13, 1
  br i1 %cmpBr_418f13, label %block_.L_419056, label %block_418f19

block_418f19:                                     ; preds = %block_418f04
  %loadMem_418f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i378
  %531 = sub i64 %530, 16
  %532 = load i64, i64* %PC.i377
  %533 = add i64 %532, 5
  store i64 %533, i64* %PC.i377
  %534 = inttoptr i64 %531 to i64*
  %535 = load i64, i64* %534
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %536, align 1
  %537 = trunc i64 %535 to i32
  %538 = and i32 %537, 255
  %539 = call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %542, i8* %543, align 1
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %544, align 1
  %545 = icmp eq i64 %535, 0
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %546, i8* %547, align 1
  %548 = lshr i64 %535, 63
  %549 = trunc i64 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %549, i8* %550, align 1
  %551 = lshr i64 %535, 63
  %552 = xor i64 %548, %551
  %553 = add i64 %552, %551
  %554 = icmp eq i64 %553, 2
  %555 = zext i1 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %555, i8* %556, align 1
  store %struct.Memory* %loadMem_418f19, %struct.Memory** %MEMORY
  %loadMem_418f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %PC.i376
  %561 = add i64 %560, 64
  %562 = load i64, i64* %PC.i376
  %563 = add i64 %562, 6
  %564 = load i64, i64* %PC.i376
  %565 = add i64 %564, 6
  store i64 %565, i64* %PC.i376
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %567 = load i8, i8* %566, align 1
  store i8 %567, i8* %BRANCH_TAKEN, align 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %569 = icmp ne i8 %567, 0
  %570 = select i1 %569, i64 %561, i64 %563
  store i64 %570, i64* %568, align 8
  store %struct.Memory* %loadMem_418f1e, %struct.Memory** %MEMORY
  %loadBr_418f1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418f1e = icmp eq i8 %loadBr_418f1e, 1
  br i1 %cmpBr_418f1e, label %block_.L_418f5e, label %block_418f24

block_418f24:                                     ; preds = %block_418f19
  %loadMem_418f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i375
  %581 = sub i64 %580, 16
  %582 = load i64, i64* %PC.i373
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC.i373
  %584 = inttoptr i64 %581 to i64*
  %585 = load i64, i64* %584
  store i64 %585, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_418f24, %struct.Memory** %MEMORY
  %loadMem_418f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 5
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RBP.i372
  %596 = sub i64 %595, 24
  %597 = load i64, i64* %PC.i370
  %598 = add i64 %597, 4
  store i64 %598, i64* %PC.i370
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RCX.i371, align 8
  store %struct.Memory* %loadMem_418f28, %struct.Memory** %MEMORY
  %loadMem_418f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %RAX.i368
  %612 = load i64, i64* %RCX.i369
  %613 = add i64 %612, %611
  %614 = load i64, i64* %PC.i367
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC.i367
  %616 = inttoptr i64 %613 to i8*
  %617 = load i8, i8* %616
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %618, align 1
  %619 = zext i8 %617 to i32
  %620 = call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %623, i8* %624, align 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %625, align 1
  %626 = icmp eq i8 %617, 0
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %627, i8* %628, align 1
  %629 = lshr i8 %617, 7
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %629, i8* %630, align 1
  %631 = lshr i8 %617, 7
  %632 = xor i8 %629, %631
  %633 = add i8 %632, %631
  %634 = icmp eq i8 %633, 2
  %635 = zext i1 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %635, i8* %636, align 1
  store %struct.Memory* %loadMem_418f2c, %struct.Memory** %MEMORY
  %loadMem_418f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %PC.i366
  %641 = add i64 %640, 26
  %642 = load i64, i64* %PC.i366
  %643 = add i64 %642, 6
  %644 = load i64, i64* %PC.i366
  %645 = add i64 %644, 6
  store i64 %645, i64* %PC.i366
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %647 = load i8, i8* %646, align 1
  store i8 %647, i8* %BRANCH_TAKEN, align 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %649 = icmp ne i8 %647, 0
  %650 = select i1 %649, i64 %641, i64 %643
  store i64 %650, i64* %648, align 8
  store %struct.Memory* %loadMem_418f30, %struct.Memory** %MEMORY
  %loadBr_418f30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418f30 = icmp eq i8 %loadBr_418f30, 1
  br i1 %cmpBr_418f30, label %block_.L_418f4a, label %block_418f36

block_418f36:                                     ; preds = %block_418f24
  %loadMem_418f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 15
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RBP.i365
  %661 = sub i64 %660, 24
  %662 = load i64, i64* %PC.i363
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC.i363
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_418f36, %struct.Memory** %MEMORY
  %loadMem_418f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 1
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %672 to i64*
  %673 = load i64, i64* %RAX.i362
  %674 = mul i64 %673, 4
  %675 = add i64 %674, 11201040
  %676 = load i64, i64* %PC.i361
  %677 = add i64 %676, 11
  store i64 %677, i64* %PC.i361
  %678 = inttoptr i64 %675 to i32*
  store i32 1, i32* %678
  store %struct.Memory* %loadMem_418f3a, %struct.Memory** %MEMORY
  %loadMem_418f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %PC.i360
  %683 = add i64 %682, 20
  %684 = load i64, i64* %PC.i360
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC.i360
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %683, i64* %686, align 8
  store %struct.Memory* %loadMem_418f45, %struct.Memory** %MEMORY
  br label %block_.L_418f59

block_.L_418f4a:                                  ; preds = %block_418f24
  %loadMem_418f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 15
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RBP.i359
  %697 = sub i64 %696, 24
  %698 = load i64, i64* %PC.i357
  %699 = add i64 %698, 4
  store i64 %699, i64* %PC.i357
  %700 = inttoptr i64 %697 to i32*
  %701 = load i32, i32* %700
  %702 = sext i32 %701 to i64
  store i64 %702, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_418f4a, %struct.Memory** %MEMORY
  %loadMem_418f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RAX.i356
  %710 = mul i64 %709, 4
  %711 = add i64 %710, 11201040
  %712 = load i64, i64* %PC.i355
  %713 = add i64 %712, 11
  store i64 %713, i64* %PC.i355
  %714 = inttoptr i64 %711 to i32*
  store i32 0, i32* %714
  store %struct.Memory* %loadMem_418f4e, %struct.Memory** %MEMORY
  br label %block_.L_418f59

block_.L_418f59:                                  ; preds = %block_.L_418f4a, %block_418f36
  %loadMem_418f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %PC.i354
  %719 = add i64 %718, 248
  %720 = load i64, i64* %PC.i354
  %721 = add i64 %720, 5
  store i64 %721, i64* %PC.i354
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %719, i64* %722, align 8
  store %struct.Memory* %loadMem_418f59, %struct.Memory** %MEMORY
  br label %block_.L_419051

block_.L_418f5e:                                  ; preds = %block_418f19
  %loadMem_418f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 1
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %PC.i352
  %730 = add i64 %729, 10
  store i64 %730, i64* %PC.i352
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_418f5e, %struct.Memory** %MEMORY
  %loadMem_418f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 5
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 15
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RBP.i351
  %741 = sub i64 %740, 24
  %742 = load i64, i64* %PC.i349
  %743 = add i64 %742, 4
  store i64 %743, i64* %PC.i349
  %744 = inttoptr i64 %741 to i32*
  %745 = load i32, i32* %744
  %746 = sext i32 %745 to i64
  store i64 %746, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_418f68, %struct.Memory** %MEMORY
  %loadMem_418f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 33
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 5
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RCX.i348
  %754 = load i64, i64* %PC.i347
  %755 = add i64 %754, 4
  store i64 %755, i64* %PC.i347
  %756 = sext i64 %753 to i128
  %757 = and i128 %756, -18446744073709551616
  %758 = zext i64 %753 to i128
  %759 = or i128 %757, %758
  %760 = mul i128 76, %759
  %761 = trunc i128 %760 to i64
  store i64 %761, i64* %RCX.i348, align 8
  %762 = sext i64 %761 to i128
  %763 = icmp ne i128 %762, %760
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %764, i8* %765, align 1
  %766 = trunc i128 %760 to i32
  %767 = and i32 %766, 255
  %768 = call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %771, i8* %772, align 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %773, align 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %774, align 1
  %775 = lshr i64 %761, 63
  %776 = trunc i64 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %776, i8* %777, align 1
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %764, i8* %778, align 1
  store %struct.Memory* %loadMem_418f6c, %struct.Memory** %MEMORY
  %loadMem_418f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 1
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 5
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %RAX.i345
  %789 = load i64, i64* %RCX.i346
  %790 = load i64, i64* %PC.i344
  %791 = add i64 %790, 3
  store i64 %791, i64* %PC.i344
  %792 = add i64 %789, %788
  store i64 %792, i64* %RAX.i345, align 8
  %793 = icmp ult i64 %792, %788
  %794 = icmp ult i64 %792, %789
  %795 = or i1 %793, %794
  %796 = zext i1 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %796, i8* %797, align 1
  %798 = trunc i64 %792 to i32
  %799 = and i32 %798, 255
  %800 = call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %803, i8* %804, align 1
  %805 = xor i64 %789, %788
  %806 = xor i64 %805, %792
  %807 = lshr i64 %806, 4
  %808 = trunc i64 %807 to i8
  %809 = and i8 %808, 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %809, i8* %810, align 1
  %811 = icmp eq i64 %792, 0
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %812, i8* %813, align 1
  %814 = lshr i64 %792, 63
  %815 = trunc i64 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %815, i8* %816, align 1
  %817 = lshr i64 %788, 63
  %818 = lshr i64 %789, 63
  %819 = xor i64 %814, %817
  %820 = xor i64 %814, %818
  %821 = add i64 %819, %820
  %822 = icmp eq i64 %821, 2
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %823, i8* %824, align 1
  store %struct.Memory* %loadMem_418f70, %struct.Memory** %MEMORY
  %loadMem_418f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 1
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %830 to i64*
  %831 = load i64, i64* %RAX.i343
  %832 = add i64 %831, 64
  %833 = load i64, i64* %PC.i342
  %834 = add i64 %833, 4
  store i64 %834, i64* %PC.i342
  %835 = inttoptr i64 %832 to i32*
  %836 = load i32, i32* %835
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %837, align 1
  %838 = and i32 %836, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %842, i8* %843, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %844, align 1
  %845 = icmp eq i32 %836, 0
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %846, i8* %847, align 1
  %848 = lshr i32 %836, 31
  %849 = trunc i32 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %849, i8* %850, align 1
  %851 = lshr i32 %836, 31
  %852 = xor i32 %848, %851
  %853 = add i32 %852, %851
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %855, i8* %856, align 1
  store %struct.Memory* %loadMem_418f73, %struct.Memory** %MEMORY
  %loadMem_418f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %PC.i341
  %861 = add i64 %860, 26
  %862 = load i64, i64* %PC.i341
  %863 = add i64 %862, 6
  %864 = load i64, i64* %PC.i341
  %865 = add i64 %864, 6
  store i64 %865, i64* %PC.i341
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %867 = load i8, i8* %866, align 1
  %868 = icmp eq i8 %867, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %BRANCH_TAKEN, align 1
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %871 = select i1 %868, i64 %861, i64 %863
  store i64 %871, i64* %870, align 8
  store %struct.Memory* %loadMem_418f77, %struct.Memory** %MEMORY
  %loadBr_418f77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418f77 = icmp eq i8 %loadBr_418f77, 1
  br i1 %cmpBr_418f77, label %block_.L_418f91, label %block_418f7d

block_418f7d:                                     ; preds = %block_.L_418f5e
  %loadMem_418f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 1
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 15
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %880 to i64*
  %881 = load i64, i64* %RBP.i340
  %882 = sub i64 %881, 24
  %883 = load i64, i64* %PC.i338
  %884 = add i64 %883, 4
  store i64 %884, i64* %PC.i338
  %885 = inttoptr i64 %882 to i32*
  %886 = load i32, i32* %885
  %887 = sext i32 %886 to i64
  store i64 %887, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_418f7d, %struct.Memory** %MEMORY
  %loadMem_418f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RAX.i337
  %895 = mul i64 %894, 4
  %896 = add i64 %895, 11201040
  %897 = load i64, i64* %PC.i336
  %898 = add i64 %897, 11
  store i64 %898, i64* %PC.i336
  %899 = inttoptr i64 %896 to i32*
  store i32 0, i32* %899
  store %struct.Memory* %loadMem_418f81, %struct.Memory** %MEMORY
  %loadMem_418f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %PC.i335
  %904 = add i64 %903, 192
  %905 = load i64, i64* %PC.i335
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC.i335
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %904, i64* %907, align 8
  store %struct.Memory* %loadMem_418f8c, %struct.Memory** %MEMORY
  br label %block_.L_41904c

block_.L_418f91:                                  ; preds = %block_.L_418f5e
  %loadMem_418f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 33
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 1
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %PC.i333
  %915 = add i64 %914, 10
  store i64 %915, i64* %PC.i333
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_418f91, %struct.Memory** %MEMORY
  %loadMem_418f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 5
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i332
  %926 = sub i64 %925, 24
  %927 = load i64, i64* %PC.i330
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC.i330
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929
  %931 = sext i32 %930 to i64
  store i64 %931, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_418f9b, %struct.Memory** %MEMORY
  %loadMem_418f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 33
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 5
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RCX.i329
  %939 = load i64, i64* %PC.i328
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC.i328
  %941 = sext i64 %938 to i128
  %942 = and i128 %941, -18446744073709551616
  %943 = zext i64 %938 to i128
  %944 = or i128 %942, %943
  %945 = mul i128 76, %944
  %946 = trunc i128 %945 to i64
  store i64 %946, i64* %RCX.i329, align 8
  %947 = sext i64 %946 to i128
  %948 = icmp ne i128 %947, %945
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %949, i8* %950, align 1
  %951 = trunc i128 %945 to i32
  %952 = and i32 %951, 255
  %953 = call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %956, i8* %957, align 1
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %958, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %959, align 1
  %960 = lshr i64 %946, 63
  %961 = trunc i64 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %949, i8* %963, align 1
  store %struct.Memory* %loadMem_418f9f, %struct.Memory** %MEMORY
  %loadMem_418fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 1
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 5
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %972 to i64*
  %973 = load i64, i64* %RAX.i326
  %974 = load i64, i64* %RCX.i327
  %975 = load i64, i64* %PC.i325
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC.i325
  %977 = add i64 %974, %973
  store i64 %977, i64* %RAX.i326, align 8
  %978 = icmp ult i64 %977, %973
  %979 = icmp ult i64 %977, %974
  %980 = or i1 %978, %979
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %981, i8* %982, align 1
  %983 = trunc i64 %977 to i32
  %984 = and i32 %983, 255
  %985 = call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %988, i8* %989, align 1
  %990 = xor i64 %974, %973
  %991 = xor i64 %990, %977
  %992 = lshr i64 %991, 4
  %993 = trunc i64 %992 to i8
  %994 = and i8 %993, 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %994, i8* %995, align 1
  %996 = icmp eq i64 %977, 0
  %997 = zext i1 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %997, i8* %998, align 1
  %999 = lshr i64 %977, 63
  %1000 = trunc i64 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1000, i8* %1001, align 1
  %1002 = lshr i64 %973, 63
  %1003 = lshr i64 %974, 63
  %1004 = xor i64 %999, %1002
  %1005 = xor i64 %999, %1003
  %1006 = add i64 %1004, %1005
  %1007 = icmp eq i64 %1006, 2
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1008, i8* %1009, align 1
  store %struct.Memory* %loadMem_418fa3, %struct.Memory** %MEMORY
  %loadMem_418fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 1
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1015 to i64*
  %1016 = load i64, i64* %RAX.i324
  %1017 = add i64 %1016, 64
  %1018 = load i64, i64* %PC.i323
  %1019 = add i64 %1018, 4
  store i64 %1019, i64* %PC.i323
  %1020 = inttoptr i64 %1017 to i32*
  %1021 = load i32, i32* %1020
  %1022 = sub i32 %1021, 2
  %1023 = icmp ult i32 %1021, 2
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1024, i8* %1025, align 1
  %1026 = and i32 %1022, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1
  %1032 = xor i32 %1021, 2
  %1033 = xor i32 %1032, %1022
  %1034 = lshr i32 %1033, 4
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1036, i8* %1037, align 1
  %1038 = icmp eq i32 %1022, 0
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1039, i8* %1040, align 1
  %1041 = lshr i32 %1022, 31
  %1042 = trunc i32 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1042, i8* %1043, align 1
  %1044 = lshr i32 %1021, 31
  %1045 = xor i32 %1041, %1044
  %1046 = add i32 %1045, %1044
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1048, i8* %1049, align 1
  store %struct.Memory* %loadMem_418fa6, %struct.Memory** %MEMORY
  %loadMem_418faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %PC.i322
  %1054 = add i64 %1053, 26
  %1055 = load i64, i64* %PC.i322
  %1056 = add i64 %1055, 6
  %1057 = load i64, i64* %PC.i322
  %1058 = add i64 %1057, 6
  store i64 %1058, i64* %PC.i322
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1060 = load i8, i8* %1059, align 1
  %1061 = icmp eq i8 %1060, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %BRANCH_TAKEN, align 1
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1064 = select i1 %1061, i64 %1054, i64 %1056
  store i64 %1064, i64* %1063, align 8
  store %struct.Memory* %loadMem_418faa, %struct.Memory** %MEMORY
  %loadBr_418faa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418faa = icmp eq i8 %loadBr_418faa, 1
  br i1 %cmpBr_418faa, label %block_.L_418fc4, label %block_418fb0

block_418fb0:                                     ; preds = %block_.L_418f91
  %loadMem_418fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 1
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %RBP.i321
  %1075 = sub i64 %1074, 24
  %1076 = load i64, i64* %PC.i319
  %1077 = add i64 %1076, 4
  store i64 %1077, i64* %PC.i319
  %1078 = inttoptr i64 %1075 to i32*
  %1079 = load i32, i32* %1078
  %1080 = sext i32 %1079 to i64
  store i64 %1080, i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_418fb0, %struct.Memory** %MEMORY
  %loadMem_418fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %RAX.i318
  %1088 = mul i64 %1087, 4
  %1089 = add i64 %1088, 11201040
  %1090 = load i64, i64* %PC.i317
  %1091 = add i64 %1090, 11
  store i64 %1091, i64* %PC.i317
  %1092 = inttoptr i64 %1089 to i32*
  store i32 2, i32* %1092
  store %struct.Memory* %loadMem_418fb4, %struct.Memory** %MEMORY
  %loadMem_418fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %PC.i316
  %1097 = add i64 %1096, 136
  %1098 = load i64, i64* %PC.i316
  %1099 = add i64 %1098, 5
  store i64 %1099, i64* %PC.i316
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1097, i64* %1100, align 8
  store %struct.Memory* %loadMem_418fbf, %struct.Memory** %MEMORY
  br label %block_.L_419047

block_.L_418fc4:                                  ; preds = %block_.L_418f91
  %loadMem_418fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %PC.i314
  %1108 = add i64 %1107, 10
  store i64 %1108, i64* %PC.i314
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_418fc4, %struct.Memory** %MEMORY
  %loadMem_418fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 5
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 15
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RBP.i313
  %1119 = sub i64 %1118, 24
  %1120 = load i64, i64* %PC.i311
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC.i311
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_418fce, %struct.Memory** %MEMORY
  %loadMem_418fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 5
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RCX.i310
  %1132 = load i64, i64* %PC.i309
  %1133 = add i64 %1132, 7
  store i64 %1133, i64* %PC.i309
  %1134 = sext i64 %1131 to i128
  %1135 = and i128 %1134, -18446744073709551616
  %1136 = zext i64 %1131 to i128
  %1137 = or i128 %1135, %1136
  %1138 = mul i128 380, %1137
  %1139 = trunc i128 %1138 to i64
  store i64 %1139, i64* %RCX.i310, align 8
  %1140 = sext i64 %1139 to i128
  %1141 = icmp ne i128 %1140, %1138
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1142, i8* %1143, align 1
  %1144 = trunc i128 %1138 to i32
  %1145 = and i32 %1144, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1149, i8* %1150, align 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1151, align 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1152, align 1
  %1153 = lshr i64 %1139, 63
  %1154 = trunc i64 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1154, i8* %1155, align 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1142, i8* %1156, align 1
  store %struct.Memory* %loadMem_418fd2, %struct.Memory** %MEMORY
  %loadMem_418fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 5
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RAX.i307
  %1167 = load i64, i64* %RCX.i308
  %1168 = load i64, i64* %PC.i306
  %1169 = add i64 %1168, 3
  store i64 %1169, i64* %PC.i306
  %1170 = add i64 %1167, %1166
  store i64 %1170, i64* %RAX.i307, align 8
  %1171 = icmp ult i64 %1170, %1166
  %1172 = icmp ult i64 %1170, %1167
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1174, i8* %1175, align 1
  %1176 = trunc i64 %1170 to i32
  %1177 = and i32 %1176, 255
  %1178 = call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1181, i8* %1182, align 1
  %1183 = xor i64 %1167, %1166
  %1184 = xor i64 %1183, %1170
  %1185 = lshr i64 %1184, 4
  %1186 = trunc i64 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1187, i8* %1188, align 1
  %1189 = icmp eq i64 %1170, 0
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1190, i8* %1191, align 1
  %1192 = lshr i64 %1170, 63
  %1193 = trunc i64 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1193, i8* %1194, align 1
  %1195 = lshr i64 %1166, 63
  %1196 = lshr i64 %1167, 63
  %1197 = xor i64 %1192, %1195
  %1198 = xor i64 %1192, %1196
  %1199 = add i64 %1197, %1198
  %1200 = icmp eq i64 %1199, 2
  %1201 = zext i1 %1200 to i8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1201, i8* %1202, align 1
  store %struct.Memory* %loadMem_418fd9, %struct.Memory** %MEMORY
  %loadMem_418fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 1
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %RAX.i305
  %1210 = add i64 %1209, 100
  %1211 = load i64, i64* %PC.i304
  %1212 = add i64 %1211, 4
  store i64 %1212, i64* %PC.i304
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1215, align 1
  %1216 = and i32 %1214, 255
  %1217 = call i32 @llvm.ctpop.i32(i32 %1216)
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1220, i8* %1221, align 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1222, align 1
  %1223 = icmp eq i32 %1214, 0
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i32 %1214, 31
  %1227 = trunc i32 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1227, i8* %1228, align 1
  %1229 = lshr i32 %1214, 31
  %1230 = xor i32 %1226, %1229
  %1231 = add i32 %1230, %1229
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1233, i8* %1234, align 1
  store %struct.Memory* %loadMem_418fdc, %struct.Memory** %MEMORY
  %loadMem_418fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %PC.i303
  %1239 = add i64 %1238, 83
  %1240 = load i64, i64* %PC.i303
  %1241 = add i64 %1240, 6
  %1242 = load i64, i64* %PC.i303
  %1243 = add i64 %1242, 6
  store i64 %1243, i64* %PC.i303
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1245 = load i8, i8* %1244, align 1
  store i8 %1245, i8* %BRANCH_TAKEN, align 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1247 = icmp ne i8 %1245, 0
  %1248 = select i1 %1247, i64 %1239, i64 %1241
  store i64 %1248, i64* %1246, align 8
  store %struct.Memory* %loadMem_418fe0, %struct.Memory** %MEMORY
  %loadBr_418fe0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418fe0 = icmp eq i8 %loadBr_418fe0, 1
  br i1 %cmpBr_418fe0, label %block_.L_419033, label %block_418fe6

block_418fe6:                                     ; preds = %block_.L_418fc4
  %loadMem_418fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %PC.i301
  %1256 = add i64 %1255, 10
  store i64 %1256, i64* %PC.i301
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_418fe6, %struct.Memory** %MEMORY
  %loadMem_418ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 5
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 15
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1265 to i64*
  %1266 = load i64, i64* %RBP.i300
  %1267 = sub i64 %1266, 24
  %1268 = load i64, i64* %PC.i298
  %1269 = add i64 %1268, 4
  store i64 %1269, i64* %PC.i298
  %1270 = inttoptr i64 %1267 to i32*
  %1271 = load i32, i32* %1270
  %1272 = sext i32 %1271 to i64
  store i64 %1272, i64* %RCX.i299, align 8
  store %struct.Memory* %loadMem_418ff0, %struct.Memory** %MEMORY
  %loadMem_418ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 5
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RCX.i297
  %1280 = load i64, i64* %PC.i296
  %1281 = add i64 %1280, 7
  store i64 %1281, i64* %PC.i296
  %1282 = sext i64 %1279 to i128
  %1283 = and i128 %1282, -18446744073709551616
  %1284 = zext i64 %1279 to i128
  %1285 = or i128 %1283, %1284
  %1286 = mul i128 380, %1285
  %1287 = trunc i128 %1286 to i64
  store i64 %1287, i64* %RCX.i297, align 8
  %1288 = sext i64 %1287 to i128
  %1289 = icmp ne i128 %1288, %1286
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1290, i8* %1291, align 1
  %1292 = trunc i128 %1286 to i32
  %1293 = and i32 %1292, 255
  %1294 = call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1297, i8* %1298, align 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1299, align 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1300, align 1
  %1301 = lshr i64 %1287, 63
  %1302 = trunc i64 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1302, i8* %1303, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1290, i8* %1304, align 1
  store %struct.Memory* %loadMem_418ff4, %struct.Memory** %MEMORY
  %loadMem_418ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 1
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 5
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %RAX.i294
  %1315 = load i64, i64* %RCX.i295
  %1316 = load i64, i64* %PC.i293
  %1317 = add i64 %1316, 3
  store i64 %1317, i64* %PC.i293
  %1318 = add i64 %1315, %1314
  store i64 %1318, i64* %RAX.i294, align 8
  %1319 = icmp ult i64 %1318, %1314
  %1320 = icmp ult i64 %1318, %1315
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1322, i8* %1323, align 1
  %1324 = trunc i64 %1318 to i32
  %1325 = and i32 %1324, 255
  %1326 = call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1329, i8* %1330, align 1
  %1331 = xor i64 %1315, %1314
  %1332 = xor i64 %1331, %1318
  %1333 = lshr i64 %1332, 4
  %1334 = trunc i64 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1335, i8* %1336, align 1
  %1337 = icmp eq i64 %1318, 0
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i64 %1318, 63
  %1341 = trunc i64 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1341, i8* %1342, align 1
  %1343 = lshr i64 %1314, 63
  %1344 = lshr i64 %1315, 63
  %1345 = xor i64 %1340, %1343
  %1346 = xor i64 %1340, %1344
  %1347 = add i64 %1345, %1346
  %1348 = icmp eq i64 %1347, 2
  %1349 = zext i1 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1349, i8* %1350, align 1
  store %struct.Memory* %loadMem_418ffb, %struct.Memory** %MEMORY
  %loadMem_418ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 1
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %RAX.i292
  %1358 = add i64 %1357, 180
  %1359 = load i64, i64* %PC.i291
  %1360 = add i64 %1359, 7
  store i64 %1360, i64* %PC.i291
  %1361 = inttoptr i64 %1358 to i32*
  %1362 = load i32, i32* %1361
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1363, align 1
  %1364 = and i32 %1362, 255
  %1365 = call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1368, i8* %1369, align 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1370, align 1
  %1371 = icmp eq i32 %1362, 0
  %1372 = zext i1 %1371 to i8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1372, i8* %1373, align 1
  %1374 = lshr i32 %1362, 31
  %1375 = trunc i32 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1375, i8* %1376, align 1
  %1377 = lshr i32 %1362, 31
  %1378 = xor i32 %1374, %1377
  %1379 = add i32 %1378, %1377
  %1380 = icmp eq i32 %1379, 2
  %1381 = zext i1 %1380 to i8
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1381, i8* %1382, align 1
  store %struct.Memory* %loadMem_418ffe, %struct.Memory** %MEMORY
  %loadMem_419005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %PC.i290
  %1387 = add i64 %1386, 26
  %1388 = load i64, i64* %PC.i290
  %1389 = add i64 %1388, 6
  %1390 = load i64, i64* %PC.i290
  %1391 = add i64 %1390, 6
  store i64 %1391, i64* %PC.i290
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1393 = load i8, i8* %1392, align 1
  store i8 %1393, i8* %BRANCH_TAKEN, align 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1395 = icmp ne i8 %1393, 0
  %1396 = select i1 %1395, i64 %1387, i64 %1389
  store i64 %1396, i64* %1394, align 8
  store %struct.Memory* %loadMem_419005, %struct.Memory** %MEMORY
  %loadBr_419005 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419005 = icmp eq i8 %loadBr_419005, 1
  br i1 %cmpBr_419005, label %block_.L_41901f, label %block_41900b

block_41900b:                                     ; preds = %block_418fe6
  %loadMem_41900b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 1
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 15
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %RBP.i289
  %1407 = sub i64 %1406, 24
  %1408 = load i64, i64* %PC.i287
  %1409 = add i64 %1408, 4
  store i64 %1409, i64* %PC.i287
  %1410 = inttoptr i64 %1407 to i32*
  %1411 = load i32, i32* %1410
  %1412 = sext i32 %1411 to i64
  store i64 %1412, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_41900b, %struct.Memory** %MEMORY
  %loadMem_41900f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 1
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %1418 to i64*
  %1419 = load i64, i64* %RAX.i286
  %1420 = mul i64 %1419, 4
  %1421 = add i64 %1420, 11201040
  %1422 = load i64, i64* %PC.i285
  %1423 = add i64 %1422, 11
  store i64 %1423, i64* %PC.i285
  %1424 = inttoptr i64 %1421 to i32*
  store i32 2, i32* %1424
  store %struct.Memory* %loadMem_41900f, %struct.Memory** %MEMORY
  %loadMem_41901a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1427 to i64*
  %1428 = load i64, i64* %PC.i284
  %1429 = add i64 %1428, 20
  %1430 = load i64, i64* %PC.i284
  %1431 = add i64 %1430, 5
  store i64 %1431, i64* %PC.i284
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1429, i64* %1432, align 8
  store %struct.Memory* %loadMem_41901a, %struct.Memory** %MEMORY
  br label %block_.L_41902e

block_.L_41901f:                                  ; preds = %block_418fe6
  %loadMem_41901f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RBP.i283
  %1443 = sub i64 %1442, 24
  %1444 = load i64, i64* %PC.i281
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %PC.i281
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446
  %1448 = sext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_41901f, %struct.Memory** %MEMORY
  %loadMem_419023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RAX.i280
  %1456 = mul i64 %1455, 4
  %1457 = add i64 %1456, 11201040
  %1458 = load i64, i64* %PC.i279
  %1459 = add i64 %1458, 11
  store i64 %1459, i64* %PC.i279
  %1460 = inttoptr i64 %1457 to i32*
  store i32 0, i32* %1460
  store %struct.Memory* %loadMem_419023, %struct.Memory** %MEMORY
  br label %block_.L_41902e

block_.L_41902e:                                  ; preds = %block_.L_41901f, %block_41900b
  %loadMem_41902e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i278
  %1465 = add i64 %1464, 20
  %1466 = load i64, i64* %PC.i278
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i278
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1468, align 8
  store %struct.Memory* %loadMem_41902e, %struct.Memory** %MEMORY
  br label %block_.L_419042

block_.L_419033:                                  ; preds = %block_.L_418fc4
  %loadMem_419033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 1
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 15
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %1477 to i64*
  %1478 = load i64, i64* %RBP.i277
  %1479 = sub i64 %1478, 24
  %1480 = load i64, i64* %PC.i275
  %1481 = add i64 %1480, 4
  store i64 %1481, i64* %PC.i275
  %1482 = inttoptr i64 %1479 to i32*
  %1483 = load i32, i32* %1482
  %1484 = sext i32 %1483 to i64
  store i64 %1484, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_419033, %struct.Memory** %MEMORY
  %loadMem_419037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 1
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %1490 to i64*
  %1491 = load i64, i64* %RAX.i274
  %1492 = mul i64 %1491, 4
  %1493 = add i64 %1492, 11201040
  %1494 = load i64, i64* %PC.i273
  %1495 = add i64 %1494, 11
  store i64 %1495, i64* %PC.i273
  %1496 = inttoptr i64 %1493 to i32*
  store i32 1, i32* %1496
  store %struct.Memory* %loadMem_419037, %struct.Memory** %MEMORY
  br label %block_.L_419042

block_.L_419042:                                  ; preds = %block_.L_419033, %block_.L_41902e
  %loadMem_419042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %PC.i272
  %1501 = add i64 %1500, 5
  %1502 = load i64, i64* %PC.i272
  %1503 = add i64 %1502, 5
  store i64 %1503, i64* %PC.i272
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1504, align 8
  store %struct.Memory* %loadMem_419042, %struct.Memory** %MEMORY
  br label %block_.L_419047

block_.L_419047:                                  ; preds = %block_.L_419042, %block_418fb0
  %loadMem_419047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %PC.i271
  %1509 = add i64 %1508, 5
  %1510 = load i64, i64* %PC.i271
  %1511 = add i64 %1510, 5
  store i64 %1511, i64* %PC.i271
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1509, i64* %1512, align 8
  store %struct.Memory* %loadMem_419047, %struct.Memory** %MEMORY
  br label %block_.L_41904c

block_.L_41904c:                                  ; preds = %block_.L_419047, %block_418f7d
  %loadMem_41904c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %PC.i270
  %1517 = add i64 %1516, 5
  %1518 = load i64, i64* %PC.i270
  %1519 = add i64 %1518, 5
  store i64 %1519, i64* %PC.i270
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1517, i64* %1520, align 8
  store %struct.Memory* %loadMem_41904c, %struct.Memory** %MEMORY
  br label %block_.L_419051

block_.L_419051:                                  ; preds = %block_.L_41904c, %block_.L_418f59
  %loadMem_419051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1523 to i64*
  %1524 = load i64, i64* %PC.i269
  %1525 = add i64 %1524, 46
  %1526 = load i64, i64* %PC.i269
  %1527 = add i64 %1526, 5
  store i64 %1527, i64* %PC.i269
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1525, i64* %1528, align 8
  store %struct.Memory* %loadMem_419051, %struct.Memory** %MEMORY
  br label %block_.L_41907f

block_.L_419056:                                  ; preds = %block_418f04
  %loadMem_419056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 1
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RBP.i268
  %1539 = sub i64 %1538, 24
  %1540 = load i64, i64* %PC.i266
  %1541 = add i64 %1540, 4
  store i64 %1541, i64* %PC.i266
  %1542 = inttoptr i64 %1539 to i32*
  %1543 = load i32, i32* %1542
  %1544 = sext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_419056, %struct.Memory** %MEMORY
  %loadMem_41905a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RAX.i264
  %1555 = add i64 %1554, 12099168
  %1556 = load i64, i64* %PC.i263
  %1557 = add i64 %1556, 8
  store i64 %1557, i64* %PC.i263
  %1558 = inttoptr i64 %1555 to i8*
  %1559 = load i8, i8* %1558
  %1560 = zext i8 %1559 to i64
  store i64 %1560, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_41905a, %struct.Memory** %MEMORY
  %loadMem_419062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 5
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %ECX.i262 = bitcast %union.anon* %1566 to i32*
  %1567 = load i32, i32* %ECX.i262
  %1568 = zext i32 %1567 to i64
  %1569 = load i64, i64* %PC.i261
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %PC.i261
  %1571 = sub i32 %1567, 3
  %1572 = icmp ult i32 %1567, 3
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1573, i8* %1574, align 1
  %1575 = and i32 %1571, 255
  %1576 = call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1579, i8* %1580, align 1
  %1581 = xor i64 3, %1568
  %1582 = trunc i64 %1581 to i32
  %1583 = xor i32 %1582, %1571
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1586, i8* %1587, align 1
  %1588 = icmp eq i32 %1571, 0
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1589, i8* %1590, align 1
  %1591 = lshr i32 %1571, 31
  %1592 = trunc i32 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1592, i8* %1593, align 1
  %1594 = lshr i32 %1567, 31
  %1595 = xor i32 %1591, %1594
  %1596 = add i32 %1595, %1594
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1598, i8* %1599, align 1
  store %struct.Memory* %loadMem_419062, %struct.Memory** %MEMORY
  %loadMem_419065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1602 to i64*
  %1603 = load i64, i64* %PC.i260
  %1604 = add i64 %1603, 21
  %1605 = load i64, i64* %PC.i260
  %1606 = add i64 %1605, 6
  %1607 = load i64, i64* %PC.i260
  %1608 = add i64 %1607, 6
  store i64 %1608, i64* %PC.i260
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1610 = load i8, i8* %1609, align 1
  store i8 %1610, i8* %BRANCH_TAKEN, align 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1612 = icmp ne i8 %1610, 0
  %1613 = select i1 %1612, i64 %1604, i64 %1606
  store i64 %1613, i64* %1611, align 8
  store %struct.Memory* %loadMem_419065, %struct.Memory** %MEMORY
  %loadBr_419065 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419065 = icmp eq i8 %loadBr_419065, 1
  br i1 %cmpBr_419065, label %block_.L_41907a, label %block_41906b

block_41906b:                                     ; preds = %block_.L_419056
  %loadMem_41906b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 1
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %RBP.i259
  %1624 = sub i64 %1623, 24
  %1625 = load i64, i64* %PC.i257
  %1626 = add i64 %1625, 4
  store i64 %1626, i64* %PC.i257
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_41906b, %struct.Memory** %MEMORY
  %loadMem_41906f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 1
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RAX.i256
  %1637 = mul i64 %1636, 4
  %1638 = add i64 %1637, 11201040
  %1639 = load i64, i64* %PC.i255
  %1640 = add i64 %1639, 11
  store i64 %1640, i64* %PC.i255
  %1641 = inttoptr i64 %1638 to i32*
  store i32 3, i32* %1641
  store %struct.Memory* %loadMem_41906f, %struct.Memory** %MEMORY
  br label %block_.L_41907a

block_.L_41907a:                                  ; preds = %block_41906b, %block_.L_419056
  %loadMem_41907a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %PC.i254
  %1646 = add i64 %1645, 5
  %1647 = load i64, i64* %PC.i254
  %1648 = add i64 %1647, 5
  store i64 %1648, i64* %PC.i254
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1646, i64* %1649, align 8
  store %struct.Memory* %loadMem_41907a, %struct.Memory** %MEMORY
  br label %block_.L_41907f

block_.L_41907f:                                  ; preds = %block_.L_41907a, %block_.L_419051
  %loadMem_41907f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %PC.i253
  %1654 = add i64 %1653, 5
  %1655 = load i64, i64* %PC.i253
  %1656 = add i64 %1655, 5
  store i64 %1656, i64* %PC.i253
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1654, i64* %1657, align 8
  store %struct.Memory* %loadMem_41907f, %struct.Memory** %MEMORY
  br label %block_.L_419084

block_.L_419084:                                  ; preds = %block_.L_41907f
  %loadMem_419084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 1
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 15
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %RBP.i252
  %1668 = sub i64 %1667, 24
  %1669 = load i64, i64* %PC.i250
  %1670 = add i64 %1669, 3
  store i64 %1670, i64* %PC.i250
  %1671 = inttoptr i64 %1668 to i32*
  %1672 = load i32, i32* %1671
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_419084, %struct.Memory** %MEMORY
  %loadMem_419087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 1
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %RAX.i249
  %1681 = load i64, i64* %PC.i248
  %1682 = add i64 %1681, 3
  store i64 %1682, i64* %PC.i248
  %1683 = trunc i64 %1680 to i32
  %1684 = add i32 1, %1683
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RAX.i249, align 8
  %1686 = icmp ult i32 %1684, %1683
  %1687 = icmp ult i32 %1684, 1
  %1688 = or i1 %1686, %1687
  %1689 = zext i1 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1689, i8* %1690, align 1
  %1691 = and i32 %1684, 255
  %1692 = call i32 @llvm.ctpop.i32(i32 %1691)
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1695, i8* %1696, align 1
  %1697 = xor i64 1, %1680
  %1698 = trunc i64 %1697 to i32
  %1699 = xor i32 %1698, %1684
  %1700 = lshr i32 %1699, 4
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1702, i8* %1703, align 1
  %1704 = icmp eq i32 %1684, 0
  %1705 = zext i1 %1704 to i8
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1705, i8* %1706, align 1
  %1707 = lshr i32 %1684, 31
  %1708 = trunc i32 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1708, i8* %1709, align 1
  %1710 = lshr i32 %1683, 31
  %1711 = xor i32 %1707, %1710
  %1712 = add i32 %1711, %1707
  %1713 = icmp eq i32 %1712, 2
  %1714 = zext i1 %1713 to i8
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1714, i8* %1715, align 1
  store %struct.Memory* %loadMem_419087, %struct.Memory** %MEMORY
  %loadMem_41908a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 1
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %EAX.i246 = bitcast %union.anon* %1721 to i32*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 15
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RBP.i247
  %1726 = sub i64 %1725, 24
  %1727 = load i32, i32* %EAX.i246
  %1728 = zext i32 %1727 to i64
  %1729 = load i64, i64* %PC.i245
  %1730 = add i64 %1729, 3
  store i64 %1730, i64* %PC.i245
  %1731 = inttoptr i64 %1726 to i32*
  store i32 %1727, i32* %1731
  store %struct.Memory* %loadMem_41908a, %struct.Memory** %MEMORY
  %loadMem_41908d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %PC.i244
  %1736 = add i64 %1735, -406
  %1737 = load i64, i64* %PC.i244
  %1738 = add i64 %1737, 5
  store i64 %1738, i64* %PC.i244
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1736, i64* %1739, align 8
  store %struct.Memory* %loadMem_41908d, %struct.Memory** %MEMORY
  br label %block_.L_418ef7

block_.L_419092:                                  ; preds = %block_.L_418ef7
  %loadMem_419092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 15
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %RBP.i243
  %1747 = sub i64 %1746, 24
  %1748 = load i64, i64* %PC.i242
  %1749 = add i64 %1748, 7
  store i64 %1749, i64* %PC.i242
  %1750 = inttoptr i64 %1747 to i32*
  store i32 21, i32* %1750
  store %struct.Memory* %loadMem_419092, %struct.Memory** %MEMORY
  br label %block_.L_419099

block_.L_419099:                                  ; preds = %block_.L_41918d, %block_.L_419092
  %loadMem_419099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 33
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 15
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %1756 to i64*
  %1757 = load i64, i64* %RBP.i241
  %1758 = sub i64 %1757, 24
  %1759 = load i64, i64* %PC.i240
  %1760 = add i64 %1759, 7
  store i64 %1760, i64* %PC.i240
  %1761 = inttoptr i64 %1758 to i32*
  %1762 = load i32, i32* %1761
  %1763 = sub i32 %1762, 400
  %1764 = icmp ult i32 %1762, 400
  %1765 = zext i1 %1764 to i8
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1765, i8* %1766, align 1
  %1767 = and i32 %1763, 255
  %1768 = call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1771, i8* %1772, align 1
  %1773 = xor i32 %1762, 400
  %1774 = xor i32 %1773, %1763
  %1775 = lshr i32 %1774, 4
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1777, i8* %1778, align 1
  %1779 = icmp eq i32 %1763, 0
  %1780 = zext i1 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1780, i8* %1781, align 1
  %1782 = lshr i32 %1763, 31
  %1783 = trunc i32 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1783, i8* %1784, align 1
  %1785 = lshr i32 %1762, 31
  %1786 = xor i32 %1782, %1785
  %1787 = add i32 %1786, %1785
  %1788 = icmp eq i32 %1787, 2
  %1789 = zext i1 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1789, i8* %1790, align 1
  store %struct.Memory* %loadMem_419099, %struct.Memory** %MEMORY
  %loadMem_4190a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %PC.i239
  %1795 = add i64 %1794, 251
  %1796 = load i64, i64* %PC.i239
  %1797 = add i64 %1796, 6
  %1798 = load i64, i64* %PC.i239
  %1799 = add i64 %1798, 6
  store i64 %1799, i64* %PC.i239
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1801 = load i8, i8* %1800, align 1
  %1802 = icmp ne i8 %1801, 0
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1804 = load i8, i8* %1803, align 1
  %1805 = icmp ne i8 %1804, 0
  %1806 = xor i1 %1802, %1805
  %1807 = xor i1 %1806, true
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %BRANCH_TAKEN, align 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1810 = select i1 %1806, i64 %1797, i64 %1795
  store i64 %1810, i64* %1809, align 8
  store %struct.Memory* %loadMem_4190a0, %struct.Memory** %MEMORY
  %loadBr_4190a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4190a0 = icmp eq i8 %loadBr_4190a0, 1
  br i1 %cmpBr_4190a0, label %block_.L_41919b, label %block_4190a6

block_4190a6:                                     ; preds = %block_.L_419099
  %loadMem_4190a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 1
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 15
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %1819 to i64*
  %1820 = load i64, i64* %RBP.i238
  %1821 = sub i64 %1820, 24
  %1822 = load i64, i64* %PC.i236
  %1823 = add i64 %1822, 4
  store i64 %1823, i64* %PC.i236
  %1824 = inttoptr i64 %1821 to i32*
  %1825 = load i32, i32* %1824
  %1826 = sext i32 %1825 to i64
  store i64 %1826, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_4190a6, %struct.Memory** %MEMORY
  %loadMem_4190aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 5
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %1835 to i64*
  %1836 = load i64, i64* %RAX.i234
  %1837 = add i64 %1836, 12099168
  %1838 = load i64, i64* %PC.i233
  %1839 = add i64 %1838, 8
  store i64 %1839, i64* %PC.i233
  %1840 = inttoptr i64 %1837 to i8*
  %1841 = load i8, i8* %1840
  %1842 = zext i8 %1841 to i64
  store i64 %1842, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_4190aa, %struct.Memory** %MEMORY
  %loadMem_4190b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 5
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %ECX.i231 = bitcast %union.anon* %1848 to i32*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 15
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %1851 to i64*
  %1852 = load i32, i32* %ECX.i231
  %1853 = zext i32 %1852 to i64
  %1854 = load i64, i64* %RBP.i232
  %1855 = sub i64 %1854, 20
  %1856 = load i64, i64* %PC.i230
  %1857 = add i64 %1856, 3
  store i64 %1857, i64* %PC.i230
  %1858 = inttoptr i64 %1855 to i32*
  %1859 = load i32, i32* %1858
  %1860 = sub i32 %1852, %1859
  %1861 = icmp ult i32 %1852, %1859
  %1862 = zext i1 %1861 to i8
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1862, i8* %1863, align 1
  %1864 = and i32 %1860, 255
  %1865 = call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1868, i8* %1869, align 1
  %1870 = xor i32 %1859, %1852
  %1871 = xor i32 %1870, %1860
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1874, i8* %1875, align 1
  %1876 = icmp eq i32 %1860, 0
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1877, i8* %1878, align 1
  %1879 = lshr i32 %1860, 31
  %1880 = trunc i32 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1852, 31
  %1883 = lshr i32 %1859, 31
  %1884 = xor i32 %1883, %1882
  %1885 = xor i32 %1879, %1882
  %1886 = add i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1888, i8* %1889, align 1
  store %struct.Memory* %loadMem_4190b2, %struct.Memory** %MEMORY
  %loadMem_4190b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i229
  %1894 = add i64 %1893, 211
  %1895 = load i64, i64* %PC.i229
  %1896 = add i64 %1895, 6
  %1897 = load i64, i64* %PC.i229
  %1898 = add i64 %1897, 6
  store i64 %1898, i64* %PC.i229
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1900 = load i8, i8* %1899, align 1
  %1901 = icmp eq i8 %1900, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %BRANCH_TAKEN, align 1
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1904 = select i1 %1901, i64 %1894, i64 %1896
  store i64 %1904, i64* %1903, align 8
  store %struct.Memory* %loadMem_4190b5, %struct.Memory** %MEMORY
  %loadBr_4190b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4190b5 = icmp eq i8 %loadBr_4190b5, 1
  br i1 %cmpBr_4190b5, label %block_.L_419188, label %block_4190bb

block_4190bb:                                     ; preds = %block_4190a6
  %loadMem_4190bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 33
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 1
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %PC.i227
  %1912 = add i64 %1911, 10
  store i64 %1912, i64* %PC.i227
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_4190bb, %struct.Memory** %MEMORY
  %loadMem_4190c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 5
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 15
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RBP.i226
  %1923 = sub i64 %1922, 24
  %1924 = load i64, i64* %PC.i224
  %1925 = add i64 %1924, 4
  store i64 %1925, i64* %PC.i224
  %1926 = inttoptr i64 %1923 to i32*
  %1927 = load i32, i32* %1926
  %1928 = sext i32 %1927 to i64
  store i64 %1928, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_4190c5, %struct.Memory** %MEMORY
  %loadMem_4190c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %RCX.i223
  %1936 = load i64, i64* %PC.i222
  %1937 = add i64 %1936, 7
  store i64 %1937, i64* %PC.i222
  %1938 = sext i64 %1935 to i128
  %1939 = and i128 %1938, -18446744073709551616
  %1940 = zext i64 %1935 to i128
  %1941 = or i128 %1939, %1940
  %1942 = mul i128 380, %1941
  %1943 = trunc i128 %1942 to i64
  store i64 %1943, i64* %RCX.i223, align 8
  %1944 = sext i64 %1943 to i128
  %1945 = icmp ne i128 %1944, %1942
  %1946 = zext i1 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1946, i8* %1947, align 1
  %1948 = trunc i128 %1942 to i32
  %1949 = and i32 %1948, 255
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1955, align 1
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1956, align 1
  %1957 = lshr i64 %1943, 63
  %1958 = trunc i64 %1957 to i8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1958, i8* %1959, align 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1946, i8* %1960, align 1
  store %struct.Memory* %loadMem_4190c9, %struct.Memory** %MEMORY
  %loadMem_4190d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 5
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RAX.i220
  %1971 = load i64, i64* %RCX.i221
  %1972 = load i64, i64* %PC.i219
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC.i219
  %1974 = add i64 %1971, %1970
  store i64 %1974, i64* %RAX.i220, align 8
  %1975 = icmp ult i64 %1974, %1970
  %1976 = icmp ult i64 %1974, %1971
  %1977 = or i1 %1975, %1976
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1978, i8* %1979, align 1
  %1980 = trunc i64 %1974 to i32
  %1981 = and i32 %1980, 255
  %1982 = call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1985, i8* %1986, align 1
  %1987 = xor i64 %1971, %1970
  %1988 = xor i64 %1987, %1974
  %1989 = lshr i64 %1988, 4
  %1990 = trunc i64 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1991, i8* %1992, align 1
  %1993 = icmp eq i64 %1974, 0
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1994, i8* %1995, align 1
  %1996 = lshr i64 %1974, 63
  %1997 = trunc i64 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1997, i8* %1998, align 1
  %1999 = lshr i64 %1970, 63
  %2000 = lshr i64 %1971, 63
  %2001 = xor i64 %1996, %1999
  %2002 = xor i64 %1996, %2000
  %2003 = add i64 %2001, %2002
  %2004 = icmp eq i64 %2003, 2
  %2005 = zext i1 %2004 to i8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2005, i8* %2006, align 1
  store %struct.Memory* %loadMem_4190d0, %struct.Memory** %MEMORY
  %loadMem_4190d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 1
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 7
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RAX.i217
  %2017 = add i64 %2016, 12
  %2018 = load i64, i64* %PC.i216
  %2019 = add i64 %2018, 3
  store i64 %2019, i64* %PC.i216
  %2020 = inttoptr i64 %2017 to i32*
  %2021 = load i32, i32* %2020
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RDX.i218, align 8
  store %struct.Memory* %loadMem_4190d3, %struct.Memory** %MEMORY
  %loadMem_4190d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 7
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2028 to i32*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %2031 to i64*
  %2032 = load i32, i32* %EDX.i
  %2033 = zext i32 %2032 to i64
  %2034 = load i64, i64* %RBP.i215
  %2035 = sub i64 %2034, 24
  %2036 = load i64, i64* %PC.i214
  %2037 = add i64 %2036, 3
  store i64 %2037, i64* %PC.i214
  %2038 = inttoptr i64 %2035 to i32*
  %2039 = load i32, i32* %2038
  %2040 = sub i32 %2032, %2039
  %2041 = icmp ult i32 %2032, %2039
  %2042 = zext i1 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2042, i8* %2043, align 1
  %2044 = and i32 %2040, 255
  %2045 = call i32 @llvm.ctpop.i32(i32 %2044)
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = xor i8 %2047, 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2048, i8* %2049, align 1
  %2050 = xor i32 %2039, %2032
  %2051 = xor i32 %2050, %2040
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2054, i8* %2055, align 1
  %2056 = icmp eq i32 %2040, 0
  %2057 = zext i1 %2056 to i8
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2057, i8* %2058, align 1
  %2059 = lshr i32 %2040, 31
  %2060 = trunc i32 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2060, i8* %2061, align 1
  %2062 = lshr i32 %2032, 31
  %2063 = lshr i32 %2039, 31
  %2064 = xor i32 %2063, %2062
  %2065 = xor i32 %2059, %2062
  %2066 = add i32 %2065, %2064
  %2067 = icmp eq i32 %2066, 2
  %2068 = zext i1 %2067 to i8
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2068, i8* %2069, align 1
  store %struct.Memory* %loadMem_4190d6, %struct.Memory** %MEMORY
  %loadMem_4190d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %PC.i213
  %2074 = add i64 %2073, 175
  %2075 = load i64, i64* %PC.i213
  %2076 = add i64 %2075, 6
  %2077 = load i64, i64* %PC.i213
  %2078 = add i64 %2077, 6
  store i64 %2078, i64* %PC.i213
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2080 = load i8, i8* %2079, align 1
  %2081 = icmp eq i8 %2080, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %BRANCH_TAKEN, align 1
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2084 = select i1 %2081, i64 %2074, i64 %2076
  store i64 %2084, i64* %2083, align 8
  store %struct.Memory* %loadMem_4190d9, %struct.Memory** %MEMORY
  %loadBr_4190d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4190d9 = icmp eq i8 %loadBr_4190d9, 1
  br i1 %cmpBr_4190d9, label %block_.L_419188, label %block_4190df

block_4190df:                                     ; preds = %block_4190bb
  %loadMem_4190df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 1
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %PC.i211
  %2092 = add i64 %2091, 10
  store i64 %2092, i64* %PC.i211
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_4190df, %struct.Memory** %MEMORY
  %loadMem_4190e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 5
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 15
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2101 to i64*
  %2102 = load i64, i64* %RBP.i210
  %2103 = sub i64 %2102, 24
  %2104 = load i64, i64* %PC.i208
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %PC.i208
  %2106 = inttoptr i64 %2103 to i32*
  %2107 = load i32, i32* %2106
  %2108 = sext i32 %2107 to i64
  store i64 %2108, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_4190e9, %struct.Memory** %MEMORY
  %loadMem_4190ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 5
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RCX.i207
  %2116 = load i64, i64* %PC.i206
  %2117 = add i64 %2116, 7
  store i64 %2117, i64* %PC.i206
  %2118 = sext i64 %2115 to i128
  %2119 = and i128 %2118, -18446744073709551616
  %2120 = zext i64 %2115 to i128
  %2121 = or i128 %2119, %2120
  %2122 = mul i128 380, %2121
  %2123 = trunc i128 %2122 to i64
  store i64 %2123, i64* %RCX.i207, align 8
  %2124 = sext i64 %2123 to i128
  %2125 = icmp ne i128 %2124, %2122
  %2126 = zext i1 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2126, i8* %2127, align 1
  %2128 = trunc i128 %2122 to i32
  %2129 = and i32 %2128, 255
  %2130 = call i32 @llvm.ctpop.i32(i32 %2129)
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = xor i8 %2132, 1
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2133, i8* %2134, align 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2135, align 1
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2136, align 1
  %2137 = lshr i64 %2123, 63
  %2138 = trunc i64 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2138, i8* %2139, align 1
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2126, i8* %2140, align 1
  store %struct.Memory* %loadMem_4190ed, %struct.Memory** %MEMORY
  %loadMem_4190f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 5
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RAX.i204
  %2151 = load i64, i64* %RCX.i205
  %2152 = load i64, i64* %PC.i203
  %2153 = add i64 %2152, 3
  store i64 %2153, i64* %PC.i203
  %2154 = add i64 %2151, %2150
  store i64 %2154, i64* %RAX.i204, align 8
  %2155 = icmp ult i64 %2154, %2150
  %2156 = icmp ult i64 %2154, %2151
  %2157 = or i1 %2155, %2156
  %2158 = zext i1 %2157 to i8
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2158, i8* %2159, align 1
  %2160 = trunc i64 %2154 to i32
  %2161 = and i32 %2160, 255
  %2162 = call i32 @llvm.ctpop.i32(i32 %2161)
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  %2165 = xor i8 %2164, 1
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2165, i8* %2166, align 1
  %2167 = xor i64 %2151, %2150
  %2168 = xor i64 %2167, %2154
  %2169 = lshr i64 %2168, 4
  %2170 = trunc i64 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2171, i8* %2172, align 1
  %2173 = icmp eq i64 %2154, 0
  %2174 = zext i1 %2173 to i8
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2174, i8* %2175, align 1
  %2176 = lshr i64 %2154, 63
  %2177 = trunc i64 %2176 to i8
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2177, i8* %2178, align 1
  %2179 = lshr i64 %2150, 63
  %2180 = lshr i64 %2151, 63
  %2181 = xor i64 %2176, %2179
  %2182 = xor i64 %2176, %2180
  %2183 = add i64 %2181, %2182
  %2184 = icmp eq i64 %2183, 2
  %2185 = zext i1 %2184 to i8
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2185, i8* %2186, align 1
  store %struct.Memory* %loadMem_4190f4, %struct.Memory** %MEMORY
  %loadMem_4190f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 1
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %2192 to i64*
  %2193 = load i64, i64* %RAX.i202
  %2194 = add i64 %2193, 16
  %2195 = load i64, i64* %PC.i201
  %2196 = add i64 %2195, 4
  store i64 %2196, i64* %PC.i201
  %2197 = inttoptr i64 %2194 to i32*
  %2198 = load i32, i32* %2197
  %2199 = sub i32 %2198, 2
  %2200 = icmp ult i32 %2198, 2
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2201, i8* %2202, align 1
  %2203 = and i32 %2199, 255
  %2204 = call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2207, i8* %2208, align 1
  %2209 = xor i32 %2198, 2
  %2210 = xor i32 %2209, %2199
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2213, i8* %2214, align 1
  %2215 = icmp eq i32 %2199, 0
  %2216 = zext i1 %2215 to i8
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2216, i8* %2217, align 1
  %2218 = lshr i32 %2199, 31
  %2219 = trunc i32 %2218 to i8
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2219, i8* %2220, align 1
  %2221 = lshr i32 %2198, 31
  %2222 = xor i32 %2218, %2221
  %2223 = add i32 %2222, %2221
  %2224 = icmp eq i32 %2223, 2
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2225, i8* %2226, align 1
  store %struct.Memory* %loadMem_4190f7, %struct.Memory** %MEMORY
  %loadMem_4190fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2229 to i64*
  %2230 = load i64, i64* %PC.i200
  %2231 = add i64 %2230, 141
  %2232 = load i64, i64* %PC.i200
  %2233 = add i64 %2232, 6
  %2234 = load i64, i64* %PC.i200
  %2235 = add i64 %2234, 6
  store i64 %2235, i64* %PC.i200
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2237 = load i8, i8* %2236, align 1
  %2238 = icmp eq i8 %2237, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %BRANCH_TAKEN, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2241 = select i1 %2238, i64 %2231, i64 %2233
  store i64 %2241, i64* %2240, align 8
  store %struct.Memory* %loadMem_4190fb, %struct.Memory** %MEMORY
  %loadBr_4190fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4190fb = icmp eq i8 %loadBr_4190fb, 1
  br i1 %cmpBr_4190fb, label %block_.L_419188, label %block_419101

block_419101:                                     ; preds = %block_4190df
  %loadMem_419101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 1
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 15
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RBP.i199
  %2252 = sub i64 %2251, 24
  %2253 = load i64, i64* %PC.i197
  %2254 = add i64 %2253, 4
  store i64 %2254, i64* %PC.i197
  %2255 = inttoptr i64 %2252 to i32*
  %2256 = load i32, i32* %2255
  %2257 = sext i32 %2256 to i64
  store i64 %2257, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_419101, %struct.Memory** %MEMORY
  %loadMem_419105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 1
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %2263 to i64*
  %2264 = load i64, i64* %RAX.i196
  %2265 = mul i64 %2264, 4
  %2266 = add i64 %2265, 11201040
  %2267 = load i64, i64* %PC.i195
  %2268 = add i64 %2267, 8
  store i64 %2268, i64* %PC.i195
  %2269 = inttoptr i64 %2266 to i32*
  %2270 = load i32, i32* %2269
  %2271 = sub i32 %2270, 1
  %2272 = icmp ult i32 %2270, 1
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2273, i8* %2274, align 1
  %2275 = and i32 %2271, 255
  %2276 = call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2279, i8* %2280, align 1
  %2281 = xor i32 %2270, 1
  %2282 = xor i32 %2281, %2271
  %2283 = lshr i32 %2282, 4
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2285, i8* %2286, align 1
  %2287 = icmp eq i32 %2271, 0
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2288, i8* %2289, align 1
  %2290 = lshr i32 %2271, 31
  %2291 = trunc i32 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2291, i8* %2292, align 1
  %2293 = lshr i32 %2270, 31
  %2294 = xor i32 %2290, %2293
  %2295 = add i32 %2294, %2293
  %2296 = icmp eq i32 %2295, 2
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2297, i8* %2298, align 1
  store %struct.Memory* %loadMem_419105, %struct.Memory** %MEMORY
  %loadMem_41910d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %PC.i194
  %2303 = add i64 %2302, 123
  %2304 = load i64, i64* %PC.i194
  %2305 = add i64 %2304, 6
  %2306 = load i64, i64* %PC.i194
  %2307 = add i64 %2306, 6
  store i64 %2307, i64* %PC.i194
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2309 = load i8, i8* %2308, align 1
  %2310 = icmp eq i8 %2309, 0
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %BRANCH_TAKEN, align 1
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2313 = select i1 %2310, i64 %2303, i64 %2305
  store i64 %2313, i64* %2312, align 8
  store %struct.Memory* %loadMem_41910d, %struct.Memory** %MEMORY
  %loadBr_41910d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41910d = icmp eq i8 %loadBr_41910d, 1
  br i1 %cmpBr_41910d, label %block_.L_419188, label %block_419113

block_419113:                                     ; preds = %block_419101
  %loadMem_419113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 11
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RDI.i192 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 15
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2322 to i64*
  %2323 = load i64, i64* %RBP.i193
  %2324 = sub i64 %2323, 24
  %2325 = load i64, i64* %PC.i191
  %2326 = add i64 %2325, 3
  store i64 %2326, i64* %PC.i191
  %2327 = inttoptr i64 %2324 to i32*
  %2328 = load i32, i32* %2327
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RDI.i192, align 8
  store %struct.Memory* %loadMem_419113, %struct.Memory** %MEMORY
  %loadMem1_419116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %PC.i190
  %2334 = add i64 %2333, 213674
  %2335 = load i64, i64* %PC.i190
  %2336 = add i64 %2335, 5
  %2337 = load i64, i64* %PC.i190
  %2338 = add i64 %2337, 5
  store i64 %2338, i64* %PC.i190
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2340 = load i64, i64* %2339, align 8
  %2341 = add i64 %2340, -8
  %2342 = inttoptr i64 %2341 to i64*
  store i64 %2336, i64* %2342
  store i64 %2341, i64* %2339, align 8
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2334, i64* %2343, align 8
  store %struct.Memory* %loadMem1_419116, %struct.Memory** %MEMORY
  %loadMem2_419116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419116 = load i64, i64* %3
  %call2_419116 = call %struct.Memory* @sub_44d3c0.owl_substantial(%struct.State* %0, i64 %loadPC_419116, %struct.Memory* %loadMem2_419116)
  store %struct.Memory* %call2_419116, %struct.Memory** %MEMORY
  %loadMem_41911b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 1
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %2349 to i32*
  %2350 = load i32, i32* %EAX.i189
  %2351 = zext i32 %2350 to i64
  %2352 = load i64, i64* %PC.i188
  %2353 = add i64 %2352, 3
  store i64 %2353, i64* %PC.i188
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2354, align 1
  %2355 = and i32 %2350, 255
  %2356 = call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2359, i8* %2360, align 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2361, align 1
  %2362 = icmp eq i32 %2350, 0
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2363, i8* %2364, align 1
  %2365 = lshr i32 %2350, 31
  %2366 = trunc i32 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2366, i8* %2367, align 1
  %2368 = lshr i32 %2350, 31
  %2369 = xor i32 %2365, %2368
  %2370 = add i32 %2369, %2368
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2372, i8* %2373, align 1
  store %struct.Memory* %loadMem_41911b, %struct.Memory** %MEMORY
  %loadMem_41911e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %PC.i187
  %2378 = add i64 %2377, 106
  %2379 = load i64, i64* %PC.i187
  %2380 = add i64 %2379, 6
  %2381 = load i64, i64* %PC.i187
  %2382 = add i64 %2381, 6
  store i64 %2382, i64* %PC.i187
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2384 = load i8, i8* %2383, align 1
  %2385 = icmp eq i8 %2384, 0
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %BRANCH_TAKEN, align 1
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2388 = select i1 %2385, i64 %2378, i64 %2380
  store i64 %2388, i64* %2387, align 8
  store %struct.Memory* %loadMem_41911e, %struct.Memory** %MEMORY
  %loadBr_41911e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41911e = icmp eq i8 %loadBr_41911e, 1
  br i1 %cmpBr_41911e, label %block_.L_419188, label %block_419124

block_419124:                                     ; preds = %block_419113
  %loadMem_419124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 15
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RBP.i186
  %2396 = sub i64 %2395, 44
  %2397 = load i64, i64* %PC.i185
  %2398 = add i64 %2397, 7
  store i64 %2398, i64* %PC.i185
  %2399 = inttoptr i64 %2396 to i32*
  store i32 21, i32* %2399
  store %struct.Memory* %loadMem_419124, %struct.Memory** %MEMORY
  br label %block_.L_41912b

block_.L_41912b:                                  ; preds = %block_.L_419175, %block_419124
  %loadMem_41912b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 15
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RBP.i184
  %2407 = sub i64 %2406, 44
  %2408 = load i64, i64* %PC.i183
  %2409 = add i64 %2408, 7
  store i64 %2409, i64* %PC.i183
  %2410 = inttoptr i64 %2407 to i32*
  %2411 = load i32, i32* %2410
  %2412 = sub i32 %2411, 400
  %2413 = icmp ult i32 %2411, 400
  %2414 = zext i1 %2413 to i8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2414, i8* %2415, align 1
  %2416 = and i32 %2412, 255
  %2417 = call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2420, i8* %2421, align 1
  %2422 = xor i32 %2411, 400
  %2423 = xor i32 %2422, %2412
  %2424 = lshr i32 %2423, 4
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2426, i8* %2427, align 1
  %2428 = icmp eq i32 %2412, 0
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2429, i8* %2430, align 1
  %2431 = lshr i32 %2412, 31
  %2432 = trunc i32 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2432, i8* %2433, align 1
  %2434 = lshr i32 %2411, 31
  %2435 = xor i32 %2431, %2434
  %2436 = add i32 %2435, %2434
  %2437 = icmp eq i32 %2436, 2
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2438, i8* %2439, align 1
  store %struct.Memory* %loadMem_41912b, %struct.Memory** %MEMORY
  %loadMem_419132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %PC.i182
  %2444 = add i64 %2443, 81
  %2445 = load i64, i64* %PC.i182
  %2446 = add i64 %2445, 6
  %2447 = load i64, i64* %PC.i182
  %2448 = add i64 %2447, 6
  store i64 %2448, i64* %PC.i182
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2450 = load i8, i8* %2449, align 1
  %2451 = icmp ne i8 %2450, 0
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2453 = load i8, i8* %2452, align 1
  %2454 = icmp ne i8 %2453, 0
  %2455 = xor i1 %2451, %2454
  %2456 = xor i1 %2455, true
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %BRANCH_TAKEN, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2459 = select i1 %2455, i64 %2446, i64 %2444
  store i64 %2459, i64* %2458, align 8
  store %struct.Memory* %loadMem_419132, %struct.Memory** %MEMORY
  %loadBr_419132 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419132 = icmp eq i8 %loadBr_419132, 1
  br i1 %cmpBr_419132, label %block_.L_419183, label %block_419138

block_419138:                                     ; preds = %block_.L_41912b
  %loadMem_419138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 15
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %RBP.i181
  %2470 = sub i64 %2469, 44
  %2471 = load i64, i64* %PC.i179
  %2472 = add i64 %2471, 4
  store i64 %2472, i64* %PC.i179
  %2473 = inttoptr i64 %2470 to i32*
  %2474 = load i32, i32* %2473
  %2475 = sext i32 %2474 to i64
  store i64 %2475, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_419138, %struct.Memory** %MEMORY
  %loadMem_41913c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 5
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %2484 to i64*
  %2485 = load i64, i64* %RAX.i177
  %2486 = add i64 %2485, 12099168
  %2487 = load i64, i64* %PC.i176
  %2488 = add i64 %2487, 8
  store i64 %2488, i64* %PC.i176
  %2489 = inttoptr i64 %2486 to i8*
  %2490 = load i8, i8* %2489
  %2491 = zext i8 %2490 to i64
  store i64 %2491, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_41913c, %struct.Memory** %MEMORY
  %loadMem_419144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 5
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %ECX.i175 = bitcast %union.anon* %2497 to i32*
  %2498 = load i32, i32* %ECX.i175
  %2499 = zext i32 %2498 to i64
  %2500 = load i64, i64* %PC.i174
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC.i174
  %2502 = sub i32 %2498, 3
  %2503 = icmp ult i32 %2498, 3
  %2504 = zext i1 %2503 to i8
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2504, i8* %2505, align 1
  %2506 = and i32 %2502, 255
  %2507 = call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2510, i8* %2511, align 1
  %2512 = xor i64 3, %2499
  %2513 = trunc i64 %2512 to i32
  %2514 = xor i32 %2513, %2502
  %2515 = lshr i32 %2514, 4
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2517, i8* %2518, align 1
  %2519 = icmp eq i32 %2502, 0
  %2520 = zext i1 %2519 to i8
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2520, i8* %2521, align 1
  %2522 = lshr i32 %2502, 31
  %2523 = trunc i32 %2522 to i8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2523, i8* %2524, align 1
  %2525 = lshr i32 %2498, 31
  %2526 = xor i32 %2522, %2525
  %2527 = add i32 %2526, %2525
  %2528 = icmp eq i32 %2527, 2
  %2529 = zext i1 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2529, i8* %2530, align 1
  store %struct.Memory* %loadMem_419144, %struct.Memory** %MEMORY
  %loadMem_419147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2533 to i64*
  %2534 = load i64, i64* %PC.i173
  %2535 = add i64 %2534, 41
  %2536 = load i64, i64* %PC.i173
  %2537 = add i64 %2536, 6
  %2538 = load i64, i64* %PC.i173
  %2539 = add i64 %2538, 6
  store i64 %2539, i64* %PC.i173
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2541 = load i8, i8* %2540, align 1
  store i8 %2541, i8* %BRANCH_TAKEN, align 1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2543 = icmp ne i8 %2541, 0
  %2544 = select i1 %2543, i64 %2535, i64 %2537
  store i64 %2544, i64* %2542, align 8
  store %struct.Memory* %loadMem_419147, %struct.Memory** %MEMORY
  %loadBr_419147 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419147 = icmp eq i8 %loadBr_419147, 1
  br i1 %cmpBr_419147, label %block_.L_419170, label %block_41914d

block_41914d:                                     ; preds = %block_419138
  %loadMem_41914d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 11
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 15
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %RBP.i172
  %2555 = sub i64 %2554, 44
  %2556 = load i64, i64* %PC.i170
  %2557 = add i64 %2556, 3
  store i64 %2557, i64* %PC.i170
  %2558 = inttoptr i64 %2555 to i32*
  %2559 = load i32, i32* %2558
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_41914d, %struct.Memory** %MEMORY
  %loadMem_419150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 9
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RSI.i168 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 15
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RBP.i169
  %2571 = sub i64 %2570, 24
  %2572 = load i64, i64* %PC.i167
  %2573 = add i64 %2572, 3
  store i64 %2573, i64* %PC.i167
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RSI.i168, align 8
  store %struct.Memory* %loadMem_419150, %struct.Memory** %MEMORY
  %loadMem1_419153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %PC.i166
  %2581 = add i64 %2580, 454557
  %2582 = load i64, i64* %PC.i166
  %2583 = add i64 %2582, 5
  %2584 = load i64, i64* %PC.i166
  %2585 = add i64 %2584, 5
  store i64 %2585, i64* %PC.i166
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2587 = load i64, i64* %2586, align 8
  %2588 = add i64 %2587, -8
  %2589 = inttoptr i64 %2588 to i64*
  store i64 %2583, i64* %2589
  store i64 %2588, i64* %2586, align 8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2581, i64* %2590, align 8
  store %struct.Memory* %loadMem1_419153, %struct.Memory** %MEMORY
  %loadMem2_419153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419153 = load i64, i64* %3
  %call2_419153 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_419153, %struct.Memory* %loadMem2_419153)
  store %struct.Memory* %call2_419153, %struct.Memory** %MEMORY
  %loadMem_419158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 1
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %2596 to i32*
  %2597 = load i32, i32* %EAX.i165
  %2598 = zext i32 %2597 to i64
  %2599 = load i64, i64* %PC.i164
  %2600 = add i64 %2599, 3
  store i64 %2600, i64* %PC.i164
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2601, align 1
  %2602 = and i32 %2597, 255
  %2603 = call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2606, i8* %2607, align 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2608, align 1
  %2609 = icmp eq i32 %2597, 0
  %2610 = zext i1 %2609 to i8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2610, i8* %2611, align 1
  %2612 = lshr i32 %2597, 31
  %2613 = trunc i32 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2613, i8* %2614, align 1
  %2615 = lshr i32 %2597, 31
  %2616 = xor i32 %2612, %2615
  %2617 = add i32 %2616, %2615
  %2618 = icmp eq i32 %2617, 2
  %2619 = zext i1 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2619, i8* %2620, align 1
  store %struct.Memory* %loadMem_419158, %struct.Memory** %MEMORY
  %loadMem_41915b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2623 to i64*
  %2624 = load i64, i64* %PC.i163
  %2625 = add i64 %2624, 21
  %2626 = load i64, i64* %PC.i163
  %2627 = add i64 %2626, 6
  %2628 = load i64, i64* %PC.i163
  %2629 = add i64 %2628, 6
  store i64 %2629, i64* %PC.i163
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2631 = load i8, i8* %2630, align 1
  store i8 %2631, i8* %BRANCH_TAKEN, align 1
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2633 = icmp ne i8 %2631, 0
  %2634 = select i1 %2633, i64 %2625, i64 %2627
  store i64 %2634, i64* %2632, align 8
  store %struct.Memory* %loadMem_41915b, %struct.Memory** %MEMORY
  %loadBr_41915b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41915b = icmp eq i8 %loadBr_41915b, 1
  br i1 %cmpBr_41915b, label %block_.L_419170, label %block_419161

block_419161:                                     ; preds = %block_41914d
  %loadMem_419161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 1
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 15
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %RBP.i162
  %2645 = sub i64 %2644, 44
  %2646 = load i64, i64* %PC.i160
  %2647 = add i64 %2646, 4
  store i64 %2647, i64* %PC.i160
  %2648 = inttoptr i64 %2645 to i32*
  %2649 = load i32, i32* %2648
  %2650 = sext i32 %2649 to i64
  store i64 %2650, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_419161, %struct.Memory** %MEMORY
  %loadMem_419165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 1
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RAX.i159
  %2658 = mul i64 %2657, 4
  %2659 = add i64 %2658, 11201040
  %2660 = load i64, i64* %PC.i158
  %2661 = add i64 %2660, 11
  store i64 %2661, i64* %PC.i158
  %2662 = inttoptr i64 %2659 to i32*
  store i32 10, i32* %2662
  store %struct.Memory* %loadMem_419165, %struct.Memory** %MEMORY
  br label %block_.L_419170

block_.L_419170:                                  ; preds = %block_419161, %block_41914d, %block_419138
  %loadMem_419170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %PC.i157
  %2667 = add i64 %2666, 5
  %2668 = load i64, i64* %PC.i157
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC.i157
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2667, i64* %2670, align 8
  store %struct.Memory* %loadMem_419170, %struct.Memory** %MEMORY
  br label %block_.L_419175

block_.L_419175:                                  ; preds = %block_.L_419170
  %loadMem_419175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 1
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RBP.i156
  %2681 = sub i64 %2680, 44
  %2682 = load i64, i64* %PC.i154
  %2683 = add i64 %2682, 3
  store i64 %2683, i64* %PC.i154
  %2684 = inttoptr i64 %2681 to i32*
  %2685 = load i32, i32* %2684
  %2686 = zext i32 %2685 to i64
  store i64 %2686, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_419175, %struct.Memory** %MEMORY
  %loadMem_419178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 1
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %2692 to i64*
  %2693 = load i64, i64* %RAX.i153
  %2694 = load i64, i64* %PC.i152
  %2695 = add i64 %2694, 3
  store i64 %2695, i64* %PC.i152
  %2696 = trunc i64 %2693 to i32
  %2697 = add i32 1, %2696
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RAX.i153, align 8
  %2699 = icmp ult i32 %2697, %2696
  %2700 = icmp ult i32 %2697, 1
  %2701 = or i1 %2699, %2700
  %2702 = zext i1 %2701 to i8
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2702, i8* %2703, align 1
  %2704 = and i32 %2697, 255
  %2705 = call i32 @llvm.ctpop.i32(i32 %2704)
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = xor i8 %2707, 1
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2708, i8* %2709, align 1
  %2710 = xor i64 1, %2693
  %2711 = trunc i64 %2710 to i32
  %2712 = xor i32 %2711, %2697
  %2713 = lshr i32 %2712, 4
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2715, i8* %2716, align 1
  %2717 = icmp eq i32 %2697, 0
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2718, i8* %2719, align 1
  %2720 = lshr i32 %2697, 31
  %2721 = trunc i32 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2721, i8* %2722, align 1
  %2723 = lshr i32 %2696, 31
  %2724 = xor i32 %2720, %2723
  %2725 = add i32 %2724, %2720
  %2726 = icmp eq i32 %2725, 2
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2727, i8* %2728, align 1
  store %struct.Memory* %loadMem_419178, %struct.Memory** %MEMORY
  %loadMem_41917b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 1
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %2734 to i32*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 15
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %RBP.i151
  %2739 = sub i64 %2738, 44
  %2740 = load i32, i32* %EAX.i150
  %2741 = zext i32 %2740 to i64
  %2742 = load i64, i64* %PC.i149
  %2743 = add i64 %2742, 3
  store i64 %2743, i64* %PC.i149
  %2744 = inttoptr i64 %2739 to i32*
  store i32 %2740, i32* %2744
  store %struct.Memory* %loadMem_41917b, %struct.Memory** %MEMORY
  %loadMem_41917e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %PC.i148
  %2749 = add i64 %2748, -83
  %2750 = load i64, i64* %PC.i148
  %2751 = add i64 %2750, 5
  store i64 %2751, i64* %PC.i148
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2749, i64* %2752, align 8
  store %struct.Memory* %loadMem_41917e, %struct.Memory** %MEMORY
  br label %block_.L_41912b

block_.L_419183:                                  ; preds = %block_.L_41912b
  %loadMem_419183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %PC.i147
  %2757 = add i64 %2756, 5
  %2758 = load i64, i64* %PC.i147
  %2759 = add i64 %2758, 5
  store i64 %2759, i64* %PC.i147
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2757, i64* %2760, align 8
  store %struct.Memory* %loadMem_419183, %struct.Memory** %MEMORY
  br label %block_.L_419188

block_.L_419188:                                  ; preds = %block_.L_419183, %block_419113, %block_419101, %block_4190df, %block_4190bb, %block_4190a6
  %loadMem_419188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %PC.i146
  %2765 = add i64 %2764, 5
  %2766 = load i64, i64* %PC.i146
  %2767 = add i64 %2766, 5
  store i64 %2767, i64* %PC.i146
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2765, i64* %2768, align 8
  store %struct.Memory* %loadMem_419188, %struct.Memory** %MEMORY
  br label %block_.L_41918d

block_.L_41918d:                                  ; preds = %block_.L_419188
  %loadMem_41918d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 1
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 15
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2777 to i64*
  %2778 = load i64, i64* %RBP.i145
  %2779 = sub i64 %2778, 24
  %2780 = load i64, i64* %PC.i143
  %2781 = add i64 %2780, 3
  store i64 %2781, i64* %PC.i143
  %2782 = inttoptr i64 %2779 to i32*
  %2783 = load i32, i32* %2782
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_41918d, %struct.Memory** %MEMORY
  %loadMem_419190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %2790 to i64*
  %2791 = load i64, i64* %RAX.i142
  %2792 = load i64, i64* %PC.i141
  %2793 = add i64 %2792, 3
  store i64 %2793, i64* %PC.i141
  %2794 = trunc i64 %2791 to i32
  %2795 = add i32 1, %2794
  %2796 = zext i32 %2795 to i64
  store i64 %2796, i64* %RAX.i142, align 8
  %2797 = icmp ult i32 %2795, %2794
  %2798 = icmp ult i32 %2795, 1
  %2799 = or i1 %2797, %2798
  %2800 = zext i1 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2800, i8* %2801, align 1
  %2802 = and i32 %2795, 255
  %2803 = call i32 @llvm.ctpop.i32(i32 %2802)
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = xor i8 %2805, 1
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2806, i8* %2807, align 1
  %2808 = xor i64 1, %2791
  %2809 = trunc i64 %2808 to i32
  %2810 = xor i32 %2809, %2795
  %2811 = lshr i32 %2810, 4
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2813, i8* %2814, align 1
  %2815 = icmp eq i32 %2795, 0
  %2816 = zext i1 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2816, i8* %2817, align 1
  %2818 = lshr i32 %2795, 31
  %2819 = trunc i32 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2819, i8* %2820, align 1
  %2821 = lshr i32 %2794, 31
  %2822 = xor i32 %2818, %2821
  %2823 = add i32 %2822, %2818
  %2824 = icmp eq i32 %2823, 2
  %2825 = zext i1 %2824 to i8
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2825, i8* %2826, align 1
  store %struct.Memory* %loadMem_419190, %struct.Memory** %MEMORY
  %loadMem_419193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 1
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %2832 to i32*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 15
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %RBP.i140
  %2837 = sub i64 %2836, 24
  %2838 = load i32, i32* %EAX.i139
  %2839 = zext i32 %2838 to i64
  %2840 = load i64, i64* %PC.i138
  %2841 = add i64 %2840, 3
  store i64 %2841, i64* %PC.i138
  %2842 = inttoptr i64 %2837 to i32*
  store i32 %2838, i32* %2842
  store %struct.Memory* %loadMem_419193, %struct.Memory** %MEMORY
  %loadMem_419196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %PC.i137
  %2847 = add i64 %2846, -253
  %2848 = load i64, i64* %PC.i137
  %2849 = add i64 %2848, 5
  store i64 %2849, i64* %PC.i137
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2847, i64* %2850, align 8
  store %struct.Memory* %loadMem_419196, %struct.Memory** %MEMORY
  br label %block_.L_419099

block_.L_41919b:                                  ; preds = %block_.L_419099
  %loadMem_41919b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 1
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %2856 to i64*
  %2857 = load i64, i64* %PC.i135
  %2858 = add i64 %2857, 7
  store i64 %2858, i64* %PC.i135
  %2859 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_41919b, %struct.Memory** %MEMORY
  %loadMem_4191a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 1
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %RAX.i134
  %2868 = load i64, i64* %PC.i133
  %2869 = add i64 %2868, 5
  store i64 %2869, i64* %PC.i133
  %2870 = and i64 262144, %2867
  %2871 = trunc i64 %2870 to i32
  store i64 %2870, i64* %RAX.i134, align 8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2872, align 1
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2873, align 1
  %2874 = icmp eq i32 %2871, 0
  %2875 = zext i1 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2875, i8* %2876, align 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2877, align 1
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2878, align 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2879, align 1
  store %struct.Memory* %loadMem_4191a2, %struct.Memory** %MEMORY
  %loadMem_4191a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 1
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %2885 to i32*
  %2886 = load i32, i32* %EAX.i132
  %2887 = zext i32 %2886 to i64
  %2888 = load i64, i64* %PC.i131
  %2889 = add i64 %2888, 3
  store i64 %2889, i64* %PC.i131
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2890, align 1
  %2891 = and i32 %2886, 255
  %2892 = call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2895, i8* %2896, align 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2897, align 1
  %2898 = icmp eq i32 %2886, 0
  %2899 = zext i1 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2899, i8* %2900, align 1
  %2901 = lshr i32 %2886, 31
  %2902 = trunc i32 %2901 to i8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2902, i8* %2903, align 1
  %2904 = lshr i32 %2886, 31
  %2905 = xor i32 %2901, %2904
  %2906 = add i32 %2905, %2904
  %2907 = icmp eq i32 %2906, 2
  %2908 = zext i1 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2908, i8* %2909, align 1
  store %struct.Memory* %loadMem_4191a7, %struct.Memory** %MEMORY
  %loadMem_4191aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %PC.i130
  %2914 = add i64 %2913, 314
  %2915 = load i64, i64* %PC.i130
  %2916 = add i64 %2915, 6
  %2917 = load i64, i64* %PC.i130
  %2918 = add i64 %2917, 6
  store i64 %2918, i64* %PC.i130
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2920 = load i8, i8* %2919, align 1
  store i8 %2920, i8* %BRANCH_TAKEN, align 1
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2922 = icmp ne i8 %2920, 0
  %2923 = select i1 %2922, i64 %2914, i64 %2916
  store i64 %2923, i64* %2921, align 8
  store %struct.Memory* %loadMem_4191aa, %struct.Memory** %MEMORY
  %loadBr_4191aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4191aa = icmp eq i8 %loadBr_4191aa, 1
  br i1 %cmpBr_4191aa, label %block_.L_4192e4, label %block_4191b0

block_4191b0:                                     ; preds = %block_.L_41919b
  %loadMem_4191b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 11
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RDI.i129 = bitcast %union.anon* %2929 to i64*
  %2930 = load i64, i64* %PC.i128
  %2931 = add i64 %2930, 10
  store i64 %2931, i64* %PC.i128
  store i64 ptrtoint (%G__0x57ad09_type* @G__0x57ad09 to i64), i64* %RDI.i129, align 8
  store %struct.Memory* %loadMem_4191b0, %struct.Memory** %MEMORY
  %loadMem_4191ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 33
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 9
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RSI.i126 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 15
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %RBP.i127
  %2942 = sub i64 %2941, 4
  %2943 = load i64, i64* %PC.i125
  %2944 = add i64 %2943, 3
  store i64 %2944, i64* %PC.i125
  %2945 = inttoptr i64 %2942 to i32*
  %2946 = load i32, i32* %2945
  %2947 = zext i32 %2946 to i64
  store i64 %2947, i64* %RSI.i126, align 8
  store %struct.Memory* %loadMem_4191ba, %struct.Memory** %MEMORY
  %loadMem_4191bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 1
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %2954 = bitcast %union.anon* %2953 to %struct.anon.2*
  %AL.i124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2954, i32 0, i32 0
  %2955 = load i64, i64* %PC.i123
  %2956 = add i64 %2955, 2
  store i64 %2956, i64* %PC.i123
  store i8 0, i8* %AL.i124, align 1
  store %struct.Memory* %loadMem_4191bd, %struct.Memory** %MEMORY
  %loadMem1_4191bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %PC.i122
  %2961 = add i64 %2960, 232433
  %2962 = load i64, i64* %PC.i122
  %2963 = add i64 %2962, 5
  %2964 = load i64, i64* %PC.i122
  %2965 = add i64 %2964, 5
  store i64 %2965, i64* %PC.i122
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2967 = load i64, i64* %2966, align 8
  %2968 = add i64 %2967, -8
  %2969 = inttoptr i64 %2968 to i64*
  store i64 %2963, i64* %2969
  store i64 %2968, i64* %2966, align 8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2961, i64* %2970, align 8
  store %struct.Memory* %loadMem1_4191bf, %struct.Memory** %MEMORY
  %loadMem2_4191bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4191bf = load i64, i64* %3
  %call2_4191bf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_4191bf, %struct.Memory* %loadMem2_4191bf)
  store %struct.Memory* %call2_4191bf, %struct.Memory** %MEMORY
  %loadMem_4191c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 11
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RDI.i121 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i120
  %2978 = add i64 %2977, 10
  store i64 %2978, i64* %PC.i120
  store i64 ptrtoint (%G__0x57ad25_type* @G__0x57ad25 to i64), i64* %RDI.i121, align 8
  store %struct.Memory* %loadMem_4191c4, %struct.Memory** %MEMORY
  %loadMem_4191ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 1
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %2984 to i32*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 15
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %RBP.i119
  %2989 = sub i64 %2988, 60
  %2990 = load i32, i32* %EAX.i118
  %2991 = zext i32 %2990 to i64
  %2992 = load i64, i64* %PC.i117
  %2993 = add i64 %2992, 3
  store i64 %2993, i64* %PC.i117
  %2994 = inttoptr i64 %2989 to i32*
  store i32 %2990, i32* %2994
  store %struct.Memory* %loadMem_4191ce, %struct.Memory** %MEMORY
  %loadMem_4191d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 1
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %3001 = bitcast %union.anon* %3000 to %struct.anon.2*
  %AL.i116 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3001, i32 0, i32 0
  %3002 = load i64, i64* %PC.i115
  %3003 = add i64 %3002, 2
  store i64 %3003, i64* %PC.i115
  store i8 0, i8* %AL.i116, align 1
  store %struct.Memory* %loadMem_4191d1, %struct.Memory** %MEMORY
  %loadMem1_4191d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %PC.i114
  %3008 = add i64 %3007, 232413
  %3009 = load i64, i64* %PC.i114
  %3010 = add i64 %3009, 5
  %3011 = load i64, i64* %PC.i114
  %3012 = add i64 %3011, 5
  store i64 %3012, i64* %PC.i114
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3014 = load i64, i64* %3013, align 8
  %3015 = add i64 %3014, -8
  %3016 = inttoptr i64 %3015 to i64*
  store i64 %3010, i64* %3016
  store i64 %3015, i64* %3013, align 8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3008, i64* %3017, align 8
  store %struct.Memory* %loadMem1_4191d3, %struct.Memory** %MEMORY
  %loadMem2_4191d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4191d3 = load i64, i64* %3
  %call2_4191d3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_4191d3, %struct.Memory* %loadMem2_4191d3)
  store %struct.Memory* %call2_4191d3, %struct.Memory** %MEMORY
  %loadMem_4191d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 15
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RBP.i113
  %3025 = sub i64 %3024, 24
  %3026 = load i64, i64* %PC.i112
  %3027 = add i64 %3026, 7
  store i64 %3027, i64* %PC.i112
  %3028 = inttoptr i64 %3025 to i32*
  store i32 21, i32* %3028
  store %struct.Memory* %loadMem_4191d8, %struct.Memory** %MEMORY
  %loadMem_4191df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %3034 to i32*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 15
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %3037 to i64*
  %3038 = load i64, i64* %RBP.i111
  %3039 = sub i64 %3038, 64
  %3040 = load i32, i32* %EAX.i110
  %3041 = zext i32 %3040 to i64
  %3042 = load i64, i64* %PC.i109
  %3043 = add i64 %3042, 3
  store i64 %3043, i64* %PC.i109
  %3044 = inttoptr i64 %3039 to i32*
  store i32 %3040, i32* %3044
  store %struct.Memory* %loadMem_4191df, %struct.Memory** %MEMORY
  br label %block_.L_4191e2

block_.L_4191e2:                                  ; preds = %block_.L_4192d1, %block_4191b0
  %loadMem_4191e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i108
  %3052 = sub i64 %3051, 24
  %3053 = load i64, i64* %PC.i107
  %3054 = add i64 %3053, 7
  store i64 %3054, i64* %PC.i107
  %3055 = inttoptr i64 %3052 to i32*
  %3056 = load i32, i32* %3055
  %3057 = sub i32 %3056, 400
  %3058 = icmp ult i32 %3056, 400
  %3059 = zext i1 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3059, i8* %3060, align 1
  %3061 = and i32 %3057, 255
  %3062 = call i32 @llvm.ctpop.i32(i32 %3061)
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = xor i8 %3064, 1
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3065, i8* %3066, align 1
  %3067 = xor i32 %3056, 400
  %3068 = xor i32 %3067, %3057
  %3069 = lshr i32 %3068, 4
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3071, i8* %3072, align 1
  %3073 = icmp eq i32 %3057, 0
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3074, i8* %3075, align 1
  %3076 = lshr i32 %3057, 31
  %3077 = trunc i32 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3077, i8* %3078, align 1
  %3079 = lshr i32 %3056, 31
  %3080 = xor i32 %3076, %3079
  %3081 = add i32 %3080, %3079
  %3082 = icmp eq i32 %3081, 2
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3083, i8* %3084, align 1
  store %struct.Memory* %loadMem_4191e2, %struct.Memory** %MEMORY
  %loadMem_4191e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %PC.i106
  %3089 = add i64 %3088, 246
  %3090 = load i64, i64* %PC.i106
  %3091 = add i64 %3090, 6
  %3092 = load i64, i64* %PC.i106
  %3093 = add i64 %3092, 6
  store i64 %3093, i64* %PC.i106
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3095 = load i8, i8* %3094, align 1
  %3096 = icmp ne i8 %3095, 0
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3098 = load i8, i8* %3097, align 1
  %3099 = icmp ne i8 %3098, 0
  %3100 = xor i1 %3096, %3099
  %3101 = xor i1 %3100, true
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %BRANCH_TAKEN, align 1
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3104 = select i1 %3100, i64 %3091, i64 %3089
  store i64 %3104, i64* %3103, align 8
  store %struct.Memory* %loadMem_4191e9, %struct.Memory** %MEMORY
  %loadBr_4191e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4191e9 = icmp eq i8 %loadBr_4191e9, 1
  br i1 %cmpBr_4191e9, label %block_.L_4192df, label %block_4191ef

block_4191ef:                                     ; preds = %block_.L_4191e2
  %loadMem_4191ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 33
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3107 to i64*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 1
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 15
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %RBP.i105
  %3115 = sub i64 %3114, 24
  %3116 = load i64, i64* %PC.i103
  %3117 = add i64 %3116, 4
  store i64 %3117, i64* %PC.i103
  %3118 = inttoptr i64 %3115 to i32*
  %3119 = load i32, i32* %3118
  %3120 = sext i32 %3119 to i64
  store i64 %3120, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_4191ef, %struct.Memory** %MEMORY
  %loadMem_4191f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 5
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %3129 to i64*
  %3130 = load i64, i64* %RAX.i101
  %3131 = add i64 %3130, 12099168
  %3132 = load i64, i64* %PC.i100
  %3133 = add i64 %3132, 8
  store i64 %3133, i64* %PC.i100
  %3134 = inttoptr i64 %3131 to i8*
  %3135 = load i8, i8* %3134
  %3136 = zext i8 %3135 to i64
  store i64 %3136, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_4191f3, %struct.Memory** %MEMORY
  %loadMem_4191fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 5
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %ECX.i98 = bitcast %union.anon* %3142 to i32*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %3145 to i64*
  %3146 = load i32, i32* %ECX.i98
  %3147 = zext i32 %3146 to i64
  %3148 = load i64, i64* %RBP.i99
  %3149 = sub i64 %3148, 20
  %3150 = load i64, i64* %PC.i97
  %3151 = add i64 %3150, 3
  store i64 %3151, i64* %PC.i97
  %3152 = inttoptr i64 %3149 to i32*
  %3153 = load i32, i32* %3152
  %3154 = sub i32 %3146, %3153
  %3155 = icmp ult i32 %3146, %3153
  %3156 = zext i1 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3156, i8* %3157, align 1
  %3158 = and i32 %3154, 255
  %3159 = call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3162, i8* %3163, align 1
  %3164 = xor i32 %3153, %3146
  %3165 = xor i32 %3164, %3154
  %3166 = lshr i32 %3165, 4
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3168, i8* %3169, align 1
  %3170 = icmp eq i32 %3154, 0
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3171, i8* %3172, align 1
  %3173 = lshr i32 %3154, 31
  %3174 = trunc i32 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i32 %3146, 31
  %3177 = lshr i32 %3153, 31
  %3178 = xor i32 %3177, %3176
  %3179 = xor i32 %3173, %3176
  %3180 = add i32 %3179, %3178
  %3181 = icmp eq i32 %3180, 2
  %3182 = zext i1 %3181 to i8
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3182, i8* %3183, align 1
  store %struct.Memory* %loadMem_4191fb, %struct.Memory** %MEMORY
  %loadMem_4191fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %PC.i96
  %3188 = add i64 %3187, 206
  %3189 = load i64, i64* %PC.i96
  %3190 = add i64 %3189, 6
  %3191 = load i64, i64* %PC.i96
  %3192 = add i64 %3191, 6
  store i64 %3192, i64* %PC.i96
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3194 = load i8, i8* %3193, align 1
  %3195 = icmp eq i8 %3194, 0
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %BRANCH_TAKEN, align 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3198 = select i1 %3195, i64 %3188, i64 %3190
  store i64 %3198, i64* %3197, align 8
  store %struct.Memory* %loadMem_4191fe, %struct.Memory** %MEMORY
  %loadBr_4191fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4191fe = icmp eq i8 %loadBr_4191fe, 1
  br i1 %cmpBr_4191fe, label %block_.L_4192cc, label %block_419204

block_419204:                                     ; preds = %block_4191ef
  %loadMem_419204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 11
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 15
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RBP.i95
  %3209 = sub i64 %3208, 24
  %3210 = load i64, i64* %PC.i93
  %3211 = add i64 %3210, 3
  store i64 %3211, i64* %PC.i93
  %3212 = inttoptr i64 %3209 to i32*
  %3213 = load i32, i32* %3212
  %3214 = zext i32 %3213 to i64
  store i64 %3214, i64* %RDI.i94, align 8
  store %struct.Memory* %loadMem_419204, %struct.Memory** %MEMORY
  %loadMem_419207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 9
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RSI.i91 = bitcast %union.anon* %3220 to i64*
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 15
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %RBP.i92
  %3225 = sub i64 %3224, 24
  %3226 = load i64, i64* %PC.i90
  %3227 = add i64 %3226, 3
  store i64 %3227, i64* %PC.i90
  %3228 = inttoptr i64 %3225 to i32*
  %3229 = load i32, i32* %3228
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RSI.i91, align 8
  store %struct.Memory* %loadMem_419207, %struct.Memory** %MEMORY
  %loadMem1_41920a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %PC.i89
  %3235 = add i64 %3234, 454374
  %3236 = load i64, i64* %PC.i89
  %3237 = add i64 %3236, 5
  %3238 = load i64, i64* %PC.i89
  %3239 = add i64 %3238, 5
  store i64 %3239, i64* %PC.i89
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3241 = load i64, i64* %3240, align 8
  %3242 = add i64 %3241, -8
  %3243 = inttoptr i64 %3242 to i64*
  store i64 %3237, i64* %3243
  store i64 %3242, i64* %3240, align 8
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3235, i64* %3244, align 8
  store %struct.Memory* %loadMem1_41920a, %struct.Memory** %MEMORY
  %loadMem2_41920a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41920a = load i64, i64* %3
  %call2_41920a = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_41920a, %struct.Memory* %loadMem2_41920a)
  store %struct.Memory* %call2_41920a, %struct.Memory** %MEMORY
  %loadMem_41920f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 1
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %3250 to i32*
  %3251 = load i32, i32* %EAX.i88
  %3252 = zext i32 %3251 to i64
  %3253 = load i64, i64* %PC.i87
  %3254 = add i64 %3253, 3
  store i64 %3254, i64* %PC.i87
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3255, align 1
  %3256 = and i32 %3251, 255
  %3257 = call i32 @llvm.ctpop.i32(i32 %3256)
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = xor i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3260, i8* %3261, align 1
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3262, align 1
  %3263 = icmp eq i32 %3251, 0
  %3264 = zext i1 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3264, i8* %3265, align 1
  %3266 = lshr i32 %3251, 31
  %3267 = trunc i32 %3266 to i8
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3267, i8* %3268, align 1
  %3269 = lshr i32 %3251, 31
  %3270 = xor i32 %3266, %3269
  %3271 = add i32 %3270, %3269
  %3272 = icmp eq i32 %3271, 2
  %3273 = zext i1 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3273, i8* %3274, align 1
  store %struct.Memory* %loadMem_41920f, %struct.Memory** %MEMORY
  %loadMem_419212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %PC.i86
  %3279 = add i64 %3278, 186
  %3280 = load i64, i64* %PC.i86
  %3281 = add i64 %3280, 6
  %3282 = load i64, i64* %PC.i86
  %3283 = add i64 %3282, 6
  store i64 %3283, i64* %PC.i86
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3285 = load i8, i8* %3284, align 1
  store i8 %3285, i8* %BRANCH_TAKEN, align 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3287 = icmp ne i8 %3285, 0
  %3288 = select i1 %3287, i64 %3279, i64 %3281
  store i64 %3288, i64* %3286, align 8
  store %struct.Memory* %loadMem_419212, %struct.Memory** %MEMORY
  %loadBr_419212 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419212 = icmp eq i8 %loadBr_419212, 1
  br i1 %cmpBr_419212, label %block_.L_4192cc, label %block_419218

block_419218:                                     ; preds = %block_419204
  %loadMem_419218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 1
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3294 to i64*
  %3295 = load i64, i64* %PC.i84
  %3296 = add i64 %3295, 10
  store i64 %3296, i64* %PC.i84
  store i64 ptrtoint (%G__0x57ad4a_type* @G__0x57ad4a to i64), i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_419218, %struct.Memory** %MEMORY
  %loadMem_419222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 1
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 15
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3305 to i64*
  %3306 = load i64, i64* %RBP.i83
  %3307 = sub i64 %3306, 56
  %3308 = load i64, i64* %RAX.i82
  %3309 = load i64, i64* %PC.i81
  %3310 = add i64 %3309, 4
  store i64 %3310, i64* %PC.i81
  %3311 = inttoptr i64 %3307 to i64*
  store i64 %3308, i64* %3311
  store %struct.Memory* %loadMem_419222, %struct.Memory** %MEMORY
  %loadMem_419226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 15
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %RBP.i80
  %3322 = sub i64 %3321, 24
  %3323 = load i64, i64* %PC.i78
  %3324 = add i64 %3323, 4
  store i64 %3324, i64* %PC.i78
  %3325 = inttoptr i64 %3322 to i32*
  %3326 = load i32, i32* %3325
  %3327 = sext i32 %3326 to i64
  store i64 %3327, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_419226, %struct.Memory** %MEMORY
  %loadMem_41922a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 1
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %RAX.i77
  %3335 = mul i64 %3334, 4
  %3336 = add i64 %3335, 11201040
  %3337 = load i64, i64* %PC.i76
  %3338 = add i64 %3337, 8
  store i64 %3338, i64* %PC.i76
  %3339 = inttoptr i64 %3336 to i32*
  %3340 = load i32, i32* %3339
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3341, align 1
  %3342 = and i32 %3340, 255
  %3343 = call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3346, i8* %3347, align 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3348, align 1
  %3349 = icmp eq i32 %3340, 0
  %3350 = zext i1 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3350, i8* %3351, align 1
  %3352 = lshr i32 %3340, 31
  %3353 = trunc i32 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3353, i8* %3354, align 1
  %3355 = lshr i32 %3340, 31
  %3356 = xor i32 %3352, %3355
  %3357 = add i32 %3356, %3355
  %3358 = icmp eq i32 %3357, 2
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3359, i8* %3360, align 1
  store %struct.Memory* %loadMem_41922a, %struct.Memory** %MEMORY
  %loadMem_419232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %PC.i75
  %3365 = add i64 %3364, 25
  %3366 = load i64, i64* %PC.i75
  %3367 = add i64 %3366, 6
  %3368 = load i64, i64* %PC.i75
  %3369 = add i64 %3368, 6
  store i64 %3369, i64* %PC.i75
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3371 = load i8, i8* %3370, align 1
  %3372 = icmp eq i8 %3371, 0
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %BRANCH_TAKEN, align 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3375 = select i1 %3372, i64 %3365, i64 %3367
  store i64 %3375, i64* %3374, align 8
  store %struct.Memory* %loadMem_419232, %struct.Memory** %MEMORY
  %loadBr_419232 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419232 = icmp eq i8 %loadBr_419232, 1
  br i1 %cmpBr_419232, label %block_.L_41924b, label %block_419238

block_419238:                                     ; preds = %block_419218
  %loadMem_419238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 1
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %PC.i73
  %3383 = add i64 %3382, 10
  store i64 %3383, i64* %PC.i73
  store i64 ptrtoint (%G__0x57f4e7_type* @G__0x57f4e7 to i64), i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_419238, %struct.Memory** %MEMORY
  %loadMem_419242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 1
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 15
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3392 to i64*
  %3393 = load i64, i64* %RBP.i72
  %3394 = sub i64 %3393, 56
  %3395 = load i64, i64* %RAX.i71
  %3396 = load i64, i64* %PC.i70
  %3397 = add i64 %3396, 4
  store i64 %3397, i64* %PC.i70
  %3398 = inttoptr i64 %3394 to i64*
  store i64 %3395, i64* %3398
  store %struct.Memory* %loadMem_419242, %struct.Memory** %MEMORY
  %loadMem_419246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %PC.i69
  %3403 = add i64 %3402, 84
  %3404 = load i64, i64* %PC.i69
  %3405 = add i64 %3404, 5
  store i64 %3405, i64* %PC.i69
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3403, i64* %3406, align 8
  store %struct.Memory* %loadMem_419246, %struct.Memory** %MEMORY
  br label %block_.L_41929a

block_.L_41924b:                                  ; preds = %block_419218
  %loadMem_41924b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 33
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3409 to i64*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 1
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 15
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RBP.i68
  %3417 = sub i64 %3416, 24
  %3418 = load i64, i64* %PC.i66
  %3419 = add i64 %3418, 4
  store i64 %3419, i64* %PC.i66
  %3420 = inttoptr i64 %3417 to i32*
  %3421 = load i32, i32* %3420
  %3422 = sext i32 %3421 to i64
  store i64 %3422, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_41924b, %struct.Memory** %MEMORY
  %loadMem_41924f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 1
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %RAX.i65
  %3430 = mul i64 %3429, 4
  %3431 = add i64 %3430, 11201040
  %3432 = load i64, i64* %PC.i64
  %3433 = add i64 %3432, 8
  store i64 %3433, i64* %PC.i64
  %3434 = inttoptr i64 %3431 to i32*
  %3435 = load i32, i32* %3434
  %3436 = sub i32 %3435, 2
  %3437 = icmp ult i32 %3435, 2
  %3438 = zext i1 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3438, i8* %3439, align 1
  %3440 = and i32 %3436, 255
  %3441 = call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3444, i8* %3445, align 1
  %3446 = xor i32 %3435, 2
  %3447 = xor i32 %3446, %3436
  %3448 = lshr i32 %3447, 4
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3450, i8* %3451, align 1
  %3452 = icmp eq i32 %3436, 0
  %3453 = zext i1 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3453, i8* %3454, align 1
  %3455 = lshr i32 %3436, 31
  %3456 = trunc i32 %3455 to i8
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3456, i8* %3457, align 1
  %3458 = lshr i32 %3435, 31
  %3459 = xor i32 %3455, %3458
  %3460 = add i32 %3459, %3458
  %3461 = icmp eq i32 %3460, 2
  %3462 = zext i1 %3461 to i8
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3462, i8* %3463, align 1
  store %struct.Memory* %loadMem_41924f, %struct.Memory** %MEMORY
  %loadMem_419257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 33
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3466 to i64*
  %3467 = load i64, i64* %PC.i63
  %3468 = add i64 %3467, 25
  %3469 = load i64, i64* %PC.i63
  %3470 = add i64 %3469, 6
  %3471 = load i64, i64* %PC.i63
  %3472 = add i64 %3471, 6
  store i64 %3472, i64* %PC.i63
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3474 = load i8, i8* %3473, align 1
  %3475 = icmp eq i8 %3474, 0
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %BRANCH_TAKEN, align 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3478 = select i1 %3475, i64 %3468, i64 %3470
  store i64 %3478, i64* %3477, align 8
  store %struct.Memory* %loadMem_419257, %struct.Memory** %MEMORY
  %loadBr_419257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419257 = icmp eq i8 %loadBr_419257, 1
  br i1 %cmpBr_419257, label %block_.L_419270, label %block_41925d

block_41925d:                                     ; preds = %block_.L_41924b
  %loadMem_41925d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 1
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %PC.i61
  %3486 = add i64 %3485, 10
  store i64 %3486, i64* %PC.i61
  store i64 ptrtoint (%G__0x57ad65_type* @G__0x57ad65 to i64), i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_41925d, %struct.Memory** %MEMORY
  %loadMem_419267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 1
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 15
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RBP.i60
  %3497 = sub i64 %3496, 56
  %3498 = load i64, i64* %RAX.i59
  %3499 = load i64, i64* %PC.i58
  %3500 = add i64 %3499, 4
  store i64 %3500, i64* %PC.i58
  %3501 = inttoptr i64 %3497 to i64*
  store i64 %3498, i64* %3501
  store %struct.Memory* %loadMem_419267, %struct.Memory** %MEMORY
  %loadMem_41926b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %PC.i57
  %3506 = add i64 %3505, 42
  %3507 = load i64, i64* %PC.i57
  %3508 = add i64 %3507, 5
  store i64 %3508, i64* %PC.i57
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3506, i64* %3509, align 8
  store %struct.Memory* %loadMem_41926b, %struct.Memory** %MEMORY
  br label %block_.L_419295

block_.L_419270:                                  ; preds = %block_.L_41924b
  %loadMem_419270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 1
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 15
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %RBP.i56
  %3520 = sub i64 %3519, 24
  %3521 = load i64, i64* %PC.i54
  %3522 = add i64 %3521, 4
  store i64 %3522, i64* %PC.i54
  %3523 = inttoptr i64 %3520 to i32*
  %3524 = load i32, i32* %3523
  %3525 = sext i32 %3524 to i64
  store i64 %3525, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_419270, %struct.Memory** %MEMORY
  %loadMem_419274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 1
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RAX.i53
  %3533 = mul i64 %3532, 4
  %3534 = add i64 %3533, 11201040
  %3535 = load i64, i64* %PC.i52
  %3536 = add i64 %3535, 8
  store i64 %3536, i64* %PC.i52
  %3537 = inttoptr i64 %3534 to i32*
  %3538 = load i32, i32* %3537
  %3539 = sub i32 %3538, 10
  %3540 = icmp ult i32 %3538, 10
  %3541 = zext i1 %3540 to i8
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3541, i8* %3542, align 1
  %3543 = and i32 %3539, 255
  %3544 = call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3547, i8* %3548, align 1
  %3549 = xor i32 %3538, 10
  %3550 = xor i32 %3549, %3539
  %3551 = lshr i32 %3550, 4
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3553, i8* %3554, align 1
  %3555 = icmp eq i32 %3539, 0
  %3556 = zext i1 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3556, i8* %3557, align 1
  %3558 = lshr i32 %3539, 31
  %3559 = trunc i32 %3558 to i8
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3559, i8* %3560, align 1
  %3561 = lshr i32 %3538, 31
  %3562 = xor i32 %3558, %3561
  %3563 = add i32 %3562, %3561
  %3564 = icmp eq i32 %3563, 2
  %3565 = zext i1 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3565, i8* %3566, align 1
  store %struct.Memory* %loadMem_419274, %struct.Memory** %MEMORY
  %loadMem_41927c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %PC.i51
  %3571 = add i64 %3570, 20
  %3572 = load i64, i64* %PC.i51
  %3573 = add i64 %3572, 6
  %3574 = load i64, i64* %PC.i51
  %3575 = add i64 %3574, 6
  store i64 %3575, i64* %PC.i51
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3577 = load i8, i8* %3576, align 1
  %3578 = icmp eq i8 %3577, 0
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %BRANCH_TAKEN, align 1
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3581 = select i1 %3578, i64 %3571, i64 %3573
  store i64 %3581, i64* %3580, align 8
  store %struct.Memory* %loadMem_41927c, %struct.Memory** %MEMORY
  %loadBr_41927c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41927c = icmp eq i8 %loadBr_41927c, 1
  br i1 %cmpBr_41927c, label %block_.L_419290, label %block_419282

block_419282:                                     ; preds = %block_.L_419270
  %loadMem_419282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 1
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %PC.i49
  %3589 = add i64 %3588, 10
  store i64 %3589, i64* %PC.i49
  store i64 ptrtoint (%G__0x57ad6e_type* @G__0x57ad6e to i64), i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_419282, %struct.Memory** %MEMORY
  %loadMem_41928c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i48
  %3600 = sub i64 %3599, 56
  %3601 = load i64, i64* %RAX.i47
  %3602 = load i64, i64* %PC.i46
  %3603 = add i64 %3602, 4
  store i64 %3603, i64* %PC.i46
  %3604 = inttoptr i64 %3600 to i64*
  store i64 %3601, i64* %3604
  store %struct.Memory* %loadMem_41928c, %struct.Memory** %MEMORY
  br label %block_.L_419290

block_.L_419290:                                  ; preds = %block_419282, %block_.L_419270
  %loadMem_419290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3607 to i64*
  %3608 = load i64, i64* %PC.i45
  %3609 = add i64 %3608, 5
  %3610 = load i64, i64* %PC.i45
  %3611 = add i64 %3610, 5
  store i64 %3611, i64* %PC.i45
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3609, i64* %3612, align 8
  store %struct.Memory* %loadMem_419290, %struct.Memory** %MEMORY
  br label %block_.L_419295

block_.L_419295:                                  ; preds = %block_.L_419290, %block_41925d
  %loadMem_419295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %PC.i44
  %3617 = add i64 %3616, 5
  %3618 = load i64, i64* %PC.i44
  %3619 = add i64 %3618, 5
  store i64 %3619, i64* %PC.i44
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3617, i64* %3620, align 8
  store %struct.Memory* %loadMem_419295, %struct.Memory** %MEMORY
  br label %block_.L_41929a

block_.L_41929a:                                  ; preds = %block_.L_419295, %block_419238
  %loadMem_41929a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 1
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 15
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %RBP.i43
  %3631 = sub i64 %3630, 24
  %3632 = load i64, i64* %PC.i41
  %3633 = add i64 %3632, 4
  store i64 %3633, i64* %PC.i41
  %3634 = inttoptr i64 %3631 to i32*
  %3635 = load i32, i32* %3634
  %3636 = sext i32 %3635 to i64
  store i64 %3636, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_41929a, %struct.Memory** %MEMORY
  %loadMem_41929e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 1
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %3642 to i64*
  %3643 = load i64, i64* %RAX.i40
  %3644 = mul i64 %3643, 4
  %3645 = add i64 %3644, 11201040
  %3646 = load i64, i64* %PC.i39
  %3647 = add i64 %3646, 8
  store i64 %3647, i64* %PC.i39
  %3648 = inttoptr i64 %3645 to i32*
  %3649 = load i32, i32* %3648
  %3650 = sub i32 %3649, 1
  %3651 = icmp ult i32 %3649, 1
  %3652 = zext i1 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3652, i8* %3653, align 1
  %3654 = and i32 %3650, 255
  %3655 = call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3658, i8* %3659, align 1
  %3660 = xor i32 %3649, 1
  %3661 = xor i32 %3660, %3650
  %3662 = lshr i32 %3661, 4
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3664, i8* %3665, align 1
  %3666 = icmp eq i32 %3650, 0
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3667, i8* %3668, align 1
  %3669 = lshr i32 %3650, 31
  %3670 = trunc i32 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3670, i8* %3671, align 1
  %3672 = lshr i32 %3649, 31
  %3673 = xor i32 %3669, %3672
  %3674 = add i32 %3673, %3672
  %3675 = icmp eq i32 %3674, 2
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3676, i8* %3677, align 1
  store %struct.Memory* %loadMem_41929e, %struct.Memory** %MEMORY
  %loadMem_4192a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %PC.i38
  %3682 = add i64 %3681, 33
  %3683 = load i64, i64* %PC.i38
  %3684 = add i64 %3683, 6
  %3685 = load i64, i64* %PC.i38
  %3686 = add i64 %3685, 6
  store i64 %3686, i64* %PC.i38
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3688 = load i8, i8* %3687, align 1
  store i8 %3688, i8* %BRANCH_TAKEN, align 1
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3690 = icmp ne i8 %3688, 0
  %3691 = select i1 %3690, i64 %3682, i64 %3684
  store i64 %3691, i64* %3689, align 8
  store %struct.Memory* %loadMem_4192a6, %struct.Memory** %MEMORY
  %loadBr_4192a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4192a6 = icmp eq i8 %loadBr_4192a6, 1
  br i1 %cmpBr_4192a6, label %block_.L_4192c7, label %block_4192ac

block_4192ac:                                     ; preds = %block_.L_41929a
  %loadMem_4192ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 33
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3694 to i64*
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 11
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3697 to i64*
  %3698 = load i64, i64* %PC.i37
  %3699 = add i64 %3698, 10
  store i64 %3699, i64* %PC.i37
  store i64 ptrtoint (%G__0x57ad7c_type* @G__0x57ad7c to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4192ac, %struct.Memory** %MEMORY
  %loadMem_4192b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 9
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i36
  %3710 = sub i64 %3709, 24
  %3711 = load i64, i64* %PC.i35
  %3712 = add i64 %3711, 3
  store i64 %3712, i64* %PC.i35
  %3713 = inttoptr i64 %3710 to i32*
  %3714 = load i32, i32* %3713
  %3715 = zext i32 %3714 to i64
  store i64 %3715, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4192b6, %struct.Memory** %MEMORY
  %loadMem_4192b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 7
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 15
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %RBP.i34
  %3726 = sub i64 %3725, 56
  %3727 = load i64, i64* %PC.i33
  %3728 = add i64 %3727, 4
  store i64 %3728, i64* %PC.i33
  %3729 = inttoptr i64 %3726 to i64*
  %3730 = load i64, i64* %3729
  store i64 %3730, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4192b9, %struct.Memory** %MEMORY
  %loadMem_4192bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 1
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %3737 = bitcast %union.anon* %3736 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3737, i32 0, i32 0
  %3738 = load i64, i64* %PC.i32
  %3739 = add i64 %3738, 2
  store i64 %3739, i64* %PC.i32
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4192bd, %struct.Memory** %MEMORY
  %loadMem1_4192bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %PC.i31
  %3744 = add i64 %3743, 232177
  %3745 = load i64, i64* %PC.i31
  %3746 = add i64 %3745, 5
  %3747 = load i64, i64* %PC.i31
  %3748 = add i64 %3747, 5
  store i64 %3748, i64* %PC.i31
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3750 = load i64, i64* %3749, align 8
  %3751 = add i64 %3750, -8
  %3752 = inttoptr i64 %3751 to i64*
  store i64 %3746, i64* %3752
  store i64 %3751, i64* %3749, align 8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3744, i64* %3753, align 8
  store %struct.Memory* %loadMem1_4192bf, %struct.Memory** %MEMORY
  %loadMem2_4192bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4192bf = load i64, i64* %3
  %call2_4192bf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_4192bf, %struct.Memory* %loadMem2_4192bf)
  store %struct.Memory* %call2_4192bf, %struct.Memory** %MEMORY
  %loadMem_4192c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 1
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %3759 to i32*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 15
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RBP.i30
  %3764 = sub i64 %3763, 68
  %3765 = load i32, i32* %EAX.i29
  %3766 = zext i32 %3765 to i64
  %3767 = load i64, i64* %PC.i28
  %3768 = add i64 %3767, 3
  store i64 %3768, i64* %PC.i28
  %3769 = inttoptr i64 %3764 to i32*
  store i32 %3765, i32* %3769
  store %struct.Memory* %loadMem_4192c4, %struct.Memory** %MEMORY
  br label %block_.L_4192c7

block_.L_4192c7:                                  ; preds = %block_4192ac, %block_.L_41929a
  %loadMem_4192c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %PC.i27
  %3774 = add i64 %3773, 5
  %3775 = load i64, i64* %PC.i27
  %3776 = add i64 %3775, 5
  store i64 %3776, i64* %PC.i27
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3774, i64* %3777, align 8
  store %struct.Memory* %loadMem_4192c7, %struct.Memory** %MEMORY
  br label %block_.L_4192cc

block_.L_4192cc:                                  ; preds = %block_.L_4192c7, %block_419204, %block_4191ef
  %loadMem_4192cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %PC.i26
  %3782 = add i64 %3781, 5
  %3783 = load i64, i64* %PC.i26
  %3784 = add i64 %3783, 5
  store i64 %3784, i64* %PC.i26
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3782, i64* %3785, align 8
  store %struct.Memory* %loadMem_4192cc, %struct.Memory** %MEMORY
  br label %block_.L_4192d1

block_.L_4192d1:                                  ; preds = %block_.L_4192cc
  %loadMem_4192d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 33
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 1
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 15
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %3794 to i64*
  %3795 = load i64, i64* %RBP.i25
  %3796 = sub i64 %3795, 24
  %3797 = load i64, i64* %PC.i23
  %3798 = add i64 %3797, 3
  store i64 %3798, i64* %PC.i23
  %3799 = inttoptr i64 %3796 to i32*
  %3800 = load i32, i32* %3799
  %3801 = zext i32 %3800 to i64
  store i64 %3801, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_4192d1, %struct.Memory** %MEMORY
  %loadMem_4192d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 33
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 1
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %3807 to i64*
  %3808 = load i64, i64* %RAX.i22
  %3809 = load i64, i64* %PC.i21
  %3810 = add i64 %3809, 3
  store i64 %3810, i64* %PC.i21
  %3811 = trunc i64 %3808 to i32
  %3812 = add i32 1, %3811
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RAX.i22, align 8
  %3814 = icmp ult i32 %3812, %3811
  %3815 = icmp ult i32 %3812, 1
  %3816 = or i1 %3814, %3815
  %3817 = zext i1 %3816 to i8
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3817, i8* %3818, align 1
  %3819 = and i32 %3812, 255
  %3820 = call i32 @llvm.ctpop.i32(i32 %3819)
  %3821 = trunc i32 %3820 to i8
  %3822 = and i8 %3821, 1
  %3823 = xor i8 %3822, 1
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3823, i8* %3824, align 1
  %3825 = xor i64 1, %3808
  %3826 = trunc i64 %3825 to i32
  %3827 = xor i32 %3826, %3812
  %3828 = lshr i32 %3827, 4
  %3829 = trunc i32 %3828 to i8
  %3830 = and i8 %3829, 1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3830, i8* %3831, align 1
  %3832 = icmp eq i32 %3812, 0
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3833, i8* %3834, align 1
  %3835 = lshr i32 %3812, 31
  %3836 = trunc i32 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3836, i8* %3837, align 1
  %3838 = lshr i32 %3811, 31
  %3839 = xor i32 %3835, %3838
  %3840 = add i32 %3839, %3835
  %3841 = icmp eq i32 %3840, 2
  %3842 = zext i1 %3841 to i8
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3842, i8* %3843, align 1
  store %struct.Memory* %loadMem_4192d4, %struct.Memory** %MEMORY
  %loadMem_4192d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 1
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3849 to i32*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 15
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i20
  %3854 = sub i64 %3853, 24
  %3855 = load i32, i32* %EAX.i
  %3856 = zext i32 %3855 to i64
  %3857 = load i64, i64* %PC.i19
  %3858 = add i64 %3857, 3
  store i64 %3858, i64* %PC.i19
  %3859 = inttoptr i64 %3854 to i32*
  store i32 %3855, i32* %3859
  store %struct.Memory* %loadMem_4192d7, %struct.Memory** %MEMORY
  %loadMem_4192da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3862 to i64*
  %3863 = load i64, i64* %PC.i18
  %3864 = add i64 %3863, -248
  %3865 = load i64, i64* %PC.i18
  %3866 = add i64 %3865, 5
  store i64 %3866, i64* %PC.i18
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3864, i64* %3867, align 8
  store %struct.Memory* %loadMem_4192da, %struct.Memory** %MEMORY
  br label %block_.L_4191e2

block_.L_4192df:                                  ; preds = %block_.L_4191e2
  %loadMem_4192df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %PC.i17
  %3872 = add i64 %3871, 5
  %3873 = load i64, i64* %PC.i17
  %3874 = add i64 %3873, 5
  store i64 %3874, i64* %PC.i17
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3872, i64* %3875, align 8
  store %struct.Memory* %loadMem_4192df, %struct.Memory** %MEMORY
  br label %block_.L_4192e4

block_.L_4192e4:                                  ; preds = %block_.L_4192df, %block_.L_41919b
  %loadMem_4192e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 1
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 15
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %RBP.i16
  %3886 = sub i64 %3885, 32
  %3887 = load i64, i64* %PC.i14
  %3888 = add i64 %3887, 4
  store i64 %3888, i64* %PC.i14
  %3889 = inttoptr i64 %3886 to i64*
  %3890 = load i64, i64* %3889
  store i64 %3890, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_4192e4, %struct.Memory** %MEMORY
  %loadMem_4192e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 1
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %RAX.i
  %3898 = load i64, i64* %PC.i13
  %3899 = add i64 %3898, 8
  store i64 %3899, i64* %PC.i13
  store i64 %3897, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_4192e8, %struct.Memory** %MEMORY
  %loadMem_4192f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 5
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RCX.i11 = bitcast %union.anon* %3905 to i64*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 15
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %RBP.i12
  %3910 = sub i64 %3909, 36
  %3911 = load i64, i64* %PC.i10
  %3912 = add i64 %3911, 3
  store i64 %3912, i64* %PC.i10
  %3913 = inttoptr i64 %3910 to i32*
  %3914 = load i32, i32* %3913
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RCX.i11, align 8
  store %struct.Memory* %loadMem_4192f0, %struct.Memory** %MEMORY
  %loadMem_4192f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 33
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3918 to i64*
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 5
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3921 to i32*
  %3922 = load i32, i32* %ECX.i9
  %3923 = zext i32 %3922 to i64
  %3924 = load i64, i64* %PC.i8
  %3925 = add i64 %3924, 7
  store i64 %3925, i64* %PC.i8
  store i32 %3922, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_4192f3, %struct.Memory** %MEMORY
  %loadMem_4192fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 5
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 15
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %RBP.i7
  %3936 = sub i64 %3935, 40
  %3937 = load i64, i64* %PC.i6
  %3938 = add i64 %3937, 3
  store i64 %3938, i64* %PC.i6
  %3939 = inttoptr i64 %3936 to i32*
  %3940 = load i32, i32* %3939
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4192fa, %struct.Memory** %MEMORY
  %loadMem_4192fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 5
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3947 to i32*
  %3948 = load i32, i32* %ECX.i
  %3949 = zext i32 %3948 to i64
  %3950 = load i64, i64* %PC.i5
  %3951 = add i64 %3950, 7
  store i64 %3951, i64* %PC.i5
  store i32 %3948, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_4192fd, %struct.Memory** %MEMORY
  %loadMem_419304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 13
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3957 to i64*
  %3958 = load i64, i64* %RSP.i
  %3959 = load i64, i64* %PC.i4
  %3960 = add i64 %3959, 4
  store i64 %3960, i64* %PC.i4
  %3961 = add i64 80, %3958
  store i64 %3961, i64* %RSP.i, align 8
  %3962 = icmp ult i64 %3961, %3958
  %3963 = icmp ult i64 %3961, 80
  %3964 = or i1 %3962, %3963
  %3965 = zext i1 %3964 to i8
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3965, i8* %3966, align 1
  %3967 = trunc i64 %3961 to i32
  %3968 = and i32 %3967, 255
  %3969 = call i32 @llvm.ctpop.i32(i32 %3968)
  %3970 = trunc i32 %3969 to i8
  %3971 = and i8 %3970, 1
  %3972 = xor i8 %3971, 1
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3972, i8* %3973, align 1
  %3974 = xor i64 80, %3958
  %3975 = xor i64 %3974, %3961
  %3976 = lshr i64 %3975, 4
  %3977 = trunc i64 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3978, i8* %3979, align 1
  %3980 = icmp eq i64 %3961, 0
  %3981 = zext i1 %3980 to i8
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3981, i8* %3982, align 1
  %3983 = lshr i64 %3961, 63
  %3984 = trunc i64 %3983 to i8
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3984, i8* %3985, align 1
  %3986 = lshr i64 %3958, 63
  %3987 = xor i64 %3983, %3986
  %3988 = add i64 %3987, %3983
  %3989 = icmp eq i64 %3988, 2
  %3990 = zext i1 %3989 to i8
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3990, i8* %3991, align 1
  store %struct.Memory* %loadMem_419304, %struct.Memory** %MEMORY
  %loadMem_419308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 15
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %PC.i2
  %3999 = add i64 %3998, 1
  store i64 %3999, i64* %PC.i2
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4001 = load i64, i64* %4000, align 8
  %4002 = add i64 %4001, 8
  %4003 = inttoptr i64 %4001 to i64*
  %4004 = load i64, i64* %4003
  store i64 %4004, i64* %RBP.i3, align 8
  store i64 %4002, i64* %4000, align 8
  store %struct.Memory* %loadMem_419308, %struct.Memory** %MEMORY
  %loadMem_419309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4007 to i64*
  %4008 = load i64, i64* %PC.i1
  %4009 = add i64 %4008, 1
  store i64 %4009, i64* %PC.i1
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4012 = load i64, i64* %4011, align 8
  %4013 = inttoptr i64 %4012 to i64*
  %4014 = load i64, i64* %4013
  store i64 %4014, i64* %4010, align 8
  %4015 = add i64 %4012, 8
  store i64 %4015, i64* %4011, align 8
  store %struct.Memory* %loadMem_419309, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_419309
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

define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %17, %19
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %19, %17
  %32 = xor i32 %31, %20
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %20, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %17, 31
  %44 = lshr i32 %19, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
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

define %struct.Memory* @routine_movq_0xab0ef8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xab0eec___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
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

define %struct.Memory* @routine_je_.L_418ef0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_419092(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_jne_.L_419056(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_418f5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = zext i8 %18 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i8 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i8 %18, 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i8 %18, 7
  %33 = xor i8 %30, %32
  %34 = add i8 %33, %32
  %35 = icmp eq i8 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_418f4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 1, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_418f59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 0, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419051(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_418f91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41904c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_418fc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x2__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 2, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419047(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 100
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

define %struct.Memory* @routine_je_.L_419033(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 180
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

define %struct.Memory* @routine_je_.L_41901f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41902e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_419042(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41907f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_je_.L_41907a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x3__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 3, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419084(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_418ef7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_41919b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_419188(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_cmpl__0x2__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x1__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 1
  %17 = icmp ult i32 %15, 1
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 1
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.owl_substantial(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x15__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_419183(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_419170(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0xa__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 10, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419175(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_41912b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_419188(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41918d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_419099(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x40000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = and i64 262144, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_4192e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57ad09___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad09_type* @G__0x57ad09 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.gprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57ad25___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad25_type* @G__0x57ad25 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jge_.L_4192df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_4192cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4192cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57ad4a___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad4a_type* @G__0x57ad4a to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %15, 31
  %31 = xor i32 %27, %30
  %32 = add i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41924b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f4e7___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f4e7_type* @G__0x57f4e7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41929a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 2
  %17 = icmp ult i32 %15, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 2
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_419270(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57ad65___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad65_type* @G__0x57ad65 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_419295(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xa__0xaaea10___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11201040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 10
  %17 = icmp ult i32 %15, 10
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 10
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_419290(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57ad6e___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad6e_type* @G__0x57ad6e to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4192c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57ad7c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad7c_type* @G__0x57ad7c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4192cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4192d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4191e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4192e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %9, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
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

define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
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
