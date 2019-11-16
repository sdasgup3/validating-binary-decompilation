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
define %struct.Memory* @DealignedLength(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4039a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4039a0, %struct.Memory** %MEMORY
  %loadMem_4039a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i76
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i76
  store i64 %26, i64* %RBP.i77, align 8
  store %struct.Memory* %loadMem_4039a1, %struct.Memory** %MEMORY
  %loadMem_4039a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i75
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i74
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i74
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_4039a4, %struct.Memory** %MEMORY
  %loadMem_4039a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %49 to i64*
  %50 = load i64, i64* %RBP.i73
  %51 = sub i64 %50, 12
  %52 = load i64, i64* %PC.i72
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC.i72
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54
  store %struct.Memory* %loadMem_4039a8, %struct.Memory** %MEMORY
  br label %block_.L_4039af

block_.L_4039af:                                  ; preds = %block_.L_403a1a, %entry
  %loadMem_4039af = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %60 to i64*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %62 = getelementptr inbounds %struct.GPR, %struct.GPR* %61, i32 0, i32 15
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %62, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %63 to i64*
  %64 = load i64, i64* %RBP.i71
  %65 = sub i64 %64, 8
  %66 = load i64, i64* %PC.i69
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC.i69
  %68 = inttoptr i64 %65 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_4039af, %struct.Memory** %MEMORY
  %loadMem_4039b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RAX.i68
  %77 = load i64, i64* %PC.i67
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i67
  %79 = inttoptr i64 %76 to i8*
  %80 = load i8, i8* %79
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %81, align 1
  %82 = zext i8 %80 to i32
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %86, i8* %87, align 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %88, align 1
  %89 = icmp eq i8 %80, 0
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %90, i8* %91, align 1
  %92 = lshr i8 %80, 7
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %92, i8* %93, align 1
  %94 = lshr i8 %80, 7
  %95 = xor i8 %92, %94
  %96 = add i8 %95, %94
  %97 = icmp eq i8 %96, 2
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %98, i8* %99, align 1
  store %struct.Memory* %loadMem_4039b3, %struct.Memory** %MEMORY
  %loadMem_4039b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 33
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %PC.i66
  %104 = add i64 %103, 117
  %105 = load i64, i64* %PC.i66
  %106 = add i64 %105, 6
  %107 = load i64, i64* %PC.i66
  %108 = add i64 %107, 6
  store i64 %108, i64* %PC.i66
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %BRANCH_TAKEN, align 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %112 = icmp ne i8 %110, 0
  %113 = select i1 %112, i64 %104, i64 %106
  store i64 %113, i64* %111, align 8
  store %struct.Memory* %loadMem_4039b6, %struct.Memory** %MEMORY
  %loadBr_4039b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4039b6 = icmp eq i8 %loadBr_4039b6, 1
  br i1 %cmpBr_4039b6, label %block_.L_403a2b, label %block_4039bc

block_4039bc:                                     ; preds = %block_.L_4039af
  %loadMem_4039bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i65
  %124 = sub i64 %123, 8
  %125 = load i64, i64* %PC.i63
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i63
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127
  store i64 %128, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_4039bc, %struct.Memory** %MEMORY
  %loadMem_4039c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RAX.i61
  %139 = load i64, i64* %PC.i60
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC.i60
  %141 = inttoptr i64 %138 to i8*
  %142 = load i8, i8* %141
  %143 = sext i8 %142 to i64
  %144 = and i64 %143, 4294967295
  store i64 %144, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_4039c0, %struct.Memory** %MEMORY
  %loadMem_4039c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %ECX.i59 = bitcast %union.anon* %150 to i32*
  %151 = load i32, i32* %ECX.i59
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC.i58
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i58
  %155 = sub i32 %151, 32
  %156 = icmp ult i32 %151, 32
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %157, i8* %158, align 1
  %159 = and i32 %155, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1
  %165 = xor i64 32, %152
  %166 = trunc i64 %165 to i32
  %167 = xor i32 %166, %155
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %170, i8* %171, align 1
  %172 = icmp eq i32 %155, 0
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %173, i8* %174, align 1
  %175 = lshr i32 %155, 31
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %176, i8* %177, align 1
  %178 = lshr i32 %151, 31
  %179 = xor i32 %175, %178
  %180 = add i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %182, i8* %183, align 1
  store %struct.Memory* %loadMem_4039c3, %struct.Memory** %MEMORY
  %loadMem_4039c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %186 to i64*
  %187 = load i64, i64* %PC.i57
  %188 = add i64 %187, 79
  %189 = load i64, i64* %PC.i57
  %190 = add i64 %189, 6
  %191 = load i64, i64* %PC.i57
  %192 = add i64 %191, 6
  store i64 %192, i64* %PC.i57
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %BRANCH_TAKEN, align 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %196 = icmp ne i8 %194, 0
  %197 = select i1 %196, i64 %188, i64 %190
  store i64 %197, i64* %195, align 8
  store %struct.Memory* %loadMem_4039c6, %struct.Memory** %MEMORY
  %loadBr_4039c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4039c6 = icmp eq i8 %loadBr_4039c6, 1
  br i1 %cmpBr_4039c6, label %block_.L_403a15, label %block_4039cc

block_4039cc:                                     ; preds = %block_4039bc
  %loadMem_4039cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i56
  %208 = sub i64 %207, 8
  %209 = load i64, i64* %PC.i54
  %210 = add i64 %209, 4
  store i64 %210, i64* %PC.i54
  %211 = inttoptr i64 %208 to i64*
  %212 = load i64, i64* %211
  store i64 %212, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_4039cc, %struct.Memory** %MEMORY
  %loadMem_4039d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %RAX.i52
  %223 = load i64, i64* %PC.i51
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC.i51
  %225 = inttoptr i64 %222 to i8*
  %226 = load i8, i8* %225
  %227 = sext i8 %226 to i64
  %228 = and i64 %227, 4294967295
  store i64 %228, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_4039d0, %struct.Memory** %MEMORY
  %loadMem_4039d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 5
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %ECX.i50 = bitcast %union.anon* %234 to i32*
  %235 = load i32, i32* %ECX.i50
  %236 = zext i32 %235 to i64
  %237 = load i64, i64* %PC.i49
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC.i49
  %239 = sub i32 %235, 46
  %240 = icmp ult i32 %235, 46
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %241, i8* %242, align 1
  %243 = and i32 %239, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1
  %249 = xor i64 46, %236
  %250 = trunc i64 %249 to i32
  %251 = xor i32 %250, %239
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %254, i8* %255, align 1
  %256 = icmp eq i32 %239, 0
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %257, i8* %258, align 1
  %259 = lshr i32 %239, 31
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %260, i8* %261, align 1
  %262 = lshr i32 %235, 31
  %263 = xor i32 %259, %262
  %264 = add i32 %263, %262
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %266, i8* %267, align 1
  store %struct.Memory* %loadMem_4039d3, %struct.Memory** %MEMORY
  %loadMem_4039d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %PC.i48
  %272 = add i64 %271, 63
  %273 = load i64, i64* %PC.i48
  %274 = add i64 %273, 6
  %275 = load i64, i64* %PC.i48
  %276 = add i64 %275, 6
  store i64 %276, i64* %PC.i48
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %278 = load i8, i8* %277, align 1
  store i8 %278, i8* %BRANCH_TAKEN, align 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %280 = icmp ne i8 %278, 0
  %281 = select i1 %280, i64 %272, i64 %274
  store i64 %281, i64* %279, align 8
  store %struct.Memory* %loadMem_4039d6, %struct.Memory** %MEMORY
  %loadBr_4039d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4039d6 = icmp eq i8 %loadBr_4039d6, 1
  br i1 %cmpBr_4039d6, label %block_.L_403a15, label %block_4039dc

block_4039dc:                                     ; preds = %block_4039cc
  %loadMem_4039dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RBP.i47
  %292 = sub i64 %291, 8
  %293 = load i64, i64* %PC.i45
  %294 = add i64 %293, 4
  store i64 %294, i64* %PC.i45
  %295 = inttoptr i64 %292 to i64*
  %296 = load i64, i64* %295
  store i64 %296, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_4039dc, %struct.Memory** %MEMORY
  %loadMem_4039e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RAX.i43
  %307 = load i64, i64* %PC.i42
  %308 = add i64 %307, 3
  store i64 %308, i64* %PC.i42
  %309 = inttoptr i64 %306 to i8*
  %310 = load i8, i8* %309
  %311 = sext i8 %310 to i64
  %312 = and i64 %311, 4294967295
  store i64 %312, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_4039e0, %struct.Memory** %MEMORY
  %loadMem_4039e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %ECX.i41 = bitcast %union.anon* %318 to i32*
  %319 = load i32, i32* %ECX.i41
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC.i40
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC.i40
  %323 = sub i32 %319, 95
  %324 = icmp ult i32 %319, 95
  %325 = zext i1 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %325, i8* %326, align 1
  %327 = and i32 %323, 255
  %328 = call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %331, i8* %332, align 1
  %333 = xor i64 95, %320
  %334 = trunc i64 %333 to i32
  %335 = xor i32 %334, %323
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %338, i8* %339, align 1
  %340 = icmp eq i32 %323, 0
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %341, i8* %342, align 1
  %343 = lshr i32 %323, 31
  %344 = trunc i32 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %344, i8* %345, align 1
  %346 = lshr i32 %319, 31
  %347 = xor i32 %343, %346
  %348 = add i32 %347, %346
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %350, i8* %351, align 1
  store %struct.Memory* %loadMem_4039e3, %struct.Memory** %MEMORY
  %loadMem_4039e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %PC.i39
  %356 = add i64 %355, 47
  %357 = load i64, i64* %PC.i39
  %358 = add i64 %357, 6
  %359 = load i64, i64* %PC.i39
  %360 = add i64 %359, 6
  store i64 %360, i64* %PC.i39
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %362 = load i8, i8* %361, align 1
  store i8 %362, i8* %BRANCH_TAKEN, align 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %364 = icmp ne i8 %362, 0
  %365 = select i1 %364, i64 %356, i64 %358
  store i64 %365, i64* %363, align 8
  store %struct.Memory* %loadMem_4039e6, %struct.Memory** %MEMORY
  %loadBr_4039e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4039e6 = icmp eq i8 %loadBr_4039e6, 1
  br i1 %cmpBr_4039e6, label %block_.L_403a15, label %block_4039ec

block_4039ec:                                     ; preds = %block_4039dc
  %loadMem_4039ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i38
  %376 = sub i64 %375, 8
  %377 = load i64, i64* %PC.i36
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC.i36
  %379 = inttoptr i64 %376 to i64*
  %380 = load i64, i64* %379
  store i64 %380, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_4039ec, %struct.Memory** %MEMORY
  %loadMem_4039f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 33
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %389 to i64*
  %390 = load i64, i64* %RAX.i34
  %391 = load i64, i64* %PC.i33
  %392 = add i64 %391, 3
  store i64 %392, i64* %PC.i33
  %393 = inttoptr i64 %390 to i8*
  %394 = load i8, i8* %393
  %395 = sext i8 %394 to i64
  %396 = and i64 %395, 4294967295
  store i64 %396, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_4039f0, %struct.Memory** %MEMORY
  %loadMem_4039f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %ECX.i32 = bitcast %union.anon* %402 to i32*
  %403 = load i32, i32* %ECX.i32
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC.i31
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i31
  %407 = sub i32 %403, 45
  %408 = icmp ult i32 %403, 45
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %409, i8* %410, align 1
  %411 = and i32 %407, 255
  %412 = call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %415, i8* %416, align 1
  %417 = xor i64 45, %404
  %418 = trunc i64 %417 to i32
  %419 = xor i32 %418, %407
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %422, i8* %423, align 1
  %424 = icmp eq i32 %407, 0
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %425, i8* %426, align 1
  %427 = lshr i32 %407, 31
  %428 = trunc i32 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %428, i8* %429, align 1
  %430 = lshr i32 %403, 31
  %431 = xor i32 %427, %430
  %432 = add i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %434, i8* %435, align 1
  store %struct.Memory* %loadMem_4039f3, %struct.Memory** %MEMORY
  %loadMem_4039f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %PC.i30
  %440 = add i64 %439, 31
  %441 = load i64, i64* %PC.i30
  %442 = add i64 %441, 6
  %443 = load i64, i64* %PC.i30
  %444 = add i64 %443, 6
  store i64 %444, i64* %PC.i30
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %446 = load i8, i8* %445, align 1
  store i8 %446, i8* %BRANCH_TAKEN, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = icmp ne i8 %446, 0
  %449 = select i1 %448, i64 %440, i64 %442
  store i64 %449, i64* %447, align 8
  store %struct.Memory* %loadMem_4039f6, %struct.Memory** %MEMORY
  %loadBr_4039f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4039f6 = icmp eq i8 %loadBr_4039f6, 1
  br i1 %cmpBr_4039f6, label %block_.L_403a15, label %block_4039fc

block_4039fc:                                     ; preds = %block_4039ec
  %loadMem_4039fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i29
  %460 = sub i64 %459, 8
  %461 = load i64, i64* %PC.i27
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i27
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463
  store i64 %464, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_4039fc, %struct.Memory** %MEMORY
  %loadMem_403a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 5
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RAX.i26
  %475 = load i64, i64* %PC.i25
  %476 = add i64 %475, 3
  store i64 %476, i64* %PC.i25
  %477 = inttoptr i64 %474 to i8*
  %478 = load i8, i8* %477
  %479 = sext i8 %478 to i64
  %480 = and i64 %479, 4294967295
  store i64 %480, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_403a00, %struct.Memory** %MEMORY
  %loadMem_403a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 5
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %486 to i32*
  %487 = load i32, i32* %ECX.i
  %488 = zext i32 %487 to i64
  %489 = load i64, i64* %PC.i24
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC.i24
  %491 = sub i32 %487, 126
  %492 = icmp ult i32 %487, 126
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %493, i8* %494, align 1
  %495 = and i32 %491, 255
  %496 = call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %499, i8* %500, align 1
  %501 = xor i64 126, %488
  %502 = trunc i64 %501 to i32
  %503 = xor i32 %502, %491
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %506, i8* %507, align 1
  %508 = icmp eq i32 %491, 0
  %509 = zext i1 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %509, i8* %510, align 1
  %511 = lshr i32 %491, 31
  %512 = trunc i32 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %512, i8* %513, align 1
  %514 = lshr i32 %487, 31
  %515 = xor i32 %511, %514
  %516 = add i32 %515, %514
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %518, i8* %519, align 1
  store %struct.Memory* %loadMem_403a03, %struct.Memory** %MEMORY
  %loadMem_403a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %PC.i23
  %524 = add i64 %523, 15
  %525 = load i64, i64* %PC.i23
  %526 = add i64 %525, 6
  %527 = load i64, i64* %PC.i23
  %528 = add i64 %527, 6
  store i64 %528, i64* %PC.i23
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %530 = load i8, i8* %529, align 1
  store i8 %530, i8* %BRANCH_TAKEN, align 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %532 = icmp ne i8 %530, 0
  %533 = select i1 %532, i64 %524, i64 %526
  store i64 %533, i64* %531, align 8
  store %struct.Memory* %loadMem_403a06, %struct.Memory** %MEMORY
  %loadBr_403a06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403a06 = icmp eq i8 %loadBr_403a06, 1
  br i1 %cmpBr_403a06, label %block_.L_403a15, label %block_403a0c

block_403a0c:                                     ; preds = %block_4039fc
  %loadMem_403a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 15
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %542 to i64*
  %543 = load i64, i64* %RBP.i22
  %544 = sub i64 %543, 12
  %545 = load i64, i64* %PC.i20
  %546 = add i64 %545, 3
  store i64 %546, i64* %PC.i20
  %547 = inttoptr i64 %544 to i32*
  %548 = load i32, i32* %547
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_403a0c, %struct.Memory** %MEMORY
  %loadMem_403a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %RAX.i19
  %557 = load i64, i64* %PC.i18
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC.i18
  %559 = trunc i64 %556 to i32
  %560 = add i32 1, %559
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RAX.i19, align 8
  %562 = icmp ult i32 %560, %559
  %563 = icmp ult i32 %560, 1
  %564 = or i1 %562, %563
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %565, i8* %566, align 1
  %567 = and i32 %560, 255
  %568 = call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %571, i8* %572, align 1
  %573 = xor i64 1, %556
  %574 = trunc i64 %573 to i32
  %575 = xor i32 %574, %560
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %578, i8* %579, align 1
  %580 = icmp eq i32 %560, 0
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %581, i8* %582, align 1
  %583 = lshr i32 %560, 31
  %584 = trunc i32 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %584, i8* %585, align 1
  %586 = lshr i32 %559, 31
  %587 = xor i32 %583, %586
  %588 = add i32 %587, %583
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %590, i8* %591, align 1
  store %struct.Memory* %loadMem_403a0f, %struct.Memory** %MEMORY
  %loadMem_403a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %597 to i32*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 15
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RBP.i17
  %602 = sub i64 %601, 12
  %603 = load i32, i32* %EAX.i
  %604 = zext i32 %603 to i64
  %605 = load i64, i64* %PC.i16
  %606 = add i64 %605, 3
  store i64 %606, i64* %PC.i16
  %607 = inttoptr i64 %602 to i32*
  store i32 %603, i32* %607
  store %struct.Memory* %loadMem_403a12, %struct.Memory** %MEMORY
  br label %block_.L_403a15

block_.L_403a15:                                  ; preds = %block_403a0c, %block_4039fc, %block_4039ec, %block_4039dc, %block_4039cc, %block_4039bc
  %loadMem_403a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %PC.i15
  %612 = add i64 %611, 5
  %613 = load i64, i64* %PC.i15
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC.i15
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %612, i64* %615, align 8
  store %struct.Memory* %loadMem_403a15, %struct.Memory** %MEMORY
  br label %block_.L_403a1a

block_.L_403a1a:                                  ; preds = %block_.L_403a15
  %loadMem_403a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RBP.i14
  %626 = sub i64 %625, 8
  %627 = load i64, i64* %PC.i12
  %628 = add i64 %627, 4
  store i64 %628, i64* %PC.i12
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629
  store i64 %630, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_403a1a, %struct.Memory** %MEMORY
  %loadMem_403a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RAX.i11
  %638 = load i64, i64* %PC.i10
  %639 = add i64 %638, 4
  store i64 %639, i64* %PC.i10
  %640 = add i64 1, %637
  store i64 %640, i64* %RAX.i11, align 8
  %641 = icmp ult i64 %640, %637
  %642 = icmp ult i64 %640, 1
  %643 = or i1 %641, %642
  %644 = zext i1 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %644, i8* %645, align 1
  %646 = trunc i64 %640 to i32
  %647 = and i32 %646, 255
  %648 = call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %651, i8* %652, align 1
  %653 = xor i64 1, %637
  %654 = xor i64 %653, %640
  %655 = lshr i64 %654, 4
  %656 = trunc i64 %655 to i8
  %657 = and i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %657, i8* %658, align 1
  %659 = icmp eq i64 %640, 0
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %660, i8* %661, align 1
  %662 = lshr i64 %640, 63
  %663 = trunc i64 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %663, i8* %664, align 1
  %665 = lshr i64 %637, 63
  %666 = xor i64 %662, %665
  %667 = add i64 %666, %662
  %668 = icmp eq i64 %667, 2
  %669 = zext i1 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %669, i8* %670, align 1
  store %struct.Memory* %loadMem_403a1e, %struct.Memory** %MEMORY
  %loadMem_403a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 1
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 15
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RBP.i9
  %681 = sub i64 %680, 8
  %682 = load i64, i64* %RAX.i8
  %683 = load i64, i64* %PC.i7
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC.i7
  %685 = inttoptr i64 %681 to i64*
  store i64 %682, i64* %685
  store %struct.Memory* %loadMem_403a22, %struct.Memory** %MEMORY
  %loadMem_403a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %PC.i6
  %690 = add i64 %689, -119
  %691 = load i64, i64* %PC.i6
  %692 = add i64 %691, 5
  store i64 %692, i64* %PC.i6
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %690, i64* %693, align 8
  store %struct.Memory* %loadMem_403a26, %struct.Memory** %MEMORY
  br label %block_.L_4039af

block_.L_403a2b:                                  ; preds = %block_.L_4039af
  %loadMem_403a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i5 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RBP.i5
  %704 = sub i64 %703, 12
  %705 = load i64, i64* %PC.i4
  %706 = add i64 %705, 3
  store i64 %706, i64* %PC.i4
  %707 = inttoptr i64 %704 to i32*
  %708 = load i32, i32* %707
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_403a2b, %struct.Memory** %MEMORY
  %loadMem_403a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 15
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %PC.i2
  %717 = add i64 %716, 1
  store i64 %717, i64* %PC.i2
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = add i64 %719, 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721
  store i64 %722, i64* %RBP.i3, align 8
  store i64 %720, i64* %718, align 8
  store %struct.Memory* %loadMem_403a2e, %struct.Memory** %MEMORY
  %loadMem_403a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %PC.i1
  %727 = add i64 %726, 1
  store i64 %727, i64* %PC.i1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %730 = load i64, i64* %729, align 8
  %731 = inttoptr i64 %730 to i64*
  %732 = load i64, i64* %731
  store i64 %732, i64* %728, align 8
  %733 = add i64 %730, 8
  store i64 %733, i64* %729, align 8
  store %struct.Memory* %loadMem_403a2f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_403a2f
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpb__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i8*
  %13 = load i8, i8* %12
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = zext i8 %13 to i32
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i8 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i8 %13, 7
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i8 %13, 7
  %28 = xor i8 %25, %27
  %29 = add i8 %28, %27
  %30 = icmp eq i8 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403a2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_403a15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x2e___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 46
  %14 = icmp ult i32 %9, 46
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
  %23 = xor i64 46, %10
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

define %struct.Memory* @routine_cmpl__0x5f___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 95
  %14 = icmp ult i32 %9, 95
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
  %23 = xor i64 95, %10
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

define %struct.Memory* @routine_cmpl__0x2d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 45
  %14 = icmp ult i32 %9, 45
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
  %23 = xor i64 45, %10
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

define %struct.Memory* @routine_cmpl__0x7e___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 126
  %14 = icmp ult i32 %9, 126
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
  %23 = xor i64 126, %10
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

define %struct.Memory* @routine_jmpq_.L_403a1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4039af(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
