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
%G_0x8a05b8_type = type <{ [4 x i8] }>
%G_0x8a05bc_type = type <{ [4 x i8] }>
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
@G_0x8a05b8 = global %G_0x8a05b8_type zeroinitializer
@G_0x8a05bc = global %G_0x8a05bc_type zeroinitializer

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
define %struct.Memory* @setup_attackers(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41bfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41bfa0, %struct.Memory** %MEMORY
  %loadMem_41bfa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i309
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i309
  store i64 %26, i64* %RBP.i310, align 8
  store %struct.Memory* %loadMem_41bfa1, %struct.Memory** %MEMORY
  %loadMem_41bfa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i363
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i362
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i362
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_41bfa4, %struct.Memory** %MEMORY
  %loadMem_41bfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RDI.i612 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %PC.i611
  %52 = add i64 %51, 7
  store i64 %52, i64* %PC.i611
  %53 = load i32, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*)
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RDI.i612, align 8
  store %struct.Memory* %loadMem_41bfa7, %struct.Memory** %MEMORY
  %loadMem_41bfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 11
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %EDI.i609 = bitcast %union.anon* %60 to i32*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 15
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %63 to i64*
  %64 = load i64, i64* %RBP.i610
  %65 = sub i64 %64, 20
  %66 = load i32, i32* %EDI.i609
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %PC.i608
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC.i608
  %70 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %70
  store %struct.Memory* %loadMem_41bfae, %struct.Memory** %MEMORY
  %loadMem_41bfb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 33
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %73 to i64*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 11
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %76 to i64*
  %77 = load i64, i64* %PC.i607
  %78 = add i64 %77, 7
  store i64 %78, i64* %PC.i607
  %79 = load i32, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*)
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41bfb1, %struct.Memory** %MEMORY
  %loadMem_41bfb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 11
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %EDI.i605 = bitcast %union.anon* %86 to i32*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 15
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %RBP.i606
  %91 = sub i64 %90, 24
  %92 = load i32, i32* %EDI.i605
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC.i604
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC.i604
  %96 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %96
  store %struct.Memory* %loadMem_41bfb8, %struct.Memory** %MEMORY
  %loadMem_41bfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RBP.i603
  %104 = sub i64 %103, 16
  %105 = load i64, i64* %PC.i602
  %106 = add i64 %105, 7
  store i64 %106, i64* %PC.i602
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107
  store %struct.Memory* %loadMem_41bfbb, %struct.Memory** %MEMORY
  br label %block_.L_41bfc2

block_.L_41bfc2:                                  ; preds = %block_.L_41c12a, %entry
  %loadMem_41bfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i601
  %115 = sub i64 %114, 16
  %116 = load i64, i64* %PC.i600
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i600
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118
  %120 = sub i32 %119, 4
  %121 = icmp ult i32 %119, 4
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %122, i8* %123, align 1
  %124 = and i32 %120, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1
  %130 = xor i32 %119, 4
  %131 = xor i32 %130, %120
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1
  %136 = icmp eq i32 %120, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i32 %120, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i32 %119, 31
  %143 = xor i32 %139, %142
  %144 = add i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1
  store %struct.Memory* %loadMem_41bfc2, %struct.Memory** %MEMORY
  %loadMem_41bfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i599
  %152 = add i64 %151, 370
  %153 = load i64, i64* %PC.i599
  %154 = add i64 %153, 6
  %155 = load i64, i64* %PC.i599
  %156 = add i64 %155, 6
  store i64 %156, i64* %PC.i599
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %158 = load i8, i8* %157, align 1
  %159 = icmp ne i8 %158, 0
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  %163 = xor i1 %159, %162
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %BRANCH_TAKEN, align 1
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %167 = select i1 %163, i64 %154, i64 %152
  store i64 %167, i64* %166, align 8
  store %struct.Memory* %loadMem_41bfc6, %struct.Memory** %MEMORY
  %loadBr_41bfc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bfc6 = icmp eq i8 %loadBr_41bfc6, 1
  br i1 %cmpBr_41bfc6, label %block_.L_41c138, label %block_41bfcc

block_41bfcc:                                     ; preds = %block_.L_41bfc2
  %loadMem_41bfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i598
  %178 = sub i64 %177, 4
  %179 = load i64, i64* %PC.i596
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC.i596
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_41bfcc, %struct.Memory** %MEMORY
  %loadMem_41bfcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i595
  %194 = sub i64 %193, 16
  %195 = load i64, i64* %PC.i593
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC.i593
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %RCX.i594, align 8
  store %struct.Memory* %loadMem_41bfcf, %struct.Memory** %MEMORY
  %loadMem_41bfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RAX.i591
  %210 = load i64, i64* %RCX.i592
  %211 = mul i64 %210, 4
  %212 = add i64 %211, 4357536
  %213 = load i64, i64* %PC.i590
  %214 = add i64 %213, 7
  store i64 %214, i64* %PC.i590
  %215 = trunc i64 %209 to i32
  %216 = inttoptr i64 %212 to i32*
  %217 = load i32, i32* %216
  %218 = add i32 %217, %215
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX.i591, align 8
  %220 = icmp ult i32 %218, %215
  %221 = icmp ult i32 %218, %217
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %223, i8* %224, align 1
  %225 = and i32 %218, 255
  %226 = call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %229, i8* %230, align 1
  %231 = xor i32 %217, %215
  %232 = xor i32 %231, %218
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %235, i8* %236, align 1
  %237 = icmp eq i32 %218, 0
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %238, i8* %239, align 1
  %240 = lshr i32 %218, 31
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %241, i8* %242, align 1
  %243 = lshr i32 %215, 31
  %244 = lshr i32 %217, 31
  %245 = xor i32 %240, %243
  %246 = xor i32 %240, %244
  %247 = add i32 %245, %246
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %249, i8* %250, align 1
  store %struct.Memory* %loadMem_41bfd3, %struct.Memory** %MEMORY
  %loadMem_41bfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %EAX.i588 = bitcast %union.anon* %256 to i32*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 15
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RBP.i589
  %261 = sub i64 %260, 8
  %262 = load i32, i32* %EAX.i588
  %263 = zext i32 %262 to i64
  %264 = load i64, i64* %PC.i587
  %265 = add i64 %264, 3
  store i64 %265, i64* %PC.i587
  %266 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %266
  store %struct.Memory* %loadMem_41bfda, %struct.Memory** %MEMORY
  %loadMem_41bfdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 15
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RBP.i586
  %277 = sub i64 %276, 8
  %278 = load i64, i64* %PC.i584
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC.i584
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_41bfdd, %struct.Memory** %MEMORY
  %loadMem_41bfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %291 to i64*
  %292 = load i64, i64* %RCX.i583
  %293 = mul i64 %292, 4
  %294 = add i64 %293, 8807744
  %295 = load i64, i64* %PC.i581
  %296 = add i64 %295, 7
  store i64 %296, i64* %PC.i581
  %297 = inttoptr i64 %294 to i32*
  %298 = load i32, i32* %297
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_41bfe1, %struct.Memory** %MEMORY
  %loadMem_41bfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %EAX.i579 = bitcast %union.anon* %305 to i32*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 15
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %308 to i64*
  %309 = load i64, i64* %RBP.i580
  %310 = sub i64 %309, 12
  %311 = load i32, i32* %EAX.i579
  %312 = zext i32 %311 to i64
  %313 = load i64, i64* %PC.i578
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i578
  %315 = inttoptr i64 %310 to i32*
  store i32 %311, i32* %315
  store %struct.Memory* %loadMem_41bfe8, %struct.Memory** %MEMORY
  %loadMem_41bfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 15
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %RBP.i577
  %323 = sub i64 %322, 12
  %324 = load i64, i64* %PC.i576
  %325 = add i64 %324, 4
  store i64 %325, i64* %PC.i576
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326
  %328 = sub i32 %327, 5
  %329 = icmp ult i32 %327, 5
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %330, i8* %331, align 1
  %332 = and i32 %328, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %336, i8* %337, align 1
  %338 = xor i32 %327, 5
  %339 = xor i32 %338, %328
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1
  %344 = icmp eq i32 %328, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1
  %347 = lshr i32 %328, 31
  %348 = trunc i32 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1
  %350 = lshr i32 %327, 31
  %351 = xor i32 %347, %350
  %352 = add i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %354, i8* %355, align 1
  store %struct.Memory* %loadMem_41bfeb, %struct.Memory** %MEMORY
  %loadMem_41bfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %PC.i575
  %360 = add i64 %359, 48
  %361 = load i64, i64* %PC.i575
  %362 = add i64 %361, 6
  %363 = load i64, i64* %PC.i575
  %364 = add i64 %363, 6
  store i64 %364, i64* %PC.i575
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %366 = load i8, i8* %365, align 1
  %367 = icmp eq i8 %366, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %BRANCH_TAKEN, align 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %370 = select i1 %367, i64 %360, i64 %362
  store i64 %370, i64* %369, align 8
  store %struct.Memory* %loadMem_41bfef, %struct.Memory** %MEMORY
  %loadBr_41bfef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bfef = icmp eq i8 %loadBr_41bfef, 1
  br i1 %cmpBr_41bfef, label %block_.L_41c01f, label %block_41bff5

block_41bff5:                                     ; preds = %block_41bfcc
  %loadMem_41bff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 15
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %RBP.i574
  %381 = sub i64 %380, 12
  %382 = load i64, i64* %PC.i572
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC.i572
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_41bff5, %struct.Memory** %MEMORY
  %loadMem_41bff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 5
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RBP.i571
  %397 = sub i64 %396, 20
  %398 = load i64, i64* %PC.i569
  %399 = add i64 %398, 4
  store i64 %399, i64* %PC.i569
  %400 = inttoptr i64 %397 to i32*
  %401 = load i32, i32* %400
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_41bff8, %struct.Memory** %MEMORY
  %loadMem_41bffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RCX.i568
  %413 = mul i64 %412, 8
  %414 = add i64 %413, 8940160
  %415 = load i32, i32* %EAX.i567
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %PC.i566
  %418 = add i64 %417, 7
  store i64 %418, i64* %PC.i566
  %419 = inttoptr i64 %414 to i32*
  store i32 %415, i32* %419
  store %struct.Memory* %loadMem_41bffc, %struct.Memory** %MEMORY
  %loadMem_41c003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 15
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RBP.i565
  %430 = sub i64 %429, 8
  %431 = load i64, i64* %PC.i563
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC.i563
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_41c003, %struct.Memory** %MEMORY
  %loadMem_41c006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i562
  %446 = sub i64 %445, 20
  %447 = load i64, i64* %PC.i560
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC.i560
  %449 = inttoptr i64 %446 to i32*
  %450 = load i32, i32* %449
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %RCX.i561, align 8
  store %struct.Memory* %loadMem_41c006, %struct.Memory** %MEMORY
  %loadMem_41c00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %EAX.i558 = bitcast %union.anon* %457 to i32*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %RCX.i559
  %462 = mul i64 %461, 8
  %463 = add i64 %462, 8940164
  %464 = load i32, i32* %EAX.i558
  %465 = zext i32 %464 to i64
  %466 = load i64, i64* %PC.i557
  %467 = add i64 %466, 7
  store i64 %467, i64* %PC.i557
  %468 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %468
  store %struct.Memory* %loadMem_41c00a, %struct.Memory** %MEMORY
  %loadMem_41c011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 15
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RBP.i556
  %479 = sub i64 %478, 20
  %480 = load i64, i64* %PC.i554
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC.i554
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_41c011, %struct.Memory** %MEMORY
  %loadMem_41c014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %RAX.i553
  %492 = load i64, i64* %PC.i552
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC.i552
  %494 = trunc i64 %491 to i32
  %495 = add i32 1, %494
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX.i553, align 8
  %497 = icmp ult i32 %495, %494
  %498 = icmp ult i32 %495, 1
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %500, i8* %501, align 1
  %502 = and i32 %495, 255
  %503 = call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %506, i8* %507, align 1
  %508 = xor i64 1, %491
  %509 = trunc i64 %508 to i32
  %510 = xor i32 %509, %495
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %513, i8* %514, align 1
  %515 = icmp eq i32 %495, 0
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %516, i8* %517, align 1
  %518 = lshr i32 %495, 31
  %519 = trunc i32 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %519, i8* %520, align 1
  %521 = lshr i32 %494, 31
  %522 = xor i32 %518, %521
  %523 = add i32 %522, %518
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %525, i8* %526, align 1
  store %struct.Memory* %loadMem_41c014, %struct.Memory** %MEMORY
  %loadMem_41c017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %EAX.i550 = bitcast %union.anon* %532 to i32*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i551
  %537 = sub i64 %536, 20
  %538 = load i32, i32* %EAX.i550
  %539 = zext i32 %538 to i64
  %540 = load i64, i64* %PC.i549
  %541 = add i64 %540, 3
  store i64 %541, i64* %PC.i549
  %542 = inttoptr i64 %537 to i32*
  store i32 %538, i32* %542
  store %struct.Memory* %loadMem_41c017, %struct.Memory** %MEMORY
  %loadMem_41c01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %PC.i548
  %547 = add i64 %546, 286
  %548 = load i64, i64* %PC.i548
  %549 = add i64 %548, 5
  store i64 %549, i64* %PC.i548
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %547, i64* %550, align 8
  store %struct.Memory* %loadMem_41c01a, %struct.Memory** %MEMORY
  br label %block_.L_41c138

block_.L_41c01f:                                  ; preds = %block_41bfcc
  %loadMem_41c01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 15
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RBP.i547
  %558 = sub i64 %557, 12
  %559 = load i64, i64* %PC.i546
  %560 = add i64 %559, 4
  store i64 %560, i64* %PC.i546
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561
  %563 = sub i32 %562, 6
  %564 = icmp ult i32 %562, 6
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %565, i8* %566, align 1
  %567 = and i32 %563, 255
  %568 = call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %571, i8* %572, align 1
  %573 = xor i32 %562, 6
  %574 = xor i32 %573, %563
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %577, i8* %578, align 1
  %579 = icmp eq i32 %563, 0
  %580 = zext i1 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %580, i8* %581, align 1
  %582 = lshr i32 %563, 31
  %583 = trunc i32 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %583, i8* %584, align 1
  %585 = lshr i32 %562, 31
  %586 = xor i32 %582, %585
  %587 = add i32 %586, %585
  %588 = icmp eq i32 %587, 2
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %589, i8* %590, align 1
  store %struct.Memory* %loadMem_41c01f, %struct.Memory** %MEMORY
  %loadMem_41c023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %PC.i545
  %595 = add i64 %594, 48
  %596 = load i64, i64* %PC.i545
  %597 = add i64 %596, 6
  %598 = load i64, i64* %PC.i545
  %599 = add i64 %598, 6
  store i64 %599, i64* %PC.i545
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %601 = load i8, i8* %600, align 1
  %602 = icmp eq i8 %601, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %BRANCH_TAKEN, align 1
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %605 = select i1 %602, i64 %595, i64 %597
  store i64 %605, i64* %604, align 8
  store %struct.Memory* %loadMem_41c023, %struct.Memory** %MEMORY
  %loadBr_41c023 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c023 = icmp eq i8 %loadBr_41c023, 1
  br i1 %cmpBr_41c023, label %block_.L_41c053, label %block_41c029

block_41c029:                                     ; preds = %block_.L_41c01f
  %loadMem_41c029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RBP.i544
  %616 = sub i64 %615, 12
  %617 = load i64, i64* %PC.i542
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC.i542
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_41c029, %struct.Memory** %MEMORY
  %loadMem_41c02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 15
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RBP.i541
  %632 = sub i64 %631, 24
  %633 = load i64, i64* %PC.i539
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC.i539
  %635 = inttoptr i64 %632 to i32*
  %636 = load i32, i32* %635
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %RCX.i540, align 8
  store %struct.Memory* %loadMem_41c02c, %struct.Memory** %MEMORY
  %loadMem_41c030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 33
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %EAX.i537 = bitcast %union.anon* %643 to i32*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 5
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RCX.i538
  %648 = mul i64 %647, 8
  %649 = add i64 %648, 8940288
  %650 = load i32, i32* %EAX.i537
  %651 = zext i32 %650 to i64
  %652 = load i64, i64* %PC.i536
  %653 = add i64 %652, 7
  store i64 %653, i64* %PC.i536
  %654 = inttoptr i64 %649 to i32*
  store i32 %650, i32* %654
  store %struct.Memory* %loadMem_41c030, %struct.Memory** %MEMORY
  %loadMem_41c037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i535
  %665 = sub i64 %664, 8
  %666 = load i64, i64* %PC.i533
  %667 = add i64 %666, 3
  store i64 %667, i64* %PC.i533
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_41c037, %struct.Memory** %MEMORY
  %loadMem_41c03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 5
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 15
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RBP.i532
  %681 = sub i64 %680, 24
  %682 = load i64, i64* %PC.i530
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i530
  %684 = inttoptr i64 %681 to i32*
  %685 = load i32, i32* %684
  %686 = sext i32 %685 to i64
  store i64 %686, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_41c03a, %struct.Memory** %MEMORY
  %loadMem_41c03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %EAX.i528 = bitcast %union.anon* %692 to i32*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 5
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RCX.i529
  %697 = mul i64 %696, 8
  %698 = add i64 %697, 8940292
  %699 = load i32, i32* %EAX.i528
  %700 = zext i32 %699 to i64
  %701 = load i64, i64* %PC.i527
  %702 = add i64 %701, 7
  store i64 %702, i64* %PC.i527
  %703 = inttoptr i64 %698 to i32*
  store i32 %699, i32* %703
  store %struct.Memory* %loadMem_41c03e, %struct.Memory** %MEMORY
  %loadMem_41c045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 1
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 15
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %RBP.i526
  %714 = sub i64 %713, 24
  %715 = load i64, i64* %PC.i524
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC.i524
  %717 = inttoptr i64 %714 to i32*
  %718 = load i32, i32* %717
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_41c045, %struct.Memory** %MEMORY
  %loadMem_41c048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %RAX.i523
  %727 = load i64, i64* %PC.i522
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC.i522
  %729 = trunc i64 %726 to i32
  %730 = add i32 1, %729
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RAX.i523, align 8
  %732 = icmp ult i32 %730, %729
  %733 = icmp ult i32 %730, 1
  %734 = or i1 %732, %733
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %735, i8* %736, align 1
  %737 = and i32 %730, 255
  %738 = call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %741, i8* %742, align 1
  %743 = xor i64 1, %726
  %744 = trunc i64 %743 to i32
  %745 = xor i32 %744, %730
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %748, i8* %749, align 1
  %750 = icmp eq i32 %730, 0
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %751, i8* %752, align 1
  %753 = lshr i32 %730, 31
  %754 = trunc i32 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %754, i8* %755, align 1
  %756 = lshr i32 %729, 31
  %757 = xor i32 %753, %756
  %758 = add i32 %757, %753
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %760, i8* %761, align 1
  store %struct.Memory* %loadMem_41c048, %struct.Memory** %MEMORY
  %loadMem_41c04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %EAX.i520 = bitcast %union.anon* %767 to i32*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 15
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %770 to i64*
  %771 = load i64, i64* %RBP.i521
  %772 = sub i64 %771, 24
  %773 = load i32, i32* %EAX.i520
  %774 = zext i32 %773 to i64
  %775 = load i64, i64* %PC.i519
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i519
  %777 = inttoptr i64 %772 to i32*
  store i32 %773, i32* %777
  store %struct.Memory* %loadMem_41c04b, %struct.Memory** %MEMORY
  %loadMem_41c04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %PC.i518
  %782 = add i64 %781, 234
  %783 = load i64, i64* %PC.i518
  %784 = add i64 %783, 5
  store i64 %784, i64* %PC.i518
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %782, i64* %785, align 8
  store %struct.Memory* %loadMem_41c04e, %struct.Memory** %MEMORY
  br label %block_.L_41c138

block_.L_41c053:                                  ; preds = %block_.L_41c01f
  %loadMem_41c053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %PC.i517
  %790 = add i64 %789, 5
  %791 = load i64, i64* %PC.i517
  %792 = add i64 %791, 5
  store i64 %792, i64* %PC.i517
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %790, i64* %793, align 8
  store %struct.Memory* %loadMem_41c053, %struct.Memory** %MEMORY
  br label %block_.L_41c058

block_.L_41c058:                                  ; preds = %block_.L_41c0f7, %block_.L_41c053
  %loadMem_41c058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 15
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %RBP.i516
  %801 = sub i64 %800, 12
  %802 = load i64, i64* %PC.i515
  %803 = add i64 %802, 4
  store i64 %803, i64* %PC.i515
  %804 = inttoptr i64 %801 to i32*
  %805 = load i32, i32* %804
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %806, align 1
  %807 = and i32 %805, 255
  %808 = call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %811, i8* %812, align 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %813, align 1
  %814 = icmp eq i32 %805, 0
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %815, i8* %816, align 1
  %817 = lshr i32 %805, 31
  %818 = trunc i32 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %818, i8* %819, align 1
  %820 = lshr i32 %805, 31
  %821 = xor i32 %817, %820
  %822 = add i32 %821, %820
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %824, i8* %825, align 1
  store %struct.Memory* %loadMem_41c058, %struct.Memory** %MEMORY
  %loadMem_41c05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %PC.i514
  %830 = add i64 %829, 191
  %831 = load i64, i64* %PC.i514
  %832 = add i64 %831, 6
  %833 = load i64, i64* %PC.i514
  %834 = add i64 %833, 6
  store i64 %834, i64* %PC.i514
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %836 = load i8, i8* %835, align 1
  store i8 %836, i8* %BRANCH_TAKEN, align 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %838 = icmp ne i8 %836, 0
  %839 = select i1 %838, i64 %830, i64 %832
  store i64 %839, i64* %837, align 8
  store %struct.Memory* %loadMem_41c05c, %struct.Memory** %MEMORY
  %loadBr_41c05c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c05c = icmp eq i8 %loadBr_41c05c, 1
  br i1 %cmpBr_41c05c, label %block_.L_41c11b, label %block_41c062

block_41c062:                                     ; preds = %block_.L_41c058
  %loadMem_41c062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 33
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 15
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %845 to i64*
  %846 = load i64, i64* %RBP.i513
  %847 = sub i64 %846, 12
  %848 = load i64, i64* %PC.i512
  %849 = add i64 %848, 4
  store i64 %849, i64* %PC.i512
  %850 = inttoptr i64 %847 to i32*
  %851 = load i32, i32* %850
  %852 = sub i32 %851, 7
  %853 = icmp ult i32 %851, 7
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %854, i8* %855, align 1
  %856 = and i32 %852, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %861, align 1
  %862 = xor i32 %851, 7
  %863 = xor i32 %862, %852
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %866, i8* %867, align 1
  %868 = icmp eq i32 %852, 0
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %869, i8* %870, align 1
  %871 = lshr i32 %852, 31
  %872 = trunc i32 %871 to i8
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %872, i8* %873, align 1
  %874 = lshr i32 %851, 31
  %875 = xor i32 %871, %874
  %876 = add i32 %875, %874
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %878, i8* %879, align 1
  store %struct.Memory* %loadMem_41c062, %struct.Memory** %MEMORY
  %loadMem_41c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %PC.i511
  %884 = add i64 %883, 16
  %885 = load i64, i64* %PC.i511
  %886 = add i64 %885, 6
  %887 = load i64, i64* %PC.i511
  %888 = add i64 %887, 6
  store i64 %888, i64* %PC.i511
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %890 = load i8, i8* %889, align 1
  store i8 %890, i8* %BRANCH_TAKEN, align 1
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %892 = icmp ne i8 %890, 0
  %893 = select i1 %892, i64 %884, i64 %886
  store i64 %893, i64* %891, align 8
  store %struct.Memory* %loadMem_41c066, %struct.Memory** %MEMORY
  %loadBr_41c066 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c066 = icmp eq i8 %loadBr_41c066, 1
  br i1 %cmpBr_41c066, label %block_.L_41c076, label %block_41c06c

block_41c06c:                                     ; preds = %block_41c062
  %loadMem_41c06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 15
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %RBP.i510
  %901 = sub i64 %900, 12
  %902 = load i64, i64* %PC.i509
  %903 = add i64 %902, 4
  store i64 %903, i64* %PC.i509
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904
  %906 = sub i32 %905, 9
  %907 = icmp ult i32 %905, 9
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %908, i8* %909, align 1
  %910 = and i32 %906, 255
  %911 = call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %914, i8* %915, align 1
  %916 = xor i32 %905, 9
  %917 = xor i32 %916, %906
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %920, i8* %921, align 1
  %922 = icmp eq i32 %906, 0
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %923, i8* %924, align 1
  %925 = lshr i32 %906, 31
  %926 = trunc i32 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %926, i8* %927, align 1
  %928 = lshr i32 %905, 31
  %929 = xor i32 %925, %928
  %930 = add i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %932, i8* %933, align 1
  store %struct.Memory* %loadMem_41c06c, %struct.Memory** %MEMORY
  %loadMem_41c070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %PC.i508
  %938 = add i64 %937, 48
  %939 = load i64, i64* %PC.i508
  %940 = add i64 %939, 6
  %941 = load i64, i64* %PC.i508
  %942 = add i64 %941, 6
  store i64 %942, i64* %PC.i508
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %944 = load i8, i8* %943, align 1
  %945 = icmp eq i8 %944, 0
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %BRANCH_TAKEN, align 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %948 = select i1 %945, i64 %938, i64 %940
  store i64 %948, i64* %947, align 8
  store %struct.Memory* %loadMem_41c070, %struct.Memory** %MEMORY
  %loadBr_41c070 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c070 = icmp eq i8 %loadBr_41c070, 1
  br i1 %cmpBr_41c070, label %block_.L_41c0a0, label %block_.L_41c076

block_.L_41c076:                                  ; preds = %block_41c06c, %block_41c062
  %loadMem_41c076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 1
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 15
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RBP.i507
  %959 = sub i64 %958, 12
  %960 = load i64, i64* %PC.i505
  %961 = add i64 %960, 3
  store i64 %961, i64* %PC.i505
  %962 = inttoptr i64 %959 to i32*
  %963 = load i32, i32* %962
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX.i506, align 8
  store %struct.Memory* %loadMem_41c076, %struct.Memory** %MEMORY
  %loadMem_41c079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 5
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 15
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RBP.i504
  %975 = sub i64 %974, 20
  %976 = load i64, i64* %PC.i502
  %977 = add i64 %976, 4
  store i64 %977, i64* %PC.i502
  %978 = inttoptr i64 %975 to i32*
  %979 = load i32, i32* %978
  %980 = sext i32 %979 to i64
  store i64 %980, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_41c079, %struct.Memory** %MEMORY
  %loadMem_41c07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %986 to i32*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 5
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RCX.i501
  %991 = mul i64 %990, 8
  %992 = add i64 %991, 8940160
  %993 = load i32, i32* %EAX.i500
  %994 = zext i32 %993 to i64
  %995 = load i64, i64* %PC.i499
  %996 = add i64 %995, 7
  store i64 %996, i64* %PC.i499
  %997 = inttoptr i64 %992 to i32*
  store i32 %993, i32* %997
  store %struct.Memory* %loadMem_41c07d, %struct.Memory** %MEMORY
  %loadMem_41c084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 15
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %RBP.i498
  %1008 = sub i64 %1007, 8
  %1009 = load i64, i64* %PC.i496
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i496
  %1011 = inttoptr i64 %1008 to i32*
  %1012 = load i32, i32* %1011
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_41c084, %struct.Memory** %MEMORY
  %loadMem_41c087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 5
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %1022 to i64*
  %1023 = load i64, i64* %RBP.i495
  %1024 = sub i64 %1023, 20
  %1025 = load i64, i64* %PC.i493
  %1026 = add i64 %1025, 4
  store i64 %1026, i64* %PC.i493
  %1027 = inttoptr i64 %1024 to i32*
  %1028 = load i32, i32* %1027
  %1029 = sext i32 %1028 to i64
  store i64 %1029, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_41c087, %struct.Memory** %MEMORY
  %loadMem_41c08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 1
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %EAX.i491 = bitcast %union.anon* %1035 to i32*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 5
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RCX.i492
  %1040 = mul i64 %1039, 8
  %1041 = add i64 %1040, 8940164
  %1042 = load i32, i32* %EAX.i491
  %1043 = zext i32 %1042 to i64
  %1044 = load i64, i64* %PC.i490
  %1045 = add i64 %1044, 7
  store i64 %1045, i64* %PC.i490
  %1046 = inttoptr i64 %1041 to i32*
  store i32 %1042, i32* %1046
  store %struct.Memory* %loadMem_41c08b, %struct.Memory** %MEMORY
  %loadMem_41c092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 1
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 15
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %RBP.i489
  %1057 = sub i64 %1056, 20
  %1058 = load i64, i64* %PC.i487
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC.i487
  %1060 = inttoptr i64 %1057 to i32*
  %1061 = load i32, i32* %1060
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_41c092, %struct.Memory** %MEMORY
  %loadMem_41c095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 1
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %1068 to i64*
  %1069 = load i64, i64* %RAX.i486
  %1070 = load i64, i64* %PC.i485
  %1071 = add i64 %1070, 3
  store i64 %1071, i64* %PC.i485
  %1072 = trunc i64 %1069 to i32
  %1073 = add i32 1, %1072
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RAX.i486, align 8
  %1075 = icmp ult i32 %1073, %1072
  %1076 = icmp ult i32 %1073, 1
  %1077 = or i1 %1075, %1076
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1078, i8* %1079, align 1
  %1080 = and i32 %1073, 255
  %1081 = call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1084, i8* %1085, align 1
  %1086 = xor i64 1, %1069
  %1087 = trunc i64 %1086 to i32
  %1088 = xor i32 %1087, %1073
  %1089 = lshr i32 %1088, 4
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1091, i8* %1092, align 1
  %1093 = icmp eq i32 %1073, 0
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1094, i8* %1095, align 1
  %1096 = lshr i32 %1073, 31
  %1097 = trunc i32 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1097, i8* %1098, align 1
  %1099 = lshr i32 %1072, 31
  %1100 = xor i32 %1096, %1099
  %1101 = add i32 %1100, %1096
  %1102 = icmp eq i32 %1101, 2
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1103, i8* %1104, align 1
  store %struct.Memory* %loadMem_41c095, %struct.Memory** %MEMORY
  %loadMem_41c098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 1
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %1110 to i32*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 15
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RBP.i484
  %1115 = sub i64 %1114, 20
  %1116 = load i32, i32* %EAX.i483
  %1117 = zext i32 %1116 to i64
  %1118 = load i64, i64* %PC.i482
  %1119 = add i64 %1118, 3
  store i64 %1119, i64* %PC.i482
  %1120 = inttoptr i64 %1115 to i32*
  store i32 %1116, i32* %1120
  store %struct.Memory* %loadMem_41c098, %struct.Memory** %MEMORY
  %loadMem_41c09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %PC.i481
  %1125 = add i64 %1124, 128
  %1126 = load i64, i64* %PC.i481
  %1127 = add i64 %1126, 5
  store i64 %1127, i64* %PC.i481
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1125, i64* %1128, align 8
  store %struct.Memory* %loadMem_41c09b, %struct.Memory** %MEMORY
  br label %block_.L_41c11b

block_.L_41c0a0:                                  ; preds = %block_41c06c
  %loadMem_41c0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 15
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %RBP.i480
  %1136 = sub i64 %1135, 12
  %1137 = load i64, i64* %PC.i479
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %PC.i479
  %1139 = inttoptr i64 %1136 to i32*
  %1140 = load i32, i32* %1139
  %1141 = sub i32 %1140, 8
  %1142 = icmp ult i32 %1140, 8
  %1143 = zext i1 %1142 to i8
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1143, i8* %1144, align 1
  %1145 = and i32 %1141, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1149, i8* %1150, align 1
  %1151 = xor i32 %1140, 8
  %1152 = xor i32 %1151, %1141
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1155, i8* %1156, align 1
  %1157 = icmp eq i32 %1141, 0
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1158, i8* %1159, align 1
  %1160 = lshr i32 %1141, 31
  %1161 = trunc i32 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1161, i8* %1162, align 1
  %1163 = lshr i32 %1140, 31
  %1164 = xor i32 %1160, %1163
  %1165 = add i32 %1164, %1163
  %1166 = icmp eq i32 %1165, 2
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1167, i8* %1168, align 1
  store %struct.Memory* %loadMem_41c0a0, %struct.Memory** %MEMORY
  %loadMem_41c0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %PC.i478
  %1173 = add i64 %1172, 16
  %1174 = load i64, i64* %PC.i478
  %1175 = add i64 %1174, 6
  %1176 = load i64, i64* %PC.i478
  %1177 = add i64 %1176, 6
  store i64 %1177, i64* %PC.i478
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1179 = load i8, i8* %1178, align 1
  store i8 %1179, i8* %BRANCH_TAKEN, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1181 = icmp ne i8 %1179, 0
  %1182 = select i1 %1181, i64 %1173, i64 %1175
  store i64 %1182, i64* %1180, align 8
  store %struct.Memory* %loadMem_41c0a4, %struct.Memory** %MEMORY
  %loadBr_41c0a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c0a4 = icmp eq i8 %loadBr_41c0a4, 1
  br i1 %cmpBr_41c0a4, label %block_.L_41c0b4, label %block_41c0aa

block_41c0aa:                                     ; preds = %block_.L_41c0a0
  %loadMem_41c0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 15
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %1188 to i64*
  %1189 = load i64, i64* %RBP.i477
  %1190 = sub i64 %1189, 12
  %1191 = load i64, i64* %PC.i476
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %PC.i476
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sub i32 %1194, 10
  %1196 = icmp ult i32 %1194, 10
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1198, align 1
  %1199 = and i32 %1195, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1
  %1205 = xor i32 %1194, 10
  %1206 = xor i32 %1205, %1195
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1209, i8* %1210, align 1
  %1211 = icmp eq i32 %1195, 0
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1212, i8* %1213, align 1
  %1214 = lshr i32 %1195, 31
  %1215 = trunc i32 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i32 %1194, 31
  %1218 = xor i32 %1214, %1217
  %1219 = add i32 %1218, %1217
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1221, i8* %1222, align 1
  store %struct.Memory* %loadMem_41c0aa, %struct.Memory** %MEMORY
  %loadMem_41c0ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %PC.i475
  %1227 = add i64 %1226, 48
  %1228 = load i64, i64* %PC.i475
  %1229 = add i64 %1228, 6
  %1230 = load i64, i64* %PC.i475
  %1231 = add i64 %1230, 6
  store i64 %1231, i64* %PC.i475
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1233 = load i8, i8* %1232, align 1
  %1234 = icmp eq i8 %1233, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %BRANCH_TAKEN, align 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1237 = select i1 %1234, i64 %1227, i64 %1229
  store i64 %1237, i64* %1236, align 8
  store %struct.Memory* %loadMem_41c0ae, %struct.Memory** %MEMORY
  %loadBr_41c0ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c0ae = icmp eq i8 %loadBr_41c0ae, 1
  br i1 %cmpBr_41c0ae, label %block_.L_41c0de, label %block_.L_41c0b4

block_.L_41c0b4:                                  ; preds = %block_41c0aa, %block_.L_41c0a0
  %loadMem_41c0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 15
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %RBP.i474
  %1248 = sub i64 %1247, 12
  %1249 = load i64, i64* %PC.i472
  %1250 = add i64 %1249, 3
  store i64 %1250, i64* %PC.i472
  %1251 = inttoptr i64 %1248 to i32*
  %1252 = load i32, i32* %1251
  %1253 = zext i32 %1252 to i64
  store i64 %1253, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_41c0b4, %struct.Memory** %MEMORY
  %loadMem_41c0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 5
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i471
  %1264 = sub i64 %1263, 24
  %1265 = load i64, i64* %PC.i469
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i469
  %1267 = inttoptr i64 %1264 to i32*
  %1268 = load i32, i32* %1267
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_41c0b7, %struct.Memory** %MEMORY
  %loadMem_41c0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %1275 to i32*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 5
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RCX.i468
  %1280 = mul i64 %1279, 8
  %1281 = add i64 %1280, 8940288
  %1282 = load i32, i32* %EAX.i467
  %1283 = zext i32 %1282 to i64
  %1284 = load i64, i64* %PC.i466
  %1285 = add i64 %1284, 7
  store i64 %1285, i64* %PC.i466
  %1286 = inttoptr i64 %1281 to i32*
  store i32 %1282, i32* %1286
  store %struct.Memory* %loadMem_41c0bb, %struct.Memory** %MEMORY
  %loadMem_41c0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 15
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %RBP.i465
  %1297 = sub i64 %1296, 8
  %1298 = load i64, i64* %PC.i463
  %1299 = add i64 %1298, 3
  store i64 %1299, i64* %PC.i463
  %1300 = inttoptr i64 %1297 to i32*
  %1301 = load i32, i32* %1300
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_41c0c2, %struct.Memory** %MEMORY
  %loadMem_41c0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 5
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 15
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RBP.i462
  %1313 = sub i64 %1312, 24
  %1314 = load i64, i64* %PC.i460
  %1315 = add i64 %1314, 4
  store i64 %1315, i64* %PC.i460
  %1316 = inttoptr i64 %1313 to i32*
  %1317 = load i32, i32* %1316
  %1318 = sext i32 %1317 to i64
  store i64 %1318, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_41c0c5, %struct.Memory** %MEMORY
  %loadMem_41c0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 33
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1321 to i64*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 1
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %1324 to i32*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 5
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %1327 to i64*
  %1328 = load i64, i64* %RCX.i459
  %1329 = mul i64 %1328, 8
  %1330 = add i64 %1329, 8940292
  %1331 = load i32, i32* %EAX.i458
  %1332 = zext i32 %1331 to i64
  %1333 = load i64, i64* %PC.i457
  %1334 = add i64 %1333, 7
  store i64 %1334, i64* %PC.i457
  %1335 = inttoptr i64 %1330 to i32*
  store i32 %1331, i32* %1335
  store %struct.Memory* %loadMem_41c0c9, %struct.Memory** %MEMORY
  %loadMem_41c0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 1
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 15
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %RBP.i456
  %1346 = sub i64 %1345, 24
  %1347 = load i64, i64* %PC.i454
  %1348 = add i64 %1347, 3
  store i64 %1348, i64* %PC.i454
  %1349 = inttoptr i64 %1346 to i32*
  %1350 = load i32, i32* %1349
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_41c0d0, %struct.Memory** %MEMORY
  %loadMem_41c0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RAX.i453
  %1359 = load i64, i64* %PC.i452
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC.i452
  %1361 = trunc i64 %1358 to i32
  %1362 = add i32 1, %1361
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i453, align 8
  %1364 = icmp ult i32 %1362, %1361
  %1365 = icmp ult i32 %1362, 1
  %1366 = or i1 %1364, %1365
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1367, i8* %1368, align 1
  %1369 = and i32 %1362, 255
  %1370 = call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1373, i8* %1374, align 1
  %1375 = xor i64 1, %1358
  %1376 = trunc i64 %1375 to i32
  %1377 = xor i32 %1376, %1362
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1380, i8* %1381, align 1
  %1382 = icmp eq i32 %1362, 0
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1383, i8* %1384, align 1
  %1385 = lshr i32 %1362, 31
  %1386 = trunc i32 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1386, i8* %1387, align 1
  %1388 = lshr i32 %1361, 31
  %1389 = xor i32 %1385, %1388
  %1390 = add i32 %1389, %1385
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1392, i8* %1393, align 1
  store %struct.Memory* %loadMem_41c0d3, %struct.Memory** %MEMORY
  %loadMem_41c0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %1399 to i32*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i451
  %1404 = sub i64 %1403, 24
  %1405 = load i32, i32* %EAX.i450
  %1406 = zext i32 %1405 to i64
  %1407 = load i64, i64* %PC.i449
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC.i449
  %1409 = inttoptr i64 %1404 to i32*
  store i32 %1405, i32* %1409
  store %struct.Memory* %loadMem_41c0d6, %struct.Memory** %MEMORY
  %loadMem_41c0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1412 to i64*
  %1413 = load i64, i64* %PC.i448
  %1414 = add i64 %1413, 66
  %1415 = load i64, i64* %PC.i448
  %1416 = add i64 %1415, 5
  store i64 %1416, i64* %PC.i448
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1414, i64* %1417, align 8
  store %struct.Memory* %loadMem_41c0d9, %struct.Memory** %MEMORY
  br label %block_.L_41c11b

block_.L_41c0de:                                  ; preds = %block_41c0aa
  %loadMem_41c0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 15
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %RBP.i447
  %1425 = sub i64 %1424, 12
  %1426 = load i64, i64* %PC.i446
  %1427 = add i64 %1426, 4
  store i64 %1427, i64* %PC.i446
  %1428 = inttoptr i64 %1425 to i32*
  %1429 = load i32, i32* %1428
  %1430 = sub i32 %1429, 13
  %1431 = icmp ult i32 %1429, 13
  %1432 = zext i1 %1431 to i8
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1432, i8* %1433, align 1
  %1434 = and i32 %1430, 255
  %1435 = call i32 @llvm.ctpop.i32(i32 %1434)
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = xor i8 %1437, 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1438, i8* %1439, align 1
  %1440 = xor i32 %1429, 13
  %1441 = xor i32 %1440, %1430
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1444, i8* %1445, align 1
  %1446 = icmp eq i32 %1430, 0
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1447, i8* %1448, align 1
  %1449 = lshr i32 %1430, 31
  %1450 = trunc i32 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1450, i8* %1451, align 1
  %1452 = lshr i32 %1429, 31
  %1453 = xor i32 %1449, %1452
  %1454 = add i32 %1453, %1452
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1456, i8* %1457, align 1
  store %struct.Memory* %loadMem_41c0de, %struct.Memory** %MEMORY
  %loadMem_41c0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1460 to i64*
  %1461 = load i64, i64* %PC.i445
  %1462 = add i64 %1461, 11
  %1463 = load i64, i64* %PC.i445
  %1464 = add i64 %1463, 6
  %1465 = load i64, i64* %PC.i445
  %1466 = add i64 %1465, 6
  store i64 %1466, i64* %PC.i445
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1468 = load i8, i8* %1467, align 1
  store i8 %1468, i8* %BRANCH_TAKEN, align 1
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1470 = icmp ne i8 %1468, 0
  %1471 = select i1 %1470, i64 %1462, i64 %1464
  store i64 %1471, i64* %1469, align 8
  store %struct.Memory* %loadMem_41c0e2, %struct.Memory** %MEMORY
  %loadBr_41c0e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c0e2 = icmp eq i8 %loadBr_41c0e2, 1
  br i1 %cmpBr_41c0e2, label %block_.L_41c0ed, label %block_41c0e8

block_41c0e8:                                     ; preds = %block_.L_41c0de
  %loadMem_41c0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %PC.i444
  %1476 = add i64 %1475, 51
  %1477 = load i64, i64* %PC.i444
  %1478 = add i64 %1477, 5
  store i64 %1478, i64* %PC.i444
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1476, i64* %1479, align 8
  store %struct.Memory* %loadMem_41c0e8, %struct.Memory** %MEMORY
  br label %block_.L_41c11b

block_.L_41c0ed:                                  ; preds = %block_.L_41c0de
  %loadMem_41c0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %PC.i443
  %1484 = add i64 %1483, 5
  %1485 = load i64, i64* %PC.i443
  %1486 = add i64 %1485, 5
  store i64 %1486, i64* %PC.i443
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1484, i64* %1487, align 8
  store %struct.Memory* %loadMem_41c0ed, %struct.Memory** %MEMORY
  br label %block_.L_41c0f2

block_.L_41c0f2:                                  ; preds = %block_.L_41c0ed
  %loadMem_41c0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 33
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1490 to i64*
  %1491 = load i64, i64* %PC.i442
  %1492 = add i64 %1491, 5
  %1493 = load i64, i64* %PC.i442
  %1494 = add i64 %1493, 5
  store i64 %1494, i64* %PC.i442
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1492, i64* %1495, align 8
  store %struct.Memory* %loadMem_41c0f2, %struct.Memory** %MEMORY
  br label %block_.L_41c0f7

block_.L_41c0f7:                                  ; preds = %block_.L_41c0f2
  %loadMem_41c0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RBP.i441
  %1506 = sub i64 %1505, 16
  %1507 = load i64, i64* %PC.i439
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC.i439
  %1509 = inttoptr i64 %1506 to i32*
  %1510 = load i32, i32* %1509
  %1511 = sext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_41c0f7, %struct.Memory** %MEMORY
  %loadMem_41c0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 33
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 1
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %1517 to i64*
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 5
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %1520 to i64*
  %1521 = load i64, i64* %RAX.i437
  %1522 = mul i64 %1521, 4
  %1523 = add i64 %1522, 4357536
  %1524 = load i64, i64* %PC.i436
  %1525 = add i64 %1524, 7
  store i64 %1525, i64* %PC.i436
  %1526 = inttoptr i64 %1523 to i32*
  %1527 = load i32, i32* %1526
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_41c0fb, %struct.Memory** %MEMORY
  %loadMem_41c102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 5
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RCX.i434
  %1539 = load i64, i64* %RBP.i435
  %1540 = sub i64 %1539, 8
  %1541 = load i64, i64* %PC.i433
  %1542 = add i64 %1541, 3
  store i64 %1542, i64* %PC.i433
  %1543 = trunc i64 %1538 to i32
  %1544 = inttoptr i64 %1540 to i32*
  %1545 = load i32, i32* %1544
  %1546 = add i32 %1545, %1543
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RCX.i434, align 8
  %1548 = icmp ult i32 %1546, %1543
  %1549 = icmp ult i32 %1546, %1545
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1551, i8* %1552, align 1
  %1553 = and i32 %1546, 255
  %1554 = call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1557, i8* %1558, align 1
  %1559 = xor i32 %1545, %1543
  %1560 = xor i32 %1559, %1546
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1563, i8* %1564, align 1
  %1565 = icmp eq i32 %1546, 0
  %1566 = zext i1 %1565 to i8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1566, i8* %1567, align 1
  %1568 = lshr i32 %1546, 31
  %1569 = trunc i32 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1569, i8* %1570, align 1
  %1571 = lshr i32 %1543, 31
  %1572 = lshr i32 %1545, 31
  %1573 = xor i32 %1568, %1571
  %1574 = xor i32 %1568, %1572
  %1575 = add i32 %1573, %1574
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1577, i8* %1578, align 1
  store %struct.Memory* %loadMem_41c102, %struct.Memory** %MEMORY
  %loadMem_41c105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %ECX.i431 = bitcast %union.anon* %1584 to i32*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RBP.i432
  %1589 = sub i64 %1588, 8
  %1590 = load i32, i32* %ECX.i431
  %1591 = zext i32 %1590 to i64
  %1592 = load i64, i64* %PC.i430
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i430
  %1594 = inttoptr i64 %1589 to i32*
  store i32 %1590, i32* %1594
  store %struct.Memory* %loadMem_41c105, %struct.Memory** %MEMORY
  %loadMem_41c108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 1
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %RBP.i429
  %1605 = sub i64 %1604, 8
  %1606 = load i64, i64* %PC.i427
  %1607 = add i64 %1606, 4
  store i64 %1607, i64* %PC.i427
  %1608 = inttoptr i64 %1605 to i32*
  %1609 = load i32, i32* %1608
  %1610 = sext i32 %1609 to i64
  store i64 %1610, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_41c108, %struct.Memory** %MEMORY
  %loadMem_41c10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 33
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 1
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %RAX.i425
  %1621 = mul i64 %1620, 4
  %1622 = add i64 %1621, 8807744
  %1623 = load i64, i64* %PC.i424
  %1624 = add i64 %1623, 7
  store i64 %1624, i64* %PC.i424
  %1625 = inttoptr i64 %1622 to i32*
  %1626 = load i32, i32* %1625
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RCX.i426, align 8
  store %struct.Memory* %loadMem_41c10c, %struct.Memory** %MEMORY
  %loadMem_41c113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 5
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %ECX.i422 = bitcast %union.anon* %1633 to i32*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 15
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %RBP.i423
  %1638 = sub i64 %1637, 12
  %1639 = load i32, i32* %ECX.i422
  %1640 = zext i32 %1639 to i64
  %1641 = load i64, i64* %PC.i421
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i421
  %1643 = inttoptr i64 %1638 to i32*
  store i32 %1639, i32* %1643
  store %struct.Memory* %loadMem_41c113, %struct.Memory** %MEMORY
  %loadMem_41c116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %PC.i420
  %1648 = add i64 %1647, -190
  %1649 = load i64, i64* %PC.i420
  %1650 = add i64 %1649, 5
  store i64 %1650, i64* %PC.i420
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1648, i64* %1651, align 8
  store %struct.Memory* %loadMem_41c116, %struct.Memory** %MEMORY
  br label %block_.L_41c058

block_.L_41c11b:                                  ; preds = %block_41c0e8, %block_.L_41c0b4, %block_.L_41c076, %block_.L_41c058
  %loadMem_41c11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %PC.i419
  %1656 = add i64 %1655, 5
  %1657 = load i64, i64* %PC.i419
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %PC.i419
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1656, i64* %1659, align 8
  store %struct.Memory* %loadMem_41c11b, %struct.Memory** %MEMORY
  br label %block_.L_41c120

block_.L_41c120:                                  ; preds = %block_.L_41c11b
  %loadMem_41c120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %PC.i418
  %1664 = add i64 %1663, 5
  %1665 = load i64, i64* %PC.i418
  %1666 = add i64 %1665, 5
  store i64 %1666, i64* %PC.i418
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1664, i64* %1667, align 8
  store %struct.Memory* %loadMem_41c120, %struct.Memory** %MEMORY
  br label %block_.L_41c125

block_.L_41c125:                                  ; preds = %block_.L_41c120
  %loadMem_41c125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %PC.i417
  %1672 = add i64 %1671, 5
  %1673 = load i64, i64* %PC.i417
  %1674 = add i64 %1673, 5
  store i64 %1674, i64* %PC.i417
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1672, i64* %1675, align 8
  store %struct.Memory* %loadMem_41c125, %struct.Memory** %MEMORY
  br label %block_.L_41c12a

block_.L_41c12a:                                  ; preds = %block_.L_41c125
  %loadMem_41c12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 1
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 15
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1684 to i64*
  %1685 = load i64, i64* %RBP.i416
  %1686 = sub i64 %1685, 16
  %1687 = load i64, i64* %PC.i414
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC.i414
  %1689 = inttoptr i64 %1686 to i32*
  %1690 = load i32, i32* %1689
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_41c12a, %struct.Memory** %MEMORY
  %loadMem_41c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 1
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RAX.i413
  %1699 = load i64, i64* %PC.i412
  %1700 = add i64 %1699, 3
  store i64 %1700, i64* %PC.i412
  %1701 = trunc i64 %1698 to i32
  %1702 = add i32 1, %1701
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %RAX.i413, align 8
  %1704 = icmp ult i32 %1702, %1701
  %1705 = icmp ult i32 %1702, 1
  %1706 = or i1 %1704, %1705
  %1707 = zext i1 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1707, i8* %1708, align 1
  %1709 = and i32 %1702, 255
  %1710 = call i32 @llvm.ctpop.i32(i32 %1709)
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = xor i8 %1712, 1
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1713, i8* %1714, align 1
  %1715 = xor i64 1, %1698
  %1716 = trunc i64 %1715 to i32
  %1717 = xor i32 %1716, %1702
  %1718 = lshr i32 %1717, 4
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1720, i8* %1721, align 1
  %1722 = icmp eq i32 %1702, 0
  %1723 = zext i1 %1722 to i8
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1723, i8* %1724, align 1
  %1725 = lshr i32 %1702, 31
  %1726 = trunc i32 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1726, i8* %1727, align 1
  %1728 = lshr i32 %1701, 31
  %1729 = xor i32 %1725, %1728
  %1730 = add i32 %1729, %1725
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1732, i8* %1733, align 1
  store %struct.Memory* %loadMem_41c12d, %struct.Memory** %MEMORY
  %loadMem_41c130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 1
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %EAX.i410 = bitcast %union.anon* %1739 to i32*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 15
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %RBP.i411
  %1744 = sub i64 %1743, 16
  %1745 = load i32, i32* %EAX.i410
  %1746 = zext i32 %1745 to i64
  %1747 = load i64, i64* %PC.i409
  %1748 = add i64 %1747, 3
  store i64 %1748, i64* %PC.i409
  %1749 = inttoptr i64 %1744 to i32*
  store i32 %1745, i32* %1749
  store %struct.Memory* %loadMem_41c130, %struct.Memory** %MEMORY
  %loadMem_41c133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %PC.i408
  %1754 = add i64 %1753, -369
  %1755 = load i64, i64* %PC.i408
  %1756 = add i64 %1755, 5
  store i64 %1756, i64* %PC.i408
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1754, i64* %1757, align 8
  store %struct.Memory* %loadMem_41c133, %struct.Memory** %MEMORY
  br label %block_.L_41bfc2

block_.L_41c138:                                  ; preds = %block_41c029, %block_41bff5, %block_.L_41bfc2
  %loadMem_41c138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 15
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RBP.i407
  %1765 = sub i64 %1764, 16
  %1766 = load i64, i64* %PC.i406
  %1767 = add i64 %1766, 7
  store i64 %1767, i64* %PC.i406
  %1768 = inttoptr i64 %1765 to i32*
  store i32 0, i32* %1768
  store %struct.Memory* %loadMem_41c138, %struct.Memory** %MEMORY
  br label %block_.L_41c13f

block_.L_41c13f:                                  ; preds = %block_.L_41c351, %block_.L_41c138
  %loadMem_41c13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 15
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %RBP.i405
  %1776 = sub i64 %1775, 16
  %1777 = load i64, i64* %PC.i404
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC.i404
  %1779 = inttoptr i64 %1776 to i32*
  %1780 = load i32, i32* %1779
  %1781 = sub i32 %1780, 4
  %1782 = icmp ult i32 %1780, 4
  %1783 = zext i1 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1783, i8* %1784, align 1
  %1785 = and i32 %1781, 255
  %1786 = call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1789, i8* %1790, align 1
  %1791 = xor i32 %1780, 4
  %1792 = xor i32 %1791, %1781
  %1793 = lshr i32 %1792, 4
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1795, i8* %1796, align 1
  %1797 = icmp eq i32 %1781, 0
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1798, i8* %1799, align 1
  %1800 = lshr i32 %1781, 31
  %1801 = trunc i32 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1801, i8* %1802, align 1
  %1803 = lshr i32 %1780, 31
  %1804 = xor i32 %1800, %1803
  %1805 = add i32 %1804, %1803
  %1806 = icmp eq i32 %1805, 2
  %1807 = zext i1 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1807, i8* %1808, align 1
  store %struct.Memory* %loadMem_41c13f, %struct.Memory** %MEMORY
  %loadMem_41c143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %PC.i403
  %1813 = add i64 %1812, 540
  %1814 = load i64, i64* %PC.i403
  %1815 = add i64 %1814, 6
  %1816 = load i64, i64* %PC.i403
  %1817 = add i64 %1816, 6
  store i64 %1817, i64* %PC.i403
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1819 = load i8, i8* %1818, align 1
  %1820 = icmp ne i8 %1819, 0
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1822 = load i8, i8* %1821, align 1
  %1823 = icmp ne i8 %1822, 0
  %1824 = xor i1 %1820, %1823
  %1825 = xor i1 %1824, true
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %BRANCH_TAKEN, align 1
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1828 = select i1 %1824, i64 %1815, i64 %1813
  store i64 %1828, i64* %1827, align 8
  store %struct.Memory* %loadMem_41c143, %struct.Memory** %MEMORY
  %loadBr_41c143 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c143 = icmp eq i8 %loadBr_41c143, 1
  br i1 %cmpBr_41c143, label %block_.L_41c35f, label %block_41c149

block_41c149:                                     ; preds = %block_.L_41c13f
  %loadMem_41c149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 1
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 15
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %RBP.i402
  %1839 = sub i64 %1838, 4
  %1840 = load i64, i64* %PC.i400
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %PC.i400
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_41c149, %struct.Memory** %MEMORY
  %loadMem_41c14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 5
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 15
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %RBP.i399
  %1855 = sub i64 %1854, 16
  %1856 = load i64, i64* %PC.i397
  %1857 = add i64 %1856, 4
  store i64 %1857, i64* %PC.i397
  %1858 = inttoptr i64 %1855 to i32*
  %1859 = load i32, i32* %1858
  %1860 = sext i32 %1859 to i64
  store i64 %1860, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_41c14c, %struct.Memory** %MEMORY
  %loadMem_41c150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 1
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 5
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %RAX.i395
  %1871 = load i64, i64* %RCX.i396
  %1872 = mul i64 %1871, 4
  %1873 = add i64 %1872, 4357552
  %1874 = load i64, i64* %PC.i394
  %1875 = add i64 %1874, 7
  store i64 %1875, i64* %PC.i394
  %1876 = trunc i64 %1870 to i32
  %1877 = inttoptr i64 %1873 to i32*
  %1878 = load i32, i32* %1877
  %1879 = add i32 %1878, %1876
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RAX.i395, align 8
  %1881 = icmp ult i32 %1879, %1876
  %1882 = icmp ult i32 %1879, %1878
  %1883 = or i1 %1881, %1882
  %1884 = zext i1 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1884, i8* %1885, align 1
  %1886 = and i32 %1879, 255
  %1887 = call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1890, i8* %1891, align 1
  %1892 = xor i32 %1878, %1876
  %1893 = xor i32 %1892, %1879
  %1894 = lshr i32 %1893, 4
  %1895 = trunc i32 %1894 to i8
  %1896 = and i8 %1895, 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1896, i8* %1897, align 1
  %1898 = icmp eq i32 %1879, 0
  %1899 = zext i1 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i32 %1879, 31
  %1902 = trunc i32 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1902, i8* %1903, align 1
  %1904 = lshr i32 %1876, 31
  %1905 = lshr i32 %1878, 31
  %1906 = xor i32 %1901, %1904
  %1907 = xor i32 %1901, %1905
  %1908 = add i32 %1906, %1907
  %1909 = icmp eq i32 %1908, 2
  %1910 = zext i1 %1909 to i8
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1910, i8* %1911, align 1
  store %struct.Memory* %loadMem_41c150, %struct.Memory** %MEMORY
  %loadMem_41c157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %EAX.i392 = bitcast %union.anon* %1917 to i32*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i393
  %1922 = sub i64 %1921, 8
  %1923 = load i32, i32* %EAX.i392
  %1924 = zext i32 %1923 to i64
  %1925 = load i64, i64* %PC.i391
  %1926 = add i64 %1925, 3
  store i64 %1926, i64* %PC.i391
  %1927 = inttoptr i64 %1922 to i32*
  store i32 %1923, i32* %1927
  store %struct.Memory* %loadMem_41c157, %struct.Memory** %MEMORY
  %loadMem_41c15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 5
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 15
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %RBP.i390
  %1938 = sub i64 %1937, 8
  %1939 = load i64, i64* %PC.i388
  %1940 = add i64 %1939, 4
  store i64 %1940, i64* %PC.i388
  %1941 = inttoptr i64 %1938 to i32*
  %1942 = load i32, i32* %1941
  %1943 = sext i32 %1942 to i64
  store i64 %1943, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_41c15a, %struct.Memory** %MEMORY
  %loadMem_41c15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 5
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RCX.i387
  %1954 = mul i64 %1953, 4
  %1955 = add i64 %1954, 8807744
  %1956 = load i64, i64* %PC.i385
  %1957 = add i64 %1956, 7
  store i64 %1957, i64* %PC.i385
  %1958 = inttoptr i64 %1955 to i32*
  %1959 = load i32, i32* %1958
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_41c15e, %struct.Memory** %MEMORY
  %loadMem_41c165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %EAX.i383 = bitcast %union.anon* %1966 to i32*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 15
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RBP.i384
  %1971 = sub i64 %1970, 12
  %1972 = load i32, i32* %EAX.i383
  %1973 = zext i32 %1972 to i64
  %1974 = load i64, i64* %PC.i382
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %PC.i382
  %1976 = inttoptr i64 %1971 to i32*
  store i32 %1972, i32* %1976
  store %struct.Memory* %loadMem_41c165, %struct.Memory** %MEMORY
  %loadMem_41c168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 15
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %1982 to i64*
  %1983 = load i64, i64* %RBP.i381
  %1984 = sub i64 %1983, 12
  %1985 = load i64, i64* %PC.i380
  %1986 = add i64 %1985, 4
  store i64 %1986, i64* %PC.i380
  %1987 = inttoptr i64 %1984 to i32*
  %1988 = load i32, i32* %1987
  %1989 = sub i32 %1988, 1
  %1990 = icmp ult i32 %1988, 1
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1991, i8* %1992, align 1
  %1993 = and i32 %1989, 255
  %1994 = call i32 @llvm.ctpop.i32(i32 %1993)
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1997, i8* %1998, align 1
  %1999 = xor i32 %1988, 1
  %2000 = xor i32 %1999, %1989
  %2001 = lshr i32 %2000, 4
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2003, i8* %2004, align 1
  %2005 = icmp eq i32 %1989, 0
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2006, i8* %2007, align 1
  %2008 = lshr i32 %1989, 31
  %2009 = trunc i32 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2009, i8* %2010, align 1
  %2011 = lshr i32 %1988, 31
  %2012 = xor i32 %2008, %2011
  %2013 = add i32 %2012, %2011
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2015, i8* %2016, align 1
  store %struct.Memory* %loadMem_41c168, %struct.Memory** %MEMORY
  %loadMem_41c16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %PC.i379
  %2021 = add i64 %2020, 76
  %2022 = load i64, i64* %PC.i379
  %2023 = add i64 %2022, 6
  %2024 = load i64, i64* %PC.i379
  %2025 = add i64 %2024, 6
  store i64 %2025, i64* %PC.i379
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2027 = load i8, i8* %2026, align 1
  %2028 = icmp eq i8 %2027, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %BRANCH_TAKEN, align 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2031 = select i1 %2028, i64 %2021, i64 %2023
  store i64 %2031, i64* %2030, align 8
  store %struct.Memory* %loadMem_41c16c, %struct.Memory** %MEMORY
  %loadBr_41c16c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c16c = icmp eq i8 %loadBr_41c16c, 1
  br i1 %cmpBr_41c16c, label %block_.L_41c1b8, label %block_41c172

block_41c172:                                     ; preds = %block_41c149
  %loadMem_41c172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 1
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %PC.i377
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC.i377
  store i64 2, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_41c172, %struct.Memory** %MEMORY
  %loadMem_41c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 5
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 15
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RBP.i376
  %2050 = sub i64 %2049, 16
  %2051 = load i64, i64* %PC.i374
  %2052 = add i64 %2051, 3
  store i64 %2052, i64* %PC.i374
  %2053 = inttoptr i64 %2050 to i32*
  %2054 = load i32, i32* %2053
  %2055 = zext i32 %2054 to i64
  store i64 %2055, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_41c177, %struct.Memory** %MEMORY
  %loadMem_41c17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 1
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %EAX.i372 = bitcast %union.anon* %2061 to i32*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 15
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %RBP.i373
  %2066 = sub i64 %2065, 28
  %2067 = load i32, i32* %EAX.i372
  %2068 = zext i32 %2067 to i64
  %2069 = load i64, i64* %PC.i371
  %2070 = add i64 %2069, 3
  store i64 %2070, i64* %PC.i371
  %2071 = inttoptr i64 %2066 to i32*
  store i32 %2067, i32* %2071
  store %struct.Memory* %loadMem_41c17a, %struct.Memory** %MEMORY
  %loadMem_41c17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 5
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %ECX.i369 = bitcast %union.anon* %2077 to i32*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 1
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %2080 to i64*
  %2081 = load i32, i32* %ECX.i369
  %2082 = zext i32 %2081 to i64
  %2083 = load i64, i64* %PC.i368
  %2084 = add i64 %2083, 2
  store i64 %2084, i64* %PC.i368
  %2085 = and i64 %2082, 4294967295
  store i64 %2085, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_41c17d, %struct.Memory** %MEMORY
  %loadMem_41c17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %PC.i367
  %2090 = add i64 %2089, 1
  store i64 %2090, i64* %PC.i367
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2093 = bitcast %union.anon* %2092 to i32*
  %2094 = load i32, i32* %2093, align 8
  %2095 = sext i32 %2094 to i64
  %2096 = lshr i64 %2095, 32
  store i64 %2096, i64* %2091, align 8
  store %struct.Memory* %loadMem_41c17f, %struct.Memory** %MEMORY
  %loadMem_41c180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 5
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 15
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RBP.i366
  %2107 = sub i64 %2106, 28
  %2108 = load i64, i64* %PC.i364
  %2109 = add i64 %2108, 3
  store i64 %2109, i64* %PC.i364
  %2110 = inttoptr i64 %2107 to i32*
  %2111 = load i32, i32* %2110
  %2112 = zext i32 %2111 to i64
  store i64 %2112, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_41c180, %struct.Memory** %MEMORY
  %loadMem_41c183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 5
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %ECX.i360 = bitcast %union.anon* %2118 to i32*
  %2119 = load i32, i32* %ECX.i360
  %2120 = zext i32 %2119 to i64
  %2121 = load i64, i64* %PC.i359
  %2122 = add i64 %2121, 2
  store i64 %2122, i64* %PC.i359
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2124 = bitcast %union.anon* %2123 to i32*
  %2125 = load i32, i32* %2124, align 8
  %2126 = zext i32 %2125 to i64
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2128 = bitcast %union.anon* %2127 to i32*
  %2129 = load i32, i32* %2128, align 8
  %2130 = zext i32 %2129 to i64
  %2131 = shl i64 %2120, 32
  %2132 = ashr exact i64 %2131, 32
  %2133 = shl i64 %2130, 32
  %2134 = or i64 %2133, %2126
  %2135 = sdiv i64 %2134, %2132
  %2136 = shl i64 %2135, 32
  %2137 = ashr exact i64 %2136, 32
  %2138 = icmp eq i64 %2135, %2137
  br i1 %2138, label %2143, label %2139

; <label>:2139:                                   ; preds = %block_41c172
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2141 = load i64, i64* %2140, align 8
  %2142 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2141, %struct.Memory* %loadMem_41c183)
  br label %routine_idivl__ecx.exit361

; <label>:2143:                                   ; preds = %block_41c172
  %2144 = srem i64 %2134, %2132
  %2145 = getelementptr inbounds %union.anon, %union.anon* %2123, i64 0, i32 0
  %2146 = and i64 %2135, 4294967295
  store i64 %2146, i64* %2145, align 8
  %2147 = getelementptr inbounds %union.anon, %union.anon* %2127, i64 0, i32 0
  %2148 = and i64 %2144, 4294967295
  store i64 %2148, i64* %2147, align 8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2149, align 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2150, align 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2151, align 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2152, align 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2153, align 1
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2154, align 1
  br label %routine_idivl__ecx.exit361

routine_idivl__ecx.exit361:                       ; preds = %2139, %2143
  %2155 = phi %struct.Memory* [ %2142, %2139 ], [ %loadMem_41c183, %2143 ]
  store %struct.Memory* %2155, %struct.Memory** %MEMORY
  %loadMem_41c185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 7
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %EDX.i358 = bitcast %union.anon* %2161 to i32*
  %2162 = load i32, i32* %EDX.i358
  %2163 = zext i32 %2162 to i64
  %2164 = load i64, i64* %PC.i357
  %2165 = add i64 %2164, 3
  store i64 %2165, i64* %PC.i357
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
  store %struct.Memory* %loadMem_41c185, %struct.Memory** %MEMORY
  %loadMem_41c188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2188 to i64*
  %2189 = load i64, i64* %PC.i356
  %2190 = add i64 %2189, 48
  %2191 = load i64, i64* %PC.i356
  %2192 = add i64 %2191, 6
  %2193 = load i64, i64* %PC.i356
  %2194 = add i64 %2193, 6
  store i64 %2194, i64* %PC.i356
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2196 = load i8, i8* %2195, align 1
  store i8 %2196, i8* %BRANCH_TAKEN, align 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2198 = icmp ne i8 %2196, 0
  %2199 = select i1 %2198, i64 %2190, i64 %2192
  store i64 %2199, i64* %2197, align 8
  store %struct.Memory* %loadMem_41c188, %struct.Memory** %MEMORY
  %loadBr_41c188 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c188 = icmp eq i8 %loadBr_41c188, 1
  br i1 %cmpBr_41c188, label %block_.L_41c1b8, label %block_41c18e

block_41c18e:                                     ; preds = %routine_idivl__ecx.exit361
  %loadMem_41c18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 1
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 15
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %RBP.i355
  %2210 = sub i64 %2209, 12
  %2211 = load i64, i64* %PC.i353
  %2212 = add i64 %2211, 3
  store i64 %2212, i64* %PC.i353
  %2213 = inttoptr i64 %2210 to i32*
  %2214 = load i32, i32* %2213
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_41c18e, %struct.Memory** %MEMORY
  %loadMem_41c191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 5
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 15
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RBP.i352
  %2226 = sub i64 %2225, 20
  %2227 = load i64, i64* %PC.i350
  %2228 = add i64 %2227, 4
  store i64 %2228, i64* %PC.i350
  %2229 = inttoptr i64 %2226 to i32*
  %2230 = load i32, i32* %2229
  %2231 = sext i32 %2230 to i64
  store i64 %2231, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_41c191, %struct.Memory** %MEMORY
  %loadMem_41c195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 1
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %EAX.i348 = bitcast %union.anon* %2237 to i32*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 5
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %RCX.i349
  %2242 = mul i64 %2241, 8
  %2243 = add i64 %2242, 8940160
  %2244 = load i32, i32* %EAX.i348
  %2245 = zext i32 %2244 to i64
  %2246 = load i64, i64* %PC.i347
  %2247 = add i64 %2246, 7
  store i64 %2247, i64* %PC.i347
  %2248 = inttoptr i64 %2243 to i32*
  store i32 %2244, i32* %2248
  store %struct.Memory* %loadMem_41c195, %struct.Memory** %MEMORY
  %loadMem_41c19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RBP.i346
  %2259 = sub i64 %2258, 8
  %2260 = load i64, i64* %PC.i344
  %2261 = add i64 %2260, 3
  store i64 %2261, i64* %PC.i344
  %2262 = inttoptr i64 %2259 to i32*
  %2263 = load i32, i32* %2262
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_41c19c, %struct.Memory** %MEMORY
  %loadMem_41c19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 5
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %RBP.i343
  %2275 = sub i64 %2274, 20
  %2276 = load i64, i64* %PC.i341
  %2277 = add i64 %2276, 4
  store i64 %2277, i64* %PC.i341
  %2278 = inttoptr i64 %2275 to i32*
  %2279 = load i32, i32* %2278
  %2280 = sext i32 %2279 to i64
  store i64 %2280, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_41c19f, %struct.Memory** %MEMORY
  %loadMem_41c1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 1
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %EAX.i339 = bitcast %union.anon* %2286 to i32*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 5
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %RCX.i340
  %2291 = mul i64 %2290, 8
  %2292 = add i64 %2291, 8940164
  %2293 = load i32, i32* %EAX.i339
  %2294 = zext i32 %2293 to i64
  %2295 = load i64, i64* %PC.i338
  %2296 = add i64 %2295, 7
  store i64 %2296, i64* %PC.i338
  %2297 = inttoptr i64 %2292 to i32*
  store i32 %2293, i32* %2297
  store %struct.Memory* %loadMem_41c1a3, %struct.Memory** %MEMORY
  %loadMem_41c1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 1
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 15
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %RBP.i337
  %2308 = sub i64 %2307, 20
  %2309 = load i64, i64* %PC.i335
  %2310 = add i64 %2309, 3
  store i64 %2310, i64* %PC.i335
  %2311 = inttoptr i64 %2308 to i32*
  %2312 = load i32, i32* %2311
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_41c1aa, %struct.Memory** %MEMORY
  %loadMem_41c1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 1
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RAX.i334
  %2321 = load i64, i64* %PC.i333
  %2322 = add i64 %2321, 3
  store i64 %2322, i64* %PC.i333
  %2323 = trunc i64 %2320 to i32
  %2324 = add i32 1, %2323
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RAX.i334, align 8
  %2326 = icmp ult i32 %2324, %2323
  %2327 = icmp ult i32 %2324, 1
  %2328 = or i1 %2326, %2327
  %2329 = zext i1 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2329, i8* %2330, align 1
  %2331 = and i32 %2324, 255
  %2332 = call i32 @llvm.ctpop.i32(i32 %2331)
  %2333 = trunc i32 %2332 to i8
  %2334 = and i8 %2333, 1
  %2335 = xor i8 %2334, 1
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2335, i8* %2336, align 1
  %2337 = xor i64 1, %2320
  %2338 = trunc i64 %2337 to i32
  %2339 = xor i32 %2338, %2324
  %2340 = lshr i32 %2339, 4
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2342, i8* %2343, align 1
  %2344 = icmp eq i32 %2324, 0
  %2345 = zext i1 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2345, i8* %2346, align 1
  %2347 = lshr i32 %2324, 31
  %2348 = trunc i32 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2348, i8* %2349, align 1
  %2350 = lshr i32 %2323, 31
  %2351 = xor i32 %2347, %2350
  %2352 = add i32 %2351, %2347
  %2353 = icmp eq i32 %2352, 2
  %2354 = zext i1 %2353 to i8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2354, i8* %2355, align 1
  store %struct.Memory* %loadMem_41c1ad, %struct.Memory** %MEMORY
  %loadMem_41c1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %EAX.i331 = bitcast %union.anon* %2361 to i32*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i332
  %2366 = sub i64 %2365, 20
  %2367 = load i32, i32* %EAX.i331
  %2368 = zext i32 %2367 to i64
  %2369 = load i64, i64* %PC.i330
  %2370 = add i64 %2369, 3
  store i64 %2370, i64* %PC.i330
  %2371 = inttoptr i64 %2366 to i32*
  store i32 %2367, i32* %2371
  store %struct.Memory* %loadMem_41c1b0, %struct.Memory** %MEMORY
  %loadMem_41c1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2374 to i64*
  %2375 = load i64, i64* %PC.i329
  %2376 = add i64 %2375, 428
  %2377 = load i64, i64* %PC.i329
  %2378 = add i64 %2377, 5
  store i64 %2378, i64* %PC.i329
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2376, i64* %2379, align 8
  store %struct.Memory* %loadMem_41c1b3, %struct.Memory** %MEMORY
  br label %block_.L_41c35f

block_.L_41c1b8:                                  ; preds = %routine_idivl__ecx.exit361, %block_41c149
  %loadMem_41c1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RBP.i328
  %2387 = sub i64 %2386, 12
  %2388 = load i64, i64* %PC.i327
  %2389 = add i64 %2388, 4
  store i64 %2389, i64* %PC.i327
  %2390 = inttoptr i64 %2387 to i32*
  %2391 = load i32, i32* %2390
  %2392 = sub i32 %2391, 2
  %2393 = icmp ult i32 %2391, 2
  %2394 = zext i1 %2393 to i8
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2394, i8* %2395, align 1
  %2396 = and i32 %2392, 255
  %2397 = call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2400, i8* %2401, align 1
  %2402 = xor i32 %2391, 2
  %2403 = xor i32 %2402, %2392
  %2404 = lshr i32 %2403, 4
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2406, i8* %2407, align 1
  %2408 = icmp eq i32 %2392, 0
  %2409 = zext i1 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2409, i8* %2410, align 1
  %2411 = lshr i32 %2392, 31
  %2412 = trunc i32 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2412, i8* %2413, align 1
  %2414 = lshr i32 %2391, 31
  %2415 = xor i32 %2411, %2414
  %2416 = add i32 %2415, %2414
  %2417 = icmp eq i32 %2416, 2
  %2418 = zext i1 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2418, i8* %2419, align 1
  store %struct.Memory* %loadMem_41c1b8, %struct.Memory** %MEMORY
  %loadMem_41c1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %PC.i326
  %2424 = add i64 %2423, 76
  %2425 = load i64, i64* %PC.i326
  %2426 = add i64 %2425, 6
  %2427 = load i64, i64* %PC.i326
  %2428 = add i64 %2427, 6
  store i64 %2428, i64* %PC.i326
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2430 = load i8, i8* %2429, align 1
  %2431 = icmp eq i8 %2430, 0
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %BRANCH_TAKEN, align 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2434 = select i1 %2431, i64 %2424, i64 %2426
  store i64 %2434, i64* %2433, align 8
  store %struct.Memory* %loadMem_41c1bc, %struct.Memory** %MEMORY
  %loadBr_41c1bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c1bc = icmp eq i8 %loadBr_41c1bc, 1
  br i1 %cmpBr_41c1bc, label %block_.L_41c208, label %block_41c1c2

block_41c1c2:                                     ; preds = %block_.L_41c1b8
  %loadMem_41c1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 1
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %PC.i324
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %PC.i324
  store i64 2, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_41c1c2, %struct.Memory** %MEMORY
  %loadMem_41c1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 5
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 15
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %RBP.i323
  %2453 = sub i64 %2452, 16
  %2454 = load i64, i64* %PC.i321
  %2455 = add i64 %2454, 3
  store i64 %2455, i64* %PC.i321
  %2456 = inttoptr i64 %2453 to i32*
  %2457 = load i32, i32* %2456
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_41c1c7, %struct.Memory** %MEMORY
  %loadMem_41c1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 1
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %2464 to i32*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RBP.i320
  %2469 = sub i64 %2468, 32
  %2470 = load i32, i32* %EAX.i319
  %2471 = zext i32 %2470 to i64
  %2472 = load i64, i64* %PC.i318
  %2473 = add i64 %2472, 3
  store i64 %2473, i64* %PC.i318
  %2474 = inttoptr i64 %2469 to i32*
  store i32 %2470, i32* %2474
  store %struct.Memory* %loadMem_41c1ca, %struct.Memory** %MEMORY
  %loadMem_41c1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 5
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %ECX.i316 = bitcast %union.anon* %2480 to i32*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %2483 to i64*
  %2484 = load i32, i32* %ECX.i316
  %2485 = zext i32 %2484 to i64
  %2486 = load i64, i64* %PC.i315
  %2487 = add i64 %2486, 2
  store i64 %2487, i64* %PC.i315
  %2488 = and i64 %2485, 4294967295
  store i64 %2488, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_41c1cd, %struct.Memory** %MEMORY
  %loadMem_41c1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2491 to i64*
  %2492 = load i64, i64* %PC.i314
  %2493 = add i64 %2492, 1
  store i64 %2493, i64* %PC.i314
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2496 = bitcast %union.anon* %2495 to i32*
  %2497 = load i32, i32* %2496, align 8
  %2498 = sext i32 %2497 to i64
  %2499 = lshr i64 %2498, 32
  store i64 %2499, i64* %2494, align 8
  store %struct.Memory* %loadMem_41c1cf, %struct.Memory** %MEMORY
  %loadMem_41c1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 5
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 15
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %RBP.i313
  %2510 = sub i64 %2509, 32
  %2511 = load i64, i64* %PC.i311
  %2512 = add i64 %2511, 3
  store i64 %2512, i64* %PC.i311
  %2513 = inttoptr i64 %2510 to i32*
  %2514 = load i32, i32* %2513
  %2515 = zext i32 %2514 to i64
  store i64 %2515, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_41c1d0, %struct.Memory** %MEMORY
  %loadMem_41c1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 5
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %ECX.i308 = bitcast %union.anon* %2521 to i32*
  %2522 = load i32, i32* %ECX.i308
  %2523 = zext i32 %2522 to i64
  %2524 = load i64, i64* %PC.i307
  %2525 = add i64 %2524, 2
  store i64 %2525, i64* %PC.i307
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2527 = bitcast %union.anon* %2526 to i32*
  %2528 = load i32, i32* %2527, align 8
  %2529 = zext i32 %2528 to i64
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2531 = bitcast %union.anon* %2530 to i32*
  %2532 = load i32, i32* %2531, align 8
  %2533 = zext i32 %2532 to i64
  %2534 = shl i64 %2523, 32
  %2535 = ashr exact i64 %2534, 32
  %2536 = shl i64 %2533, 32
  %2537 = or i64 %2536, %2529
  %2538 = sdiv i64 %2537, %2535
  %2539 = shl i64 %2538, 32
  %2540 = ashr exact i64 %2539, 32
  %2541 = icmp eq i64 %2538, %2540
  br i1 %2541, label %2546, label %2542

; <label>:2542:                                   ; preds = %block_41c1c2
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2544 = load i64, i64* %2543, align 8
  %2545 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2544, %struct.Memory* %loadMem_41c1d3)
  br label %routine_idivl__ecx.exit

; <label>:2546:                                   ; preds = %block_41c1c2
  %2547 = srem i64 %2537, %2535
  %2548 = getelementptr inbounds %union.anon, %union.anon* %2526, i64 0, i32 0
  %2549 = and i64 %2538, 4294967295
  store i64 %2549, i64* %2548, align 8
  %2550 = getelementptr inbounds %union.anon, %union.anon* %2530, i64 0, i32 0
  %2551 = and i64 %2547, 4294967295
  store i64 %2551, i64* %2550, align 8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2552, align 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2553, align 1
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2554, align 1
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2555, align 1
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2556, align 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2557, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2542, %2546
  %2558 = phi %struct.Memory* [ %2545, %2542 ], [ %loadMem_41c1d3, %2546 ]
  store %struct.Memory* %2558, %struct.Memory** %MEMORY
  %loadMem_41c1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 7
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2564 to i32*
  %2565 = load i32, i32* %EDX.i
  %2566 = zext i32 %2565 to i64
  %2567 = load i64, i64* %PC.i306
  %2568 = add i64 %2567, 3
  store i64 %2568, i64* %PC.i306
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2569, align 1
  %2570 = and i32 %2565, 255
  %2571 = call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2574, i8* %2575, align 1
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2576, align 1
  %2577 = icmp eq i32 %2565, 0
  %2578 = zext i1 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2578, i8* %2579, align 1
  %2580 = lshr i32 %2565, 31
  %2581 = trunc i32 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2581, i8* %2582, align 1
  %2583 = lshr i32 %2565, 31
  %2584 = xor i32 %2580, %2583
  %2585 = add i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2587, i8* %2588, align 1
  store %struct.Memory* %loadMem_41c1d5, %struct.Memory** %MEMORY
  %loadMem_41c1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %PC.i305
  %2593 = add i64 %2592, 48
  %2594 = load i64, i64* %PC.i305
  %2595 = add i64 %2594, 6
  %2596 = load i64, i64* %PC.i305
  %2597 = add i64 %2596, 6
  store i64 %2597, i64* %PC.i305
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2599 = load i8, i8* %2598, align 1
  %2600 = icmp eq i8 %2599, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %BRANCH_TAKEN, align 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2603 = select i1 %2600, i64 %2593, i64 %2595
  store i64 %2603, i64* %2602, align 8
  store %struct.Memory* %loadMem_41c1d8, %struct.Memory** %MEMORY
  %loadBr_41c1d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c1d8 = icmp eq i8 %loadBr_41c1d8, 1
  br i1 %cmpBr_41c1d8, label %block_.L_41c208, label %block_41c1de

block_41c1de:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_41c1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RBP.i304
  %2614 = sub i64 %2613, 12
  %2615 = load i64, i64* %PC.i302
  %2616 = add i64 %2615, 3
  store i64 %2616, i64* %PC.i302
  %2617 = inttoptr i64 %2614 to i32*
  %2618 = load i32, i32* %2617
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_41c1de, %struct.Memory** %MEMORY
  %loadMem_41c1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 5
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RBP.i301
  %2630 = sub i64 %2629, 24
  %2631 = load i64, i64* %PC.i299
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %PC.i299
  %2633 = inttoptr i64 %2630 to i32*
  %2634 = load i32, i32* %2633
  %2635 = sext i32 %2634 to i64
  store i64 %2635, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_41c1e1, %struct.Memory** %MEMORY
  %loadMem_41c1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 1
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %EAX.i297 = bitcast %union.anon* %2641 to i32*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 5
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %2644 to i64*
  %2645 = load i64, i64* %RCX.i298
  %2646 = mul i64 %2645, 8
  %2647 = add i64 %2646, 8940288
  %2648 = load i32, i32* %EAX.i297
  %2649 = zext i32 %2648 to i64
  %2650 = load i64, i64* %PC.i296
  %2651 = add i64 %2650, 7
  store i64 %2651, i64* %PC.i296
  %2652 = inttoptr i64 %2647 to i32*
  store i32 %2648, i32* %2652
  store %struct.Memory* %loadMem_41c1e5, %struct.Memory** %MEMORY
  %loadMem_41c1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 1
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 15
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %RBP.i295
  %2663 = sub i64 %2662, 8
  %2664 = load i64, i64* %PC.i293
  %2665 = add i64 %2664, 3
  store i64 %2665, i64* %PC.i293
  %2666 = inttoptr i64 %2663 to i32*
  %2667 = load i32, i32* %2666
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_41c1ec, %struct.Memory** %MEMORY
  %loadMem_41c1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 5
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 15
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %2677 to i64*
  %2678 = load i64, i64* %RBP.i292
  %2679 = sub i64 %2678, 24
  %2680 = load i64, i64* %PC.i290
  %2681 = add i64 %2680, 4
  store i64 %2681, i64* %PC.i290
  %2682 = inttoptr i64 %2679 to i32*
  %2683 = load i32, i32* %2682
  %2684 = sext i32 %2683 to i64
  store i64 %2684, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_41c1ef, %struct.Memory** %MEMORY
  %loadMem_41c1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 1
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %EAX.i288 = bitcast %union.anon* %2690 to i32*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 5
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %RCX.i289
  %2695 = mul i64 %2694, 8
  %2696 = add i64 %2695, 8940292
  %2697 = load i32, i32* %EAX.i288
  %2698 = zext i32 %2697 to i64
  %2699 = load i64, i64* %PC.i287
  %2700 = add i64 %2699, 7
  store i64 %2700, i64* %PC.i287
  %2701 = inttoptr i64 %2696 to i32*
  store i32 %2697, i32* %2701
  store %struct.Memory* %loadMem_41c1f3, %struct.Memory** %MEMORY
  %loadMem_41c1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 1
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 15
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RBP.i286
  %2712 = sub i64 %2711, 24
  %2713 = load i64, i64* %PC.i284
  %2714 = add i64 %2713, 3
  store i64 %2714, i64* %PC.i284
  %2715 = inttoptr i64 %2712 to i32*
  %2716 = load i32, i32* %2715
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_41c1fa, %struct.Memory** %MEMORY
  %loadMem_41c1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 1
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %RAX.i283
  %2725 = load i64, i64* %PC.i282
  %2726 = add i64 %2725, 3
  store i64 %2726, i64* %PC.i282
  %2727 = trunc i64 %2724 to i32
  %2728 = add i32 1, %2727
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RAX.i283, align 8
  %2730 = icmp ult i32 %2728, %2727
  %2731 = icmp ult i32 %2728, 1
  %2732 = or i1 %2730, %2731
  %2733 = zext i1 %2732 to i8
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2733, i8* %2734, align 1
  %2735 = and i32 %2728, 255
  %2736 = call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2739, i8* %2740, align 1
  %2741 = xor i64 1, %2724
  %2742 = trunc i64 %2741 to i32
  %2743 = xor i32 %2742, %2728
  %2744 = lshr i32 %2743, 4
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2746, i8* %2747, align 1
  %2748 = icmp eq i32 %2728, 0
  %2749 = zext i1 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2749, i8* %2750, align 1
  %2751 = lshr i32 %2728, 31
  %2752 = trunc i32 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2752, i8* %2753, align 1
  %2754 = lshr i32 %2727, 31
  %2755 = xor i32 %2751, %2754
  %2756 = add i32 %2755, %2751
  %2757 = icmp eq i32 %2756, 2
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2758, i8* %2759, align 1
  store %struct.Memory* %loadMem_41c1fd, %struct.Memory** %MEMORY
  %loadMem_41c200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 1
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %2765 to i32*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 15
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2768 to i64*
  %2769 = load i64, i64* %RBP.i281
  %2770 = sub i64 %2769, 24
  %2771 = load i32, i32* %EAX.i280
  %2772 = zext i32 %2771 to i64
  %2773 = load i64, i64* %PC.i279
  %2774 = add i64 %2773, 3
  store i64 %2774, i64* %PC.i279
  %2775 = inttoptr i64 %2770 to i32*
  store i32 %2771, i32* %2775
  store %struct.Memory* %loadMem_41c200, %struct.Memory** %MEMORY
  %loadMem_41c203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i278
  %2780 = add i64 %2779, 348
  %2781 = load i64, i64* %PC.i278
  %2782 = add i64 %2781, 5
  store i64 %2782, i64* %PC.i278
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2780, i64* %2783, align 8
  store %struct.Memory* %loadMem_41c203, %struct.Memory** %MEMORY
  br label %block_.L_41c35f

block_.L_41c208:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_41c1b8
  %loadMem_41c208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RBP.i277
  %2791 = sub i64 %2790, 12
  %2792 = load i64, i64* %PC.i276
  %2793 = add i64 %2792, 4
  store i64 %2793, i64* %PC.i276
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794
  %2796 = sub i32 %2795, 5
  %2797 = icmp ult i32 %2795, 5
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2798, i8* %2799, align 1
  %2800 = and i32 %2796, 255
  %2801 = call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2804, i8* %2805, align 1
  %2806 = xor i32 %2795, 5
  %2807 = xor i32 %2806, %2796
  %2808 = lshr i32 %2807, 4
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2810, i8* %2811, align 1
  %2812 = icmp eq i32 %2796, 0
  %2813 = zext i1 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2813, i8* %2814, align 1
  %2815 = lshr i32 %2796, 31
  %2816 = trunc i32 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2816, i8* %2817, align 1
  %2818 = lshr i32 %2795, 31
  %2819 = xor i32 %2815, %2818
  %2820 = add i32 %2819, %2818
  %2821 = icmp eq i32 %2820, 2
  %2822 = zext i1 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2822, i8* %2823, align 1
  store %struct.Memory* %loadMem_41c208, %struct.Memory** %MEMORY
  %loadMem_41c20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %PC.i275
  %2828 = add i64 %2827, 48
  %2829 = load i64, i64* %PC.i275
  %2830 = add i64 %2829, 6
  %2831 = load i64, i64* %PC.i275
  %2832 = add i64 %2831, 6
  store i64 %2832, i64* %PC.i275
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2834 = load i8, i8* %2833, align 1
  %2835 = icmp eq i8 %2834, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %BRANCH_TAKEN, align 1
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2838 = select i1 %2835, i64 %2828, i64 %2830
  store i64 %2838, i64* %2837, align 8
  store %struct.Memory* %loadMem_41c20c, %struct.Memory** %MEMORY
  %loadBr_41c20c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c20c = icmp eq i8 %loadBr_41c20c, 1
  br i1 %cmpBr_41c20c, label %block_.L_41c23c, label %block_41c212

block_41c212:                                     ; preds = %block_.L_41c208
  %loadMem_41c212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 1
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 15
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RBP.i274
  %2849 = sub i64 %2848, 12
  %2850 = load i64, i64* %PC.i272
  %2851 = add i64 %2850, 3
  store i64 %2851, i64* %PC.i272
  %2852 = inttoptr i64 %2849 to i32*
  %2853 = load i32, i32* %2852
  %2854 = zext i32 %2853 to i64
  store i64 %2854, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_41c212, %struct.Memory** %MEMORY
  %loadMem_41c215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 15
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RBP.i271
  %2865 = sub i64 %2864, 20
  %2866 = load i64, i64* %PC.i269
  %2867 = add i64 %2866, 4
  store i64 %2867, i64* %PC.i269
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = sext i32 %2869 to i64
  store i64 %2870, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_41c215, %struct.Memory** %MEMORY
  %loadMem_41c219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %2876 to i32*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 5
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %RCX.i268
  %2881 = mul i64 %2880, 8
  %2882 = add i64 %2881, 8940160
  %2883 = load i32, i32* %EAX.i267
  %2884 = zext i32 %2883 to i64
  %2885 = load i64, i64* %PC.i266
  %2886 = add i64 %2885, 7
  store i64 %2886, i64* %PC.i266
  %2887 = inttoptr i64 %2882 to i32*
  store i32 %2883, i32* %2887
  store %struct.Memory* %loadMem_41c219, %struct.Memory** %MEMORY
  %loadMem_41c220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 1
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 15
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2896 to i64*
  %2897 = load i64, i64* %RBP.i265
  %2898 = sub i64 %2897, 8
  %2899 = load i64, i64* %PC.i263
  %2900 = add i64 %2899, 3
  store i64 %2900, i64* %PC.i263
  %2901 = inttoptr i64 %2898 to i32*
  %2902 = load i32, i32* %2901
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_41c220, %struct.Memory** %MEMORY
  %loadMem_41c223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 5
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 15
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %RBP.i262
  %2914 = sub i64 %2913, 20
  %2915 = load i64, i64* %PC.i260
  %2916 = add i64 %2915, 4
  store i64 %2916, i64* %PC.i260
  %2917 = inttoptr i64 %2914 to i32*
  %2918 = load i32, i32* %2917
  %2919 = sext i32 %2918 to i64
  store i64 %2919, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_41c223, %struct.Memory** %MEMORY
  %loadMem_41c227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %2925 to i32*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 5
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %RCX.i259
  %2930 = mul i64 %2929, 8
  %2931 = add i64 %2930, 8940164
  %2932 = load i32, i32* %EAX.i258
  %2933 = zext i32 %2932 to i64
  %2934 = load i64, i64* %PC.i257
  %2935 = add i64 %2934, 7
  store i64 %2935, i64* %PC.i257
  %2936 = inttoptr i64 %2931 to i32*
  store i32 %2932, i32* %2936
  store %struct.Memory* %loadMem_41c227, %struct.Memory** %MEMORY
  %loadMem_41c22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 1
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 15
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RBP.i256
  %2947 = sub i64 %2946, 20
  %2948 = load i64, i64* %PC.i254
  %2949 = add i64 %2948, 3
  store i64 %2949, i64* %PC.i254
  %2950 = inttoptr i64 %2947 to i32*
  %2951 = load i32, i32* %2950
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_41c22e, %struct.Memory** %MEMORY
  %loadMem_41c231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 1
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %RAX.i253
  %2960 = load i64, i64* %PC.i252
  %2961 = add i64 %2960, 3
  store i64 %2961, i64* %PC.i252
  %2962 = trunc i64 %2959 to i32
  %2963 = add i32 1, %2962
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RAX.i253, align 8
  %2965 = icmp ult i32 %2963, %2962
  %2966 = icmp ult i32 %2963, 1
  %2967 = or i1 %2965, %2966
  %2968 = zext i1 %2967 to i8
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2968, i8* %2969, align 1
  %2970 = and i32 %2963, 255
  %2971 = call i32 @llvm.ctpop.i32(i32 %2970)
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2974, i8* %2975, align 1
  %2976 = xor i64 1, %2959
  %2977 = trunc i64 %2976 to i32
  %2978 = xor i32 %2977, %2963
  %2979 = lshr i32 %2978, 4
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2981, i8* %2982, align 1
  %2983 = icmp eq i32 %2963, 0
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2984, i8* %2985, align 1
  %2986 = lshr i32 %2963, 31
  %2987 = trunc i32 %2986 to i8
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2987, i8* %2988, align 1
  %2989 = lshr i32 %2962, 31
  %2990 = xor i32 %2986, %2989
  %2991 = add i32 %2990, %2986
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2993, i8* %2994, align 1
  store %struct.Memory* %loadMem_41c231, %struct.Memory** %MEMORY
  %loadMem_41c234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 1
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %3000 to i32*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 15
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %3003 to i64*
  %3004 = load i64, i64* %RBP.i251
  %3005 = sub i64 %3004, 20
  %3006 = load i32, i32* %EAX.i250
  %3007 = zext i32 %3006 to i64
  %3008 = load i64, i64* %PC.i249
  %3009 = add i64 %3008, 3
  store i64 %3009, i64* %PC.i249
  %3010 = inttoptr i64 %3005 to i32*
  store i32 %3006, i32* %3010
  store %struct.Memory* %loadMem_41c234, %struct.Memory** %MEMORY
  %loadMem_41c237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %PC.i248
  %3015 = add i64 %3014, 296
  %3016 = load i64, i64* %PC.i248
  %3017 = add i64 %3016, 5
  store i64 %3017, i64* %PC.i248
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3015, i64* %3018, align 8
  store %struct.Memory* %loadMem_41c237, %struct.Memory** %MEMORY
  br label %block_.L_41c35f

block_.L_41c23c:                                  ; preds = %block_.L_41c208
  %loadMem_41c23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RBP.i247
  %3026 = sub i64 %3025, 12
  %3027 = load i64, i64* %PC.i246
  %3028 = add i64 %3027, 4
  store i64 %3028, i64* %PC.i246
  %3029 = inttoptr i64 %3026 to i32*
  %3030 = load i32, i32* %3029
  %3031 = sub i32 %3030, 6
  %3032 = icmp ult i32 %3030, 6
  %3033 = zext i1 %3032 to i8
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3033, i8* %3034, align 1
  %3035 = and i32 %3031, 255
  %3036 = call i32 @llvm.ctpop.i32(i32 %3035)
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  %3039 = xor i8 %3038, 1
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3039, i8* %3040, align 1
  %3041 = xor i32 %3030, 6
  %3042 = xor i32 %3041, %3031
  %3043 = lshr i32 %3042, 4
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3045, i8* %3046, align 1
  %3047 = icmp eq i32 %3031, 0
  %3048 = zext i1 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3048, i8* %3049, align 1
  %3050 = lshr i32 %3031, 31
  %3051 = trunc i32 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3051, i8* %3052, align 1
  %3053 = lshr i32 %3030, 31
  %3054 = xor i32 %3050, %3053
  %3055 = add i32 %3054, %3053
  %3056 = icmp eq i32 %3055, 2
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3057, i8* %3058, align 1
  store %struct.Memory* %loadMem_41c23c, %struct.Memory** %MEMORY
  %loadMem_41c240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 33
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %PC.i245
  %3063 = add i64 %3062, 48
  %3064 = load i64, i64* %PC.i245
  %3065 = add i64 %3064, 6
  %3066 = load i64, i64* %PC.i245
  %3067 = add i64 %3066, 6
  store i64 %3067, i64* %PC.i245
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3069 = load i8, i8* %3068, align 1
  %3070 = icmp eq i8 %3069, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %BRANCH_TAKEN, align 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3073 = select i1 %3070, i64 %3063, i64 %3065
  store i64 %3073, i64* %3072, align 8
  store %struct.Memory* %loadMem_41c240, %struct.Memory** %MEMORY
  %loadBr_41c240 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c240 = icmp eq i8 %loadBr_41c240, 1
  br i1 %cmpBr_41c240, label %block_.L_41c270, label %block_41c246

block_41c246:                                     ; preds = %block_.L_41c23c
  %loadMem_41c246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 1
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 15
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RBP.i244
  %3084 = sub i64 %3083, 12
  %3085 = load i64, i64* %PC.i242
  %3086 = add i64 %3085, 3
  store i64 %3086, i64* %PC.i242
  %3087 = inttoptr i64 %3084 to i32*
  %3088 = load i32, i32* %3087
  %3089 = zext i32 %3088 to i64
  store i64 %3089, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_41c246, %struct.Memory** %MEMORY
  %loadMem_41c249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 5
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 15
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RBP.i241
  %3100 = sub i64 %3099, 24
  %3101 = load i64, i64* %PC.i239
  %3102 = add i64 %3101, 4
  store i64 %3102, i64* %PC.i239
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103
  %3105 = sext i32 %3104 to i64
  store i64 %3105, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_41c249, %struct.Memory** %MEMORY
  %loadMem_41c24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %3111 to i32*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 5
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RCX.i238
  %3116 = mul i64 %3115, 8
  %3117 = add i64 %3116, 8940288
  %3118 = load i32, i32* %EAX.i237
  %3119 = zext i32 %3118 to i64
  %3120 = load i64, i64* %PC.i236
  %3121 = add i64 %3120, 7
  store i64 %3121, i64* %PC.i236
  %3122 = inttoptr i64 %3117 to i32*
  store i32 %3118, i32* %3122
  store %struct.Memory* %loadMem_41c24d, %struct.Memory** %MEMORY
  %loadMem_41c254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 1
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 15
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %RBP.i235
  %3133 = sub i64 %3132, 8
  %3134 = load i64, i64* %PC.i233
  %3135 = add i64 %3134, 3
  store i64 %3135, i64* %PC.i233
  %3136 = inttoptr i64 %3133 to i32*
  %3137 = load i32, i32* %3136
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_41c254, %struct.Memory** %MEMORY
  %loadMem_41c257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 5
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 15
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %RBP.i232
  %3149 = sub i64 %3148, 24
  %3150 = load i64, i64* %PC.i230
  %3151 = add i64 %3150, 4
  store i64 %3151, i64* %PC.i230
  %3152 = inttoptr i64 %3149 to i32*
  %3153 = load i32, i32* %3152
  %3154 = sext i32 %3153 to i64
  store i64 %3154, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_41c257, %struct.Memory** %MEMORY
  %loadMem_41c25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 1
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %3160 to i32*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 5
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %3163 to i64*
  %3164 = load i64, i64* %RCX.i229
  %3165 = mul i64 %3164, 8
  %3166 = add i64 %3165, 8940292
  %3167 = load i32, i32* %EAX.i228
  %3168 = zext i32 %3167 to i64
  %3169 = load i64, i64* %PC.i227
  %3170 = add i64 %3169, 7
  store i64 %3170, i64* %PC.i227
  %3171 = inttoptr i64 %3166 to i32*
  store i32 %3167, i32* %3171
  store %struct.Memory* %loadMem_41c25b, %struct.Memory** %MEMORY
  %loadMem_41c262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 1
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 15
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %RBP.i226
  %3182 = sub i64 %3181, 24
  %3183 = load i64, i64* %PC.i224
  %3184 = add i64 %3183, 3
  store i64 %3184, i64* %PC.i224
  %3185 = inttoptr i64 %3182 to i32*
  %3186 = load i32, i32* %3185
  %3187 = zext i32 %3186 to i64
  store i64 %3187, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_41c262, %struct.Memory** %MEMORY
  %loadMem_41c265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 1
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %RAX.i223
  %3195 = load i64, i64* %PC.i222
  %3196 = add i64 %3195, 3
  store i64 %3196, i64* %PC.i222
  %3197 = trunc i64 %3194 to i32
  %3198 = add i32 1, %3197
  %3199 = zext i32 %3198 to i64
  store i64 %3199, i64* %RAX.i223, align 8
  %3200 = icmp ult i32 %3198, %3197
  %3201 = icmp ult i32 %3198, 1
  %3202 = or i1 %3200, %3201
  %3203 = zext i1 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3203, i8* %3204, align 1
  %3205 = and i32 %3198, 255
  %3206 = call i32 @llvm.ctpop.i32(i32 %3205)
  %3207 = trunc i32 %3206 to i8
  %3208 = and i8 %3207, 1
  %3209 = xor i8 %3208, 1
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3209, i8* %3210, align 1
  %3211 = xor i64 1, %3194
  %3212 = trunc i64 %3211 to i32
  %3213 = xor i32 %3212, %3198
  %3214 = lshr i32 %3213, 4
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3216, i8* %3217, align 1
  %3218 = icmp eq i32 %3198, 0
  %3219 = zext i1 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3219, i8* %3220, align 1
  %3221 = lshr i32 %3198, 31
  %3222 = trunc i32 %3221 to i8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3222, i8* %3223, align 1
  %3224 = lshr i32 %3197, 31
  %3225 = xor i32 %3221, %3224
  %3226 = add i32 %3225, %3221
  %3227 = icmp eq i32 %3226, 2
  %3228 = zext i1 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3228, i8* %3229, align 1
  store %struct.Memory* %loadMem_41c265, %struct.Memory** %MEMORY
  %loadMem_41c268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 1
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %3235 to i32*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 15
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %RBP.i221
  %3240 = sub i64 %3239, 24
  %3241 = load i32, i32* %EAX.i220
  %3242 = zext i32 %3241 to i64
  %3243 = load i64, i64* %PC.i219
  %3244 = add i64 %3243, 3
  store i64 %3244, i64* %PC.i219
  %3245 = inttoptr i64 %3240 to i32*
  store i32 %3241, i32* %3245
  store %struct.Memory* %loadMem_41c268, %struct.Memory** %MEMORY
  %loadMem_41c26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %PC.i218
  %3250 = add i64 %3249, 244
  %3251 = load i64, i64* %PC.i218
  %3252 = add i64 %3251, 5
  store i64 %3252, i64* %PC.i218
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3250, i64* %3253, align 8
  store %struct.Memory* %loadMem_41c26b, %struct.Memory** %MEMORY
  br label %block_.L_41c35f

block_.L_41c270:                                  ; preds = %block_.L_41c23c
  %loadMem_41c270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i217
  %3258 = add i64 %3257, 5
  %3259 = load i64, i64* %PC.i217
  %3260 = add i64 %3259, 5
  store i64 %3260, i64* %PC.i217
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3258, i64* %3261, align 8
  store %struct.Memory* %loadMem_41c270, %struct.Memory** %MEMORY
  br label %block_.L_41c275

block_.L_41c275:                                  ; preds = %block_.L_41c314, %block_.L_41c270
  %loadMem_41c275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 15
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RBP.i216
  %3269 = sub i64 %3268, 12
  %3270 = load i64, i64* %PC.i215
  %3271 = add i64 %3270, 4
  store i64 %3271, i64* %PC.i215
  %3272 = inttoptr i64 %3269 to i32*
  %3273 = load i32, i32* %3272
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3274, align 1
  %3275 = and i32 %3273, 255
  %3276 = call i32 @llvm.ctpop.i32(i32 %3275)
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  %3279 = xor i8 %3278, 1
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3279, i8* %3280, align 1
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3281, align 1
  %3282 = icmp eq i32 %3273, 0
  %3283 = zext i1 %3282 to i8
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3283, i8* %3284, align 1
  %3285 = lshr i32 %3273, 31
  %3286 = trunc i32 %3285 to i8
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3286, i8* %3287, align 1
  %3288 = lshr i32 %3273, 31
  %3289 = xor i32 %3285, %3288
  %3290 = add i32 %3289, %3288
  %3291 = icmp eq i32 %3290, 2
  %3292 = zext i1 %3291 to i8
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3292, i8* %3293, align 1
  store %struct.Memory* %loadMem_41c275, %struct.Memory** %MEMORY
  %loadMem_41c279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %PC.i214
  %3298 = add i64 %3297, 191
  %3299 = load i64, i64* %PC.i214
  %3300 = add i64 %3299, 6
  %3301 = load i64, i64* %PC.i214
  %3302 = add i64 %3301, 6
  store i64 %3302, i64* %PC.i214
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3304 = load i8, i8* %3303, align 1
  store i8 %3304, i8* %BRANCH_TAKEN, align 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3306 = icmp ne i8 %3304, 0
  %3307 = select i1 %3306, i64 %3298, i64 %3300
  store i64 %3307, i64* %3305, align 8
  store %struct.Memory* %loadMem_41c279, %struct.Memory** %MEMORY
  %loadBr_41c279 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c279 = icmp eq i8 %loadBr_41c279, 1
  br i1 %cmpBr_41c279, label %block_.L_41c338, label %block_41c27f

block_41c27f:                                     ; preds = %block_.L_41c275
  %loadMem_41c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i213
  %3315 = sub i64 %3314, 12
  %3316 = load i64, i64* %PC.i212
  %3317 = add i64 %3316, 4
  store i64 %3317, i64* %PC.i212
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = sub i32 %3319, 11
  %3321 = icmp ult i32 %3319, 11
  %3322 = zext i1 %3321 to i8
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3322, i8* %3323, align 1
  %3324 = and i32 %3320, 255
  %3325 = call i32 @llvm.ctpop.i32(i32 %3324)
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = xor i8 %3327, 1
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3328, i8* %3329, align 1
  %3330 = xor i32 %3319, 11
  %3331 = xor i32 %3330, %3320
  %3332 = lshr i32 %3331, 4
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3334, i8* %3335, align 1
  %3336 = icmp eq i32 %3320, 0
  %3337 = zext i1 %3336 to i8
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3337, i8* %3338, align 1
  %3339 = lshr i32 %3320, 31
  %3340 = trunc i32 %3339 to i8
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3340, i8* %3341, align 1
  %3342 = lshr i32 %3319, 31
  %3343 = xor i32 %3339, %3342
  %3344 = add i32 %3343, %3342
  %3345 = icmp eq i32 %3344, 2
  %3346 = zext i1 %3345 to i8
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3346, i8* %3347, align 1
  store %struct.Memory* %loadMem_41c27f, %struct.Memory** %MEMORY
  %loadMem_41c283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %PC.i211
  %3352 = add i64 %3351, 16
  %3353 = load i64, i64* %PC.i211
  %3354 = add i64 %3353, 6
  %3355 = load i64, i64* %PC.i211
  %3356 = add i64 %3355, 6
  store i64 %3356, i64* %PC.i211
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3358 = load i8, i8* %3357, align 1
  store i8 %3358, i8* %BRANCH_TAKEN, align 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3360 = icmp ne i8 %3358, 0
  %3361 = select i1 %3360, i64 %3352, i64 %3354
  store i64 %3361, i64* %3359, align 8
  store %struct.Memory* %loadMem_41c283, %struct.Memory** %MEMORY
  %loadBr_41c283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c283 = icmp eq i8 %loadBr_41c283, 1
  br i1 %cmpBr_41c283, label %block_.L_41c293, label %block_41c289

block_41c289:                                     ; preds = %block_41c27f
  %loadMem_41c289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 15
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %RBP.i210
  %3369 = sub i64 %3368, 12
  %3370 = load i64, i64* %PC.i209
  %3371 = add i64 %3370, 4
  store i64 %3371, i64* %PC.i209
  %3372 = inttoptr i64 %3369 to i32*
  %3373 = load i32, i32* %3372
  %3374 = sub i32 %3373, 9
  %3375 = icmp ult i32 %3373, 9
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
  %3384 = xor i32 %3373, 9
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
  %3396 = lshr i32 %3373, 31
  %3397 = xor i32 %3393, %3396
  %3398 = add i32 %3397, %3396
  %3399 = icmp eq i32 %3398, 2
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3400, i8* %3401, align 1
  store %struct.Memory* %loadMem_41c289, %struct.Memory** %MEMORY
  %loadMem_41c28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %PC.i208
  %3406 = add i64 %3405, 48
  %3407 = load i64, i64* %PC.i208
  %3408 = add i64 %3407, 6
  %3409 = load i64, i64* %PC.i208
  %3410 = add i64 %3409, 6
  store i64 %3410, i64* %PC.i208
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3412 = load i8, i8* %3411, align 1
  %3413 = icmp eq i8 %3412, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %BRANCH_TAKEN, align 1
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3416 = select i1 %3413, i64 %3406, i64 %3408
  store i64 %3416, i64* %3415, align 8
  store %struct.Memory* %loadMem_41c28d, %struct.Memory** %MEMORY
  %loadBr_41c28d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c28d = icmp eq i8 %loadBr_41c28d, 1
  br i1 %cmpBr_41c28d, label %block_.L_41c2bd, label %block_.L_41c293

block_.L_41c293:                                  ; preds = %block_41c289, %block_41c27f
  %loadMem_41c293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 15
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RBP.i207
  %3427 = sub i64 %3426, 12
  %3428 = load i64, i64* %PC.i205
  %3429 = add i64 %3428, 3
  store i64 %3429, i64* %PC.i205
  %3430 = inttoptr i64 %3427 to i32*
  %3431 = load i32, i32* %3430
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_41c293, %struct.Memory** %MEMORY
  %loadMem_41c296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 5
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 15
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RBP.i204
  %3443 = sub i64 %3442, 20
  %3444 = load i64, i64* %PC.i202
  %3445 = add i64 %3444, 4
  store i64 %3445, i64* %PC.i202
  %3446 = inttoptr i64 %3443 to i32*
  %3447 = load i32, i32* %3446
  %3448 = sext i32 %3447 to i64
  store i64 %3448, i64* %RCX.i203, align 8
  store %struct.Memory* %loadMem_41c296, %struct.Memory** %MEMORY
  %loadMem_41c29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 1
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %3454 to i32*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 5
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %3457 to i64*
  %3458 = load i64, i64* %RCX.i201
  %3459 = mul i64 %3458, 8
  %3460 = add i64 %3459, 8940160
  %3461 = load i32, i32* %EAX.i200
  %3462 = zext i32 %3461 to i64
  %3463 = load i64, i64* %PC.i199
  %3464 = add i64 %3463, 7
  store i64 %3464, i64* %PC.i199
  %3465 = inttoptr i64 %3460 to i32*
  store i32 %3461, i32* %3465
  store %struct.Memory* %loadMem_41c29a, %struct.Memory** %MEMORY
  %loadMem_41c2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 1
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 15
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %RBP.i198
  %3476 = sub i64 %3475, 8
  %3477 = load i64, i64* %PC.i196
  %3478 = add i64 %3477, 3
  store i64 %3478, i64* %PC.i196
  %3479 = inttoptr i64 %3476 to i32*
  %3480 = load i32, i32* %3479
  %3481 = zext i32 %3480 to i64
  store i64 %3481, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_41c2a1, %struct.Memory** %MEMORY
  %loadMem_41c2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 15
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3490 to i64*
  %3491 = load i64, i64* %RBP.i195
  %3492 = sub i64 %3491, 20
  %3493 = load i64, i64* %PC.i193
  %3494 = add i64 %3493, 4
  store i64 %3494, i64* %PC.i193
  %3495 = inttoptr i64 %3492 to i32*
  %3496 = load i32, i32* %3495
  %3497 = sext i32 %3496 to i64
  store i64 %3497, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_41c2a4, %struct.Memory** %MEMORY
  %loadMem_41c2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 1
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %3503 to i32*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 5
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RCX.i192
  %3508 = mul i64 %3507, 8
  %3509 = add i64 %3508, 8940164
  %3510 = load i32, i32* %EAX.i191
  %3511 = zext i32 %3510 to i64
  %3512 = load i64, i64* %PC.i190
  %3513 = add i64 %3512, 7
  store i64 %3513, i64* %PC.i190
  %3514 = inttoptr i64 %3509 to i32*
  store i32 %3510, i32* %3514
  store %struct.Memory* %loadMem_41c2a8, %struct.Memory** %MEMORY
  %loadMem_41c2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 33
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 1
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 15
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3523 to i64*
  %3524 = load i64, i64* %RBP.i189
  %3525 = sub i64 %3524, 20
  %3526 = load i64, i64* %PC.i187
  %3527 = add i64 %3526, 3
  store i64 %3527, i64* %PC.i187
  %3528 = inttoptr i64 %3525 to i32*
  %3529 = load i32, i32* %3528
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_41c2af, %struct.Memory** %MEMORY
  %loadMem_41c2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 1
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RAX.i186
  %3538 = load i64, i64* %PC.i185
  %3539 = add i64 %3538, 3
  store i64 %3539, i64* %PC.i185
  %3540 = trunc i64 %3537 to i32
  %3541 = add i32 1, %3540
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RAX.i186, align 8
  %3543 = icmp ult i32 %3541, %3540
  %3544 = icmp ult i32 %3541, 1
  %3545 = or i1 %3543, %3544
  %3546 = zext i1 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3546, i8* %3547, align 1
  %3548 = and i32 %3541, 255
  %3549 = call i32 @llvm.ctpop.i32(i32 %3548)
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3552, i8* %3553, align 1
  %3554 = xor i64 1, %3537
  %3555 = trunc i64 %3554 to i32
  %3556 = xor i32 %3555, %3541
  %3557 = lshr i32 %3556, 4
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3559, i8* %3560, align 1
  %3561 = icmp eq i32 %3541, 0
  %3562 = zext i1 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3562, i8* %3563, align 1
  %3564 = lshr i32 %3541, 31
  %3565 = trunc i32 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3565, i8* %3566, align 1
  %3567 = lshr i32 %3540, 31
  %3568 = xor i32 %3564, %3567
  %3569 = add i32 %3568, %3564
  %3570 = icmp eq i32 %3569, 2
  %3571 = zext i1 %3570 to i8
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3571, i8* %3572, align 1
  store %struct.Memory* %loadMem_41c2b2, %struct.Memory** %MEMORY
  %loadMem_41c2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 1
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %3578 to i32*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 15
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %RBP.i184
  %3583 = sub i64 %3582, 20
  %3584 = load i32, i32* %EAX.i183
  %3585 = zext i32 %3584 to i64
  %3586 = load i64, i64* %PC.i182
  %3587 = add i64 %3586, 3
  store i64 %3587, i64* %PC.i182
  %3588 = inttoptr i64 %3583 to i32*
  store i32 %3584, i32* %3588
  store %struct.Memory* %loadMem_41c2b5, %struct.Memory** %MEMORY
  %loadMem_41c2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 33
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %PC.i181
  %3593 = add i64 %3592, 128
  %3594 = load i64, i64* %PC.i181
  %3595 = add i64 %3594, 5
  store i64 %3595, i64* %PC.i181
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3593, i64* %3596, align 8
  store %struct.Memory* %loadMem_41c2b8, %struct.Memory** %MEMORY
  br label %block_.L_41c338

block_.L_41c2bd:                                  ; preds = %block_41c289
  %loadMem_41c2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 15
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RBP.i180
  %3604 = sub i64 %3603, 12
  %3605 = load i64, i64* %PC.i179
  %3606 = add i64 %3605, 4
  store i64 %3606, i64* %PC.i179
  %3607 = inttoptr i64 %3604 to i32*
  %3608 = load i32, i32* %3607
  %3609 = sub i32 %3608, 12
  %3610 = icmp ult i32 %3608, 12
  %3611 = zext i1 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3611, i8* %3612, align 1
  %3613 = and i32 %3609, 255
  %3614 = call i32 @llvm.ctpop.i32(i32 %3613)
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = xor i8 %3616, 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3617, i8* %3618, align 1
  %3619 = xor i32 %3608, 12
  %3620 = xor i32 %3619, %3609
  %3621 = lshr i32 %3620, 4
  %3622 = trunc i32 %3621 to i8
  %3623 = and i8 %3622, 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3623, i8* %3624, align 1
  %3625 = icmp eq i32 %3609, 0
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3626, i8* %3627, align 1
  %3628 = lshr i32 %3609, 31
  %3629 = trunc i32 %3628 to i8
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3629, i8* %3630, align 1
  %3631 = lshr i32 %3608, 31
  %3632 = xor i32 %3628, %3631
  %3633 = add i32 %3632, %3631
  %3634 = icmp eq i32 %3633, 2
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3635, i8* %3636, align 1
  store %struct.Memory* %loadMem_41c2bd, %struct.Memory** %MEMORY
  %loadMem_41c2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %PC.i178
  %3641 = add i64 %3640, 16
  %3642 = load i64, i64* %PC.i178
  %3643 = add i64 %3642, 6
  %3644 = load i64, i64* %PC.i178
  %3645 = add i64 %3644, 6
  store i64 %3645, i64* %PC.i178
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3647 = load i8, i8* %3646, align 1
  store i8 %3647, i8* %BRANCH_TAKEN, align 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3649 = icmp ne i8 %3647, 0
  %3650 = select i1 %3649, i64 %3641, i64 %3643
  store i64 %3650, i64* %3648, align 8
  store %struct.Memory* %loadMem_41c2c1, %struct.Memory** %MEMORY
  %loadBr_41c2c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c2c1 = icmp eq i8 %loadBr_41c2c1, 1
  br i1 %cmpBr_41c2c1, label %block_.L_41c2d1, label %block_41c2c7

block_41c2c7:                                     ; preds = %block_.L_41c2bd
  %loadMem_41c2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 15
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3656 to i64*
  %3657 = load i64, i64* %RBP.i177
  %3658 = sub i64 %3657, 12
  %3659 = load i64, i64* %PC.i176
  %3660 = add i64 %3659, 4
  store i64 %3660, i64* %PC.i176
  %3661 = inttoptr i64 %3658 to i32*
  %3662 = load i32, i32* %3661
  %3663 = sub i32 %3662, 10
  %3664 = icmp ult i32 %3662, 10
  %3665 = zext i1 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3665, i8* %3666, align 1
  %3667 = and i32 %3663, 255
  %3668 = call i32 @llvm.ctpop.i32(i32 %3667)
  %3669 = trunc i32 %3668 to i8
  %3670 = and i8 %3669, 1
  %3671 = xor i8 %3670, 1
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3671, i8* %3672, align 1
  %3673 = xor i32 %3662, 10
  %3674 = xor i32 %3673, %3663
  %3675 = lshr i32 %3674, 4
  %3676 = trunc i32 %3675 to i8
  %3677 = and i8 %3676, 1
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3677, i8* %3678, align 1
  %3679 = icmp eq i32 %3663, 0
  %3680 = zext i1 %3679 to i8
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3680, i8* %3681, align 1
  %3682 = lshr i32 %3663, 31
  %3683 = trunc i32 %3682 to i8
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3683, i8* %3684, align 1
  %3685 = lshr i32 %3662, 31
  %3686 = xor i32 %3682, %3685
  %3687 = add i32 %3686, %3685
  %3688 = icmp eq i32 %3687, 2
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3689, i8* %3690, align 1
  store %struct.Memory* %loadMem_41c2c7, %struct.Memory** %MEMORY
  %loadMem_41c2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %PC.i175
  %3695 = add i64 %3694, 48
  %3696 = load i64, i64* %PC.i175
  %3697 = add i64 %3696, 6
  %3698 = load i64, i64* %PC.i175
  %3699 = add i64 %3698, 6
  store i64 %3699, i64* %PC.i175
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3701 = load i8, i8* %3700, align 1
  %3702 = icmp eq i8 %3701, 0
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %BRANCH_TAKEN, align 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3705 = select i1 %3702, i64 %3695, i64 %3697
  store i64 %3705, i64* %3704, align 8
  store %struct.Memory* %loadMem_41c2cb, %struct.Memory** %MEMORY
  %loadBr_41c2cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c2cb = icmp eq i8 %loadBr_41c2cb, 1
  br i1 %cmpBr_41c2cb, label %block_.L_41c2fb, label %block_.L_41c2d1

block_.L_41c2d1:                                  ; preds = %block_41c2c7, %block_.L_41c2bd
  %loadMem_41c2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 33
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 1
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 15
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RBP.i174
  %3716 = sub i64 %3715, 12
  %3717 = load i64, i64* %PC.i172
  %3718 = add i64 %3717, 3
  store i64 %3718, i64* %PC.i172
  %3719 = inttoptr i64 %3716 to i32*
  %3720 = load i32, i32* %3719
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_41c2d1, %struct.Memory** %MEMORY
  %loadMem_41c2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 5
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 15
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %RBP.i171
  %3732 = sub i64 %3731, 24
  %3733 = load i64, i64* %PC.i169
  %3734 = add i64 %3733, 4
  store i64 %3734, i64* %PC.i169
  %3735 = inttoptr i64 %3732 to i32*
  %3736 = load i32, i32* %3735
  %3737 = sext i32 %3736 to i64
  store i64 %3737, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_41c2d4, %struct.Memory** %MEMORY
  %loadMem_41c2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 1
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %EAX.i167 = bitcast %union.anon* %3743 to i32*
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 5
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %RCX.i168
  %3748 = mul i64 %3747, 8
  %3749 = add i64 %3748, 8940288
  %3750 = load i32, i32* %EAX.i167
  %3751 = zext i32 %3750 to i64
  %3752 = load i64, i64* %PC.i166
  %3753 = add i64 %3752, 7
  store i64 %3753, i64* %PC.i166
  %3754 = inttoptr i64 %3749 to i32*
  store i32 %3750, i32* %3754
  store %struct.Memory* %loadMem_41c2d8, %struct.Memory** %MEMORY
  %loadMem_41c2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 1
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 15
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %RBP.i165
  %3765 = sub i64 %3764, 8
  %3766 = load i64, i64* %PC.i163
  %3767 = add i64 %3766, 3
  store i64 %3767, i64* %PC.i163
  %3768 = inttoptr i64 %3765 to i32*
  %3769 = load i32, i32* %3768
  %3770 = zext i32 %3769 to i64
  store i64 %3770, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_41c2df, %struct.Memory** %MEMORY
  %loadMem_41c2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 5
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 15
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RBP.i162
  %3781 = sub i64 %3780, 24
  %3782 = load i64, i64* %PC.i160
  %3783 = add i64 %3782, 4
  store i64 %3783, i64* %PC.i160
  %3784 = inttoptr i64 %3781 to i32*
  %3785 = load i32, i32* %3784
  %3786 = sext i32 %3785 to i64
  store i64 %3786, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_41c2e2, %struct.Memory** %MEMORY
  %loadMem_41c2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 1
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %3792 to i32*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 5
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %RCX.i159
  %3797 = mul i64 %3796, 8
  %3798 = add i64 %3797, 8940292
  %3799 = load i32, i32* %EAX.i158
  %3800 = zext i32 %3799 to i64
  %3801 = load i64, i64* %PC.i157
  %3802 = add i64 %3801, 7
  store i64 %3802, i64* %PC.i157
  %3803 = inttoptr i64 %3798 to i32*
  store i32 %3799, i32* %3803
  store %struct.Memory* %loadMem_41c2e6, %struct.Memory** %MEMORY
  %loadMem_41c2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 1
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %3809 to i64*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 15
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %3812 to i64*
  %3813 = load i64, i64* %RBP.i156
  %3814 = sub i64 %3813, 24
  %3815 = load i64, i64* %PC.i154
  %3816 = add i64 %3815, 3
  store i64 %3816, i64* %PC.i154
  %3817 = inttoptr i64 %3814 to i32*
  %3818 = load i32, i32* %3817
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_41c2ed, %struct.Memory** %MEMORY
  %loadMem_41c2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 1
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RAX.i153
  %3827 = load i64, i64* %PC.i152
  %3828 = add i64 %3827, 3
  store i64 %3828, i64* %PC.i152
  %3829 = trunc i64 %3826 to i32
  %3830 = add i32 1, %3829
  %3831 = zext i32 %3830 to i64
  store i64 %3831, i64* %RAX.i153, align 8
  %3832 = icmp ult i32 %3830, %3829
  %3833 = icmp ult i32 %3830, 1
  %3834 = or i1 %3832, %3833
  %3835 = zext i1 %3834 to i8
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3835, i8* %3836, align 1
  %3837 = and i32 %3830, 255
  %3838 = call i32 @llvm.ctpop.i32(i32 %3837)
  %3839 = trunc i32 %3838 to i8
  %3840 = and i8 %3839, 1
  %3841 = xor i8 %3840, 1
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3841, i8* %3842, align 1
  %3843 = xor i64 1, %3826
  %3844 = trunc i64 %3843 to i32
  %3845 = xor i32 %3844, %3830
  %3846 = lshr i32 %3845, 4
  %3847 = trunc i32 %3846 to i8
  %3848 = and i8 %3847, 1
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3848, i8* %3849, align 1
  %3850 = icmp eq i32 %3830, 0
  %3851 = zext i1 %3850 to i8
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3851, i8* %3852, align 1
  %3853 = lshr i32 %3830, 31
  %3854 = trunc i32 %3853 to i8
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3854, i8* %3855, align 1
  %3856 = lshr i32 %3829, 31
  %3857 = xor i32 %3853, %3856
  %3858 = add i32 %3857, %3853
  %3859 = icmp eq i32 %3858, 2
  %3860 = zext i1 %3859 to i8
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3860, i8* %3861, align 1
  store %struct.Memory* %loadMem_41c2f0, %struct.Memory** %MEMORY
  %loadMem_41c2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 1
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %3867 to i32*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 15
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %RBP.i151
  %3872 = sub i64 %3871, 24
  %3873 = load i32, i32* %EAX.i150
  %3874 = zext i32 %3873 to i64
  %3875 = load i64, i64* %PC.i149
  %3876 = add i64 %3875, 3
  store i64 %3876, i64* %PC.i149
  %3877 = inttoptr i64 %3872 to i32*
  store i32 %3873, i32* %3877
  store %struct.Memory* %loadMem_41c2f3, %struct.Memory** %MEMORY
  %loadMem_41c2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %PC.i148
  %3882 = add i64 %3881, 66
  %3883 = load i64, i64* %PC.i148
  %3884 = add i64 %3883, 5
  store i64 %3884, i64* %PC.i148
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3882, i64* %3885, align 8
  store %struct.Memory* %loadMem_41c2f6, %struct.Memory** %MEMORY
  br label %block_.L_41c338

block_.L_41c2fb:                                  ; preds = %block_41c2c7
  %loadMem_41c2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 15
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %RBP.i147
  %3893 = sub i64 %3892, 12
  %3894 = load i64, i64* %PC.i146
  %3895 = add i64 %3894, 4
  store i64 %3895, i64* %PC.i146
  %3896 = inttoptr i64 %3893 to i32*
  %3897 = load i32, i32* %3896
  %3898 = sub i32 %3897, 13
  %3899 = icmp ult i32 %3897, 13
  %3900 = zext i1 %3899 to i8
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3900, i8* %3901, align 1
  %3902 = and i32 %3898, 255
  %3903 = call i32 @llvm.ctpop.i32(i32 %3902)
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = xor i8 %3905, 1
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3906, i8* %3907, align 1
  %3908 = xor i32 %3897, 13
  %3909 = xor i32 %3908, %3898
  %3910 = lshr i32 %3909, 4
  %3911 = trunc i32 %3910 to i8
  %3912 = and i8 %3911, 1
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3912, i8* %3913, align 1
  %3914 = icmp eq i32 %3898, 0
  %3915 = zext i1 %3914 to i8
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3915, i8* %3916, align 1
  %3917 = lshr i32 %3898, 31
  %3918 = trunc i32 %3917 to i8
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3918, i8* %3919, align 1
  %3920 = lshr i32 %3897, 31
  %3921 = xor i32 %3917, %3920
  %3922 = add i32 %3921, %3920
  %3923 = icmp eq i32 %3922, 2
  %3924 = zext i1 %3923 to i8
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3924, i8* %3925, align 1
  store %struct.Memory* %loadMem_41c2fb, %struct.Memory** %MEMORY
  %loadMem_41c2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %PC.i145
  %3930 = add i64 %3929, 11
  %3931 = load i64, i64* %PC.i145
  %3932 = add i64 %3931, 6
  %3933 = load i64, i64* %PC.i145
  %3934 = add i64 %3933, 6
  store i64 %3934, i64* %PC.i145
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3936 = load i8, i8* %3935, align 1
  store i8 %3936, i8* %BRANCH_TAKEN, align 1
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3938 = icmp ne i8 %3936, 0
  %3939 = select i1 %3938, i64 %3930, i64 %3932
  store i64 %3939, i64* %3937, align 8
  store %struct.Memory* %loadMem_41c2ff, %struct.Memory** %MEMORY
  %loadBr_41c2ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c2ff = icmp eq i8 %loadBr_41c2ff, 1
  br i1 %cmpBr_41c2ff, label %block_.L_41c30a, label %block_41c305

block_41c305:                                     ; preds = %block_.L_41c2fb
  %loadMem_41c305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %PC.i144
  %3944 = add i64 %3943, 51
  %3945 = load i64, i64* %PC.i144
  %3946 = add i64 %3945, 5
  store i64 %3946, i64* %PC.i144
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3944, i64* %3947, align 8
  store %struct.Memory* %loadMem_41c305, %struct.Memory** %MEMORY
  br label %block_.L_41c338

block_.L_41c30a:                                  ; preds = %block_.L_41c2fb
  %loadMem_41c30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %PC.i143
  %3952 = add i64 %3951, 5
  %3953 = load i64, i64* %PC.i143
  %3954 = add i64 %3953, 5
  store i64 %3954, i64* %PC.i143
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3952, i64* %3955, align 8
  store %struct.Memory* %loadMem_41c30a, %struct.Memory** %MEMORY
  br label %block_.L_41c30f

block_.L_41c30f:                                  ; preds = %block_.L_41c30a
  %loadMem_41c30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %PC.i142
  %3960 = add i64 %3959, 5
  %3961 = load i64, i64* %PC.i142
  %3962 = add i64 %3961, 5
  store i64 %3962, i64* %PC.i142
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3960, i64* %3963, align 8
  store %struct.Memory* %loadMem_41c30f, %struct.Memory** %MEMORY
  br label %block_.L_41c314

block_.L_41c314:                                  ; preds = %block_.L_41c30f
  %loadMem_41c314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RBP.i141
  %3974 = sub i64 %3973, 16
  %3975 = load i64, i64* %PC.i139
  %3976 = add i64 %3975, 4
  store i64 %3976, i64* %PC.i139
  %3977 = inttoptr i64 %3974 to i32*
  %3978 = load i32, i32* %3977
  %3979 = sext i32 %3978 to i64
  store i64 %3979, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_41c314, %struct.Memory** %MEMORY
  %loadMem_41c318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 1
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 5
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %RAX.i137
  %3990 = mul i64 %3989, 4
  %3991 = add i64 %3990, 4357552
  %3992 = load i64, i64* %PC.i136
  %3993 = add i64 %3992, 7
  store i64 %3993, i64* %PC.i136
  %3994 = inttoptr i64 %3991 to i32*
  %3995 = load i32, i32* %3994
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_41c318, %struct.Memory** %MEMORY
  %loadMem_41c31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 5
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 15
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %4005 to i64*
  %4006 = load i64, i64* %RCX.i134
  %4007 = load i64, i64* %RBP.i135
  %4008 = sub i64 %4007, 8
  %4009 = load i64, i64* %PC.i133
  %4010 = add i64 %4009, 3
  store i64 %4010, i64* %PC.i133
  %4011 = trunc i64 %4006 to i32
  %4012 = inttoptr i64 %4008 to i32*
  %4013 = load i32, i32* %4012
  %4014 = add i32 %4013, %4011
  %4015 = zext i32 %4014 to i64
  store i64 %4015, i64* %RCX.i134, align 8
  %4016 = icmp ult i32 %4014, %4011
  %4017 = icmp ult i32 %4014, %4013
  %4018 = or i1 %4016, %4017
  %4019 = zext i1 %4018 to i8
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4019, i8* %4020, align 1
  %4021 = and i32 %4014, 255
  %4022 = call i32 @llvm.ctpop.i32(i32 %4021)
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = xor i8 %4024, 1
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4025, i8* %4026, align 1
  %4027 = xor i32 %4013, %4011
  %4028 = xor i32 %4027, %4014
  %4029 = lshr i32 %4028, 4
  %4030 = trunc i32 %4029 to i8
  %4031 = and i8 %4030, 1
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4031, i8* %4032, align 1
  %4033 = icmp eq i32 %4014, 0
  %4034 = zext i1 %4033 to i8
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4034, i8* %4035, align 1
  %4036 = lshr i32 %4014, 31
  %4037 = trunc i32 %4036 to i8
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4037, i8* %4038, align 1
  %4039 = lshr i32 %4011, 31
  %4040 = lshr i32 %4013, 31
  %4041 = xor i32 %4036, %4039
  %4042 = xor i32 %4036, %4040
  %4043 = add i32 %4041, %4042
  %4044 = icmp eq i32 %4043, 2
  %4045 = zext i1 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4045, i8* %4046, align 1
  store %struct.Memory* %loadMem_41c31f, %struct.Memory** %MEMORY
  %loadMem_41c322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 33
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 5
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %ECX.i131 = bitcast %union.anon* %4052 to i32*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 15
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %4055 to i64*
  %4056 = load i64, i64* %RBP.i132
  %4057 = sub i64 %4056, 8
  %4058 = load i32, i32* %ECX.i131
  %4059 = zext i32 %4058 to i64
  %4060 = load i64, i64* %PC.i130
  %4061 = add i64 %4060, 3
  store i64 %4061, i64* %PC.i130
  %4062 = inttoptr i64 %4057 to i32*
  store i32 %4058, i32* %4062
  store %struct.Memory* %loadMem_41c322, %struct.Memory** %MEMORY
  %loadMem_41c325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 1
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 15
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RBP.i129
  %4073 = sub i64 %4072, 8
  %4074 = load i64, i64* %PC.i127
  %4075 = add i64 %4074, 4
  store i64 %4075, i64* %PC.i127
  %4076 = inttoptr i64 %4073 to i32*
  %4077 = load i32, i32* %4076
  %4078 = sext i32 %4077 to i64
  store i64 %4078, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_41c325, %struct.Memory** %MEMORY
  %loadMem_41c329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 1
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %4084 to i64*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 5
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %4087 to i64*
  %4088 = load i64, i64* %RAX.i125
  %4089 = mul i64 %4088, 4
  %4090 = add i64 %4089, 8807744
  %4091 = load i64, i64* %PC.i124
  %4092 = add i64 %4091, 7
  store i64 %4092, i64* %PC.i124
  %4093 = inttoptr i64 %4090 to i32*
  %4094 = load i32, i32* %4093
  %4095 = zext i32 %4094 to i64
  store i64 %4095, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_41c329, %struct.Memory** %MEMORY
  %loadMem_41c330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 33
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4098 to i64*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 5
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4101 to i32*
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 15
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4104 to i64*
  %4105 = load i64, i64* %RBP.i123
  %4106 = sub i64 %4105, 12
  %4107 = load i32, i32* %ECX.i
  %4108 = zext i32 %4107 to i64
  %4109 = load i64, i64* %PC.i122
  %4110 = add i64 %4109, 3
  store i64 %4110, i64* %PC.i122
  %4111 = inttoptr i64 %4106 to i32*
  store i32 %4107, i32* %4111
  store %struct.Memory* %loadMem_41c330, %struct.Memory** %MEMORY
  %loadMem_41c333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4114 to i64*
  %4115 = load i64, i64* %PC.i121
  %4116 = add i64 %4115, -190
  %4117 = load i64, i64* %PC.i121
  %4118 = add i64 %4117, 5
  store i64 %4118, i64* %PC.i121
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4116, i64* %4119, align 8
  store %struct.Memory* %loadMem_41c333, %struct.Memory** %MEMORY
  br label %block_.L_41c275

block_.L_41c338:                                  ; preds = %block_41c305, %block_.L_41c2d1, %block_.L_41c293, %block_.L_41c275
  %loadMem_41c338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 33
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4122 to i64*
  %4123 = load i64, i64* %PC.i120
  %4124 = add i64 %4123, 5
  %4125 = load i64, i64* %PC.i120
  %4126 = add i64 %4125, 5
  store i64 %4126, i64* %PC.i120
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4124, i64* %4127, align 8
  store %struct.Memory* %loadMem_41c338, %struct.Memory** %MEMORY
  br label %block_.L_41c33d

block_.L_41c33d:                                  ; preds = %block_.L_41c338
  %loadMem_41c33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %PC.i119
  %4132 = add i64 %4131, 5
  %4133 = load i64, i64* %PC.i119
  %4134 = add i64 %4133, 5
  store i64 %4134, i64* %PC.i119
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4132, i64* %4135, align 8
  store %struct.Memory* %loadMem_41c33d, %struct.Memory** %MEMORY
  br label %block_.L_41c342

block_.L_41c342:                                  ; preds = %block_.L_41c33d
  %loadMem_41c342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %PC.i118
  %4140 = add i64 %4139, 5
  %4141 = load i64, i64* %PC.i118
  %4142 = add i64 %4141, 5
  store i64 %4142, i64* %PC.i118
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4140, i64* %4143, align 8
  store %struct.Memory* %loadMem_41c342, %struct.Memory** %MEMORY
  br label %block_.L_41c347

block_.L_41c347:                                  ; preds = %block_.L_41c342
  %loadMem_41c347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4146 to i64*
  %4147 = load i64, i64* %PC.i117
  %4148 = add i64 %4147, 5
  %4149 = load i64, i64* %PC.i117
  %4150 = add i64 %4149, 5
  store i64 %4150, i64* %PC.i117
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4148, i64* %4151, align 8
  store %struct.Memory* %loadMem_41c347, %struct.Memory** %MEMORY
  br label %block_.L_41c34c

block_.L_41c34c:                                  ; preds = %block_.L_41c347
  %loadMem_41c34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %PC.i116
  %4156 = add i64 %4155, 5
  %4157 = load i64, i64* %PC.i116
  %4158 = add i64 %4157, 5
  store i64 %4158, i64* %PC.i116
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4156, i64* %4159, align 8
  store %struct.Memory* %loadMem_41c34c, %struct.Memory** %MEMORY
  br label %block_.L_41c351

block_.L_41c351:                                  ; preds = %block_.L_41c34c
  %loadMem_41c351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 1
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 15
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4168 to i64*
  %4169 = load i64, i64* %RBP.i115
  %4170 = sub i64 %4169, 16
  %4171 = load i64, i64* %PC.i113
  %4172 = add i64 %4171, 3
  store i64 %4172, i64* %PC.i113
  %4173 = inttoptr i64 %4170 to i32*
  %4174 = load i32, i32* %4173
  %4175 = zext i32 %4174 to i64
  store i64 %4175, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_41c351, %struct.Memory** %MEMORY
  %loadMem_41c354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 1
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %4181 to i64*
  %4182 = load i64, i64* %RAX.i112
  %4183 = load i64, i64* %PC.i111
  %4184 = add i64 %4183, 3
  store i64 %4184, i64* %PC.i111
  %4185 = trunc i64 %4182 to i32
  %4186 = add i32 1, %4185
  %4187 = zext i32 %4186 to i64
  store i64 %4187, i64* %RAX.i112, align 8
  %4188 = icmp ult i32 %4186, %4185
  %4189 = icmp ult i32 %4186, 1
  %4190 = or i1 %4188, %4189
  %4191 = zext i1 %4190 to i8
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4191, i8* %4192, align 1
  %4193 = and i32 %4186, 255
  %4194 = call i32 @llvm.ctpop.i32(i32 %4193)
  %4195 = trunc i32 %4194 to i8
  %4196 = and i8 %4195, 1
  %4197 = xor i8 %4196, 1
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4197, i8* %4198, align 1
  %4199 = xor i64 1, %4182
  %4200 = trunc i64 %4199 to i32
  %4201 = xor i32 %4200, %4186
  %4202 = lshr i32 %4201, 4
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4204, i8* %4205, align 1
  %4206 = icmp eq i32 %4186, 0
  %4207 = zext i1 %4206 to i8
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4207, i8* %4208, align 1
  %4209 = lshr i32 %4186, 31
  %4210 = trunc i32 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4210, i8* %4211, align 1
  %4212 = lshr i32 %4185, 31
  %4213 = xor i32 %4209, %4212
  %4214 = add i32 %4213, %4209
  %4215 = icmp eq i32 %4214, 2
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4216, i8* %4217, align 1
  store %struct.Memory* %loadMem_41c354, %struct.Memory** %MEMORY
  %loadMem_41c357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4220 to i64*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 1
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %4223 to i32*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 15
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %4226 to i64*
  %4227 = load i64, i64* %RBP.i110
  %4228 = sub i64 %4227, 16
  %4229 = load i32, i32* %EAX.i109
  %4230 = zext i32 %4229 to i64
  %4231 = load i64, i64* %PC.i108
  %4232 = add i64 %4231, 3
  store i64 %4232, i64* %PC.i108
  %4233 = inttoptr i64 %4228 to i32*
  store i32 %4229, i32* %4233
  store %struct.Memory* %loadMem_41c357, %struct.Memory** %MEMORY
  %loadMem_41c35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4236 to i64*
  %4237 = load i64, i64* %PC.i107
  %4238 = add i64 %4237, -539
  %4239 = load i64, i64* %PC.i107
  %4240 = add i64 %4239, 5
  store i64 %4240, i64* %PC.i107
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4238, i64* %4241, align 8
  store %struct.Memory* %loadMem_41c35a, %struct.Memory** %MEMORY
  br label %block_.L_41c13f

block_.L_41c35f:                                  ; preds = %block_41c246, %block_41c212, %block_41c1de, %block_41c18e, %block_.L_41c13f
  %loadMem_41c35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 33
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 15
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %4247 to i64*
  %4248 = load i64, i64* %RBP.i106
  %4249 = sub i64 %4248, 16
  %4250 = load i64, i64* %PC.i105
  %4251 = add i64 %4250, 7
  store i64 %4251, i64* %PC.i105
  %4252 = inttoptr i64 %4249 to i32*
  store i32 0, i32* %4252
  store %struct.Memory* %loadMem_41c35f, %struct.Memory** %MEMORY
  br label %block_.L_41c366

block_.L_41c366:                                  ; preds = %block_.L_41c3fc, %block_.L_41c35f
  %loadMem_41c366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 15
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %RBP.i104
  %4260 = sub i64 %4259, 16
  %4261 = load i64, i64* %PC.i103
  %4262 = add i64 %4261, 4
  store i64 %4262, i64* %PC.i103
  %4263 = inttoptr i64 %4260 to i32*
  %4264 = load i32, i32* %4263
  %4265 = sub i32 %4264, 8
  %4266 = icmp ult i32 %4264, 8
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4267, i8* %4268, align 1
  %4269 = and i32 %4265, 255
  %4270 = call i32 @llvm.ctpop.i32(i32 %4269)
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = xor i8 %4272, 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4273, i8* %4274, align 1
  %4275 = xor i32 %4264, 8
  %4276 = xor i32 %4275, %4265
  %4277 = lshr i32 %4276, 4
  %4278 = trunc i32 %4277 to i8
  %4279 = and i8 %4278, 1
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4279, i8* %4280, align 1
  %4281 = icmp eq i32 %4265, 0
  %4282 = zext i1 %4281 to i8
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4282, i8* %4283, align 1
  %4284 = lshr i32 %4265, 31
  %4285 = trunc i32 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4285, i8* %4286, align 1
  %4287 = lshr i32 %4264, 31
  %4288 = xor i32 %4284, %4287
  %4289 = add i32 %4288, %4287
  %4290 = icmp eq i32 %4289, 2
  %4291 = zext i1 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4291, i8* %4292, align 1
  store %struct.Memory* %loadMem_41c366, %struct.Memory** %MEMORY
  %loadMem_41c36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4295 to i64*
  %4296 = load i64, i64* %PC.i102
  %4297 = add i64 %4296, 160
  %4298 = load i64, i64* %PC.i102
  %4299 = add i64 %4298, 6
  %4300 = load i64, i64* %PC.i102
  %4301 = add i64 %4300, 6
  store i64 %4301, i64* %PC.i102
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4303 = load i8, i8* %4302, align 1
  %4304 = icmp ne i8 %4303, 0
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4306 = load i8, i8* %4305, align 1
  %4307 = icmp ne i8 %4306, 0
  %4308 = xor i1 %4304, %4307
  %4309 = xor i1 %4308, true
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %BRANCH_TAKEN, align 1
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4312 = select i1 %4308, i64 %4299, i64 %4297
  store i64 %4312, i64* %4311, align 8
  store %struct.Memory* %loadMem_41c36a, %struct.Memory** %MEMORY
  %loadBr_41c36a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c36a = icmp eq i8 %loadBr_41c36a, 1
  br i1 %cmpBr_41c36a, label %block_.L_41c40a, label %block_41c370

block_41c370:                                     ; preds = %block_.L_41c366
  %loadMem_41c370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 33
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4315 to i64*
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 1
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 15
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %RBP.i101
  %4323 = sub i64 %4322, 4
  %4324 = load i64, i64* %PC.i99
  %4325 = add i64 %4324, 3
  store i64 %4325, i64* %PC.i99
  %4326 = inttoptr i64 %4323 to i32*
  %4327 = load i32, i32* %4326
  %4328 = zext i32 %4327 to i64
  store i64 %4328, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_41c370, %struct.Memory** %MEMORY
  %loadMem_41c373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 33
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 5
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 15
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %4337 to i64*
  %4338 = load i64, i64* %RBP.i98
  %4339 = sub i64 %4338, 16
  %4340 = load i64, i64* %PC.i96
  %4341 = add i64 %4340, 4
  store i64 %4341, i64* %PC.i96
  %4342 = inttoptr i64 %4339 to i32*
  %4343 = load i32, i32* %4342
  %4344 = sext i32 %4343 to i64
  store i64 %4344, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_41c373, %struct.Memory** %MEMORY
  %loadMem_41c377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 1
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 5
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %RAX.i94
  %4355 = load i64, i64* %RCX.i95
  %4356 = mul i64 %4355, 4
  %4357 = add i64 %4356, 4357568
  %4358 = load i64, i64* %PC.i93
  %4359 = add i64 %4358, 7
  store i64 %4359, i64* %PC.i93
  %4360 = trunc i64 %4354 to i32
  %4361 = inttoptr i64 %4357 to i32*
  %4362 = load i32, i32* %4361
  %4363 = add i32 %4362, %4360
  %4364 = zext i32 %4363 to i64
  store i64 %4364, i64* %RAX.i94, align 8
  %4365 = icmp ult i32 %4363, %4360
  %4366 = icmp ult i32 %4363, %4362
  %4367 = or i1 %4365, %4366
  %4368 = zext i1 %4367 to i8
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4368, i8* %4369, align 1
  %4370 = and i32 %4363, 255
  %4371 = call i32 @llvm.ctpop.i32(i32 %4370)
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = xor i8 %4373, 1
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4374, i8* %4375, align 1
  %4376 = xor i32 %4362, %4360
  %4377 = xor i32 %4376, %4363
  %4378 = lshr i32 %4377, 4
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4380, i8* %4381, align 1
  %4382 = icmp eq i32 %4363, 0
  %4383 = zext i1 %4382 to i8
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4383, i8* %4384, align 1
  %4385 = lshr i32 %4363, 31
  %4386 = trunc i32 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4386, i8* %4387, align 1
  %4388 = lshr i32 %4360, 31
  %4389 = lshr i32 %4362, 31
  %4390 = xor i32 %4385, %4388
  %4391 = xor i32 %4385, %4389
  %4392 = add i32 %4390, %4391
  %4393 = icmp eq i32 %4392, 2
  %4394 = zext i1 %4393 to i8
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4394, i8* %4395, align 1
  store %struct.Memory* %loadMem_41c377, %struct.Memory** %MEMORY
  %loadMem_41c37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 1
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %4401 to i32*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 15
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %RBP.i92
  %4406 = sub i64 %4405, 8
  %4407 = load i32, i32* %EAX.i91
  %4408 = zext i32 %4407 to i64
  %4409 = load i64, i64* %PC.i90
  %4410 = add i64 %4409, 3
  store i64 %4410, i64* %PC.i90
  %4411 = inttoptr i64 %4406 to i32*
  store i32 %4407, i32* %4411
  store %struct.Memory* %loadMem_41c37e, %struct.Memory** %MEMORY
  %loadMem_41c381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 5
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 15
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4420 to i64*
  %4421 = load i64, i64* %RBP.i89
  %4422 = sub i64 %4421, 8
  %4423 = load i64, i64* %PC.i87
  %4424 = add i64 %4423, 4
  store i64 %4424, i64* %PC.i87
  %4425 = inttoptr i64 %4422 to i32*
  %4426 = load i32, i32* %4425
  %4427 = sext i32 %4426 to i64
  store i64 %4427, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_41c381, %struct.Memory** %MEMORY
  %loadMem_41c385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 33
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 1
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4433 to i64*
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 5
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %RCX.i86
  %4438 = mul i64 %4437, 4
  %4439 = add i64 %4438, 8807744
  %4440 = load i64, i64* %PC.i84
  %4441 = add i64 %4440, 7
  store i64 %4441, i64* %PC.i84
  %4442 = inttoptr i64 %4439 to i32*
  %4443 = load i32, i32* %4442
  %4444 = zext i32 %4443 to i64
  store i64 %4444, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_41c385, %struct.Memory** %MEMORY
  %loadMem_41c38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 1
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %4450 to i32*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 15
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %RBP.i83
  %4455 = sub i64 %4454, 12
  %4456 = load i32, i32* %EAX.i82
  %4457 = zext i32 %4456 to i64
  %4458 = load i64, i64* %PC.i81
  %4459 = add i64 %4458, 3
  store i64 %4459, i64* %PC.i81
  %4460 = inttoptr i64 %4455 to i32*
  store i32 %4456, i32* %4460
  store %struct.Memory* %loadMem_41c38c, %struct.Memory** %MEMORY
  %loadMem_41c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 15
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4466 to i64*
  %4467 = load i64, i64* %RBP.i80
  %4468 = sub i64 %4467, 12
  %4469 = load i64, i64* %PC.i79
  %4470 = add i64 %4469, 4
  store i64 %4470, i64* %PC.i79
  %4471 = inttoptr i64 %4468 to i32*
  %4472 = load i32, i32* %4471
  %4473 = sub i32 %4472, 3
  %4474 = icmp ult i32 %4472, 3
  %4475 = zext i1 %4474 to i8
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4475, i8* %4476, align 1
  %4477 = and i32 %4473, 255
  %4478 = call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4481, i8* %4482, align 1
  %4483 = xor i32 %4472, 3
  %4484 = xor i32 %4483, %4473
  %4485 = lshr i32 %4484, 4
  %4486 = trunc i32 %4485 to i8
  %4487 = and i8 %4486, 1
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4487, i8* %4488, align 1
  %4489 = icmp eq i32 %4473, 0
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4490, i8* %4491, align 1
  %4492 = lshr i32 %4473, 31
  %4493 = trunc i32 %4492 to i8
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4493, i8* %4494, align 1
  %4495 = lshr i32 %4472, 31
  %4496 = xor i32 %4492, %4495
  %4497 = add i32 %4496, %4495
  %4498 = icmp eq i32 %4497, 2
  %4499 = zext i1 %4498 to i8
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4499, i8* %4500, align 1
  store %struct.Memory* %loadMem_41c38f, %struct.Memory** %MEMORY
  %loadMem_41c393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %PC.i78
  %4505 = add i64 %4504, 48
  %4506 = load i64, i64* %PC.i78
  %4507 = add i64 %4506, 6
  %4508 = load i64, i64* %PC.i78
  %4509 = add i64 %4508, 6
  store i64 %4509, i64* %PC.i78
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4511 = load i8, i8* %4510, align 1
  %4512 = icmp eq i8 %4511, 0
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %BRANCH_TAKEN, align 1
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4515 = select i1 %4512, i64 %4505, i64 %4507
  store i64 %4515, i64* %4514, align 8
  store %struct.Memory* %loadMem_41c393, %struct.Memory** %MEMORY
  %loadBr_41c393 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c393 = icmp eq i8 %loadBr_41c393, 1
  br i1 %cmpBr_41c393, label %block_.L_41c3c3, label %block_41c399

block_41c399:                                     ; preds = %block_41c370
  %loadMem_41c399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 33
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4518 to i64*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 1
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 15
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %4524 to i64*
  %4525 = load i64, i64* %RBP.i77
  %4526 = sub i64 %4525, 12
  %4527 = load i64, i64* %PC.i75
  %4528 = add i64 %4527, 3
  store i64 %4528, i64* %PC.i75
  %4529 = inttoptr i64 %4526 to i32*
  %4530 = load i32, i32* %4529
  %4531 = zext i32 %4530 to i64
  store i64 %4531, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_41c399, %struct.Memory** %MEMORY
  %loadMem_41c39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 33
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4534 to i64*
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 5
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 15
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %4540 to i64*
  %4541 = load i64, i64* %RBP.i74
  %4542 = sub i64 %4541, 20
  %4543 = load i64, i64* %PC.i72
  %4544 = add i64 %4543, 4
  store i64 %4544, i64* %PC.i72
  %4545 = inttoptr i64 %4542 to i32*
  %4546 = load i32, i32* %4545
  %4547 = sext i32 %4546 to i64
  store i64 %4547, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_41c39c, %struct.Memory** %MEMORY
  %loadMem_41c3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 1
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %4553 to i32*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 5
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %RCX.i71
  %4558 = mul i64 %4557, 8
  %4559 = add i64 %4558, 8940160
  %4560 = load i32, i32* %EAX.i70
  %4561 = zext i32 %4560 to i64
  %4562 = load i64, i64* %PC.i69
  %4563 = add i64 %4562, 7
  store i64 %4563, i64* %PC.i69
  %4564 = inttoptr i64 %4559 to i32*
  store i32 %4560, i32* %4564
  store %struct.Memory* %loadMem_41c3a0, %struct.Memory** %MEMORY
  %loadMem_41c3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 1
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 15
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RBP.i68
  %4575 = sub i64 %4574, 8
  %4576 = load i64, i64* %PC.i66
  %4577 = add i64 %4576, 3
  store i64 %4577, i64* %PC.i66
  %4578 = inttoptr i64 %4575 to i32*
  %4579 = load i32, i32* %4578
  %4580 = zext i32 %4579 to i64
  store i64 %4580, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_41c3a7, %struct.Memory** %MEMORY
  %loadMem_41c3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4583 to i64*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 5
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 15
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RBP.i65
  %4591 = sub i64 %4590, 20
  %4592 = load i64, i64* %PC.i63
  %4593 = add i64 %4592, 4
  store i64 %4593, i64* %PC.i63
  %4594 = inttoptr i64 %4591 to i32*
  %4595 = load i32, i32* %4594
  %4596 = sext i32 %4595 to i64
  store i64 %4596, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_41c3aa, %struct.Memory** %MEMORY
  %loadMem_41c3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 33
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4599 to i64*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 1
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %4602 to i32*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 5
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RCX.i62
  %4607 = mul i64 %4606, 8
  %4608 = add i64 %4607, 8940164
  %4609 = load i32, i32* %EAX.i61
  %4610 = zext i32 %4609 to i64
  %4611 = load i64, i64* %PC.i60
  %4612 = add i64 %4611, 7
  store i64 %4612, i64* %PC.i60
  %4613 = inttoptr i64 %4608 to i32*
  store i32 %4609, i32* %4613
  store %struct.Memory* %loadMem_41c3ae, %struct.Memory** %MEMORY
  %loadMem_41c3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 1
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 15
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %RBP.i59
  %4624 = sub i64 %4623, 20
  %4625 = load i64, i64* %PC.i57
  %4626 = add i64 %4625, 3
  store i64 %4626, i64* %PC.i57
  %4627 = inttoptr i64 %4624 to i32*
  %4628 = load i32, i32* %4627
  %4629 = zext i32 %4628 to i64
  store i64 %4629, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_41c3b5, %struct.Memory** %MEMORY
  %loadMem_41c3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 1
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %4635 to i64*
  %4636 = load i64, i64* %RAX.i56
  %4637 = load i64, i64* %PC.i55
  %4638 = add i64 %4637, 3
  store i64 %4638, i64* %PC.i55
  %4639 = trunc i64 %4636 to i32
  %4640 = add i32 1, %4639
  %4641 = zext i32 %4640 to i64
  store i64 %4641, i64* %RAX.i56, align 8
  %4642 = icmp ult i32 %4640, %4639
  %4643 = icmp ult i32 %4640, 1
  %4644 = or i1 %4642, %4643
  %4645 = zext i1 %4644 to i8
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4645, i8* %4646, align 1
  %4647 = and i32 %4640, 255
  %4648 = call i32 @llvm.ctpop.i32(i32 %4647)
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  %4651 = xor i8 %4650, 1
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4651, i8* %4652, align 1
  %4653 = xor i64 1, %4636
  %4654 = trunc i64 %4653 to i32
  %4655 = xor i32 %4654, %4640
  %4656 = lshr i32 %4655, 4
  %4657 = trunc i32 %4656 to i8
  %4658 = and i8 %4657, 1
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4658, i8* %4659, align 1
  %4660 = icmp eq i32 %4640, 0
  %4661 = zext i1 %4660 to i8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4661, i8* %4662, align 1
  %4663 = lshr i32 %4640, 31
  %4664 = trunc i32 %4663 to i8
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4664, i8* %4665, align 1
  %4666 = lshr i32 %4639, 31
  %4667 = xor i32 %4663, %4666
  %4668 = add i32 %4667, %4663
  %4669 = icmp eq i32 %4668, 2
  %4670 = zext i1 %4669 to i8
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4670, i8* %4671, align 1
  store %struct.Memory* %loadMem_41c3b8, %struct.Memory** %MEMORY
  %loadMem_41c3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 1
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %EAX.i53 = bitcast %union.anon* %4677 to i32*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 15
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %4680 to i64*
  %4681 = load i64, i64* %RBP.i54
  %4682 = sub i64 %4681, 20
  %4683 = load i32, i32* %EAX.i53
  %4684 = zext i32 %4683 to i64
  %4685 = load i64, i64* %PC.i52
  %4686 = add i64 %4685, 3
  store i64 %4686, i64* %PC.i52
  %4687 = inttoptr i64 %4682 to i32*
  store i32 %4683, i32* %4687
  store %struct.Memory* %loadMem_41c3bb, %struct.Memory** %MEMORY
  %loadMem_41c3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %PC.i51
  %4692 = add i64 %4691, 57
  %4693 = load i64, i64* %PC.i51
  %4694 = add i64 %4693, 5
  store i64 %4694, i64* %PC.i51
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4692, i64* %4695, align 8
  store %struct.Memory* %loadMem_41c3be, %struct.Memory** %MEMORY
  br label %block_.L_41c3f7

block_.L_41c3c3:                                  ; preds = %block_41c370
  %loadMem_41c3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 15
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %4701 to i64*
  %4702 = load i64, i64* %RBP.i50
  %4703 = sub i64 %4702, 12
  %4704 = load i64, i64* %PC.i49
  %4705 = add i64 %4704, 4
  store i64 %4705, i64* %PC.i49
  %4706 = inttoptr i64 %4703 to i32*
  %4707 = load i32, i32* %4706
  %4708 = sub i32 %4707, 4
  %4709 = icmp ult i32 %4707, 4
  %4710 = zext i1 %4709 to i8
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4710, i8* %4711, align 1
  %4712 = and i32 %4708, 255
  %4713 = call i32 @llvm.ctpop.i32(i32 %4712)
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  %4716 = xor i8 %4715, 1
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4716, i8* %4717, align 1
  %4718 = xor i32 %4707, 4
  %4719 = xor i32 %4718, %4708
  %4720 = lshr i32 %4719, 4
  %4721 = trunc i32 %4720 to i8
  %4722 = and i8 %4721, 1
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4722, i8* %4723, align 1
  %4724 = icmp eq i32 %4708, 0
  %4725 = zext i1 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4725, i8* %4726, align 1
  %4727 = lshr i32 %4708, 31
  %4728 = trunc i32 %4727 to i8
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4728, i8* %4729, align 1
  %4730 = lshr i32 %4707, 31
  %4731 = xor i32 %4727, %4730
  %4732 = add i32 %4731, %4730
  %4733 = icmp eq i32 %4732, 2
  %4734 = zext i1 %4733 to i8
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4734, i8* %4735, align 1
  store %struct.Memory* %loadMem_41c3c3, %struct.Memory** %MEMORY
  %loadMem_41c3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 33
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4738 to i64*
  %4739 = load i64, i64* %PC.i48
  %4740 = add i64 %4739, 43
  %4741 = load i64, i64* %PC.i48
  %4742 = add i64 %4741, 6
  %4743 = load i64, i64* %PC.i48
  %4744 = add i64 %4743, 6
  store i64 %4744, i64* %PC.i48
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4746 = load i8, i8* %4745, align 1
  %4747 = icmp eq i8 %4746, 0
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %BRANCH_TAKEN, align 1
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4750 = select i1 %4747, i64 %4740, i64 %4742
  store i64 %4750, i64* %4749, align 8
  store %struct.Memory* %loadMem_41c3c7, %struct.Memory** %MEMORY
  %loadBr_41c3c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c3c7 = icmp eq i8 %loadBr_41c3c7, 1
  br i1 %cmpBr_41c3c7, label %block_.L_41c3f2, label %block_41c3cd

block_41c3cd:                                     ; preds = %block_.L_41c3c3
  %loadMem_41c3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 15
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RBP.i47
  %4761 = sub i64 %4760, 12
  %4762 = load i64, i64* %PC.i45
  %4763 = add i64 %4762, 3
  store i64 %4763, i64* %PC.i45
  %4764 = inttoptr i64 %4761 to i32*
  %4765 = load i32, i32* %4764
  %4766 = zext i32 %4765 to i64
  store i64 %4766, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_41c3cd, %struct.Memory** %MEMORY
  %loadMem_41c3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 5
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 15
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %RBP.i44
  %4777 = sub i64 %4776, 24
  %4778 = load i64, i64* %PC.i42
  %4779 = add i64 %4778, 4
  store i64 %4779, i64* %PC.i42
  %4780 = inttoptr i64 %4777 to i32*
  %4781 = load i32, i32* %4780
  %4782 = sext i32 %4781 to i64
  store i64 %4782, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_41c3d0, %struct.Memory** %MEMORY
  %loadMem_41c3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %4788 to i32*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 5
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RCX.i41
  %4793 = mul i64 %4792, 8
  %4794 = add i64 %4793, 8940288
  %4795 = load i32, i32* %EAX.i40
  %4796 = zext i32 %4795 to i64
  %4797 = load i64, i64* %PC.i39
  %4798 = add i64 %4797, 7
  store i64 %4798, i64* %PC.i39
  %4799 = inttoptr i64 %4794 to i32*
  store i32 %4795, i32* %4799
  store %struct.Memory* %loadMem_41c3d4, %struct.Memory** %MEMORY
  %loadMem_41c3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 33
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4802 to i64*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 1
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 15
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4808 to i64*
  %4809 = load i64, i64* %RBP.i38
  %4810 = sub i64 %4809, 8
  %4811 = load i64, i64* %PC.i36
  %4812 = add i64 %4811, 3
  store i64 %4812, i64* %PC.i36
  %4813 = inttoptr i64 %4810 to i32*
  %4814 = load i32, i32* %4813
  %4815 = zext i32 %4814 to i64
  store i64 %4815, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_41c3db, %struct.Memory** %MEMORY
  %loadMem_41c3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 33
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4818 to i64*
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 5
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 15
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4824 to i64*
  %4825 = load i64, i64* %RBP.i35
  %4826 = sub i64 %4825, 24
  %4827 = load i64, i64* %PC.i33
  %4828 = add i64 %4827, 4
  store i64 %4828, i64* %PC.i33
  %4829 = inttoptr i64 %4826 to i32*
  %4830 = load i32, i32* %4829
  %4831 = sext i32 %4830 to i64
  store i64 %4831, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_41c3de, %struct.Memory** %MEMORY
  %loadMem_41c3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 33
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4834 to i64*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 1
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %4837 to i32*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 5
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4840 to i64*
  %4841 = load i64, i64* %RCX.i
  %4842 = mul i64 %4841, 8
  %4843 = add i64 %4842, 8940292
  %4844 = load i32, i32* %EAX.i32
  %4845 = zext i32 %4844 to i64
  %4846 = load i64, i64* %PC.i31
  %4847 = add i64 %4846, 7
  store i64 %4847, i64* %PC.i31
  %4848 = inttoptr i64 %4843 to i32*
  store i32 %4844, i32* %4848
  store %struct.Memory* %loadMem_41c3e2, %struct.Memory** %MEMORY
  %loadMem_41c3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 33
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 1
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 15
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %RBP.i30
  %4859 = sub i64 %4858, 24
  %4860 = load i64, i64* %PC.i28
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i28
  %4862 = inttoptr i64 %4859 to i32*
  %4863 = load i32, i32* %4862
  %4864 = zext i32 %4863 to i64
  store i64 %4864, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_41c3e9, %struct.Memory** %MEMORY
  %loadMem_41c3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 1
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4870 to i64*
  %4871 = load i64, i64* %RAX.i27
  %4872 = load i64, i64* %PC.i26
  %4873 = add i64 %4872, 3
  store i64 %4873, i64* %PC.i26
  %4874 = trunc i64 %4871 to i32
  %4875 = add i32 1, %4874
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RAX.i27, align 8
  %4877 = icmp ult i32 %4875, %4874
  %4878 = icmp ult i32 %4875, 1
  %4879 = or i1 %4877, %4878
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4880, i8* %4881, align 1
  %4882 = and i32 %4875, 255
  %4883 = call i32 @llvm.ctpop.i32(i32 %4882)
  %4884 = trunc i32 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = xor i8 %4885, 1
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4886, i8* %4887, align 1
  %4888 = xor i64 1, %4871
  %4889 = trunc i64 %4888 to i32
  %4890 = xor i32 %4889, %4875
  %4891 = lshr i32 %4890, 4
  %4892 = trunc i32 %4891 to i8
  %4893 = and i8 %4892, 1
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4893, i8* %4894, align 1
  %4895 = icmp eq i32 %4875, 0
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4896, i8* %4897, align 1
  %4898 = lshr i32 %4875, 31
  %4899 = trunc i32 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4899, i8* %4900, align 1
  %4901 = lshr i32 %4874, 31
  %4902 = xor i32 %4898, %4901
  %4903 = add i32 %4902, %4898
  %4904 = icmp eq i32 %4903, 2
  %4905 = zext i1 %4904 to i8
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4905, i8* %4906, align 1
  store %struct.Memory* %loadMem_41c3ec, %struct.Memory** %MEMORY
  %loadMem_41c3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 33
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 1
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %4912 to i32*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 15
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4915 to i64*
  %4916 = load i64, i64* %RBP.i25
  %4917 = sub i64 %4916, 24
  %4918 = load i32, i32* %EAX.i24
  %4919 = zext i32 %4918 to i64
  %4920 = load i64, i64* %PC.i23
  %4921 = add i64 %4920, 3
  store i64 %4921, i64* %PC.i23
  %4922 = inttoptr i64 %4917 to i32*
  store i32 %4918, i32* %4922
  store %struct.Memory* %loadMem_41c3ef, %struct.Memory** %MEMORY
  br label %block_.L_41c3f2

block_.L_41c3f2:                                  ; preds = %block_41c3cd, %block_.L_41c3c3
  %loadMem_41c3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 33
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %PC.i22
  %4927 = add i64 %4926, 5
  %4928 = load i64, i64* %PC.i22
  %4929 = add i64 %4928, 5
  store i64 %4929, i64* %PC.i22
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4927, i64* %4930, align 8
  store %struct.Memory* %loadMem_41c3f2, %struct.Memory** %MEMORY
  br label %block_.L_41c3f7

block_.L_41c3f7:                                  ; preds = %block_.L_41c3f2, %block_41c399
  %loadMem_41c3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4933 to i64*
  %4934 = load i64, i64* %PC.i21
  %4935 = add i64 %4934, 5
  %4936 = load i64, i64* %PC.i21
  %4937 = add i64 %4936, 5
  store i64 %4937, i64* %PC.i21
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4935, i64* %4938, align 8
  store %struct.Memory* %loadMem_41c3f7, %struct.Memory** %MEMORY
  br label %block_.L_41c3fc

block_.L_41c3fc:                                  ; preds = %block_.L_41c3f7
  %loadMem_41c3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 1
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 15
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %RBP.i20
  %4949 = sub i64 %4948, 16
  %4950 = load i64, i64* %PC.i18
  %4951 = add i64 %4950, 3
  store i64 %4951, i64* %PC.i18
  %4952 = inttoptr i64 %4949 to i32*
  %4953 = load i32, i32* %4952
  %4954 = zext i32 %4953 to i64
  store i64 %4954, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_41c3fc, %struct.Memory** %MEMORY
  %loadMem_41c3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 1
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4960 to i64*
  %4961 = load i64, i64* %RAX.i17
  %4962 = load i64, i64* %PC.i16
  %4963 = add i64 %4962, 3
  store i64 %4963, i64* %PC.i16
  %4964 = trunc i64 %4961 to i32
  %4965 = add i32 1, %4964
  %4966 = zext i32 %4965 to i64
  store i64 %4966, i64* %RAX.i17, align 8
  %4967 = icmp ult i32 %4965, %4964
  %4968 = icmp ult i32 %4965, 1
  %4969 = or i1 %4967, %4968
  %4970 = zext i1 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4970, i8* %4971, align 1
  %4972 = and i32 %4965, 255
  %4973 = call i32 @llvm.ctpop.i32(i32 %4972)
  %4974 = trunc i32 %4973 to i8
  %4975 = and i8 %4974, 1
  %4976 = xor i8 %4975, 1
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4976, i8* %4977, align 1
  %4978 = xor i64 1, %4961
  %4979 = trunc i64 %4978 to i32
  %4980 = xor i32 %4979, %4965
  %4981 = lshr i32 %4980, 4
  %4982 = trunc i32 %4981 to i8
  %4983 = and i8 %4982, 1
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4983, i8* %4984, align 1
  %4985 = icmp eq i32 %4965, 0
  %4986 = zext i1 %4985 to i8
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4986, i8* %4987, align 1
  %4988 = lshr i32 %4965, 31
  %4989 = trunc i32 %4988 to i8
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4989, i8* %4990, align 1
  %4991 = lshr i32 %4964, 31
  %4992 = xor i32 %4988, %4991
  %4993 = add i32 %4992, %4988
  %4994 = icmp eq i32 %4993, 2
  %4995 = zext i1 %4994 to i8
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4995, i8* %4996, align 1
  store %struct.Memory* %loadMem_41c3ff, %struct.Memory** %MEMORY
  %loadMem_41c402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 1
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %5002 to i32*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 15
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5005 to i64*
  %5006 = load i64, i64* %RBP.i15
  %5007 = sub i64 %5006, 16
  %5008 = load i32, i32* %EAX.i14
  %5009 = zext i32 %5008 to i64
  %5010 = load i64, i64* %PC.i13
  %5011 = add i64 %5010, 3
  store i64 %5011, i64* %PC.i13
  %5012 = inttoptr i64 %5007 to i32*
  store i32 %5008, i32* %5012
  store %struct.Memory* %loadMem_41c402, %struct.Memory** %MEMORY
  %loadMem_41c405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 33
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %PC.i12
  %5017 = add i64 %5016, -159
  %5018 = load i64, i64* %PC.i12
  %5019 = add i64 %5018, 5
  store i64 %5019, i64* %PC.i12
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5017, i64* %5020, align 8
  store %struct.Memory* %loadMem_41c405, %struct.Memory** %MEMORY
  br label %block_.L_41c366

block_.L_41c40a:                                  ; preds = %block_.L_41c366
  %loadMem_41c40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 33
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5023 to i64*
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 1
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 15
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5029 to i64*
  %5030 = load i64, i64* %RBP.i11
  %5031 = sub i64 %5030, 20
  %5032 = load i64, i64* %PC.i9
  %5033 = add i64 %5032, 3
  store i64 %5033, i64* %PC.i9
  %5034 = inttoptr i64 %5031 to i32*
  %5035 = load i32, i32* %5034
  %5036 = zext i32 %5035 to i64
  store i64 %5036, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_41c40a, %struct.Memory** %MEMORY
  %loadMem_41c40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 1
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %EAX.i8 = bitcast %union.anon* %5042 to i32*
  %5043 = load i32, i32* %EAX.i8
  %5044 = zext i32 %5043 to i64
  %5045 = load i64, i64* %PC.i7
  %5046 = add i64 %5045, 7
  store i64 %5046, i64* %PC.i7
  store i32 %5043, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*)
  store %struct.Memory* %loadMem_41c40d, %struct.Memory** %MEMORY
  %loadMem_41c414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 33
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 1
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5052 to i64*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 15
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5055 to i64*
  %5056 = load i64, i64* %RBP.i6
  %5057 = sub i64 %5056, 24
  %5058 = load i64, i64* %PC.i5
  %5059 = add i64 %5058, 3
  store i64 %5059, i64* %PC.i5
  %5060 = inttoptr i64 %5057 to i32*
  %5061 = load i32, i32* %5060
  %5062 = zext i32 %5061 to i64
  store i64 %5062, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41c414, %struct.Memory** %MEMORY
  %loadMem_41c417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 1
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5068 to i32*
  %5069 = load i32, i32* %EAX.i
  %5070 = zext i32 %5069 to i64
  %5071 = load i64, i64* %PC.i4
  %5072 = add i64 %5071, 7
  store i64 %5072, i64* %PC.i4
  store i32 %5069, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*)
  store %struct.Memory* %loadMem_41c417, %struct.Memory** %MEMORY
  %loadMem_41c41e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 33
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 15
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %PC.i2
  %5080 = add i64 %5079, 1
  store i64 %5080, i64* %PC.i2
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5082 = load i64, i64* %5081, align 8
  %5083 = add i64 %5082, 8
  %5084 = inttoptr i64 %5082 to i64*
  %5085 = load i64, i64* %5084
  store i64 %5085, i64* %RBP.i3, align 8
  store i64 %5083, i64* %5081, align 8
  store %struct.Memory* %loadMem_41c41e, %struct.Memory** %MEMORY
  %loadMem_41c41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 33
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5088 to i64*
  %5089 = load i64, i64* %PC.i1
  %5090 = add i64 %5089, 1
  store i64 %5090, i64* %PC.i1
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5093 = load i64, i64* %5092, align 8
  %5094 = inttoptr i64 %5093 to i64*
  %5095 = load i64, i64* %5094
  store i64 %5095, i64* %5091, align 8
  %5096 = add i64 %5093, 8
  store i64 %5096, i64* %5092, align 8
  store %struct.Memory* %loadMem_41c41f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41c41f
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

define %struct.Memory* @routine_movl_0x8a05b8___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8a05bc___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_41c138(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x427da0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357536
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
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

define %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c01f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x886a80___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 8940160
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_movl__eax__0x886a84___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 8940164
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_41c138(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c053(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__0x886b00___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 8940288
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x886b04___rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 8940292
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_41c058(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_je_.L_41c11b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x7__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 7
  %16 = icmp ult i32 %14, 7
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
  %25 = xor i32 %14, 7
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

define %struct.Memory* @routine_je_.L_41c076(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x9__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c0a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c11b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_je_.L_41c0b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c0de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 13
  %16 = icmp ult i32 %14, 13
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
  %25 = xor i32 %14, 13
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

define %struct.Memory* @routine_je_.L_41c0ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c0f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c0f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x427da0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4357536
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41c120(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c125(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c12a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41bfc2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_41c35f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl_0x427db0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357552
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c1b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_41c1b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c35f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c208(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41c23c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_41c270(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c275(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_41c338(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0xb__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 11
  %16 = icmp ult i32 %14, 11
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
  %25 = xor i32 %14, 11
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

define %struct.Memory* @routine_je_.L_41c293(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_41c2bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c338(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0xc__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 12
  %16 = icmp ult i32 %14, 12
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
  %25 = xor i32 %14, 12
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

define %struct.Memory* @routine_je_.L_41c2d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_41c2fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_41c30a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c30f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c314(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x427db0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4357552
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41c33d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c342(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c347(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c34c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c351(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c13f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_41c40a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl_0x427dc0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4357568
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c3c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c3f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_41c3f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41c3fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41c366(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__0x8a05b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x8a05bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*)
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
