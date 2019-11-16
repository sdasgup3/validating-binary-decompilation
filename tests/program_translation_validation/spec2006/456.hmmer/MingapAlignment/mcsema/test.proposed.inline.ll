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
define %struct.Memory* @MingapAlignment(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_404120 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_404120, %struct.Memory** %MEMORY
  %loadMem_404121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i369
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i369
  store i64 %26, i64* %RBP.i370, align 8
  store %struct.Memory* %loadMem_404121, %struct.Memory** %MEMORY
  %loadMem_404124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i368
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i367
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i367
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_404124, %struct.Memory** %MEMORY
  %loadMem_404128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i366
  %54 = sub i64 %53, 16
  %55 = load i64, i64* %RSI.i
  %56 = load i64, i64* %PC.i365
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC.i365
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  store %struct.Memory* %loadMem_404128, %struct.Memory** %MEMORY
  %loadMem_40412c = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %64 to i64*
  %65 = load i64, i64* %RBP.i364
  %66 = sub i64 %65, 20
  %67 = load i64, i64* %PC.i363
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC.i363
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69
  store %struct.Memory* %loadMem_40412c, %struct.Memory** %MEMORY
  %loadMem_404133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i362
  %77 = sub i64 %76, 24
  %78 = load i64, i64* %PC.i361
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC.i361
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80
  store %struct.Memory* %loadMem_404133, %struct.Memory** %MEMORY
  br label %block_.L_40413a

block_.L_40413a:                                  ; preds = %block_.L_4042e6, %entry
  %loadMem_40413a = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 15
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %RBP.i360
  %91 = sub i64 %90, 8
  %92 = load i64, i64* %PC.i358
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC.i358
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94
  store i64 %95, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_40413a, %struct.Memory** %MEMORY
  %loadMem_40413e = load %struct.Memory*, %struct.Memory** %MEMORY
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 33
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %RAX.i357
  %103 = load i64, i64* %PC.i356
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC.i356
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_40413e, %struct.Memory** %MEMORY
  %loadMem_404141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i355
  %117 = sub i64 %116, 20
  %118 = load i64, i64* %PC.i353
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i353
  %120 = inttoptr i64 %117 to i32*
  %121 = load i32, i32* %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_404141, %struct.Memory** %MEMORY
  %loadMem_404145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RAX.i350
  %136 = load i64, i64* %RCX.i351
  %137 = add i64 %136, %135
  %138 = load i64, i64* %PC.i349
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC.i349
  %140 = inttoptr i64 %137 to i8*
  %141 = load i8, i8* %140
  %142 = sext i8 %141 to i64
  %143 = and i64 %142, 4294967295
  store i64 %143, i64* %RDX.i352, align 8
  store %struct.Memory* %loadMem_404145, %struct.Memory** %MEMORY
  %loadMem_404149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX.i348 = bitcast %union.anon* %149 to i32*
  %150 = load i32, i32* %EDX.i348
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC.i347
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC.i347
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %154, align 1
  %155 = and i32 %150, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %159, i8* %160, align 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %161, align 1
  %162 = icmp eq i32 %150, 0
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %163, i8* %164, align 1
  %165 = lshr i32 %150, 31
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %166, i8* %167, align 1
  %168 = lshr i32 %150, 31
  %169 = xor i32 %165, %168
  %170 = add i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %172, i8* %173, align 1
  store %struct.Memory* %loadMem_404149, %struct.Memory** %MEMORY
  %loadMem_40414c = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %PC.i346
  %178 = add i64 %177, 424
  %179 = load i64, i64* %PC.i346
  %180 = add i64 %179, 6
  %181 = load i64, i64* %PC.i346
  %182 = add i64 %181, 6
  store i64 %182, i64* %PC.i346
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = load i8, i8* %183, align 1
  store i8 %184, i8* %BRANCH_TAKEN, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = icmp ne i8 %184, 0
  %187 = select i1 %186, i64 %178, i64 %180
  store i64 %187, i64* %185, align 8
  store %struct.Memory* %loadMem_40414c, %struct.Memory** %MEMORY
  %loadBr_40414c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40414c = icmp eq i8 %loadBr_40414c, 1
  br i1 %cmpBr_40414c, label %block_.L_4042f4, label %block_404152

block_404152:                                     ; preds = %block_.L_40413a
  %loadMem_404152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i345
  %195 = sub i64 %194, 28
  %196 = load i64, i64* %PC.i344
  %197 = add i64 %196, 7
  store i64 %197, i64* %PC.i344
  %198 = inttoptr i64 %195 to i32*
  store i32 0, i32* %198
  store %struct.Memory* %loadMem_404152, %struct.Memory** %MEMORY
  br label %block_.L_404159

block_.L_404159:                                  ; preds = %block_.L_404204, %block_404152
  %loadMem_404159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 15
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RBP.i343
  %209 = sub i64 %208, 28
  %210 = load i64, i64* %PC.i341
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC.i341
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_404159, %struct.Memory** %MEMORY
  %loadMem_40415c = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i340
  %225 = sub i64 %224, 16
  %226 = load i64, i64* %PC.i338
  %227 = add i64 %226, 4
  store i64 %227, i64* %PC.i338
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228
  store i64 %229, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_40415c, %struct.Memory** %MEMORY
  %loadMem_404160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %235 to i32*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %238 to i64*
  %239 = load i32, i32* %EAX.i336
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %RCX.i337
  %242 = add i64 %241, 8
  %243 = load i64, i64* %PC.i335
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC.i335
  %245 = inttoptr i64 %242 to i32*
  %246 = load i32, i32* %245
  %247 = sub i32 %239, %246
  %248 = icmp ult i32 %239, %246
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %249, i8* %250, align 1
  %251 = and i32 %247, 255
  %252 = call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %255, i8* %256, align 1
  %257 = xor i32 %246, %239
  %258 = xor i32 %257, %247
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %261, i8* %262, align 1
  %263 = icmp eq i32 %247, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %264, i8* %265, align 1
  %266 = lshr i32 %247, 31
  %267 = trunc i32 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %267, i8* %268, align 1
  %269 = lshr i32 %239, 31
  %270 = lshr i32 %246, 31
  %271 = xor i32 %270, %269
  %272 = xor i32 %266, %269
  %273 = add i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %275, i8* %276, align 1
  store %struct.Memory* %loadMem_404160, %struct.Memory** %MEMORY
  %loadMem_404163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %PC.i334
  %281 = add i64 %280, 175
  %282 = load i64, i64* %PC.i334
  %283 = add i64 %282, 6
  %284 = load i64, i64* %PC.i334
  %285 = add i64 %284, 6
  store i64 %285, i64* %PC.i334
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %287 = load i8, i8* %286, align 1
  %288 = icmp ne i8 %287, 0
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %290 = load i8, i8* %289, align 1
  %291 = icmp ne i8 %290, 0
  %292 = xor i1 %288, %291
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %BRANCH_TAKEN, align 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %296 = select i1 %292, i64 %283, i64 %281
  store i64 %296, i64* %295, align 8
  store %struct.Memory* %loadMem_404163, %struct.Memory** %MEMORY
  %loadBr_404163 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404163 = icmp eq i8 %loadBr_404163, 1
  br i1 %cmpBr_404163, label %block_.L_404212, label %block_404169

block_404169:                                     ; preds = %block_.L_404159
  %loadMem_404169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RBP.i333
  %307 = sub i64 %306, 8
  %308 = load i64, i64* %PC.i331
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC.i331
  %310 = inttoptr i64 %307 to i64*
  %311 = load i64, i64* %310
  store i64 %311, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_404169, %struct.Memory** %MEMORY
  %loadMem_40416d = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RBP.i330
  %322 = sub i64 %321, 28
  %323 = load i64, i64* %PC.i328
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC.i328
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_40416d, %struct.Memory** %MEMORY
  %loadMem_404171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RAX.i326
  %338 = load i64, i64* %RCX.i327
  %339 = mul i64 %338, 8
  %340 = add i64 %339, %337
  %341 = load i64, i64* %PC.i325
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC.i325
  %343 = inttoptr i64 %340 to i64*
  %344 = load i64, i64* %343
  store i64 %344, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_404171, %struct.Memory** %MEMORY
  %loadMem_404175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i324
  %355 = sub i64 %354, 20
  %356 = load i64, i64* %PC.i322
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i322
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_404175, %struct.Memory** %MEMORY
  %loadMem_404179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 5
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %RAX.i319
  %374 = load i64, i64* %RCX.i320
  %375 = add i64 %374, %373
  %376 = load i64, i64* %PC.i318
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC.i318
  %378 = inttoptr i64 %375 to i8*
  %379 = load i8, i8* %378
  %380 = sext i8 %379 to i64
  %381 = and i64 %380, 4294967295
  store i64 %381, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_404179, %struct.Memory** %MEMORY
  %loadMem_40417d = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 7
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %EDX.i317 = bitcast %union.anon* %387 to i32*
  %388 = load i32, i32* %EDX.i317
  %389 = zext i32 %388 to i64
  %390 = load i64, i64* %PC.i316
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC.i316
  %392 = sub i32 %388, 32
  %393 = icmp ult i32 %388, 32
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %394, i8* %395, align 1
  %396 = and i32 %392, 255
  %397 = call i32 @llvm.ctpop.i32(i32 %396)
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %400, i8* %401, align 1
  %402 = xor i64 32, %389
  %403 = trunc i64 %402 to i32
  %404 = xor i32 %403, %392
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %407, i8* %408, align 1
  %409 = icmp eq i32 %392, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %392, 31
  %413 = trunc i32 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1
  %415 = lshr i32 %388, 31
  %416 = xor i32 %412, %415
  %417 = add i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %419, i8* %420, align 1
  store %struct.Memory* %loadMem_40417d, %struct.Memory** %MEMORY
  %loadMem_404180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %PC.i315
  %425 = add i64 %424, 127
  %426 = load i64, i64* %PC.i315
  %427 = add i64 %426, 6
  %428 = load i64, i64* %PC.i315
  %429 = add i64 %428, 6
  store i64 %429, i64* %PC.i315
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %431 = load i8, i8* %430, align 1
  store i8 %431, i8* %BRANCH_TAKEN, align 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %433 = icmp ne i8 %431, 0
  %434 = select i1 %433, i64 %425, i64 %427
  store i64 %434, i64* %432, align 8
  store %struct.Memory* %loadMem_404180, %struct.Memory** %MEMORY
  %loadBr_404180 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404180 = icmp eq i8 %loadBr_404180, 1
  br i1 %cmpBr_404180, label %block_.L_4041ff, label %block_404186

block_404186:                                     ; preds = %block_404169
  %loadMem_404186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i314
  %445 = sub i64 %444, 8
  %446 = load i64, i64* %PC.i312
  %447 = add i64 %446, 4
  store i64 %447, i64* %PC.i312
  %448 = inttoptr i64 %445 to i64*
  %449 = load i64, i64* %448
  store i64 %449, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_404186, %struct.Memory** %MEMORY
  %loadMem_40418a = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 5
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i311
  %460 = sub i64 %459, 28
  %461 = load i64, i64* %PC.i309
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i309
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_40418a, %struct.Memory** %MEMORY
  %loadMem_40418e = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RAX.i307
  %476 = load i64, i64* %RCX.i308
  %477 = mul i64 %476, 8
  %478 = add i64 %477, %475
  %479 = load i64, i64* %PC.i306
  %480 = add i64 %479, 4
  store i64 %480, i64* %PC.i306
  %481 = inttoptr i64 %478 to i64*
  %482 = load i64, i64* %481
  store i64 %482, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_40418e, %struct.Memory** %MEMORY
  %loadMem_404192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 5
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i305
  %493 = sub i64 %492, 20
  %494 = load i64, i64* %PC.i303
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC.i303
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_404192, %struct.Memory** %MEMORY
  %loadMem_404196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 7
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RAX.i300
  %512 = load i64, i64* %RCX.i301
  %513 = add i64 %512, %511
  %514 = load i64, i64* %PC.i299
  %515 = add i64 %514, 4
  store i64 %515, i64* %PC.i299
  %516 = inttoptr i64 %513 to i8*
  %517 = load i8, i8* %516
  %518 = sext i8 %517 to i64
  %519 = and i64 %518, 4294967295
  store i64 %519, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_404196, %struct.Memory** %MEMORY
  %loadMem_40419a = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 7
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %EDX.i298 = bitcast %union.anon* %525 to i32*
  %526 = load i32, i32* %EDX.i298
  %527 = zext i32 %526 to i64
  %528 = load i64, i64* %PC.i297
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC.i297
  %530 = sub i32 %526, 46
  %531 = icmp ult i32 %526, 46
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %532, i8* %533, align 1
  %534 = and i32 %530, 255
  %535 = call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %538, i8* %539, align 1
  %540 = xor i64 46, %527
  %541 = trunc i64 %540 to i32
  %542 = xor i32 %541, %530
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %545, i8* %546, align 1
  %547 = icmp eq i32 %530, 0
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %548, i8* %549, align 1
  %550 = lshr i32 %530, 31
  %551 = trunc i32 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %551, i8* %552, align 1
  %553 = lshr i32 %526, 31
  %554 = xor i32 %550, %553
  %555 = add i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %557, i8* %558, align 1
  store %struct.Memory* %loadMem_40419a, %struct.Memory** %MEMORY
  %loadMem_40419d = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %PC.i296
  %563 = add i64 %562, 98
  %564 = load i64, i64* %PC.i296
  %565 = add i64 %564, 6
  %566 = load i64, i64* %PC.i296
  %567 = add i64 %566, 6
  store i64 %567, i64* %PC.i296
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %569 = load i8, i8* %568, align 1
  store i8 %569, i8* %BRANCH_TAKEN, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %571 = icmp ne i8 %569, 0
  %572 = select i1 %571, i64 %563, i64 %565
  store i64 %572, i64* %570, align 8
  store %struct.Memory* %loadMem_40419d, %struct.Memory** %MEMORY
  %loadBr_40419d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40419d = icmp eq i8 %loadBr_40419d, 1
  br i1 %cmpBr_40419d, label %block_.L_4041ff, label %block_4041a3

block_4041a3:                                     ; preds = %block_404186
  %loadMem_4041a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i295
  %583 = sub i64 %582, 8
  %584 = load i64, i64* %PC.i293
  %585 = add i64 %584, 4
  store i64 %585, i64* %PC.i293
  %586 = inttoptr i64 %583 to i64*
  %587 = load i64, i64* %586
  store i64 %587, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_4041a3, %struct.Memory** %MEMORY
  %loadMem_4041a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 5
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RBP.i292
  %598 = sub i64 %597, 28
  %599 = load i64, i64* %PC.i290
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC.i290
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601
  %603 = sext i32 %602 to i64
  store i64 %603, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_4041a7, %struct.Memory** %MEMORY
  %loadMem_4041ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 5
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RAX.i288
  %614 = load i64, i64* %RCX.i289
  %615 = mul i64 %614, 8
  %616 = add i64 %615, %613
  %617 = load i64, i64* %PC.i287
  %618 = add i64 %617, 4
  store i64 %618, i64* %PC.i287
  %619 = inttoptr i64 %616 to i64*
  %620 = load i64, i64* %619
  store i64 %620, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_4041ab, %struct.Memory** %MEMORY
  %loadMem_4041af = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 5
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %626 to i64*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 15
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %629 to i64*
  %630 = load i64, i64* %RBP.i286
  %631 = sub i64 %630, 20
  %632 = load i64, i64* %PC.i284
  %633 = add i64 %632, 4
  store i64 %633, i64* %PC.i284
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_4041af, %struct.Memory** %MEMORY
  %loadMem_4041b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 5
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 7
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %RAX.i281
  %650 = load i64, i64* %RCX.i282
  %651 = add i64 %650, %649
  %652 = load i64, i64* %PC.i280
  %653 = add i64 %652, 4
  store i64 %653, i64* %PC.i280
  %654 = inttoptr i64 %651 to i8*
  %655 = load i8, i8* %654
  %656 = sext i8 %655 to i64
  %657 = and i64 %656, 4294967295
  store i64 %657, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_4041b3, %struct.Memory** %MEMORY
  %loadMem_4041b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 7
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %EDX.i279 = bitcast %union.anon* %663 to i32*
  %664 = load i32, i32* %EDX.i279
  %665 = zext i32 %664 to i64
  %666 = load i64, i64* %PC.i278
  %667 = add i64 %666, 3
  store i64 %667, i64* %PC.i278
  %668 = sub i32 %664, 95
  %669 = icmp ult i32 %664, 95
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %670, i8* %671, align 1
  %672 = and i32 %668, 255
  %673 = call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %676, i8* %677, align 1
  %678 = xor i64 95, %665
  %679 = trunc i64 %678 to i32
  %680 = xor i32 %679, %668
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %683, i8* %684, align 1
  %685 = icmp eq i32 %668, 0
  %686 = zext i1 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %686, i8* %687, align 1
  %688 = lshr i32 %668, 31
  %689 = trunc i32 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %689, i8* %690, align 1
  %691 = lshr i32 %664, 31
  %692 = xor i32 %688, %691
  %693 = add i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %695, i8* %696, align 1
  store %struct.Memory* %loadMem_4041b7, %struct.Memory** %MEMORY
  %loadMem_4041ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %PC.i277
  %701 = add i64 %700, 69
  %702 = load i64, i64* %PC.i277
  %703 = add i64 %702, 6
  %704 = load i64, i64* %PC.i277
  %705 = add i64 %704, 6
  store i64 %705, i64* %PC.i277
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %707 = load i8, i8* %706, align 1
  store i8 %707, i8* %BRANCH_TAKEN, align 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %709 = icmp ne i8 %707, 0
  %710 = select i1 %709, i64 %701, i64 %703
  store i64 %710, i64* %708, align 8
  store %struct.Memory* %loadMem_4041ba, %struct.Memory** %MEMORY
  %loadBr_4041ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4041ba = icmp eq i8 %loadBr_4041ba, 1
  br i1 %cmpBr_4041ba, label %block_.L_4041ff, label %block_4041c0

block_4041c0:                                     ; preds = %block_4041a3
  %loadMem_4041c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i276
  %721 = sub i64 %720, 8
  %722 = load i64, i64* %PC.i274
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i274
  %724 = inttoptr i64 %721 to i64*
  %725 = load i64, i64* %724
  store i64 %725, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_4041c0, %struct.Memory** %MEMORY
  %loadMem_4041c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 5
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 15
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RBP.i273
  %736 = sub i64 %735, 28
  %737 = load i64, i64* %PC.i271
  %738 = add i64 %737, 4
  store i64 %738, i64* %PC.i271
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = sext i32 %740 to i64
  store i64 %741, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_4041c4, %struct.Memory** %MEMORY
  %loadMem_4041c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 1
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 5
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RAX.i269
  %752 = load i64, i64* %RCX.i270
  %753 = mul i64 %752, 8
  %754 = add i64 %753, %751
  %755 = load i64, i64* %PC.i268
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC.i268
  %757 = inttoptr i64 %754 to i64*
  %758 = load i64, i64* %757
  store i64 %758, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_4041c8, %struct.Memory** %MEMORY
  %loadMem_4041cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 5
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %RBP.i267
  %769 = sub i64 %768, 20
  %770 = load i64, i64* %PC.i265
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC.i265
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_4041cc, %struct.Memory** %MEMORY
  %loadMem_4041d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 1
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 5
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 7
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RAX.i262
  %788 = load i64, i64* %RCX.i263
  %789 = add i64 %788, %787
  %790 = load i64, i64* %PC.i261
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC.i261
  %792 = inttoptr i64 %789 to i8*
  %793 = load i8, i8* %792
  %794 = sext i8 %793 to i64
  %795 = and i64 %794, 4294967295
  store i64 %795, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_4041d0, %struct.Memory** %MEMORY
  %loadMem_4041d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 7
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %EDX.i260 = bitcast %union.anon* %801 to i32*
  %802 = load i32, i32* %EDX.i260
  %803 = zext i32 %802 to i64
  %804 = load i64, i64* %PC.i259
  %805 = add i64 %804, 3
  store i64 %805, i64* %PC.i259
  %806 = sub i32 %802, 45
  %807 = icmp ult i32 %802, 45
  %808 = zext i1 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %808, i8* %809, align 1
  %810 = and i32 %806, 255
  %811 = call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %814, i8* %815, align 1
  %816 = xor i64 45, %803
  %817 = trunc i64 %816 to i32
  %818 = xor i32 %817, %806
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %821, i8* %822, align 1
  %823 = icmp eq i32 %806, 0
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %824, i8* %825, align 1
  %826 = lshr i32 %806, 31
  %827 = trunc i32 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %827, i8* %828, align 1
  %829 = lshr i32 %802, 31
  %830 = xor i32 %826, %829
  %831 = add i32 %830, %829
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %833, i8* %834, align 1
  store %struct.Memory* %loadMem_4041d4, %struct.Memory** %MEMORY
  %loadMem_4041d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %PC.i258
  %839 = add i64 %838, 40
  %840 = load i64, i64* %PC.i258
  %841 = add i64 %840, 6
  %842 = load i64, i64* %PC.i258
  %843 = add i64 %842, 6
  store i64 %843, i64* %PC.i258
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %845 = load i8, i8* %844, align 1
  store i8 %845, i8* %BRANCH_TAKEN, align 1
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %847 = icmp ne i8 %845, 0
  %848 = select i1 %847, i64 %839, i64 %841
  store i64 %848, i64* %846, align 8
  store %struct.Memory* %loadMem_4041d7, %struct.Memory** %MEMORY
  %loadBr_4041d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4041d7 = icmp eq i8 %loadBr_4041d7, 1
  br i1 %cmpBr_4041d7, label %block_.L_4041ff, label %block_4041dd

block_4041dd:                                     ; preds = %block_4041c0
  %loadMem_4041dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 1
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 15
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RBP.i257
  %859 = sub i64 %858, 8
  %860 = load i64, i64* %PC.i255
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC.i255
  %862 = inttoptr i64 %859 to i64*
  %863 = load i64, i64* %862
  store i64 %863, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_4041dd, %struct.Memory** %MEMORY
  %loadMem_4041e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 5
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 15
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %RBP.i254
  %874 = sub i64 %873, 28
  %875 = load i64, i64* %PC.i252
  %876 = add i64 %875, 4
  store i64 %876, i64* %PC.i252
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877
  %879 = sext i32 %878 to i64
  store i64 %879, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_4041e1, %struct.Memory** %MEMORY
  %loadMem_4041e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 1
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 5
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %888 to i64*
  %889 = load i64, i64* %RAX.i250
  %890 = load i64, i64* %RCX.i251
  %891 = mul i64 %890, 8
  %892 = add i64 %891, %889
  %893 = load i64, i64* %PC.i249
  %894 = add i64 %893, 4
  store i64 %894, i64* %PC.i249
  %895 = inttoptr i64 %892 to i64*
  %896 = load i64, i64* %895
  store i64 %896, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_4041e5, %struct.Memory** %MEMORY
  %loadMem_4041e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 5
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %RBP.i248
  %907 = sub i64 %906, 20
  %908 = load i64, i64* %PC.i246
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC.i246
  %910 = inttoptr i64 %907 to i32*
  %911 = load i32, i32* %910
  %912 = sext i32 %911 to i64
  store i64 %912, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_4041e9, %struct.Memory** %MEMORY
  %loadMem_4041ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 5
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 7
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RAX.i244
  %926 = load i64, i64* %RCX.i245
  %927 = add i64 %926, %925
  %928 = load i64, i64* %PC.i243
  %929 = add i64 %928, 4
  store i64 %929, i64* %PC.i243
  %930 = inttoptr i64 %927 to i8*
  %931 = load i8, i8* %930
  %932 = sext i8 %931 to i64
  %933 = and i64 %932, 4294967295
  store i64 %933, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4041ed, %struct.Memory** %MEMORY
  %loadMem_4041f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 7
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %939 to i32*
  %940 = load i32, i32* %EDX.i
  %941 = zext i32 %940 to i64
  %942 = load i64, i64* %PC.i242
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i242
  %944 = sub i32 %940, 126
  %945 = icmp ult i32 %940, 126
  %946 = zext i1 %945 to i8
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %946, i8* %947, align 1
  %948 = and i32 %944, 255
  %949 = call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %952, i8* %953, align 1
  %954 = xor i64 126, %941
  %955 = trunc i64 %954 to i32
  %956 = xor i32 %955, %944
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %959, i8* %960, align 1
  %961 = icmp eq i32 %944, 0
  %962 = zext i1 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %962, i8* %963, align 1
  %964 = lshr i32 %944, 31
  %965 = trunc i32 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %965, i8* %966, align 1
  %967 = lshr i32 %940, 31
  %968 = xor i32 %964, %967
  %969 = add i32 %968, %967
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %971, i8* %972, align 1
  store %struct.Memory* %loadMem_4041f1, %struct.Memory** %MEMORY
  %loadMem_4041f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %PC.i241
  %977 = add i64 %976, 11
  %978 = load i64, i64* %PC.i241
  %979 = add i64 %978, 6
  %980 = load i64, i64* %PC.i241
  %981 = add i64 %980, 6
  store i64 %981, i64* %PC.i241
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %983 = load i8, i8* %982, align 1
  store i8 %983, i8* %BRANCH_TAKEN, align 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %985 = icmp ne i8 %983, 0
  %986 = select i1 %985, i64 %977, i64 %979
  store i64 %986, i64* %984, align 8
  store %struct.Memory* %loadMem_4041f4, %struct.Memory** %MEMORY
  %loadBr_4041f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4041f4 = icmp eq i8 %loadBr_4041f4, 1
  br i1 %cmpBr_4041f4, label %block_.L_4041ff, label %block_4041fa

block_4041fa:                                     ; preds = %block_4041dd
  %loadMem_4041fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %PC.i240
  %991 = add i64 %990, 24
  %992 = load i64, i64* %PC.i240
  %993 = add i64 %992, 5
  store i64 %993, i64* %PC.i240
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %991, i64* %994, align 8
  store %struct.Memory* %loadMem_4041fa, %struct.Memory** %MEMORY
  br label %block_.L_404212

block_.L_4041ff:                                  ; preds = %block_4041dd, %block_4041c0, %block_4041a3, %block_404186, %block_404169
  %loadMem_4041ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %PC.i239
  %999 = add i64 %998, 5
  %1000 = load i64, i64* %PC.i239
  %1001 = add i64 %1000, 5
  store i64 %1001, i64* %PC.i239
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %999, i64* %1002, align 8
  store %struct.Memory* %loadMem_4041ff, %struct.Memory** %MEMORY
  br label %block_.L_404204

block_.L_404204:                                  ; preds = %block_.L_4041ff
  %loadMem_404204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 1
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 15
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RBP.i238
  %1013 = sub i64 %1012, 28
  %1014 = load i64, i64* %PC.i236
  %1015 = add i64 %1014, 3
  store i64 %1015, i64* %PC.i236
  %1016 = inttoptr i64 %1013 to i32*
  %1017 = load i32, i32* %1016
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_404204, %struct.Memory** %MEMORY
  %loadMem_404207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RAX.i235
  %1026 = load i64, i64* %PC.i234
  %1027 = add i64 %1026, 3
  store i64 %1027, i64* %PC.i234
  %1028 = trunc i64 %1025 to i32
  %1029 = add i32 1, %1028
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RAX.i235, align 8
  %1031 = icmp ult i32 %1029, %1028
  %1032 = icmp ult i32 %1029, 1
  %1033 = or i1 %1031, %1032
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1034, i8* %1035, align 1
  %1036 = and i32 %1029, 255
  %1037 = call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1040, i8* %1041, align 1
  %1042 = xor i64 1, %1025
  %1043 = trunc i64 %1042 to i32
  %1044 = xor i32 %1043, %1029
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1047, i8* %1048, align 1
  %1049 = icmp eq i32 %1029, 0
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1050, i8* %1051, align 1
  %1052 = lshr i32 %1029, 31
  %1053 = trunc i32 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1053, i8* %1054, align 1
  %1055 = lshr i32 %1028, 31
  %1056 = xor i32 %1052, %1055
  %1057 = add i32 %1056, %1052
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1059, i8* %1060, align 1
  store %struct.Memory* %loadMem_404207, %struct.Memory** %MEMORY
  %loadMem_40420a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %1066 to i32*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 15
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %RBP.i233
  %1071 = sub i64 %1070, 28
  %1072 = load i32, i32* %EAX.i232
  %1073 = zext i32 %1072 to i64
  %1074 = load i64, i64* %PC.i231
  %1075 = add i64 %1074, 3
  store i64 %1075, i64* %PC.i231
  %1076 = inttoptr i64 %1071 to i32*
  store i32 %1072, i32* %1076
  store %struct.Memory* %loadMem_40420a, %struct.Memory** %MEMORY
  %loadMem_40420d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %PC.i230
  %1081 = add i64 %1080, -180
  %1082 = load i64, i64* %PC.i230
  %1083 = add i64 %1082, 5
  store i64 %1083, i64* %PC.i230
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1081, i64* %1084, align 8
  store %struct.Memory* %loadMem_40420d, %struct.Memory** %MEMORY
  br label %block_.L_404159

block_.L_404212:                                  ; preds = %block_4041fa, %block_.L_404159
  %loadMem_404212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 1
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 15
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RBP.i229
  %1095 = sub i64 %1094, 28
  %1096 = load i64, i64* %PC.i227
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %PC.i227
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_404212, %struct.Memory** %MEMORY
  %loadMem_404215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 5
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RBP.i226
  %1111 = sub i64 %1110, 16
  %1112 = load i64, i64* %PC.i224
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %PC.i224
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114
  store i64 %1115, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_404215, %struct.Memory** %MEMORY
  %loadMem_404219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 1
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %1121 to i32*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 5
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %1124 to i64*
  %1125 = load i32, i32* %EAX.i222
  %1126 = zext i32 %1125 to i64
  %1127 = load i64, i64* %RCX.i223
  %1128 = add i64 %1127, 8
  %1129 = load i64, i64* %PC.i221
  %1130 = add i64 %1129, 3
  store i64 %1130, i64* %PC.i221
  %1131 = inttoptr i64 %1128 to i32*
  %1132 = load i32, i32* %1131
  %1133 = sub i32 %1125, %1132
  %1134 = icmp ult i32 %1125, %1132
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1135, i8* %1136, align 1
  %1137 = and i32 %1133, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1
  %1143 = xor i32 %1132, %1125
  %1144 = xor i32 %1143, %1133
  %1145 = lshr i32 %1144, 4
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1147, i8* %1148, align 1
  %1149 = icmp eq i32 %1133, 0
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1150, i8* %1151, align 1
  %1152 = lshr i32 %1133, 31
  %1153 = trunc i32 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1153, i8* %1154, align 1
  %1155 = lshr i32 %1125, 31
  %1156 = lshr i32 %1132, 31
  %1157 = xor i32 %1156, %1155
  %1158 = xor i32 %1152, %1155
  %1159 = add i32 %1158, %1157
  %1160 = icmp eq i32 %1159, 2
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1161, i8* %1162, align 1
  store %struct.Memory* %loadMem_404219, %struct.Memory** %MEMORY
  %loadMem_40421c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %PC.i220
  %1167 = add i64 %1166, 11
  %1168 = load i64, i64* %PC.i220
  %1169 = add i64 %1168, 6
  %1170 = load i64, i64* %PC.i220
  %1171 = add i64 %1170, 6
  store i64 %1171, i64* %PC.i220
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1173 = load i8, i8* %1172, align 1
  %1174 = icmp eq i8 %1173, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %BRANCH_TAKEN, align 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1177 = select i1 %1174, i64 %1167, i64 %1169
  store i64 %1177, i64* %1176, align 8
  store %struct.Memory* %loadMem_40421c, %struct.Memory** %MEMORY
  %loadBr_40421c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40421c = icmp eq i8 %loadBr_40421c, 1
  br i1 %cmpBr_40421c, label %block_.L_404227, label %block_404222

block_404222:                                     ; preds = %block_.L_404212
  %loadMem_404222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %PC.i219
  %1182 = add i64 %1181, 196
  %1183 = load i64, i64* %PC.i219
  %1184 = add i64 %1183, 5
  store i64 %1184, i64* %PC.i219
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1182, i64* %1185, align 8
  store %struct.Memory* %loadMem_404222, %struct.Memory** %MEMORY
  br label %block_.L_4042e6

block_.L_404227:                                  ; preds = %block_.L_404212
  %loadMem_404227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 1
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 15
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1194 to i64*
  %1195 = load i64, i64* %RBP.i218
  %1196 = sub i64 %1195, 24
  %1197 = load i64, i64* %PC.i216
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC.i216
  %1199 = inttoptr i64 %1196 to i32*
  %1200 = load i32, i32* %1199
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_404227, %struct.Memory** %MEMORY
  %loadMem_40422a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 33
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %1207 to i32*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 15
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1210 to i64*
  %1211 = load i32, i32* %EAX.i214
  %1212 = zext i32 %1211 to i64
  %1213 = load i64, i64* %RBP.i215
  %1214 = sub i64 %1213, 20
  %1215 = load i64, i64* %PC.i213
  %1216 = add i64 %1215, 3
  store i64 %1216, i64* %PC.i213
  %1217 = inttoptr i64 %1214 to i32*
  %1218 = load i32, i32* %1217
  %1219 = sub i32 %1211, %1218
  %1220 = icmp ult i32 %1211, %1218
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1221, i8* %1222, align 1
  %1223 = and i32 %1219, 255
  %1224 = call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1227, i8* %1228, align 1
  %1229 = xor i32 %1218, %1211
  %1230 = xor i32 %1229, %1219
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1233, i8* %1234, align 1
  %1235 = icmp eq i32 %1219, 0
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1219, 31
  %1239 = trunc i32 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1239, i8* %1240, align 1
  %1241 = lshr i32 %1211, 31
  %1242 = lshr i32 %1218, 31
  %1243 = xor i32 %1242, %1241
  %1244 = xor i32 %1238, %1241
  %1245 = add i32 %1244, %1243
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1247, i8* %1248, align 1
  store %struct.Memory* %loadMem_40422a, %struct.Memory** %MEMORY
  %loadMem_40422d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %PC.i212
  %1253 = add i64 %1252, 176
  %1254 = load i64, i64* %PC.i212
  %1255 = add i64 %1254, 6
  %1256 = load i64, i64* %PC.i212
  %1257 = add i64 %1256, 6
  store i64 %1257, i64* %PC.i212
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1259 = load i8, i8* %1258, align 1
  store i8 %1259, i8* %BRANCH_TAKEN, align 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1261 = icmp ne i8 %1259, 0
  %1262 = select i1 %1261, i64 %1253, i64 %1255
  store i64 %1262, i64* %1260, align 8
  store %struct.Memory* %loadMem_40422d, %struct.Memory** %MEMORY
  %loadBr_40422d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40422d = icmp eq i8 %loadBr_40422d, 1
  br i1 %cmpBr_40422d, label %block_.L_4042dd, label %block_404233

block_404233:                                     ; preds = %block_.L_404227
  %loadMem_404233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 15
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1268 to i64*
  %1269 = load i64, i64* %RBP.i211
  %1270 = sub i64 %1269, 28
  %1271 = load i64, i64* %PC.i210
  %1272 = add i64 %1271, 7
  store i64 %1272, i64* %PC.i210
  %1273 = inttoptr i64 %1270 to i32*
  store i32 0, i32* %1273
  store %struct.Memory* %loadMem_404233, %struct.Memory** %MEMORY
  br label %block_.L_40423a

block_.L_40423a:                                  ; preds = %block_40424a, %block_404233
  %loadMem_40423a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 1
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1282 to i64*
  %1283 = load i64, i64* %RBP.i209
  %1284 = sub i64 %1283, 28
  %1285 = load i64, i64* %PC.i207
  %1286 = add i64 %1285, 3
  store i64 %1286, i64* %PC.i207
  %1287 = inttoptr i64 %1284 to i32*
  %1288 = load i32, i32* %1287
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RAX.i208, align 8
  store %struct.Memory* %loadMem_40423a, %struct.Memory** %MEMORY
  %loadMem_40423d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 5
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 15
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %RBP.i206
  %1300 = sub i64 %1299, 16
  %1301 = load i64, i64* %PC.i204
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC.i204
  %1303 = inttoptr i64 %1300 to i64*
  %1304 = load i64, i64* %1303
  store i64 %1304, i64* %RCX.i205, align 8
  store %struct.Memory* %loadMem_40423d, %struct.Memory** %MEMORY
  %loadMem_404241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 1
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %1310 to i32*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 5
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %1313 to i64*
  %1314 = load i32, i32* %EAX.i202
  %1315 = zext i32 %1314 to i64
  %1316 = load i64, i64* %RCX.i203
  %1317 = add i64 %1316, 8
  %1318 = load i64, i64* %PC.i201
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC.i201
  %1320 = inttoptr i64 %1317 to i32*
  %1321 = load i32, i32* %1320
  %1322 = sub i32 %1314, %1321
  %1323 = icmp ult i32 %1314, %1321
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
  %1332 = xor i32 %1321, %1314
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
  %1344 = lshr i32 %1314, 31
  %1345 = lshr i32 %1321, 31
  %1346 = xor i32 %1345, %1344
  %1347 = xor i32 %1341, %1344
  %1348 = add i32 %1347, %1346
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1350, i8* %1351, align 1
  store %struct.Memory* %loadMem_404241, %struct.Memory** %MEMORY
  %loadMem_404244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %PC.i200
  %1356 = add i64 %1355, 58
  %1357 = load i64, i64* %PC.i200
  %1358 = add i64 %1357, 6
  %1359 = load i64, i64* %PC.i200
  %1360 = add i64 %1359, 6
  store i64 %1360, i64* %PC.i200
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1362 = load i8, i8* %1361, align 1
  %1363 = icmp ne i8 %1362, 0
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1365 = load i8, i8* %1364, align 1
  %1366 = icmp ne i8 %1365, 0
  %1367 = xor i1 %1363, %1366
  %1368 = xor i1 %1367, true
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %BRANCH_TAKEN, align 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1371 = select i1 %1367, i64 %1358, i64 %1356
  store i64 %1371, i64* %1370, align 8
  store %struct.Memory* %loadMem_404244, %struct.Memory** %MEMORY
  %loadBr_404244 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404244 = icmp eq i8 %loadBr_404244, 1
  br i1 %cmpBr_404244, label %block_.L_40427e, label %block_40424a

block_40424a:                                     ; preds = %block_.L_40423a
  %loadMem_40424a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 1
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i199
  %1382 = sub i64 %1381, 8
  %1383 = load i64, i64* %PC.i197
  %1384 = add i64 %1383, 4
  store i64 %1384, i64* %PC.i197
  %1385 = inttoptr i64 %1382 to i64*
  %1386 = load i64, i64* %1385
  store i64 %1386, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_40424a, %struct.Memory** %MEMORY
  %loadMem_40424e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 5
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 15
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %RBP.i196
  %1397 = sub i64 %1396, 28
  %1398 = load i64, i64* %PC.i194
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC.i194
  %1400 = inttoptr i64 %1397 to i32*
  %1401 = load i32, i32* %1400
  %1402 = sext i32 %1401 to i64
  store i64 %1402, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_40424e, %struct.Memory** %MEMORY
  %loadMem_404252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 1
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 5
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %RAX.i192
  %1413 = load i64, i64* %RCX.i193
  %1414 = mul i64 %1413, 8
  %1415 = add i64 %1414, %1412
  %1416 = load i64, i64* %PC.i191
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %PC.i191
  %1418 = inttoptr i64 %1415 to i64*
  %1419 = load i64, i64* %1418
  store i64 %1419, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_404252, %struct.Memory** %MEMORY
  %loadMem_404256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 5
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 15
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RBP.i190
  %1430 = sub i64 %1429, 20
  %1431 = load i64, i64* %PC.i188
  %1432 = add i64 %1431, 4
  store i64 %1432, i64* %PC.i188
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_404256, %struct.Memory** %MEMORY
  %loadMem_40425a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 7
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %1442 = bitcast %union.anon* %1441 to %struct.anon.2*
  %DL.i185 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1442, i32 0, i32 0
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 1
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 5
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %RAX.i186
  %1450 = load i64, i64* %RCX.i187
  %1451 = add i64 %1450, %1449
  %1452 = load i64, i64* %PC.i184
  %1453 = add i64 %1452, 3
  store i64 %1453, i64* %PC.i184
  %1454 = inttoptr i64 %1451 to i8*
  %1455 = load i8, i8* %1454
  store i8 %1455, i8* %DL.i185, align 1
  store %struct.Memory* %loadMem_40425a, %struct.Memory** %MEMORY
  %loadMem_40425d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 15
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RBP.i183
  %1466 = sub i64 %1465, 8
  %1467 = load i64, i64* %PC.i181
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %PC.i181
  %1469 = inttoptr i64 %1466 to i64*
  %1470 = load i64, i64* %1469
  store i64 %1470, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_40425d, %struct.Memory** %MEMORY
  %loadMem_404261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 5
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RBP.i180
  %1481 = sub i64 %1480, 28
  %1482 = load i64, i64* %PC.i178
  %1483 = add i64 %1482, 4
  store i64 %1483, i64* %PC.i178
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484
  %1486 = sext i32 %1485 to i64
  store i64 %1486, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_404261, %struct.Memory** %MEMORY
  %loadMem_404265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 1
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 5
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RAX.i176
  %1497 = load i64, i64* %RCX.i177
  %1498 = mul i64 %1497, 8
  %1499 = add i64 %1498, %1496
  %1500 = load i64, i64* %PC.i175
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i175
  %1502 = inttoptr i64 %1499 to i64*
  %1503 = load i64, i64* %1502
  store i64 %1503, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_404265, %struct.Memory** %MEMORY
  %loadMem_404269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 5
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 15
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RBP.i174
  %1514 = sub i64 %1513, 24
  %1515 = load i64, i64* %PC.i172
  %1516 = add i64 %1515, 4
  store i64 %1516, i64* %PC.i172
  %1517 = inttoptr i64 %1514 to i32*
  %1518 = load i32, i32* %1517
  %1519 = sext i32 %1518 to i64
  store i64 %1519, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_404269, %struct.Memory** %MEMORY
  %loadMem_40426d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 7
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %1526 = bitcast %union.anon* %1525 to %struct.anon.2*
  %DL.i169 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1526, i32 0, i32 0
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 1
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 5
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %RAX.i170
  %1534 = load i64, i64* %RCX.i171
  %1535 = add i64 %1534, %1533
  %1536 = load i8, i8* %DL.i169
  %1537 = zext i8 %1536 to i64
  %1538 = load i64, i64* %PC.i168
  %1539 = add i64 %1538, 3
  store i64 %1539, i64* %PC.i168
  %1540 = inttoptr i64 %1535 to i8*
  store i8 %1536, i8* %1540
  store %struct.Memory* %loadMem_40426d, %struct.Memory** %MEMORY
  %loadMem_404270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 1
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 15
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RBP.i167
  %1551 = sub i64 %1550, 28
  %1552 = load i64, i64* %PC.i165
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i165
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_404270, %struct.Memory** %MEMORY
  %loadMem_404273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 1
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %RAX.i164
  %1564 = load i64, i64* %PC.i163
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %PC.i163
  %1566 = trunc i64 %1563 to i32
  %1567 = add i32 1, %1566
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i164, align 8
  %1569 = icmp ult i32 %1567, %1566
  %1570 = icmp ult i32 %1567, 1
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1572, i8* %1573, align 1
  %1574 = and i32 %1567, 255
  %1575 = call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1578, i8* %1579, align 1
  %1580 = xor i64 1, %1563
  %1581 = trunc i64 %1580 to i32
  %1582 = xor i32 %1581, %1567
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1585, i8* %1586, align 1
  %1587 = icmp eq i32 %1567, 0
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1588, i8* %1589, align 1
  %1590 = lshr i32 %1567, 31
  %1591 = trunc i32 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1591, i8* %1592, align 1
  %1593 = lshr i32 %1566, 31
  %1594 = xor i32 %1590, %1593
  %1595 = add i32 %1594, %1590
  %1596 = icmp eq i32 %1595, 2
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1597, i8* %1598, align 1
  store %struct.Memory* %loadMem_404273, %struct.Memory** %MEMORY
  %loadMem_404276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %1604 to i32*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 15
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RBP.i162
  %1609 = sub i64 %1608, 28
  %1610 = load i32, i32* %EAX.i161
  %1611 = zext i32 %1610 to i64
  %1612 = load i64, i64* %PC.i160
  %1613 = add i64 %1612, 3
  store i64 %1613, i64* %PC.i160
  %1614 = inttoptr i64 %1609 to i32*
  store i32 %1610, i32* %1614
  store %struct.Memory* %loadMem_404276, %struct.Memory** %MEMORY
  %loadMem_404279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 33
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1617 to i64*
  %1618 = load i64, i64* %PC.i159
  %1619 = add i64 %1618, -63
  %1620 = load i64, i64* %PC.i159
  %1621 = add i64 %1620, 5
  store i64 %1621, i64* %PC.i159
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1619, i64* %1622, align 8
  store %struct.Memory* %loadMem_404279, %struct.Memory** %MEMORY
  br label %block_.L_40423a

block_.L_40427e:                                  ; preds = %block_.L_40423a
  %loadMem_40427e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 1
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 15
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %RBP.i158
  %1633 = sub i64 %1632, 16
  %1634 = load i64, i64* %PC.i156
  %1635 = add i64 %1634, 4
  store i64 %1635, i64* %PC.i156
  %1636 = inttoptr i64 %1633 to i64*
  %1637 = load i64, i64* %1636
  store i64 %1637, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_40427e, %struct.Memory** %MEMORY
  %loadMem_404282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %RAX.i155
  %1645 = add i64 %1644, 24
  %1646 = load i64, i64* %PC.i154
  %1647 = add i64 %1646, 5
  store i64 %1647, i64* %PC.i154
  %1648 = inttoptr i64 %1645 to i64*
  %1649 = load i64, i64* %1648
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1650, align 1
  %1651 = trunc i64 %1649 to i32
  %1652 = and i32 %1651, 255
  %1653 = call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1656, i8* %1657, align 1
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1658, align 1
  %1659 = icmp eq i64 %1649, 0
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1660, i8* %1661, align 1
  %1662 = lshr i64 %1649, 63
  %1663 = trunc i64 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1663, i8* %1664, align 1
  %1665 = lshr i64 %1649, 63
  %1666 = xor i64 %1662, %1665
  %1667 = add i64 %1666, %1665
  %1668 = icmp eq i64 %1667, 2
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1669, i8* %1670, align 1
  store %struct.Memory* %loadMem_404282, %struct.Memory** %MEMORY
  %loadMem_404287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %PC.i153
  %1675 = add i64 %1674, 36
  %1676 = load i64, i64* %PC.i153
  %1677 = add i64 %1676, 6
  %1678 = load i64, i64* %PC.i153
  %1679 = add i64 %1678, 6
  store i64 %1679, i64* %PC.i153
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1681 = load i8, i8* %1680, align 1
  store i8 %1681, i8* %BRANCH_TAKEN, align 1
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1683 = icmp ne i8 %1681, 0
  %1684 = select i1 %1683, i64 %1675, i64 %1677
  store i64 %1684, i64* %1682, align 8
  store %struct.Memory* %loadMem_404287, %struct.Memory** %MEMORY
  %loadBr_404287 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404287 = icmp eq i8 %loadBr_404287, 1
  br i1 %cmpBr_404287, label %block_.L_4042ab, label %block_40428d

block_40428d:                                     ; preds = %block_.L_40427e
  %loadMem_40428d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 1
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 15
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %RBP.i152
  %1695 = sub i64 %1694, 16
  %1696 = load i64, i64* %PC.i150
  %1697 = add i64 %1696, 4
  store i64 %1697, i64* %PC.i150
  %1698 = inttoptr i64 %1695 to i64*
  %1699 = load i64, i64* %1698
  store i64 %1699, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_40428d, %struct.Memory** %MEMORY
  %loadMem_404291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 1
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RAX.i149
  %1707 = add i64 %1706, 24
  %1708 = load i64, i64* %PC.i148
  %1709 = add i64 %1708, 4
  store i64 %1709, i64* %PC.i148
  %1710 = inttoptr i64 %1707 to i64*
  %1711 = load i64, i64* %1710
  store i64 %1711, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_404291, %struct.Memory** %MEMORY
  %loadMem_404295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 5
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 15
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RBP.i147
  %1722 = sub i64 %1721, 20
  %1723 = load i64, i64* %PC.i145
  %1724 = add i64 %1723, 4
  store i64 %1724, i64* %PC.i145
  %1725 = inttoptr i64 %1722 to i32*
  %1726 = load i32, i32* %1725
  %1727 = sext i32 %1726 to i64
  store i64 %1727, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_404295, %struct.Memory** %MEMORY
  %loadMem_404299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 7
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %1734 = bitcast %union.anon* %1733 to %struct.anon.2*
  %DL.i142 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1734, i32 0, i32 0
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 1
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 5
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RAX.i143
  %1742 = load i64, i64* %RCX.i144
  %1743 = add i64 %1742, %1741
  %1744 = load i64, i64* %PC.i141
  %1745 = add i64 %1744, 3
  store i64 %1745, i64* %PC.i141
  %1746 = inttoptr i64 %1743 to i8*
  %1747 = load i8, i8* %1746
  store i8 %1747, i8* %DL.i142, align 1
  store %struct.Memory* %loadMem_404299, %struct.Memory** %MEMORY
  %loadMem_40429c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 1
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 15
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %1756 to i64*
  %1757 = load i64, i64* %RBP.i140
  %1758 = sub i64 %1757, 16
  %1759 = load i64, i64* %PC.i138
  %1760 = add i64 %1759, 4
  store i64 %1760, i64* %PC.i138
  %1761 = inttoptr i64 %1758 to i64*
  %1762 = load i64, i64* %1761
  store i64 %1762, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_40429c, %struct.Memory** %MEMORY
  %loadMem_4042a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 1
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %RAX.i137
  %1770 = add i64 %1769, 24
  %1771 = load i64, i64* %PC.i136
  %1772 = add i64 %1771, 4
  store i64 %1772, i64* %PC.i136
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773
  store i64 %1774, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_4042a0, %struct.Memory** %MEMORY
  %loadMem_4042a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RBP.i135
  %1785 = sub i64 %1784, 24
  %1786 = load i64, i64* %PC.i133
  %1787 = add i64 %1786, 4
  store i64 %1787, i64* %PC.i133
  %1788 = inttoptr i64 %1785 to i32*
  %1789 = load i32, i32* %1788
  %1790 = sext i32 %1789 to i64
  store i64 %1790, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_4042a4, %struct.Memory** %MEMORY
  %loadMem_4042a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 7
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %1797 = bitcast %union.anon* %1796 to %struct.anon.2*
  %DL.i130 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1797, i32 0, i32 0
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 1
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 5
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %1803 to i64*
  %1804 = load i64, i64* %RAX.i131
  %1805 = load i64, i64* %RCX.i132
  %1806 = add i64 %1805, %1804
  %1807 = load i8, i8* %DL.i130
  %1808 = zext i8 %1807 to i64
  %1809 = load i64, i64* %PC.i129
  %1810 = add i64 %1809, 3
  store i64 %1810, i64* %PC.i129
  %1811 = inttoptr i64 %1806 to i8*
  store i8 %1807, i8* %1811
  store %struct.Memory* %loadMem_4042a8, %struct.Memory** %MEMORY
  br label %block_.L_4042ab

block_.L_4042ab:                                  ; preds = %block_40428d, %block_.L_40427e
  %loadMem_4042ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i128
  %1822 = sub i64 %1821, 16
  %1823 = load i64, i64* %PC.i126
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i126
  %1825 = inttoptr i64 %1822 to i64*
  %1826 = load i64, i64* %1825
  store i64 %1826, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_4042ab, %struct.Memory** %MEMORY
  %loadMem_4042af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RAX.i125
  %1834 = add i64 %1833, 32
  %1835 = load i64, i64* %PC.i124
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i124
  %1837 = inttoptr i64 %1834 to i64*
  %1838 = load i64, i64* %1837
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1839, align 1
  %1840 = trunc i64 %1838 to i32
  %1841 = and i32 %1840, 255
  %1842 = call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1845, i8* %1846, align 1
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1847, align 1
  %1848 = icmp eq i64 %1838, 0
  %1849 = zext i1 %1848 to i8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1849, i8* %1850, align 1
  %1851 = lshr i64 %1838, 63
  %1852 = trunc i64 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1852, i8* %1853, align 1
  %1854 = lshr i64 %1838, 63
  %1855 = xor i64 %1851, %1854
  %1856 = add i64 %1855, %1854
  %1857 = icmp eq i64 %1856, 2
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1858, i8* %1859, align 1
  store %struct.Memory* %loadMem_4042af, %struct.Memory** %MEMORY
  %loadMem_4042b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i123
  %1864 = add i64 %1863, 36
  %1865 = load i64, i64* %PC.i123
  %1866 = add i64 %1865, 6
  %1867 = load i64, i64* %PC.i123
  %1868 = add i64 %1867, 6
  store i64 %1868, i64* %PC.i123
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1870 = load i8, i8* %1869, align 1
  store i8 %1870, i8* %BRANCH_TAKEN, align 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1872 = icmp ne i8 %1870, 0
  %1873 = select i1 %1872, i64 %1864, i64 %1866
  store i64 %1873, i64* %1871, align 8
  store %struct.Memory* %loadMem_4042b4, %struct.Memory** %MEMORY
  %loadBr_4042b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4042b4 = icmp eq i8 %loadBr_4042b4, 1
  br i1 %cmpBr_4042b4, label %block_.L_4042d8, label %block_4042ba

block_4042ba:                                     ; preds = %block_.L_4042ab
  %loadMem_4042ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i122
  %1884 = sub i64 %1883, 16
  %1885 = load i64, i64* %PC.i120
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC.i120
  %1887 = inttoptr i64 %1884 to i64*
  %1888 = load i64, i64* %1887
  store i64 %1888, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_4042ba, %struct.Memory** %MEMORY
  %loadMem_4042be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 33
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 1
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %RAX.i119
  %1896 = add i64 %1895, 32
  %1897 = load i64, i64* %PC.i118
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %PC.i118
  %1899 = inttoptr i64 %1896 to i64*
  %1900 = load i64, i64* %1899
  store i64 %1900, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_4042be, %struct.Memory** %MEMORY
  %loadMem_4042c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 5
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 15
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RBP.i117
  %1911 = sub i64 %1910, 20
  %1912 = load i64, i64* %PC.i115
  %1913 = add i64 %1912, 4
  store i64 %1913, i64* %PC.i115
  %1914 = inttoptr i64 %1911 to i32*
  %1915 = load i32, i32* %1914
  %1916 = sext i32 %1915 to i64
  store i64 %1916, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_4042c2, %struct.Memory** %MEMORY
  %loadMem_4042c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 7
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %1923 = bitcast %union.anon* %1922 to %struct.anon.2*
  %DL.i112 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1923, i32 0, i32 0
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 1
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %RAX.i113
  %1931 = load i64, i64* %RCX.i114
  %1932 = add i64 %1931, %1930
  %1933 = load i64, i64* %PC.i111
  %1934 = add i64 %1933, 3
  store i64 %1934, i64* %PC.i111
  %1935 = inttoptr i64 %1932 to i8*
  %1936 = load i8, i8* %1935
  store i8 %1936, i8* %DL.i112, align 1
  store %struct.Memory* %loadMem_4042c6, %struct.Memory** %MEMORY
  %loadMem_4042c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 1
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 15
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %1945 to i64*
  %1946 = load i64, i64* %RBP.i110
  %1947 = sub i64 %1946, 16
  %1948 = load i64, i64* %PC.i108
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %PC.i108
  %1950 = inttoptr i64 %1947 to i64*
  %1951 = load i64, i64* %1950
  store i64 %1951, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_4042c9, %struct.Memory** %MEMORY
  %loadMem_4042cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 1
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %RAX.i107
  %1959 = add i64 %1958, 32
  %1960 = load i64, i64* %PC.i106
  %1961 = add i64 %1960, 4
  store i64 %1961, i64* %PC.i106
  %1962 = inttoptr i64 %1959 to i64*
  %1963 = load i64, i64* %1962
  store i64 %1963, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_4042cd, %struct.Memory** %MEMORY
  %loadMem_4042d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 5
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 15
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %RBP.i105
  %1974 = sub i64 %1973, 24
  %1975 = load i64, i64* %PC.i103
  %1976 = add i64 %1975, 4
  store i64 %1976, i64* %PC.i103
  %1977 = inttoptr i64 %1974 to i32*
  %1978 = load i32, i32* %1977
  %1979 = sext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_4042d1, %struct.Memory** %MEMORY
  %loadMem_4042d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 7
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %1986 = bitcast %union.anon* %1985 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1986, i32 0, i32 0
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 1
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 5
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %RAX.i101
  %1994 = load i64, i64* %RCX.i102
  %1995 = add i64 %1994, %1993
  %1996 = load i8, i8* %DL.i
  %1997 = zext i8 %1996 to i64
  %1998 = load i64, i64* %PC.i100
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i100
  %2000 = inttoptr i64 %1995 to i8*
  store i8 %1996, i8* %2000
  store %struct.Memory* %loadMem_4042d5, %struct.Memory** %MEMORY
  br label %block_.L_4042d8

block_.L_4042d8:                                  ; preds = %block_4042ba, %block_.L_4042ab
  %loadMem_4042d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %PC.i99
  %2005 = add i64 %2004, 5
  %2006 = load i64, i64* %PC.i99
  %2007 = add i64 %2006, 5
  store i64 %2007, i64* %PC.i99
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2005, i64* %2008, align 8
  store %struct.Memory* %loadMem_4042d8, %struct.Memory** %MEMORY
  br label %block_.L_4042dd

block_.L_4042dd:                                  ; preds = %block_.L_4042d8, %block_.L_404227
  %loadMem_4042dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 1
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 15
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %2017 to i64*
  %2018 = load i64, i64* %RBP.i98
  %2019 = sub i64 %2018, 24
  %2020 = load i64, i64* %PC.i96
  %2021 = add i64 %2020, 3
  store i64 %2021, i64* %PC.i96
  %2022 = inttoptr i64 %2019 to i32*
  %2023 = load i32, i32* %2022
  %2024 = zext i32 %2023 to i64
  store i64 %2024, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_4042dd, %struct.Memory** %MEMORY
  %loadMem_4042e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 33
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RAX.i95
  %2032 = load i64, i64* %PC.i94
  %2033 = add i64 %2032, 3
  store i64 %2033, i64* %PC.i94
  %2034 = trunc i64 %2031 to i32
  %2035 = add i32 1, %2034
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RAX.i95, align 8
  %2037 = icmp ult i32 %2035, %2034
  %2038 = icmp ult i32 %2035, 1
  %2039 = or i1 %2037, %2038
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2040, i8* %2041, align 1
  %2042 = and i32 %2035, 255
  %2043 = call i32 @llvm.ctpop.i32(i32 %2042)
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2046, i8* %2047, align 1
  %2048 = xor i64 1, %2031
  %2049 = trunc i64 %2048 to i32
  %2050 = xor i32 %2049, %2035
  %2051 = lshr i32 %2050, 4
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2053, i8* %2054, align 1
  %2055 = icmp eq i32 %2035, 0
  %2056 = zext i1 %2055 to i8
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2056, i8* %2057, align 1
  %2058 = lshr i32 %2035, 31
  %2059 = trunc i32 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2059, i8* %2060, align 1
  %2061 = lshr i32 %2034, 31
  %2062 = xor i32 %2058, %2061
  %2063 = add i32 %2062, %2058
  %2064 = icmp eq i32 %2063, 2
  %2065 = zext i1 %2064 to i8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2065, i8* %2066, align 1
  store %struct.Memory* %loadMem_4042e0, %struct.Memory** %MEMORY
  %loadMem_4042e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 1
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %EAX.i92 = bitcast %union.anon* %2072 to i32*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 15
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RBP.i93
  %2077 = sub i64 %2076, 24
  %2078 = load i32, i32* %EAX.i92
  %2079 = zext i32 %2078 to i64
  %2080 = load i64, i64* %PC.i91
  %2081 = add i64 %2080, 3
  store i64 %2081, i64* %PC.i91
  %2082 = inttoptr i64 %2077 to i32*
  store i32 %2078, i32* %2082
  store %struct.Memory* %loadMem_4042e3, %struct.Memory** %MEMORY
  br label %block_.L_4042e6

block_.L_4042e6:                                  ; preds = %block_.L_4042dd, %block_404222
  %loadMem_4042e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 1
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 15
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %RBP.i90
  %2093 = sub i64 %2092, 20
  %2094 = load i64, i64* %PC.i88
  %2095 = add i64 %2094, 3
  store i64 %2095, i64* %PC.i88
  %2096 = inttoptr i64 %2093 to i32*
  %2097 = load i32, i32* %2096
  %2098 = zext i32 %2097 to i64
  store i64 %2098, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_4042e6, %struct.Memory** %MEMORY
  %loadMem_4042e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 1
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RAX.i87
  %2106 = load i64, i64* %PC.i86
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i86
  %2108 = trunc i64 %2105 to i32
  %2109 = add i32 1, %2108
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RAX.i87, align 8
  %2111 = icmp ult i32 %2109, %2108
  %2112 = icmp ult i32 %2109, 1
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2114, i8* %2115, align 1
  %2116 = and i32 %2109, 255
  %2117 = call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2120, i8* %2121, align 1
  %2122 = xor i64 1, %2105
  %2123 = trunc i64 %2122 to i32
  %2124 = xor i32 %2123, %2109
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2127, i8* %2128, align 1
  %2129 = icmp eq i32 %2109, 0
  %2130 = zext i1 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2130, i8* %2131, align 1
  %2132 = lshr i32 %2109, 31
  %2133 = trunc i32 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2133, i8* %2134, align 1
  %2135 = lshr i32 %2108, 31
  %2136 = xor i32 %2132, %2135
  %2137 = add i32 %2136, %2132
  %2138 = icmp eq i32 %2137, 2
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2139, i8* %2140, align 1
  store %struct.Memory* %loadMem_4042e9, %struct.Memory** %MEMORY
  %loadMem_4042ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %EAX.i84 = bitcast %union.anon* %2146 to i32*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 15
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RBP.i85
  %2151 = sub i64 %2150, 20
  %2152 = load i32, i32* %EAX.i84
  %2153 = zext i32 %2152 to i64
  %2154 = load i64, i64* %PC.i83
  %2155 = add i64 %2154, 3
  store i64 %2155, i64* %PC.i83
  %2156 = inttoptr i64 %2151 to i32*
  store i32 %2152, i32* %2156
  store %struct.Memory* %loadMem_4042ec, %struct.Memory** %MEMORY
  %loadMem_4042ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %PC.i82
  %2161 = add i64 %2160, -437
  %2162 = load i64, i64* %PC.i82
  %2163 = add i64 %2162, 5
  store i64 %2163, i64* %PC.i82
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2161, i64* %2164, align 8
  store %struct.Memory* %loadMem_4042ef, %struct.Memory** %MEMORY
  br label %block_.L_40413a

block_.L_4042f4:                                  ; preds = %block_.L_40413a
  %loadMem_4042f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RBP.i81
  %2172 = sub i64 %2171, 28
  %2173 = load i64, i64* %PC.i80
  %2174 = add i64 %2173, 7
  store i64 %2174, i64* %PC.i80
  %2175 = inttoptr i64 %2172 to i32*
  store i32 0, i32* %2175
  store %struct.Memory* %loadMem_4042f4, %struct.Memory** %MEMORY
  br label %block_.L_4042fb

block_.L_4042fb:                                  ; preds = %block_40430b, %block_.L_4042f4
  %loadMem_4042fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 33
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 1
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 15
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %RBP.i79
  %2186 = sub i64 %2185, 28
  %2187 = load i64, i64* %PC.i77
  %2188 = add i64 %2187, 3
  store i64 %2188, i64* %PC.i77
  %2189 = inttoptr i64 %2186 to i32*
  %2190 = load i32, i32* %2189
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_4042fb, %struct.Memory** %MEMORY
  %loadMem_4042fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 33
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 5
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 15
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RBP.i76
  %2202 = sub i64 %2201, 16
  %2203 = load i64, i64* %PC.i74
  %2204 = add i64 %2203, 4
  store i64 %2204, i64* %PC.i74
  %2205 = inttoptr i64 %2202 to i64*
  %2206 = load i64, i64* %2205
  store i64 %2206, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_4042fe, %struct.Memory** %MEMORY
  %loadMem_404302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %2212 to i32*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 5
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %2215 to i64*
  %2216 = load i32, i32* %EAX.i72
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %RCX.i73
  %2219 = add i64 %2218, 8
  %2220 = load i64, i64* %PC.i71
  %2221 = add i64 %2220, 3
  store i64 %2221, i64* %PC.i71
  %2222 = inttoptr i64 %2219 to i32*
  %2223 = load i32, i32* %2222
  %2224 = sub i32 %2216, %2223
  %2225 = icmp ult i32 %2216, %2223
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2226, i8* %2227, align 1
  %2228 = and i32 %2224, 255
  %2229 = call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2232, i8* %2233, align 1
  %2234 = xor i32 %2223, %2216
  %2235 = xor i32 %2234, %2224
  %2236 = lshr i32 %2235, 4
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2238, i8* %2239, align 1
  %2240 = icmp eq i32 %2224, 0
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2241, i8* %2242, align 1
  %2243 = lshr i32 %2224, 31
  %2244 = trunc i32 %2243 to i8
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2244, i8* %2245, align 1
  %2246 = lshr i32 %2216, 31
  %2247 = lshr i32 %2223, 31
  %2248 = xor i32 %2247, %2246
  %2249 = xor i32 %2243, %2246
  %2250 = add i32 %2249, %2248
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2252, i8* %2253, align 1
  store %struct.Memory* %loadMem_404302, %struct.Memory** %MEMORY
  %loadMem_404305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %PC.i70
  %2258 = add i64 %2257, 40
  %2259 = load i64, i64* %PC.i70
  %2260 = add i64 %2259, 6
  %2261 = load i64, i64* %PC.i70
  %2262 = add i64 %2261, 6
  store i64 %2262, i64* %PC.i70
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2264 = load i8, i8* %2263, align 1
  %2265 = icmp ne i8 %2264, 0
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2267 = load i8, i8* %2266, align 1
  %2268 = icmp ne i8 %2267, 0
  %2269 = xor i1 %2265, %2268
  %2270 = xor i1 %2269, true
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %BRANCH_TAKEN, align 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2273 = select i1 %2269, i64 %2260, i64 %2258
  store i64 %2273, i64* %2272, align 8
  store %struct.Memory* %loadMem_404305, %struct.Memory** %MEMORY
  %loadBr_404305 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404305 = icmp eq i8 %loadBr_404305, 1
  br i1 %cmpBr_404305, label %block_.L_40432d, label %block_40430b

block_40430b:                                     ; preds = %block_.L_4042fb
  %loadMem_40430b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 1
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 15
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %RBP.i69
  %2284 = sub i64 %2283, 8
  %2285 = load i64, i64* %PC.i67
  %2286 = add i64 %2285, 4
  store i64 %2286, i64* %PC.i67
  %2287 = inttoptr i64 %2284 to i64*
  %2288 = load i64, i64* %2287
  store i64 %2288, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_40430b, %struct.Memory** %MEMORY
  %loadMem_40430f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 5
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i66
  %2299 = sub i64 %2298, 28
  %2300 = load i64, i64* %PC.i64
  %2301 = add i64 %2300, 4
  store i64 %2301, i64* %PC.i64
  %2302 = inttoptr i64 %2299 to i32*
  %2303 = load i32, i32* %2302
  %2304 = sext i32 %2303 to i64
  store i64 %2304, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_40430f, %struct.Memory** %MEMORY
  %loadMem_404313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 5
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RAX.i62
  %2315 = load i64, i64* %RCX.i63
  %2316 = mul i64 %2315, 8
  %2317 = add i64 %2316, %2314
  %2318 = load i64, i64* %PC.i61
  %2319 = add i64 %2318, 4
  store i64 %2319, i64* %PC.i61
  %2320 = inttoptr i64 %2317 to i64*
  %2321 = load i64, i64* %2320
  store i64 %2321, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_404313, %struct.Memory** %MEMORY
  %loadMem_404317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 5
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 15
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2330 to i64*
  %2331 = load i64, i64* %RBP.i60
  %2332 = sub i64 %2331, 24
  %2333 = load i64, i64* %PC.i58
  %2334 = add i64 %2333, 4
  store i64 %2334, i64* %PC.i58
  %2335 = inttoptr i64 %2332 to i32*
  %2336 = load i32, i32* %2335
  %2337 = sext i32 %2336 to i64
  store i64 %2337, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_404317, %struct.Memory** %MEMORY
  %loadMem_40431b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 1
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 5
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %2346 to i64*
  %2347 = load i64, i64* %RAX.i56
  %2348 = load i64, i64* %RCX.i57
  %2349 = add i64 %2348, %2347
  %2350 = load i64, i64* %PC.i55
  %2351 = add i64 %2350, 4
  store i64 %2351, i64* %PC.i55
  %2352 = inttoptr i64 %2349 to i8*
  store i8 0, i8* %2352
  store %struct.Memory* %loadMem_40431b, %struct.Memory** %MEMORY
  %loadMem_40431f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 1
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RBP.i54
  %2363 = sub i64 %2362, 28
  %2364 = load i64, i64* %PC.i52
  %2365 = add i64 %2364, 3
  store i64 %2365, i64* %PC.i52
  %2366 = inttoptr i64 %2363 to i32*
  %2367 = load i32, i32* %2366
  %2368 = zext i32 %2367 to i64
  store i64 %2368, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_40431f, %struct.Memory** %MEMORY
  %loadMem_404322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 1
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %2374 to i64*
  %2375 = load i64, i64* %RAX.i51
  %2376 = load i64, i64* %PC.i50
  %2377 = add i64 %2376, 3
  store i64 %2377, i64* %PC.i50
  %2378 = trunc i64 %2375 to i32
  %2379 = add i32 1, %2378
  %2380 = zext i32 %2379 to i64
  store i64 %2380, i64* %RAX.i51, align 8
  %2381 = icmp ult i32 %2379, %2378
  %2382 = icmp ult i32 %2379, 1
  %2383 = or i1 %2381, %2382
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2384, i8* %2385, align 1
  %2386 = and i32 %2379, 255
  %2387 = call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2390, i8* %2391, align 1
  %2392 = xor i64 1, %2375
  %2393 = trunc i64 %2392 to i32
  %2394 = xor i32 %2393, %2379
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1
  %2399 = icmp eq i32 %2379, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1
  %2402 = lshr i32 %2379, 31
  %2403 = trunc i32 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i32 %2378, 31
  %2406 = xor i32 %2402, %2405
  %2407 = add i32 %2406, %2402
  %2408 = icmp eq i32 %2407, 2
  %2409 = zext i1 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2409, i8* %2410, align 1
  store %struct.Memory* %loadMem_404322, %struct.Memory** %MEMORY
  %loadMem_404325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 1
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %2416 to i32*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 15
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %2419 to i64*
  %2420 = load i64, i64* %RBP.i49
  %2421 = sub i64 %2420, 28
  %2422 = load i32, i32* %EAX.i48
  %2423 = zext i32 %2422 to i64
  %2424 = load i64, i64* %PC.i47
  %2425 = add i64 %2424, 3
  store i64 %2425, i64* %PC.i47
  %2426 = inttoptr i64 %2421 to i32*
  store i32 %2422, i32* %2426
  store %struct.Memory* %loadMem_404325, %struct.Memory** %MEMORY
  %loadMem_404328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %PC.i46
  %2431 = add i64 %2430, -45
  %2432 = load i64, i64* %PC.i46
  %2433 = add i64 %2432, 5
  store i64 %2433, i64* %PC.i46
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2431, i64* %2434, align 8
  store %struct.Memory* %loadMem_404328, %struct.Memory** %MEMORY
  br label %block_.L_4042fb

block_.L_40432d:                                  ; preds = %block_.L_4042fb
  %loadMem_40432d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 1
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 15
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RBP.i45
  %2445 = sub i64 %2444, 24
  %2446 = load i64, i64* %PC.i43
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %PC.i43
  %2448 = inttoptr i64 %2445 to i32*
  %2449 = load i32, i32* %2448
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_40432d, %struct.Memory** %MEMORY
  %loadMem_404330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 5
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RBP.i42
  %2461 = sub i64 %2460, 16
  %2462 = load i64, i64* %PC.i40
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %PC.i40
  %2464 = inttoptr i64 %2461 to i64*
  %2465 = load i64, i64* %2464
  store i64 %2465, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_404330, %struct.Memory** %MEMORY
  %loadMem_404334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 1
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2471 to i32*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 5
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %RCX.i39
  %2476 = add i64 %2475, 4
  %2477 = load i32, i32* %EAX.i
  %2478 = zext i32 %2477 to i64
  %2479 = load i64, i64* %PC.i38
  %2480 = add i64 %2479, 3
  store i64 %2480, i64* %PC.i38
  %2481 = inttoptr i64 %2476 to i32*
  store i32 %2477, i32* %2481
  store %struct.Memory* %loadMem_404334, %struct.Memory** %MEMORY
  %loadMem_404337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 5
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i37
  %2492 = sub i64 %2491, 16
  %2493 = load i64, i64* %PC.i35
  %2494 = add i64 %2493, 4
  store i64 %2494, i64* %PC.i35
  %2495 = inttoptr i64 %2492 to i64*
  %2496 = load i64, i64* %2495
  store i64 %2496, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_404337, %struct.Memory** %MEMORY
  %loadMem_40433b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 5
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %RCX.i34
  %2504 = add i64 %2503, 24
  %2505 = load i64, i64* %PC.i33
  %2506 = add i64 %2505, 5
  store i64 %2506, i64* %PC.i33
  %2507 = inttoptr i64 %2504 to i64*
  %2508 = load i64, i64* %2507
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2509, align 1
  %2510 = trunc i64 %2508 to i32
  %2511 = and i32 %2510, 255
  %2512 = call i32 @llvm.ctpop.i32(i32 %2511)
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = xor i8 %2514, 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2515, i8* %2516, align 1
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2517, align 1
  %2518 = icmp eq i64 %2508, 0
  %2519 = zext i1 %2518 to i8
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2519, i8* %2520, align 1
  %2521 = lshr i64 %2508, 63
  %2522 = trunc i64 %2521 to i8
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2522, i8* %2523, align 1
  %2524 = lshr i64 %2508, 63
  %2525 = xor i64 %2521, %2524
  %2526 = add i64 %2525, %2524
  %2527 = icmp eq i64 %2526, 2
  %2528 = zext i1 %2527 to i8
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2528, i8* %2529, align 1
  store %struct.Memory* %loadMem_40433b, %struct.Memory** %MEMORY
  %loadMem_404340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %PC.i32
  %2534 = add i64 %2533, 22
  %2535 = load i64, i64* %PC.i32
  %2536 = add i64 %2535, 6
  %2537 = load i64, i64* %PC.i32
  %2538 = add i64 %2537, 6
  store i64 %2538, i64* %PC.i32
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2540 = load i8, i8* %2539, align 1
  store i8 %2540, i8* %BRANCH_TAKEN, align 1
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2542 = icmp ne i8 %2540, 0
  %2543 = select i1 %2542, i64 %2534, i64 %2536
  store i64 %2543, i64* %2541, align 8
  store %struct.Memory* %loadMem_404340, %struct.Memory** %MEMORY
  %loadBr_404340 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404340 = icmp eq i8 %loadBr_404340, 1
  br i1 %cmpBr_404340, label %block_.L_404356, label %block_404346

block_404346:                                     ; preds = %block_.L_40432d
  %loadMem_404346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 1
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 15
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %2552 to i64*
  %2553 = load i64, i64* %RBP.i31
  %2554 = sub i64 %2553, 16
  %2555 = load i64, i64* %PC.i29
  %2556 = add i64 %2555, 4
  store i64 %2556, i64* %PC.i29
  %2557 = inttoptr i64 %2554 to i64*
  %2558 = load i64, i64* %2557
  store i64 %2558, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_404346, %struct.Memory** %MEMORY
  %loadMem_40434a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 1
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %2564 to i64*
  %2565 = load i64, i64* %RAX.i28
  %2566 = add i64 %2565, 24
  %2567 = load i64, i64* %PC.i27
  %2568 = add i64 %2567, 4
  store i64 %2568, i64* %PC.i27
  %2569 = inttoptr i64 %2566 to i64*
  %2570 = load i64, i64* %2569
  store i64 %2570, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_40434a, %struct.Memory** %MEMORY
  %loadMem_40434e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 5
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 15
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RBP.i26
  %2581 = sub i64 %2580, 24
  %2582 = load i64, i64* %PC.i24
  %2583 = add i64 %2582, 4
  store i64 %2583, i64* %PC.i24
  %2584 = inttoptr i64 %2581 to i32*
  %2585 = load i32, i32* %2584
  %2586 = sext i32 %2585 to i64
  store i64 %2586, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_40434e, %struct.Memory** %MEMORY
  %loadMem_404352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2589 to i64*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 1
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 5
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %RAX.i22
  %2597 = load i64, i64* %RCX.i23
  %2598 = add i64 %2597, %2596
  %2599 = load i64, i64* %PC.i21
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC.i21
  %2601 = inttoptr i64 %2598 to i8*
  store i8 0, i8* %2601
  store %struct.Memory* %loadMem_404352, %struct.Memory** %MEMORY
  br label %block_.L_404356

block_.L_404356:                                  ; preds = %block_404346, %block_.L_40432d
  %loadMem_404356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 1
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 15
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %RBP.i20
  %2612 = sub i64 %2611, 16
  %2613 = load i64, i64* %PC.i18
  %2614 = add i64 %2613, 4
  store i64 %2614, i64* %PC.i18
  %2615 = inttoptr i64 %2612 to i64*
  %2616 = load i64, i64* %2615
  store i64 %2616, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_404356, %struct.Memory** %MEMORY
  %loadMem_40435a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 1
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %2622 to i64*
  %2623 = load i64, i64* %RAX.i17
  %2624 = add i64 %2623, 32
  %2625 = load i64, i64* %PC.i16
  %2626 = add i64 %2625, 5
  store i64 %2626, i64* %PC.i16
  %2627 = inttoptr i64 %2624 to i64*
  %2628 = load i64, i64* %2627
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2629, align 1
  %2630 = trunc i64 %2628 to i32
  %2631 = and i32 %2630, 255
  %2632 = call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2635, i8* %2636, align 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2637, align 1
  %2638 = icmp eq i64 %2628, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i64 %2628, 63
  %2642 = trunc i64 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i64 %2628, 63
  %2645 = xor i64 %2641, %2644
  %2646 = add i64 %2645, %2644
  %2647 = icmp eq i64 %2646, 2
  %2648 = zext i1 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2648, i8* %2649, align 1
  store %struct.Memory* %loadMem_40435a, %struct.Memory** %MEMORY
  %loadMem_40435f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %PC.i15
  %2654 = add i64 %2653, 22
  %2655 = load i64, i64* %PC.i15
  %2656 = add i64 %2655, 6
  %2657 = load i64, i64* %PC.i15
  %2658 = add i64 %2657, 6
  store i64 %2658, i64* %PC.i15
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2660 = load i8, i8* %2659, align 1
  store i8 %2660, i8* %BRANCH_TAKEN, align 1
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2662 = icmp ne i8 %2660, 0
  %2663 = select i1 %2662, i64 %2654, i64 %2656
  store i64 %2663, i64* %2661, align 8
  store %struct.Memory* %loadMem_40435f, %struct.Memory** %MEMORY
  %loadBr_40435f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40435f = icmp eq i8 %loadBr_40435f, 1
  br i1 %cmpBr_40435f, label %block_.L_404375, label %block_404365

block_404365:                                     ; preds = %block_.L_404356
  %loadMem_404365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 1
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 15
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %RBP.i14
  %2674 = sub i64 %2673, 16
  %2675 = load i64, i64* %PC.i12
  %2676 = add i64 %2675, 4
  store i64 %2676, i64* %PC.i12
  %2677 = inttoptr i64 %2674 to i64*
  %2678 = load i64, i64* %2677
  store i64 %2678, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_404365, %struct.Memory** %MEMORY
  %loadMem_404369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %RAX.i11
  %2686 = add i64 %2685, 32
  %2687 = load i64, i64* %PC.i10
  %2688 = add i64 %2687, 4
  store i64 %2688, i64* %PC.i10
  %2689 = inttoptr i64 %2686 to i64*
  %2690 = load i64, i64* %2689
  store i64 %2690, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_404369, %struct.Memory** %MEMORY
  %loadMem_40436d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 5
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RCX.i8 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 15
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %2699 to i64*
  %2700 = load i64, i64* %RBP.i9
  %2701 = sub i64 %2700, 24
  %2702 = load i64, i64* %PC.i7
  %2703 = add i64 %2702, 4
  store i64 %2703, i64* %PC.i7
  %2704 = inttoptr i64 %2701 to i32*
  %2705 = load i32, i32* %2704
  %2706 = sext i32 %2705 to i64
  store i64 %2706, i64* %RCX.i8, align 8
  store %struct.Memory* %loadMem_40436d, %struct.Memory** %MEMORY
  %loadMem_404371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 1
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %RAX.i6 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 5
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2715 to i64*
  %2716 = load i64, i64* %RAX.i6
  %2717 = load i64, i64* %RCX.i
  %2718 = add i64 %2717, %2716
  %2719 = load i64, i64* %PC.i5
  %2720 = add i64 %2719, 4
  store i64 %2720, i64* %PC.i5
  %2721 = inttoptr i64 %2718 to i8*
  store i8 0, i8* %2721
  store %struct.Memory* %loadMem_404371, %struct.Memory** %MEMORY
  br label %block_.L_404375

block_.L_404375:                                  ; preds = %block_404365, %block_.L_404356
  %loadMem_404375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 1
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2727 to i64*
  %2728 = load i64, i64* %PC.i4
  %2729 = add i64 %2728, 5
  store i64 %2729, i64* %PC.i4
  store i64 1, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_404375, %struct.Memory** %MEMORY
  %loadMem_40437a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 15
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2735 to i64*
  %2736 = load i64, i64* %PC.i2
  %2737 = add i64 %2736, 1
  store i64 %2737, i64* %PC.i2
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2739 = load i64, i64* %2738, align 8
  %2740 = add i64 %2739, 8
  %2741 = inttoptr i64 %2739 to i64*
  %2742 = load i64, i64* %2741
  store i64 %2742, i64* %RBP.i3, align 8
  store i64 %2740, i64* %2738, align 8
  store %struct.Memory* %loadMem_40437a, %struct.Memory** %MEMORY
  %loadMem_40437b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 33
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %PC.i1
  %2747 = add i64 %2746, 1
  store i64 %2747, i64* %PC.i1
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2750 = load i64, i64* %2749, align 8
  %2751 = inttoptr i64 %2750 to i64*
  %2752 = load i64, i64* %2751
  store i64 %2752, i64* %2748, align 8
  %2753 = add i64 %2750, 8
  store i64 %2753, i64* %2749, align 8
  store %struct.Memory* %loadMem_40437b, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40437b
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_je_.L_4042f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x8__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_404212(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4041ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_404212(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_404204(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_404159(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_404227(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4042e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4042dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_40427e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %DL, align 1
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

define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40423a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4042ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x20__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
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

define %struct.Memory* @routine_je_.L_4042d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4042dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40413a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_40432d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 0, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4042fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
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

define %struct.Memory* @routine_je_.L_404356(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_404375(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
