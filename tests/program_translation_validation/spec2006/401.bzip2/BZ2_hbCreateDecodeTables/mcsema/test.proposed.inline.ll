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
define %struct.Memory* @BZ2_hbCreateDecodeTables(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_413f00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_413f00, %struct.Memory** %MEMORY
  %loadMem_413f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i372
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i372
  store i64 %26, i64* %RBP.i373, align 8
  store %struct.Memory* %loadMem_413f01, %struct.Memory** %MEMORY
  %loadMem_413f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i371
  %39 = add i64 %38, 16
  %40 = load i64, i64* %PC.i369
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC.i369
  %42 = inttoptr i64 %39 to i32*
  %43 = load i32, i32* %42
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_413f04, %struct.Memory** %MEMORY
  %loadMem_413f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i368
  %55 = sub i64 %54, 8
  %56 = load i64, i64* %RDI.i
  %57 = load i64, i64* %PC.i367
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC.i367
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59
  store %struct.Memory* %loadMem_413f07, %struct.Memory** %MEMORY
  %loadMem_413f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RSI.i365 = bitcast %union.anon* %65 to i64*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i366
  %70 = sub i64 %69, 16
  %71 = load i64, i64* %RSI.i365
  %72 = load i64, i64* %PC.i364
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC.i364
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74
  store %struct.Memory* %loadMem_413f0b, %struct.Memory** %MEMORY
  %loadMem_413f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i363
  %85 = sub i64 %84, 24
  %86 = load i64, i64* %RDX.i362
  %87 = load i64, i64* %PC.i361
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i361
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_413f0f, %struct.Memory** %MEMORY
  %loadMem_413f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i360
  %100 = sub i64 %99, 32
  %101 = load i64, i64* %RCX.i359
  %102 = load i64, i64* %PC.i358
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i358
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104
  store %struct.Memory* %loadMem_413f13, %struct.Memory** %MEMORY
  %loadMem_413f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 17
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %110 to i32*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i357
  %115 = sub i64 %114, 36
  %116 = load i32, i32* %R8D.i
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC.i356
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i356
  %120 = inttoptr i64 %115 to i32*
  store i32 %116, i32* %120
  store %struct.Memory* %loadMem_413f17, %struct.Memory** %MEMORY
  %loadMem_413f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 19
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %126 to i32*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i355
  %131 = sub i64 %130, 40
  %132 = load i32, i32* %R9D.i
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* %PC.i354
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i354
  %136 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %136
  store %struct.Memory* %loadMem_413f1b, %struct.Memory** %MEMORY
  %loadMem_413f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %142 to i32*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i353
  %147 = sub i64 %146, 44
  %148 = load i32, i32* %EAX.i352
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* %PC.i351
  %151 = add i64 %150, 3
  store i64 %151, i64* %PC.i351
  %152 = inttoptr i64 %147 to i32*
  store i32 %148, i32* %152
  store %struct.Memory* %loadMem_413f1f, %struct.Memory** %MEMORY
  %loadMem_413f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i350
  %160 = sub i64 %159, 48
  %161 = load i64, i64* %PC.i349
  %162 = add i64 %161, 7
  store i64 %162, i64* %PC.i349
  %163 = inttoptr i64 %160 to i32*
  store i32 0, i32* %163
  store %struct.Memory* %loadMem_413f22, %struct.Memory** %MEMORY
  %loadMem_413f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RBP.i348
  %174 = sub i64 %173, 36
  %175 = load i64, i64* %PC.i346
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC.i346
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX.i347, align 8
  store %struct.Memory* %loadMem_413f29, %struct.Memory** %MEMORY
  %loadMem_413f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i345
  %190 = sub i64 %189, 52
  %191 = load i32, i32* %EAX.i344
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC.i343
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC.i343
  %195 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %195
  store %struct.Memory* %loadMem_413f2c, %struct.Memory** %MEMORY
  br label %block_.L_413f2f

block_.L_413f2f:                                  ; preds = %block_.L_413f92, %entry
  %loadMem_413f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i342
  %206 = sub i64 %205, 52
  %207 = load i64, i64* %PC.i340
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i340
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_413f2f, %struct.Memory** %MEMORY
  %loadMem_413f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %217 to i32*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %220 to i64*
  %221 = load i32, i32* %EAX.i338
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %RBP.i339
  %224 = sub i64 %223, 40
  %225 = load i64, i64* %PC.i337
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC.i337
  %227 = inttoptr i64 %224 to i32*
  %228 = load i32, i32* %227
  %229 = sub i32 %221, %228
  %230 = icmp ult i32 %221, %228
  %231 = zext i1 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %231, i8* %232, align 1
  %233 = and i32 %229, 255
  %234 = call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %237, i8* %238, align 1
  %239 = xor i32 %228, %221
  %240 = xor i32 %239, %229
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %243, i8* %244, align 1
  %245 = icmp eq i32 %229, 0
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %246, i8* %247, align 1
  %248 = lshr i32 %229, 31
  %249 = trunc i32 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %249, i8* %250, align 1
  %251 = lshr i32 %221, 31
  %252 = lshr i32 %228, 31
  %253 = xor i32 %252, %251
  %254 = xor i32 %248, %251
  %255 = add i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %257, i8* %258, align 1
  store %struct.Memory* %loadMem_413f32, %struct.Memory** %MEMORY
  %loadMem_413f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %PC.i336
  %263 = add i64 %262, 107
  %264 = load i64, i64* %PC.i336
  %265 = add i64 %264, 6
  %266 = load i64, i64* %PC.i336
  %267 = add i64 %266, 6
  store i64 %267, i64* %PC.i336
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %269 = load i8, i8* %268, align 1
  %270 = icmp eq i8 %269, 0
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %272 = load i8, i8* %271, align 1
  %273 = icmp ne i8 %272, 0
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %275 = load i8, i8* %274, align 1
  %276 = icmp ne i8 %275, 0
  %277 = xor i1 %273, %276
  %278 = xor i1 %277, true
  %279 = and i1 %270, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %BRANCH_TAKEN, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %282 = select i1 %279, i64 %263, i64 %265
  store i64 %282, i64* %281, align 8
  store %struct.Memory* %loadMem_413f35, %struct.Memory** %MEMORY
  %loadBr_413f35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413f35 = icmp eq i8 %loadBr_413f35, 1
  br i1 %cmpBr_413f35, label %block_.L_413fa0, label %block_413f3b

block_413f3b:                                     ; preds = %block_.L_413f2f
  %loadMem_413f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i335
  %290 = sub i64 %289, 56
  %291 = load i64, i64* %PC.i334
  %292 = add i64 %291, 7
  store i64 %292, i64* %PC.i334
  %293 = inttoptr i64 %290 to i32*
  store i32 0, i32* %293
  store %struct.Memory* %loadMem_413f3b, %struct.Memory** %MEMORY
  br label %block_.L_413f42

block_.L_413f42:                                  ; preds = %block_.L_413f7f, %block_413f3b
  %loadMem_413f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 15
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %RBP.i333
  %304 = sub i64 %303, 56
  %305 = load i64, i64* %PC.i331
  %306 = add i64 %305, 3
  store i64 %306, i64* %PC.i331
  %307 = inttoptr i64 %304 to i32*
  %308 = load i32, i32* %307
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_413f42, %struct.Memory** %MEMORY
  %loadMem_413f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %315 to i32*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 15
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %318 to i64*
  %319 = load i32, i32* %EAX.i329
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %RBP.i330
  %322 = sub i64 %321, 44
  %323 = load i64, i64* %PC.i328
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC.i328
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325
  %327 = sub i32 %319, %326
  %328 = icmp ult i32 %319, %326
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1
  %331 = and i32 %327, 255
  %332 = call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %335, i8* %336, align 1
  %337 = xor i32 %326, %319
  %338 = xor i32 %337, %327
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %341, i8* %342, align 1
  %343 = icmp eq i32 %327, 0
  %344 = zext i1 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %344, i8* %345, align 1
  %346 = lshr i32 %327, 31
  %347 = trunc i32 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %347, i8* %348, align 1
  %349 = lshr i32 %319, 31
  %350 = lshr i32 %326, 31
  %351 = xor i32 %350, %349
  %352 = xor i32 %346, %349
  %353 = add i32 %352, %351
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %355, i8* %356, align 1
  store %struct.Memory* %loadMem_413f45, %struct.Memory** %MEMORY
  %loadMem_413f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %PC.i327
  %361 = add i64 %360, 69
  %362 = load i64, i64* %PC.i327
  %363 = add i64 %362, 6
  %364 = load i64, i64* %PC.i327
  %365 = add i64 %364, 6
  store i64 %365, i64* %PC.i327
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %367 = load i8, i8* %366, align 1
  %368 = icmp ne i8 %367, 0
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %370 = load i8, i8* %369, align 1
  %371 = icmp ne i8 %370, 0
  %372 = xor i1 %368, %371
  %373 = xor i1 %372, true
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %BRANCH_TAKEN, align 1
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %376 = select i1 %372, i64 %363, i64 %361
  store i64 %376, i64* %375, align 8
  store %struct.Memory* %loadMem_413f48, %struct.Memory** %MEMORY
  %loadBr_413f48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413f48 = icmp eq i8 %loadBr_413f48, 1
  br i1 %cmpBr_413f48, label %block_.L_413f8d, label %block_413f4e

block_413f4e:                                     ; preds = %block_.L_413f42
  %loadMem_413f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 15
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %RBP.i326
  %387 = sub i64 %386, 32
  %388 = load i64, i64* %PC.i324
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC.i324
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390
  store i64 %391, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_413f4e, %struct.Memory** %MEMORY
  %loadMem_413f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 15
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %400 to i64*
  %401 = load i64, i64* %RBP.i323
  %402 = sub i64 %401, 56
  %403 = load i64, i64* %PC.i321
  %404 = add i64 %403, 4
  store i64 %404, i64* %PC.i321
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_413f52, %struct.Memory** %MEMORY
  %loadMem_413f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 7
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %RAX.i318
  %421 = load i64, i64* %RCX.i319
  %422 = add i64 %421, %420
  %423 = load i64, i64* %PC.i317
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC.i317
  %425 = inttoptr i64 %422 to i8*
  %426 = load i8, i8* %425
  %427 = zext i8 %426 to i64
  store i64 %427, i64* %RDX.i320, align 8
  store %struct.Memory* %loadMem_413f56, %struct.Memory** %MEMORY
  %loadMem_413f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 7
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %433 to i32*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %436 to i64*
  %437 = load i32, i32* %EDX.i
  %438 = zext i32 %437 to i64
  %439 = load i64, i64* %RBP.i316
  %440 = sub i64 %439, 52
  %441 = load i64, i64* %PC.i315
  %442 = add i64 %441, 3
  store i64 %442, i64* %PC.i315
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = sub i32 %437, %444
  %446 = icmp ult i32 %437, %444
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %447, i8* %448, align 1
  %449 = and i32 %445, 255
  %450 = call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %453, i8* %454, align 1
  %455 = xor i32 %444, %437
  %456 = xor i32 %455, %445
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %459, i8* %460, align 1
  %461 = icmp eq i32 %445, 0
  %462 = zext i1 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %462, i8* %463, align 1
  %464 = lshr i32 %445, 31
  %465 = trunc i32 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %465, i8* %466, align 1
  %467 = lshr i32 %437, 31
  %468 = lshr i32 %444, 31
  %469 = xor i32 %468, %467
  %470 = xor i32 %464, %467
  %471 = add i32 %470, %469
  %472 = icmp eq i32 %471, 2
  %473 = zext i1 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %473, i8* %474, align 1
  store %struct.Memory* %loadMem_413f5a, %struct.Memory** %MEMORY
  %loadMem_413f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %PC.i314
  %479 = add i64 %478, 29
  %480 = load i64, i64* %PC.i314
  %481 = add i64 %480, 6
  %482 = load i64, i64* %PC.i314
  %483 = add i64 %482, 6
  store i64 %483, i64* %PC.i314
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %485 = load i8, i8* %484, align 1
  %486 = icmp eq i8 %485, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %BRANCH_TAKEN, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %489 = select i1 %486, i64 %479, i64 %481
  store i64 %489, i64* %488, align 8
  store %struct.Memory* %loadMem_413f5d, %struct.Memory** %MEMORY
  %loadBr_413f5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413f5d = icmp eq i8 %loadBr_413f5d, 1
  br i1 %cmpBr_413f5d, label %block_.L_413f7a, label %block_413f63

block_413f63:                                     ; preds = %block_413f4e
  %loadMem_413f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 15
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %RBP.i313
  %500 = sub i64 %499, 56
  %501 = load i64, i64* %PC.i311
  %502 = add i64 %501, 3
  store i64 %502, i64* %PC.i311
  %503 = inttoptr i64 %500 to i32*
  %504 = load i32, i32* %503
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_413f63, %struct.Memory** %MEMORY
  %loadMem_413f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 5
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 15
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %514 to i64*
  %515 = load i64, i64* %RBP.i310
  %516 = sub i64 %515, 24
  %517 = load i64, i64* %PC.i308
  %518 = add i64 %517, 4
  store i64 %518, i64* %PC.i308
  %519 = inttoptr i64 %516 to i64*
  %520 = load i64, i64* %519
  store i64 %520, i64* %RCX.i309, align 8
  store %struct.Memory* %loadMem_413f66, %struct.Memory** %MEMORY
  %loadMem_413f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 7
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RDX.i306 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i307
  %531 = sub i64 %530, 48
  %532 = load i64, i64* %PC.i305
  %533 = add i64 %532, 4
  store i64 %533, i64* %PC.i305
  %534 = inttoptr i64 %531 to i32*
  %535 = load i32, i32* %534
  %536 = sext i32 %535 to i64
  store i64 %536, i64* %RDX.i306, align 8
  store %struct.Memory* %loadMem_413f6a, %struct.Memory** %MEMORY
  %loadMem_413f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %542 to i32*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 5
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 7
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RCX.i303
  %550 = load i64, i64* %RDX.i304
  %551 = mul i64 %550, 4
  %552 = add i64 %551, %549
  %553 = load i32, i32* %EAX.i302
  %554 = zext i32 %553 to i64
  %555 = load i64, i64* %PC.i301
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC.i301
  %557 = inttoptr i64 %552 to i32*
  store i32 %553, i32* %557
  store %struct.Memory* %loadMem_413f6e, %struct.Memory** %MEMORY
  %loadMem_413f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 15
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %566 to i64*
  %567 = load i64, i64* %RBP.i300
  %568 = sub i64 %567, 48
  %569 = load i64, i64* %PC.i298
  %570 = add i64 %569, 3
  store i64 %570, i64* %PC.i298
  %571 = inttoptr i64 %568 to i32*
  %572 = load i32, i32* %571
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_413f71, %struct.Memory** %MEMORY
  %loadMem_413f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RAX.i297
  %581 = load i64, i64* %PC.i296
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC.i296
  %583 = trunc i64 %580 to i32
  %584 = add i32 1, %583
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %RAX.i297, align 8
  %586 = icmp ult i32 %584, %583
  %587 = icmp ult i32 %584, 1
  %588 = or i1 %586, %587
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %589, i8* %590, align 1
  %591 = and i32 %584, 255
  %592 = call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %595, i8* %596, align 1
  %597 = xor i64 1, %580
  %598 = trunc i64 %597 to i32
  %599 = xor i32 %598, %584
  %600 = lshr i32 %599, 4
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %602, i8* %603, align 1
  %604 = icmp eq i32 %584, 0
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %605, i8* %606, align 1
  %607 = lshr i32 %584, 31
  %608 = trunc i32 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %608, i8* %609, align 1
  %610 = lshr i32 %583, 31
  %611 = xor i32 %607, %610
  %612 = add i32 %611, %607
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %614, i8* %615, align 1
  store %struct.Memory* %loadMem_413f74, %struct.Memory** %MEMORY
  %loadMem_413f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %621 to i32*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RBP.i295
  %626 = sub i64 %625, 48
  %627 = load i32, i32* %EAX.i294
  %628 = zext i32 %627 to i64
  %629 = load i64, i64* %PC.i293
  %630 = add i64 %629, 3
  store i64 %630, i64* %PC.i293
  %631 = inttoptr i64 %626 to i32*
  store i32 %627, i32* %631
  store %struct.Memory* %loadMem_413f77, %struct.Memory** %MEMORY
  br label %block_.L_413f7a

block_.L_413f7a:                                  ; preds = %block_413f63, %block_413f4e
  %loadMem_413f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %PC.i292
  %636 = add i64 %635, 5
  %637 = load i64, i64* %PC.i292
  %638 = add i64 %637, 5
  store i64 %638, i64* %PC.i292
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %636, i64* %639, align 8
  store %struct.Memory* %loadMem_413f7a, %struct.Memory** %MEMORY
  br label %block_.L_413f7f

block_.L_413f7f:                                  ; preds = %block_.L_413f7a
  %loadMem_413f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 33
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 15
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %RBP.i291
  %650 = sub i64 %649, 56
  %651 = load i64, i64* %PC.i289
  %652 = add i64 %651, 3
  store i64 %652, i64* %PC.i289
  %653 = inttoptr i64 %650 to i32*
  %654 = load i32, i32* %653
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_413f7f, %struct.Memory** %MEMORY
  %loadMem_413f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RAX.i288
  %663 = load i64, i64* %PC.i287
  %664 = add i64 %663, 3
  store i64 %664, i64* %PC.i287
  %665 = trunc i64 %662 to i32
  %666 = add i32 1, %665
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX.i288, align 8
  %668 = icmp ult i32 %666, %665
  %669 = icmp ult i32 %666, 1
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %671, i8* %672, align 1
  %673 = and i32 %666, 255
  %674 = call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %677, i8* %678, align 1
  %679 = xor i64 1, %662
  %680 = trunc i64 %679 to i32
  %681 = xor i32 %680, %666
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %684, i8* %685, align 1
  %686 = icmp eq i32 %666, 0
  %687 = zext i1 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %687, i8* %688, align 1
  %689 = lshr i32 %666, 31
  %690 = trunc i32 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %690, i8* %691, align 1
  %692 = lshr i32 %665, 31
  %693 = xor i32 %689, %692
  %694 = add i32 %693, %689
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %696, i8* %697, align 1
  store %struct.Memory* %loadMem_413f82, %struct.Memory** %MEMORY
  %loadMem_413f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %703 to i32*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 15
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RBP.i286
  %708 = sub i64 %707, 56
  %709 = load i32, i32* %EAX.i285
  %710 = zext i32 %709 to i64
  %711 = load i64, i64* %PC.i284
  %712 = add i64 %711, 3
  store i64 %712, i64* %PC.i284
  %713 = inttoptr i64 %708 to i32*
  store i32 %709, i32* %713
  store %struct.Memory* %loadMem_413f85, %struct.Memory** %MEMORY
  %loadMem_413f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %PC.i283
  %718 = add i64 %717, -70
  %719 = load i64, i64* %PC.i283
  %720 = add i64 %719, 5
  store i64 %720, i64* %PC.i283
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %718, i64* %721, align 8
  store %struct.Memory* %loadMem_413f88, %struct.Memory** %MEMORY
  br label %block_.L_413f42

block_.L_413f8d:                                  ; preds = %block_.L_413f42
  %loadMem_413f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %PC.i282
  %726 = add i64 %725, 5
  %727 = load i64, i64* %PC.i282
  %728 = add i64 %727, 5
  store i64 %728, i64* %PC.i282
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %726, i64* %729, align 8
  store %struct.Memory* %loadMem_413f8d, %struct.Memory** %MEMORY
  br label %block_.L_413f92

block_.L_413f92:                                  ; preds = %block_.L_413f8d
  %loadMem_413f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 1
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 15
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %738 to i64*
  %739 = load i64, i64* %RBP.i281
  %740 = sub i64 %739, 52
  %741 = load i64, i64* %PC.i279
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC.i279
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_413f92, %struct.Memory** %MEMORY
  %loadMem_413f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 1
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %RAX.i278
  %753 = load i64, i64* %PC.i277
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC.i277
  %755 = trunc i64 %752 to i32
  %756 = add i32 1, %755
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RAX.i278, align 8
  %758 = icmp ult i32 %756, %755
  %759 = icmp ult i32 %756, 1
  %760 = or i1 %758, %759
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %761, i8* %762, align 1
  %763 = and i32 %756, 255
  %764 = call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %767, i8* %768, align 1
  %769 = xor i64 1, %752
  %770 = trunc i64 %769 to i32
  %771 = xor i32 %770, %756
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %774, i8* %775, align 1
  %776 = icmp eq i32 %756, 0
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %777, i8* %778, align 1
  %779 = lshr i32 %756, 31
  %780 = trunc i32 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %780, i8* %781, align 1
  %782 = lshr i32 %755, 31
  %783 = xor i32 %779, %782
  %784 = add i32 %783, %779
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %786, i8* %787, align 1
  store %struct.Memory* %loadMem_413f95, %struct.Memory** %MEMORY
  %loadMem_413f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %EAX.i275 = bitcast %union.anon* %793 to i32*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i276
  %798 = sub i64 %797, 52
  %799 = load i32, i32* %EAX.i275
  %800 = zext i32 %799 to i64
  %801 = load i64, i64* %PC.i274
  %802 = add i64 %801, 3
  store i64 %802, i64* %PC.i274
  %803 = inttoptr i64 %798 to i32*
  store i32 %799, i32* %803
  store %struct.Memory* %loadMem_413f98, %struct.Memory** %MEMORY
  %loadMem_413f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %PC.i273
  %808 = add i64 %807, -108
  %809 = load i64, i64* %PC.i273
  %810 = add i64 %809, 5
  store i64 %810, i64* %PC.i273
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %808, i64* %811, align 8
  store %struct.Memory* %loadMem_413f9b, %struct.Memory** %MEMORY
  br label %block_.L_413f2f

block_.L_413fa0:                                  ; preds = %block_.L_413f2f
  %loadMem_413fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 15
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %RBP.i272
  %819 = sub i64 %818, 52
  %820 = load i64, i64* %PC.i271
  %821 = add i64 %820, 7
  store i64 %821, i64* %PC.i271
  %822 = inttoptr i64 %819 to i32*
  store i32 0, i32* %822
  store %struct.Memory* %loadMem_413fa0, %struct.Memory** %MEMORY
  br label %block_.L_413fa7

block_.L_413fa7:                                  ; preds = %block_413fb1, %block_.L_413fa0
  %loadMem_413fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 15
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RBP.i270
  %830 = sub i64 %829, 52
  %831 = load i64, i64* %PC.i269
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i269
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = sub i32 %834, 23
  %836 = icmp ult i32 %834, 23
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %837, i8* %838, align 1
  %839 = and i32 %835, 255
  %840 = call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %843, i8* %844, align 1
  %845 = xor i32 %834, 23
  %846 = xor i32 %845, %835
  %847 = lshr i32 %846, 4
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %849, i8* %850, align 1
  %851 = icmp eq i32 %835, 0
  %852 = zext i1 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %852, i8* %853, align 1
  %854 = lshr i32 %835, 31
  %855 = trunc i32 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %855, i8* %856, align 1
  %857 = lshr i32 %834, 31
  %858 = xor i32 %854, %857
  %859 = add i32 %858, %857
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %861, i8* %862, align 1
  store %struct.Memory* %loadMem_413fa7, %struct.Memory** %MEMORY
  %loadMem_413fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %PC.i268
  %867 = add i64 %866, 35
  %868 = load i64, i64* %PC.i268
  %869 = add i64 %868, 6
  %870 = load i64, i64* %PC.i268
  %871 = add i64 %870, 6
  store i64 %871, i64* %PC.i268
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %873 = load i8, i8* %872, align 1
  %874 = icmp ne i8 %873, 0
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %876 = load i8, i8* %875, align 1
  %877 = icmp ne i8 %876, 0
  %878 = xor i1 %874, %877
  %879 = xor i1 %878, true
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %BRANCH_TAKEN, align 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %882 = select i1 %878, i64 %869, i64 %867
  store i64 %882, i64* %881, align 8
  store %struct.Memory* %loadMem_413fab, %struct.Memory** %MEMORY
  %loadBr_413fab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413fab = icmp eq i8 %loadBr_413fab, 1
  br i1 %cmpBr_413fab, label %block_.L_413fce, label %block_413fb1

block_413fb1:                                     ; preds = %block_.L_413fa7
  %loadMem_413fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i267
  %893 = sub i64 %892, 16
  %894 = load i64, i64* %PC.i265
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i265
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896
  store i64 %897, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_413fb1, %struct.Memory** %MEMORY
  %loadMem_413fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i264
  %908 = sub i64 %907, 52
  %909 = load i64, i64* %PC.i262
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i262
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_413fb5, %struct.Memory** %MEMORY
  %loadMem_413fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RAX.i260
  %924 = load i64, i64* %RCX.i261
  %925 = mul i64 %924, 4
  %926 = add i64 %925, %923
  %927 = load i64, i64* %PC.i259
  %928 = add i64 %927, 7
  store i64 %928, i64* %PC.i259
  %929 = inttoptr i64 %926 to i32*
  store i32 0, i32* %929
  store %struct.Memory* %loadMem_413fb9, %struct.Memory** %MEMORY
  %loadMem_413fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 33
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 1
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RBP.i258
  %940 = sub i64 %939, 52
  %941 = load i64, i64* %PC.i256
  %942 = add i64 %941, 3
  store i64 %942, i64* %PC.i256
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_413fc0, %struct.Memory** %MEMORY
  %loadMem_413fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RAX.i255
  %953 = load i64, i64* %PC.i254
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC.i254
  %955 = trunc i64 %952 to i32
  %956 = add i32 1, %955
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i255, align 8
  %958 = icmp ult i32 %956, %955
  %959 = icmp ult i32 %956, 1
  %960 = or i1 %958, %959
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %961, i8* %962, align 1
  %963 = and i32 %956, 255
  %964 = call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %967, i8* %968, align 1
  %969 = xor i64 1, %952
  %970 = trunc i64 %969 to i32
  %971 = xor i32 %970, %956
  %972 = lshr i32 %971, 4
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %974, i8* %975, align 1
  %976 = icmp eq i32 %956, 0
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %977, i8* %978, align 1
  %979 = lshr i32 %956, 31
  %980 = trunc i32 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %980, i8* %981, align 1
  %982 = lshr i32 %955, 31
  %983 = xor i32 %979, %982
  %984 = add i32 %983, %979
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %986, i8* %987, align 1
  store %struct.Memory* %loadMem_413fc3, %struct.Memory** %MEMORY
  %loadMem_413fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 1
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %EAX.i252 = bitcast %union.anon* %993 to i32*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i253
  %998 = sub i64 %997, 52
  %999 = load i32, i32* %EAX.i252
  %1000 = zext i32 %999 to i64
  %1001 = load i64, i64* %PC.i251
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC.i251
  %1003 = inttoptr i64 %998 to i32*
  store i32 %999, i32* %1003
  store %struct.Memory* %loadMem_413fc6, %struct.Memory** %MEMORY
  %loadMem_413fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %PC.i250
  %1008 = add i64 %1007, -34
  %1009 = load i64, i64* %PC.i250
  %1010 = add i64 %1009, 5
  store i64 %1010, i64* %PC.i250
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1008, i64* %1011, align 8
  store %struct.Memory* %loadMem_413fc9, %struct.Memory** %MEMORY
  br label %block_.L_413fa7

block_.L_413fce:                                  ; preds = %block_.L_413fa7
  %loadMem_413fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 15
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RBP.i249
  %1019 = sub i64 %1018, 52
  %1020 = load i64, i64* %PC.i248
  %1021 = add i64 %1020, 7
  store i64 %1021, i64* %PC.i248
  %1022 = inttoptr i64 %1019 to i32*
  store i32 0, i32* %1022
  store %struct.Memory* %loadMem_413fce, %struct.Memory** %MEMORY
  br label %block_.L_413fd5

block_.L_413fd5:                                  ; preds = %block_413fe1, %block_.L_413fce
  %loadMem_413fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 1
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i247
  %1033 = sub i64 %1032, 52
  %1034 = load i64, i64* %PC.i245
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC.i245
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_413fd5, %struct.Memory** %MEMORY
  %loadMem_413fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 1
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %EAX.i243 = bitcast %union.anon* %1044 to i32*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 15
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %1047 to i64*
  %1048 = load i32, i32* %EAX.i243
  %1049 = zext i32 %1048 to i64
  %1050 = load i64, i64* %RBP.i244
  %1051 = sub i64 %1050, 44
  %1052 = load i64, i64* %PC.i242
  %1053 = add i64 %1052, 3
  store i64 %1053, i64* %PC.i242
  %1054 = inttoptr i64 %1051 to i32*
  %1055 = load i32, i32* %1054
  %1056 = sub i32 %1048, %1055
  %1057 = icmp ult i32 %1048, %1055
  %1058 = zext i1 %1057 to i8
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1058, i8* %1059, align 1
  %1060 = and i32 %1056, 255
  %1061 = call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1064, i8* %1065, align 1
  %1066 = xor i32 %1055, %1048
  %1067 = xor i32 %1066, %1056
  %1068 = lshr i32 %1067, 4
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1070, i8* %1071, align 1
  %1072 = icmp eq i32 %1056, 0
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1073, i8* %1074, align 1
  %1075 = lshr i32 %1056, 31
  %1076 = trunc i32 %1075 to i8
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1076, i8* %1077, align 1
  %1078 = lshr i32 %1048, 31
  %1079 = lshr i32 %1055, 31
  %1080 = xor i32 %1079, %1078
  %1081 = xor i32 %1075, %1078
  %1082 = add i32 %1081, %1080
  %1083 = icmp eq i32 %1082, 2
  %1084 = zext i1 %1083 to i8
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1084, i8* %1085, align 1
  store %struct.Memory* %loadMem_413fd8, %struct.Memory** %MEMORY
  %loadMem_413fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %PC.i241
  %1090 = add i64 %1089, 51
  %1091 = load i64, i64* %PC.i241
  %1092 = add i64 %1091, 6
  %1093 = load i64, i64* %PC.i241
  %1094 = add i64 %1093, 6
  store i64 %1094, i64* %PC.i241
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1096 = load i8, i8* %1095, align 1
  %1097 = icmp ne i8 %1096, 0
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1099 = load i8, i8* %1098, align 1
  %1100 = icmp ne i8 %1099, 0
  %1101 = xor i1 %1097, %1100
  %1102 = xor i1 %1101, true
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %BRANCH_TAKEN, align 1
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1105 = select i1 %1101, i64 %1092, i64 %1090
  store i64 %1105, i64* %1104, align 8
  store %struct.Memory* %loadMem_413fdb, %struct.Memory** %MEMORY
  %loadBr_413fdb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413fdb = icmp eq i8 %loadBr_413fdb, 1
  br i1 %cmpBr_413fdb, label %block_.L_41400e, label %block_413fe1

block_413fe1:                                     ; preds = %block_.L_413fd5
  %loadMem_413fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 1
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 15
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1114 to i64*
  %1115 = load i64, i64* %RBP.i240
  %1116 = sub i64 %1115, 16
  %1117 = load i64, i64* %PC.i238
  %1118 = add i64 %1117, 4
  store i64 %1118, i64* %PC.i238
  %1119 = inttoptr i64 %1116 to i64*
  %1120 = load i64, i64* %1119
  store i64 %1120, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_413fe1, %struct.Memory** %MEMORY
  %loadMem_413fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 5
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 15
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i237
  %1131 = sub i64 %1130, 32
  %1132 = load i64, i64* %PC.i235
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i235
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134
  store i64 %1135, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_413fe5, %struct.Memory** %MEMORY
  %loadMem_413fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 7
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RBP.i234
  %1146 = sub i64 %1145, 52
  %1147 = load i64, i64* %PC.i232
  %1148 = add i64 %1147, 4
  store i64 %1148, i64* %PC.i232
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149
  %1151 = sext i32 %1150 to i64
  store i64 %1151, i64* %RDX.i233, align 8
  store %struct.Memory* %loadMem_413fe9, %struct.Memory** %MEMORY
  %loadMem_413fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 5
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 7
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 9
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RSI.i231 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RCX.i229
  %1165 = load i64, i64* %RDX.i230
  %1166 = add i64 %1165, %1164
  %1167 = load i64, i64* %PC.i228
  %1168 = add i64 %1167, 4
  store i64 %1168, i64* %PC.i228
  %1169 = inttoptr i64 %1166 to i8*
  %1170 = load i8, i8* %1169
  %1171 = zext i8 %1170 to i64
  store i64 %1171, i64* %RSI.i231, align 8
  store %struct.Memory* %loadMem_413fed, %struct.Memory** %MEMORY
  %loadMem_413ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 9
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RSI.i227
  %1179 = load i64, i64* %PC.i226
  %1180 = add i64 %1179, 3
  store i64 %1180, i64* %PC.i226
  %1181 = trunc i64 %1178 to i32
  %1182 = add i32 1, %1181
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RSI.i227, align 8
  %1184 = icmp ult i32 %1182, %1181
  %1185 = icmp ult i32 %1182, 1
  %1186 = or i1 %1184, %1185
  %1187 = zext i1 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1187, i8* %1188, align 1
  %1189 = and i32 %1182, 255
  %1190 = call i32 @llvm.ctpop.i32(i32 %1189)
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1193, i8* %1194, align 1
  %1195 = xor i64 1, %1178
  %1196 = trunc i64 %1195 to i32
  %1197 = xor i32 %1196, %1182
  %1198 = lshr i32 %1197, 4
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1200, i8* %1201, align 1
  %1202 = icmp eq i32 %1182, 0
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1203, i8* %1204, align 1
  %1205 = lshr i32 %1182, 31
  %1206 = trunc i32 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1206, i8* %1207, align 1
  %1208 = lshr i32 %1181, 31
  %1209 = xor i32 %1205, %1208
  %1210 = add i32 %1209, %1205
  %1211 = icmp eq i32 %1210, 2
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1212, i8* %1213, align 1
  store %struct.Memory* %loadMem_413ff1, %struct.Memory** %MEMORY
  %loadMem_413ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 9
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %ESI.i224 = bitcast %union.anon* %1219 to i32*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 5
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %1222 to i64*
  %1223 = load i32, i32* %ESI.i224
  %1224 = zext i32 %1223 to i64
  %1225 = load i64, i64* %PC.i223
  %1226 = add i64 %1225, 3
  store i64 %1226, i64* %PC.i223
  %1227 = shl i64 %1224, 32
  %1228 = ashr exact i64 %1227, 32
  store i64 %1228, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_413ff4, %struct.Memory** %MEMORY
  %loadMem_413ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 33
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 1
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 5
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 9
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RSI.i222 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RAX.i220
  %1242 = load i64, i64* %RCX.i221
  %1243 = mul i64 %1242, 4
  %1244 = add i64 %1243, %1241
  %1245 = load i64, i64* %PC.i219
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %PC.i219
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RSI.i222, align 8
  store %struct.Memory* %loadMem_413ff7, %struct.Memory** %MEMORY
  %loadMem_413ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 9
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RSI.i
  %1257 = load i64, i64* %PC.i218
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %PC.i218
  %1259 = trunc i64 %1256 to i32
  %1260 = add i32 1, %1259
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RSI.i, align 8
  %1262 = icmp ult i32 %1260, %1259
  %1263 = icmp ult i32 %1260, 1
  %1264 = or i1 %1262, %1263
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1265, i8* %1266, align 1
  %1267 = and i32 %1260, 255
  %1268 = call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1271, i8* %1272, align 1
  %1273 = xor i64 1, %1256
  %1274 = trunc i64 %1273 to i32
  %1275 = xor i32 %1274, %1260
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1278, i8* %1279, align 1
  %1280 = icmp eq i32 %1260, 0
  %1281 = zext i1 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1281, i8* %1282, align 1
  %1283 = lshr i32 %1260, 31
  %1284 = trunc i32 %1283 to i8
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1284, i8* %1285, align 1
  %1286 = lshr i32 %1259, 31
  %1287 = xor i32 %1283, %1286
  %1288 = add i32 %1287, %1283
  %1289 = icmp eq i32 %1288, 2
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1290, i8* %1291, align 1
  store %struct.Memory* %loadMem_413ffa, %struct.Memory** %MEMORY
  %loadMem_413ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 9
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1297 to i32*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 1
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 5
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RAX.i216
  %1305 = load i64, i64* %RCX.i217
  %1306 = mul i64 %1305, 4
  %1307 = add i64 %1306, %1304
  %1308 = load i32, i32* %ESI.i
  %1309 = zext i32 %1308 to i64
  %1310 = load i64, i64* %PC.i215
  %1311 = add i64 %1310, 3
  store i64 %1311, i64* %PC.i215
  %1312 = inttoptr i64 %1307 to i32*
  store i32 %1308, i32* %1312
  store %struct.Memory* %loadMem_413ffd, %struct.Memory** %MEMORY
  %loadMem_414000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 1
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 15
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1321 to i64*
  %1322 = load i64, i64* %RBP.i214
  %1323 = sub i64 %1322, 52
  %1324 = load i64, i64* %PC.i212
  %1325 = add i64 %1324, 3
  store i64 %1325, i64* %PC.i212
  %1326 = inttoptr i64 %1323 to i32*
  %1327 = load i32, i32* %1326
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_414000, %struct.Memory** %MEMORY
  %loadMem_414003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 1
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %RAX.i211
  %1336 = load i64, i64* %PC.i210
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %PC.i210
  %1338 = trunc i64 %1335 to i32
  %1339 = add i32 1, %1338
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i211, align 8
  %1341 = icmp ult i32 %1339, %1338
  %1342 = icmp ult i32 %1339, 1
  %1343 = or i1 %1341, %1342
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1344, i8* %1345, align 1
  %1346 = and i32 %1339, 255
  %1347 = call i32 @llvm.ctpop.i32(i32 %1346)
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1350, i8* %1351, align 1
  %1352 = xor i64 1, %1335
  %1353 = trunc i64 %1352 to i32
  %1354 = xor i32 %1353, %1339
  %1355 = lshr i32 %1354, 4
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1357, i8* %1358, align 1
  %1359 = icmp eq i32 %1339, 0
  %1360 = zext i1 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1360, i8* %1361, align 1
  %1362 = lshr i32 %1339, 31
  %1363 = trunc i32 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1363, i8* %1364, align 1
  %1365 = lshr i32 %1338, 31
  %1366 = xor i32 %1362, %1365
  %1367 = add i32 %1366, %1362
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1369, i8* %1370, align 1
  store %struct.Memory* %loadMem_414003, %struct.Memory** %MEMORY
  %loadMem_414006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 1
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %1376 to i32*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 15
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %RBP.i209
  %1381 = sub i64 %1380, 52
  %1382 = load i32, i32* %EAX.i208
  %1383 = zext i32 %1382 to i64
  %1384 = load i64, i64* %PC.i207
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC.i207
  %1386 = inttoptr i64 %1381 to i32*
  store i32 %1382, i32* %1386
  store %struct.Memory* %loadMem_414006, %struct.Memory** %MEMORY
  %loadMem_414009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %PC.i206
  %1391 = add i64 %1390, -52
  %1392 = load i64, i64* %PC.i206
  %1393 = add i64 %1392, 5
  store i64 %1393, i64* %PC.i206
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1391, i64* %1394, align 8
  store %struct.Memory* %loadMem_414009, %struct.Memory** %MEMORY
  br label %block_.L_413fd5

block_.L_41400e:                                  ; preds = %block_.L_413fd5
  %loadMem_41400e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i205
  %1402 = sub i64 %1401, 52
  %1403 = load i64, i64* %PC.i204
  %1404 = add i64 %1403, 7
  store i64 %1404, i64* %PC.i204
  %1405 = inttoptr i64 %1402 to i32*
  store i32 1, i32* %1405
  store %struct.Memory* %loadMem_41400e, %struct.Memory** %MEMORY
  br label %block_.L_414015

block_.L_414015:                                  ; preds = %block_41401f, %block_.L_41400e
  %loadMem_414015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 15
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %RBP.i203
  %1413 = sub i64 %1412, 52
  %1414 = load i64, i64* %PC.i202
  %1415 = add i64 %1414, 4
  store i64 %1415, i64* %PC.i202
  %1416 = inttoptr i64 %1413 to i32*
  %1417 = load i32, i32* %1416
  %1418 = sub i32 %1417, 23
  %1419 = icmp ult i32 %1417, 23
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1420, i8* %1421, align 1
  %1422 = and i32 %1418, 255
  %1423 = call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1426, i8* %1427, align 1
  %1428 = xor i32 %1417, 23
  %1429 = xor i32 %1428, %1418
  %1430 = lshr i32 %1429, 4
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1432, i8* %1433, align 1
  %1434 = icmp eq i32 %1418, 0
  %1435 = zext i1 %1434 to i8
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1435, i8* %1436, align 1
  %1437 = lshr i32 %1418, 31
  %1438 = trunc i32 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1438, i8* %1439, align 1
  %1440 = lshr i32 %1417, 31
  %1441 = xor i32 %1437, %1440
  %1442 = add i32 %1441, %1440
  %1443 = icmp eq i32 %1442, 2
  %1444 = zext i1 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1444, i8* %1445, align 1
  store %struct.Memory* %loadMem_414015, %struct.Memory** %MEMORY
  %loadMem_414019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %PC.i201
  %1450 = add i64 %1449, 50
  %1451 = load i64, i64* %PC.i201
  %1452 = add i64 %1451, 6
  %1453 = load i64, i64* %PC.i201
  %1454 = add i64 %1453, 6
  store i64 %1454, i64* %PC.i201
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1456 = load i8, i8* %1455, align 1
  %1457 = icmp ne i8 %1456, 0
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1459 = load i8, i8* %1458, align 1
  %1460 = icmp ne i8 %1459, 0
  %1461 = xor i1 %1457, %1460
  %1462 = xor i1 %1461, true
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %BRANCH_TAKEN, align 1
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1465 = select i1 %1461, i64 %1452, i64 %1450
  store i64 %1465, i64* %1464, align 8
  store %struct.Memory* %loadMem_414019, %struct.Memory** %MEMORY
  %loadBr_414019 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414019 = icmp eq i8 %loadBr_414019, 1
  br i1 %cmpBr_414019, label %block_.L_41404b, label %block_41401f

block_41401f:                                     ; preds = %block_.L_414015
  %loadMem_41401f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 15
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %RBP.i200
  %1476 = sub i64 %1475, 16
  %1477 = load i64, i64* %PC.i198
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i198
  %1479 = inttoptr i64 %1476 to i64*
  %1480 = load i64, i64* %1479
  store i64 %1480, i64* %RAX.i199, align 8
  store %struct.Memory* %loadMem_41401f, %struct.Memory** %MEMORY
  %loadMem_414023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 5
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 15
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RBP.i197
  %1491 = sub i64 %1490, 52
  %1492 = load i64, i64* %PC.i195
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %PC.i195
  %1494 = inttoptr i64 %1491 to i32*
  %1495 = load i32, i32* %1494
  %1496 = zext i32 %1495 to i64
  store i64 %1496, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_414023, %struct.Memory** %MEMORY
  %loadMem_414026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 5
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RCX.i194
  %1504 = load i64, i64* %PC.i193
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC.i193
  %1506 = trunc i64 %1503 to i32
  %1507 = sub i32 %1506, 1
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RCX.i194, align 8
  %1509 = icmp ult i32 %1506, 1
  %1510 = zext i1 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1510, i8* %1511, align 1
  %1512 = and i32 %1507, 255
  %1513 = call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1516, i8* %1517, align 1
  %1518 = xor i64 1, %1503
  %1519 = trunc i64 %1518 to i32
  %1520 = xor i32 %1519, %1507
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1523, i8* %1524, align 1
  %1525 = icmp eq i32 %1507, 0
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1526, i8* %1527, align 1
  %1528 = lshr i32 %1507, 31
  %1529 = trunc i32 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1529, i8* %1530, align 1
  %1531 = lshr i32 %1506, 31
  %1532 = xor i32 %1528, %1531
  %1533 = add i32 %1532, %1531
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1535, i8* %1536, align 1
  store %struct.Memory* %loadMem_414026, %struct.Memory** %MEMORY
  %loadMem_414029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 5
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %ECX.i191 = bitcast %union.anon* %1542 to i32*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 7
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %1545 to i64*
  %1546 = load i32, i32* %ECX.i191
  %1547 = zext i32 %1546 to i64
  %1548 = load i64, i64* %PC.i190
  %1549 = add i64 %1548, 3
  store i64 %1549, i64* %PC.i190
  %1550 = shl i64 %1547, 32
  %1551 = ashr exact i64 %1550, 32
  store i64 %1551, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_414029, %struct.Memory** %MEMORY
  %loadMem_41402c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 7
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RAX.i187
  %1565 = load i64, i64* %RDX.i189
  %1566 = mul i64 %1565, 4
  %1567 = add i64 %1566, %1564
  %1568 = load i64, i64* %PC.i186
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %PC.i186
  %1570 = inttoptr i64 %1567 to i32*
  %1571 = load i32, i32* %1570
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_41402c, %struct.Memory** %MEMORY
  %loadMem_41402f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 1
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 15
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1581 to i64*
  %1582 = load i64, i64* %RBP.i185
  %1583 = sub i64 %1582, 16
  %1584 = load i64, i64* %PC.i183
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %PC.i183
  %1586 = inttoptr i64 %1583 to i64*
  %1587 = load i64, i64* %1586
  store i64 %1587, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_41402f, %struct.Memory** %MEMORY
  %loadMem_414033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 7
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i182
  %1598 = sub i64 %1597, 52
  %1599 = load i64, i64* %PC.i180
  %1600 = add i64 %1599, 4
  store i64 %1600, i64* %PC.i180
  %1601 = inttoptr i64 %1598 to i32*
  %1602 = load i32, i32* %1601
  %1603 = sext i32 %1602 to i64
  store i64 %1603, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_414033, %struct.Memory** %MEMORY
  %loadMem_414037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 5
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 7
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %1615 to i64*
  %1616 = load i64, i64* %RCX.i178
  %1617 = load i64, i64* %RAX.i177
  %1618 = load i64, i64* %RDX.i179
  %1619 = mul i64 %1618, 4
  %1620 = add i64 %1619, %1617
  %1621 = load i64, i64* %PC.i176
  %1622 = add i64 %1621, 3
  store i64 %1622, i64* %PC.i176
  %1623 = trunc i64 %1616 to i32
  %1624 = inttoptr i64 %1620 to i32*
  %1625 = load i32, i32* %1624
  %1626 = add i32 %1625, %1623
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RCX.i178, align 8
  %1628 = icmp ult i32 %1626, %1623
  %1629 = icmp ult i32 %1626, %1625
  %1630 = or i1 %1628, %1629
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1631, i8* %1632, align 1
  %1633 = and i32 %1626, 255
  %1634 = call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1637, i8* %1638, align 1
  %1639 = xor i32 %1625, %1623
  %1640 = xor i32 %1639, %1626
  %1641 = lshr i32 %1640, 4
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1643, i8* %1644, align 1
  %1645 = icmp eq i32 %1626, 0
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1646, i8* %1647, align 1
  %1648 = lshr i32 %1626, 31
  %1649 = trunc i32 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1649, i8* %1650, align 1
  %1651 = lshr i32 %1623, 31
  %1652 = lshr i32 %1625, 31
  %1653 = xor i32 %1648, %1651
  %1654 = xor i32 %1648, %1652
  %1655 = add i32 %1653, %1654
  %1656 = icmp eq i32 %1655, 2
  %1657 = zext i1 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1657, i8* %1658, align 1
  store %struct.Memory* %loadMem_414037, %struct.Memory** %MEMORY
  %loadMem_41403a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 5
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %ECX.i173 = bitcast %union.anon* %1664 to i32*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 1
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 7
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RDX.i175 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %RAX.i174
  %1672 = load i64, i64* %RDX.i175
  %1673 = mul i64 %1672, 4
  %1674 = add i64 %1673, %1671
  %1675 = load i32, i32* %ECX.i173
  %1676 = zext i32 %1675 to i64
  %1677 = load i64, i64* %PC.i172
  %1678 = add i64 %1677, 3
  store i64 %1678, i64* %PC.i172
  %1679 = inttoptr i64 %1674 to i32*
  store i32 %1675, i32* %1679
  store %struct.Memory* %loadMem_41403a, %struct.Memory** %MEMORY
  %loadMem_41403d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 1
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i171
  %1690 = sub i64 %1689, 52
  %1691 = load i64, i64* %PC.i169
  %1692 = add i64 %1691, 3
  store i64 %1692, i64* %PC.i169
  %1693 = inttoptr i64 %1690 to i32*
  %1694 = load i32, i32* %1693
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_41403d, %struct.Memory** %MEMORY
  %loadMem_414040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 1
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %RAX.i168
  %1703 = load i64, i64* %PC.i167
  %1704 = add i64 %1703, 3
  store i64 %1704, i64* %PC.i167
  %1705 = trunc i64 %1702 to i32
  %1706 = add i32 1, %1705
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i168, align 8
  %1708 = icmp ult i32 %1706, %1705
  %1709 = icmp ult i32 %1706, 1
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1711, i8* %1712, align 1
  %1713 = and i32 %1706, 255
  %1714 = call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1717, i8* %1718, align 1
  %1719 = xor i64 1, %1702
  %1720 = trunc i64 %1719 to i32
  %1721 = xor i32 %1720, %1706
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1724, i8* %1725, align 1
  %1726 = icmp eq i32 %1706, 0
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1727, i8* %1728, align 1
  %1729 = lshr i32 %1706, 31
  %1730 = trunc i32 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1730, i8* %1731, align 1
  %1732 = lshr i32 %1705, 31
  %1733 = xor i32 %1729, %1732
  %1734 = add i32 %1733, %1729
  %1735 = icmp eq i32 %1734, 2
  %1736 = zext i1 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1736, i8* %1737, align 1
  store %struct.Memory* %loadMem_414040, %struct.Memory** %MEMORY
  %loadMem_414043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %EAX.i165 = bitcast %union.anon* %1743 to i32*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 15
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %RBP.i166
  %1748 = sub i64 %1747, 52
  %1749 = load i32, i32* %EAX.i165
  %1750 = zext i32 %1749 to i64
  %1751 = load i64, i64* %PC.i164
  %1752 = add i64 %1751, 3
  store i64 %1752, i64* %PC.i164
  %1753 = inttoptr i64 %1748 to i32*
  store i32 %1749, i32* %1753
  store %struct.Memory* %loadMem_414043, %struct.Memory** %MEMORY
  %loadMem_414046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1756 to i64*
  %1757 = load i64, i64* %PC.i163
  %1758 = add i64 %1757, -49
  %1759 = load i64, i64* %PC.i163
  %1760 = add i64 %1759, 5
  store i64 %1760, i64* %PC.i163
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1758, i64* %1761, align 8
  store %struct.Memory* %loadMem_414046, %struct.Memory** %MEMORY
  br label %block_.L_414015

block_.L_41404b:                                  ; preds = %block_.L_414015
  %loadMem_41404b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 15
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %RBP.i162
  %1769 = sub i64 %1768, 52
  %1770 = load i64, i64* %PC.i161
  %1771 = add i64 %1770, 7
  store i64 %1771, i64* %PC.i161
  %1772 = inttoptr i64 %1769 to i32*
  store i32 0, i32* %1772
  store %struct.Memory* %loadMem_41404b, %struct.Memory** %MEMORY
  br label %block_.L_414052

block_.L_414052:                                  ; preds = %block_41405c, %block_.L_41404b
  %loadMem_414052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i160
  %1780 = sub i64 %1779, 52
  %1781 = load i64, i64* %PC.i159
  %1782 = add i64 %1781, 4
  store i64 %1782, i64* %PC.i159
  %1783 = inttoptr i64 %1780 to i32*
  %1784 = load i32, i32* %1783
  %1785 = sub i32 %1784, 23
  %1786 = icmp ult i32 %1784, 23
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1787, i8* %1788, align 1
  %1789 = and i32 %1785, 255
  %1790 = call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1793, i8* %1794, align 1
  %1795 = xor i32 %1784, 23
  %1796 = xor i32 %1795, %1785
  %1797 = lshr i32 %1796, 4
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1799, i8* %1800, align 1
  %1801 = icmp eq i32 %1785, 0
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i32 %1785, 31
  %1805 = trunc i32 %1804 to i8
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1805, i8* %1806, align 1
  %1807 = lshr i32 %1784, 31
  %1808 = xor i32 %1804, %1807
  %1809 = add i32 %1808, %1807
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1811, i8* %1812, align 1
  store %struct.Memory* %loadMem_414052, %struct.Memory** %MEMORY
  %loadMem_414056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %PC.i158
  %1817 = add i64 %1816, 35
  %1818 = load i64, i64* %PC.i158
  %1819 = add i64 %1818, 6
  %1820 = load i64, i64* %PC.i158
  %1821 = add i64 %1820, 6
  store i64 %1821, i64* %PC.i158
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1823 = load i8, i8* %1822, align 1
  %1824 = icmp ne i8 %1823, 0
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1826 = load i8, i8* %1825, align 1
  %1827 = icmp ne i8 %1826, 0
  %1828 = xor i1 %1824, %1827
  %1829 = xor i1 %1828, true
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %BRANCH_TAKEN, align 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1832 = select i1 %1828, i64 %1819, i64 %1817
  store i64 %1832, i64* %1831, align 8
  store %struct.Memory* %loadMem_414056, %struct.Memory** %MEMORY
  %loadBr_414056 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414056 = icmp eq i8 %loadBr_414056, 1
  br i1 %cmpBr_414056, label %block_.L_414079, label %block_41405c

block_41405c:                                     ; preds = %block_.L_414052
  %loadMem_41405c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 1
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 15
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %RBP.i157
  %1843 = sub i64 %1842, 8
  %1844 = load i64, i64* %PC.i155
  %1845 = add i64 %1844, 4
  store i64 %1845, i64* %PC.i155
  %1846 = inttoptr i64 %1843 to i64*
  %1847 = load i64, i64* %1846
  store i64 %1847, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_41405c, %struct.Memory** %MEMORY
  %loadMem_414060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 5
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 15
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %RBP.i154
  %1858 = sub i64 %1857, 52
  %1859 = load i64, i64* %PC.i152
  %1860 = add i64 %1859, 4
  store i64 %1860, i64* %PC.i152
  %1861 = inttoptr i64 %1858 to i32*
  %1862 = load i32, i32* %1861
  %1863 = sext i32 %1862 to i64
  store i64 %1863, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_414060, %struct.Memory** %MEMORY
  %loadMem_414064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 1
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 5
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RAX.i150
  %1874 = load i64, i64* %RCX.i151
  %1875 = mul i64 %1874, 4
  %1876 = add i64 %1875, %1873
  %1877 = load i64, i64* %PC.i149
  %1878 = add i64 %1877, 7
  store i64 %1878, i64* %PC.i149
  %1879 = inttoptr i64 %1876 to i32*
  store i32 0, i32* %1879
  store %struct.Memory* %loadMem_414064, %struct.Memory** %MEMORY
  %loadMem_41406b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 15
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %RBP.i148
  %1890 = sub i64 %1889, 52
  %1891 = load i64, i64* %PC.i146
  %1892 = add i64 %1891, 3
  store i64 %1892, i64* %PC.i146
  %1893 = inttoptr i64 %1890 to i32*
  %1894 = load i32, i32* %1893
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_41406b, %struct.Memory** %MEMORY
  %loadMem_41406e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 1
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RAX.i145
  %1903 = load i64, i64* %PC.i144
  %1904 = add i64 %1903, 3
  store i64 %1904, i64* %PC.i144
  %1905 = trunc i64 %1902 to i32
  %1906 = add i32 1, %1905
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RAX.i145, align 8
  %1908 = icmp ult i32 %1906, %1905
  %1909 = icmp ult i32 %1906, 1
  %1910 = or i1 %1908, %1909
  %1911 = zext i1 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1911, i8* %1912, align 1
  %1913 = and i32 %1906, 255
  %1914 = call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1917, i8* %1918, align 1
  %1919 = xor i64 1, %1902
  %1920 = trunc i64 %1919 to i32
  %1921 = xor i32 %1920, %1906
  %1922 = lshr i32 %1921, 4
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1924, i8* %1925, align 1
  %1926 = icmp eq i32 %1906, 0
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1927, i8* %1928, align 1
  %1929 = lshr i32 %1906, 31
  %1930 = trunc i32 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1930, i8* %1931, align 1
  %1932 = lshr i32 %1905, 31
  %1933 = xor i32 %1929, %1932
  %1934 = add i32 %1933, %1929
  %1935 = icmp eq i32 %1934, 2
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1936, i8* %1937, align 1
  store %struct.Memory* %loadMem_41406e, %struct.Memory** %MEMORY
  %loadMem_414071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 1
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %EAX.i142 = bitcast %union.anon* %1943 to i32*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 15
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %1946 to i64*
  %1947 = load i64, i64* %RBP.i143
  %1948 = sub i64 %1947, 52
  %1949 = load i32, i32* %EAX.i142
  %1950 = zext i32 %1949 to i64
  %1951 = load i64, i64* %PC.i141
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %PC.i141
  %1953 = inttoptr i64 %1948 to i32*
  store i32 %1949, i32* %1953
  store %struct.Memory* %loadMem_414071, %struct.Memory** %MEMORY
  %loadMem_414074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %PC.i140
  %1958 = add i64 %1957, -34
  %1959 = load i64, i64* %PC.i140
  %1960 = add i64 %1959, 5
  store i64 %1960, i64* %PC.i140
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1958, i64* %1961, align 8
  store %struct.Memory* %loadMem_414074, %struct.Memory** %MEMORY
  br label %block_.L_414052

block_.L_414079:                                  ; preds = %block_.L_414052
  %loadMem_414079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RBP.i139
  %1969 = sub i64 %1968, 60
  %1970 = load i64, i64* %PC.i138
  %1971 = add i64 %1970, 7
  store i64 %1971, i64* %PC.i138
  %1972 = inttoptr i64 %1969 to i32*
  store i32 0, i32* %1972
  store %struct.Memory* %loadMem_414079, %struct.Memory** %MEMORY
  %loadMem_414080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 15
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %RBP.i137
  %1983 = sub i64 %1982, 36
  %1984 = load i64, i64* %PC.i135
  %1985 = add i64 %1984, 3
  store i64 %1985, i64* %PC.i135
  %1986 = inttoptr i64 %1983 to i32*
  %1987 = load i32, i32* %1986
  %1988 = zext i32 %1987 to i64
  store i64 %1988, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_414080, %struct.Memory** %MEMORY
  %loadMem_414083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 1
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %EAX.i133 = bitcast %union.anon* %1994 to i32*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 15
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RBP.i134
  %1999 = sub i64 %1998, 52
  %2000 = load i32, i32* %EAX.i133
  %2001 = zext i32 %2000 to i64
  %2002 = load i64, i64* %PC.i132
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i132
  %2004 = inttoptr i64 %1999 to i32*
  store i32 %2000, i32* %2004
  store %struct.Memory* %loadMem_414083, %struct.Memory** %MEMORY
  br label %block_.L_414086

block_.L_414086:                                  ; preds = %block_414092, %block_.L_414079
  %loadMem_414086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 1
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 15
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2013 to i64*
  %2014 = load i64, i64* %RBP.i131
  %2015 = sub i64 %2014, 52
  %2016 = load i64, i64* %PC.i129
  %2017 = add i64 %2016, 3
  store i64 %2017, i64* %PC.i129
  %2018 = inttoptr i64 %2015 to i32*
  %2019 = load i32, i32* %2018
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_414086, %struct.Memory** %MEMORY
  %loadMem_414089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 1
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %2026 to i32*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 15
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %2029 to i64*
  %2030 = load i32, i32* %EAX.i127
  %2031 = zext i32 %2030 to i64
  %2032 = load i64, i64* %RBP.i128
  %2033 = sub i64 %2032, 40
  %2034 = load i64, i64* %PC.i126
  %2035 = add i64 %2034, 3
  store i64 %2035, i64* %PC.i126
  %2036 = inttoptr i64 %2033 to i32*
  %2037 = load i32, i32* %2036
  %2038 = sub i32 %2030, %2037
  %2039 = icmp ult i32 %2030, %2037
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2040, i8* %2041, align 1
  %2042 = and i32 %2038, 255
  %2043 = call i32 @llvm.ctpop.i32(i32 %2042)
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2046, i8* %2047, align 1
  %2048 = xor i32 %2037, %2030
  %2049 = xor i32 %2048, %2038
  %2050 = lshr i32 %2049, 4
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2052, i8* %2053, align 1
  %2054 = icmp eq i32 %2038, 0
  %2055 = zext i1 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2055, i8* %2056, align 1
  %2057 = lshr i32 %2038, 31
  %2058 = trunc i32 %2057 to i8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2058, i8* %2059, align 1
  %2060 = lshr i32 %2030, 31
  %2061 = lshr i32 %2037, 31
  %2062 = xor i32 %2061, %2060
  %2063 = xor i32 %2057, %2060
  %2064 = add i32 %2063, %2062
  %2065 = icmp eq i32 %2064, 2
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2066, i8* %2067, align 1
  store %struct.Memory* %loadMem_414089, %struct.Memory** %MEMORY
  %loadMem_41408c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2070 to i64*
  %2071 = load i64, i64* %PC.i125
  %2072 = add i64 %2071, 79
  %2073 = load i64, i64* %PC.i125
  %2074 = add i64 %2073, 6
  %2075 = load i64, i64* %PC.i125
  %2076 = add i64 %2075, 6
  store i64 %2076, i64* %PC.i125
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2078 = load i8, i8* %2077, align 1
  %2079 = icmp eq i8 %2078, 0
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2081 = load i8, i8* %2080, align 1
  %2082 = icmp ne i8 %2081, 0
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2084 = load i8, i8* %2083, align 1
  %2085 = icmp ne i8 %2084, 0
  %2086 = xor i1 %2082, %2085
  %2087 = xor i1 %2086, true
  %2088 = and i1 %2079, %2087
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %BRANCH_TAKEN, align 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2091 = select i1 %2088, i64 %2072, i64 %2074
  store i64 %2091, i64* %2090, align 8
  store %struct.Memory* %loadMem_41408c, %struct.Memory** %MEMORY
  %loadBr_41408c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41408c = icmp eq i8 %loadBr_41408c, 1
  br i1 %cmpBr_41408c, label %block_.L_4140db, label %block_414092

block_414092:                                     ; preds = %block_.L_414086
  %loadMem_414092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 1
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 15
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %RBP.i124
  %2102 = sub i64 %2101, 16
  %2103 = load i64, i64* %PC.i122
  %2104 = add i64 %2103, 4
  store i64 %2104, i64* %PC.i122
  %2105 = inttoptr i64 %2102 to i64*
  %2106 = load i64, i64* %2105
  store i64 %2106, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_414092, %struct.Memory** %MEMORY
  %loadMem_414096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 5
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RBP.i121
  %2117 = sub i64 %2116, 52
  %2118 = load i64, i64* %PC.i119
  %2119 = add i64 %2118, 3
  store i64 %2119, i64* %PC.i119
  %2120 = inttoptr i64 %2117 to i32*
  %2121 = load i32, i32* %2120
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_414096, %struct.Memory** %MEMORY
  %loadMem_414099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 5
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RCX.i118
  %2130 = load i64, i64* %PC.i117
  %2131 = add i64 %2130, 3
  store i64 %2131, i64* %PC.i117
  %2132 = trunc i64 %2129 to i32
  %2133 = add i32 1, %2132
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RCX.i118, align 8
  %2135 = icmp ult i32 %2133, %2132
  %2136 = icmp ult i32 %2133, 1
  %2137 = or i1 %2135, %2136
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2138, i8* %2139, align 1
  %2140 = and i32 %2133, 255
  %2141 = call i32 @llvm.ctpop.i32(i32 %2140)
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2144, i8* %2145, align 1
  %2146 = xor i64 1, %2129
  %2147 = trunc i64 %2146 to i32
  %2148 = xor i32 %2147, %2133
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2151, i8* %2152, align 1
  %2153 = icmp eq i32 %2133, 0
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2154, i8* %2155, align 1
  %2156 = lshr i32 %2133, 31
  %2157 = trunc i32 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2157, i8* %2158, align 1
  %2159 = lshr i32 %2132, 31
  %2160 = xor i32 %2156, %2159
  %2161 = add i32 %2160, %2156
  %2162 = icmp eq i32 %2161, 2
  %2163 = zext i1 %2162 to i8
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2163, i8* %2164, align 1
  store %struct.Memory* %loadMem_414099, %struct.Memory** %MEMORY
  %loadMem_41409c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %ECX.i115 = bitcast %union.anon* %2170 to i32*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 7
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %2173 to i64*
  %2174 = load i32, i32* %ECX.i115
  %2175 = zext i32 %2174 to i64
  %2176 = load i64, i64* %PC.i114
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %PC.i114
  %2178 = shl i64 %2175, 32
  %2179 = ashr exact i64 %2178, 32
  store i64 %2179, i64* %RDX.i116, align 8
  store %struct.Memory* %loadMem_41409c, %struct.Memory** %MEMORY
  %loadMem_41409f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 1
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 5
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 7
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %RAX.i111
  %2193 = load i64, i64* %RDX.i113
  %2194 = mul i64 %2193, 4
  %2195 = add i64 %2194, %2192
  %2196 = load i64, i64* %PC.i110
  %2197 = add i64 %2196, 3
  store i64 %2197, i64* %PC.i110
  %2198 = inttoptr i64 %2195 to i32*
  %2199 = load i32, i32* %2198
  %2200 = zext i32 %2199 to i64
  store i64 %2200, i64* %RCX.i112, align 8
  store %struct.Memory* %loadMem_41409f, %struct.Memory** %MEMORY
  %loadMem_4140a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 1
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 15
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RBP.i109
  %2211 = sub i64 %2210, 16
  %2212 = load i64, i64* %PC.i107
  %2213 = add i64 %2212, 4
  store i64 %2213, i64* %PC.i107
  %2214 = inttoptr i64 %2211 to i64*
  %2215 = load i64, i64* %2214
  store i64 %2215, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_4140a2, %struct.Memory** %MEMORY
  %loadMem_4140a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 7
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 15
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RBP.i106
  %2226 = sub i64 %2225, 52
  %2227 = load i64, i64* %PC.i104
  %2228 = add i64 %2227, 4
  store i64 %2228, i64* %PC.i104
  %2229 = inttoptr i64 %2226 to i32*
  %2230 = load i32, i32* %2229
  %2231 = sext i32 %2230 to i64
  store i64 %2231, i64* %RDX.i105, align 8
  store %struct.Memory* %loadMem_4140a6, %struct.Memory** %MEMORY
  %loadMem_4140aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 1
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 5
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 7
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RCX.i102
  %2245 = load i64, i64* %RAX.i101
  %2246 = load i64, i64* %RDX.i103
  %2247 = mul i64 %2246, 4
  %2248 = add i64 %2247, %2245
  %2249 = load i64, i64* %PC.i100
  %2250 = add i64 %2249, 3
  store i64 %2250, i64* %PC.i100
  %2251 = trunc i64 %2244 to i32
  %2252 = inttoptr i64 %2248 to i32*
  %2253 = load i32, i32* %2252
  %2254 = sub i32 %2251, %2253
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RCX.i102, align 8
  %2256 = icmp ult i32 %2251, %2253
  %2257 = zext i1 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2257, i8* %2258, align 1
  %2259 = and i32 %2254, 255
  %2260 = call i32 @llvm.ctpop.i32(i32 %2259)
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  %2263 = xor i8 %2262, 1
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2263, i8* %2264, align 1
  %2265 = xor i32 %2253, %2251
  %2266 = xor i32 %2265, %2254
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2269, i8* %2270, align 1
  %2271 = icmp eq i32 %2254, 0
  %2272 = zext i1 %2271 to i8
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2272, i8* %2273, align 1
  %2274 = lshr i32 %2254, 31
  %2275 = trunc i32 %2274 to i8
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2275, i8* %2276, align 1
  %2277 = lshr i32 %2251, 31
  %2278 = lshr i32 %2253, 31
  %2279 = xor i32 %2278, %2277
  %2280 = xor i32 %2274, %2277
  %2281 = add i32 %2280, %2279
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2283, i8* %2284, align 1
  store %struct.Memory* %loadMem_4140aa, %struct.Memory** %MEMORY
  %loadMem_4140ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 5
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 15
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %RCX.i98
  %2295 = load i64, i64* %RBP.i99
  %2296 = sub i64 %2295, 60
  %2297 = load i64, i64* %PC.i97
  %2298 = add i64 %2297, 3
  store i64 %2298, i64* %PC.i97
  %2299 = trunc i64 %2294 to i32
  %2300 = inttoptr i64 %2296 to i32*
  %2301 = load i32, i32* %2300
  %2302 = add i32 %2301, %2299
  %2303 = zext i32 %2302 to i64
  store i64 %2303, i64* %RCX.i98, align 8
  %2304 = icmp ult i32 %2302, %2299
  %2305 = icmp ult i32 %2302, %2301
  %2306 = or i1 %2304, %2305
  %2307 = zext i1 %2306 to i8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2307, i8* %2308, align 1
  %2309 = and i32 %2302, 255
  %2310 = call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2313, i8* %2314, align 1
  %2315 = xor i32 %2301, %2299
  %2316 = xor i32 %2315, %2302
  %2317 = lshr i32 %2316, 4
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2319, i8* %2320, align 1
  %2321 = icmp eq i32 %2302, 0
  %2322 = zext i1 %2321 to i8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2322, i8* %2323, align 1
  %2324 = lshr i32 %2302, 31
  %2325 = trunc i32 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2325, i8* %2326, align 1
  %2327 = lshr i32 %2299, 31
  %2328 = lshr i32 %2301, 31
  %2329 = xor i32 %2324, %2327
  %2330 = xor i32 %2324, %2328
  %2331 = add i32 %2329, %2330
  %2332 = icmp eq i32 %2331, 2
  %2333 = zext i1 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2333, i8* %2334, align 1
  store %struct.Memory* %loadMem_4140ad, %struct.Memory** %MEMORY
  %loadMem_4140b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %ECX.i95 = bitcast %union.anon* %2340 to i32*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 15
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2343 to i64*
  %2344 = load i64, i64* %RBP.i96
  %2345 = sub i64 %2344, 60
  %2346 = load i32, i32* %ECX.i95
  %2347 = zext i32 %2346 to i64
  %2348 = load i64, i64* %PC.i94
  %2349 = add i64 %2348, 3
  store i64 %2349, i64* %PC.i94
  %2350 = inttoptr i64 %2345 to i32*
  store i32 %2346, i32* %2350
  store %struct.Memory* %loadMem_4140b0, %struct.Memory** %MEMORY
  %loadMem_4140b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 5
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 15
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %RBP.i93
  %2361 = sub i64 %2360, 60
  %2362 = load i64, i64* %PC.i91
  %2363 = add i64 %2362, 3
  store i64 %2363, i64* %PC.i91
  %2364 = inttoptr i64 %2361 to i32*
  %2365 = load i32, i32* %2364
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_4140b3, %struct.Memory** %MEMORY
  %loadMem_4140b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 5
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RCX.i90
  %2374 = load i64, i64* %PC.i89
  %2375 = add i64 %2374, 3
  store i64 %2375, i64* %PC.i89
  %2376 = trunc i64 %2373 to i32
  %2377 = sub i32 %2376, 1
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RCX.i90, align 8
  %2379 = icmp ult i32 %2376, 1
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2380, i8* %2381, align 1
  %2382 = and i32 %2377, 255
  %2383 = call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2386, i8* %2387, align 1
  %2388 = xor i64 1, %2373
  %2389 = trunc i64 %2388 to i32
  %2390 = xor i32 %2389, %2377
  %2391 = lshr i32 %2390, 4
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2393, i8* %2394, align 1
  %2395 = icmp eq i32 %2377, 0
  %2396 = zext i1 %2395 to i8
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2396, i8* %2397, align 1
  %2398 = lshr i32 %2377, 31
  %2399 = trunc i32 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2399, i8* %2400, align 1
  %2401 = lshr i32 %2376, 31
  %2402 = xor i32 %2398, %2401
  %2403 = add i32 %2402, %2401
  %2404 = icmp eq i32 %2403, 2
  %2405 = zext i1 %2404 to i8
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2405, i8* %2406, align 1
  store %struct.Memory* %loadMem_4140b6, %struct.Memory** %MEMORY
  %loadMem_4140b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 15
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %RBP.i88
  %2417 = sub i64 %2416, 8
  %2418 = load i64, i64* %PC.i86
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %PC.i86
  %2420 = inttoptr i64 %2417 to i64*
  %2421 = load i64, i64* %2420
  store i64 %2421, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_4140b9, %struct.Memory** %MEMORY
  %loadMem_4140bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 7
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 15
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2430 to i64*
  %2431 = load i64, i64* %RBP.i85
  %2432 = sub i64 %2431, 52
  %2433 = load i64, i64* %PC.i83
  %2434 = add i64 %2433, 4
  store i64 %2434, i64* %PC.i83
  %2435 = inttoptr i64 %2432 to i32*
  %2436 = load i32, i32* %2435
  %2437 = sext i32 %2436 to i64
  store i64 %2437, i64* %RDX.i84, align 8
  store %struct.Memory* %loadMem_4140bd, %struct.Memory** %MEMORY
  %loadMem_4140c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 5
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %ECX.i80 = bitcast %union.anon* %2443 to i32*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 1
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 7
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %RAX.i81
  %2451 = load i64, i64* %RDX.i82
  %2452 = mul i64 %2451, 4
  %2453 = add i64 %2452, %2450
  %2454 = load i32, i32* %ECX.i80
  %2455 = zext i32 %2454 to i64
  %2456 = load i64, i64* %PC.i79
  %2457 = add i64 %2456, 3
  store i64 %2457, i64* %PC.i79
  %2458 = inttoptr i64 %2453 to i32*
  store i32 %2454, i32* %2458
  store %struct.Memory* %loadMem_4140c1, %struct.Memory** %MEMORY
  %loadMem_4140c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 5
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RBP.i78
  %2469 = sub i64 %2468, 60
  %2470 = load i64, i64* %PC.i76
  %2471 = add i64 %2470, 3
  store i64 %2471, i64* %PC.i76
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_4140c4, %struct.Memory** %MEMORY
  %loadMem_4140c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 5
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %RCX.i75
  %2482 = load i64, i64* %PC.i74
  %2483 = add i64 %2482, 2
  store i64 %2483, i64* %PC.i74
  %2484 = trunc i64 %2481 to i32
  %2485 = shl i32 %2484, 1
  %2486 = icmp slt i32 %2484, 0
  %2487 = icmp slt i32 %2485, 0
  %2488 = xor i1 %2486, %2487
  %2489 = zext i32 %2485 to i64
  store i64 %2489, i64* %RCX.i75, align 8
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2491 = zext i1 %2486 to i8
  store i8 %2491, i8* %2490, align 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2493 = and i32 %2485, 254
  %2494 = call i32 @llvm.ctpop.i32(i32 %2493)
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  %2497 = xor i8 %2496, 1
  store i8 %2497, i8* %2492, align 1
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2498, align 1
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2500 = icmp eq i32 %2485, 0
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %2499, align 1
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2503 = lshr i32 %2485, 31
  %2504 = trunc i32 %2503 to i8
  store i8 %2504, i8* %2502, align 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2506 = zext i1 %2488 to i8
  store i8 %2506, i8* %2505, align 1
  store %struct.Memory* %loadMem_4140c7, %struct.Memory** %MEMORY
  %loadMem_4140ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 33
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 5
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %ECX.i72 = bitcast %union.anon* %2512 to i32*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 15
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %RBP.i73
  %2517 = sub i64 %2516, 60
  %2518 = load i32, i32* %ECX.i72
  %2519 = zext i32 %2518 to i64
  %2520 = load i64, i64* %PC.i71
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i71
  %2522 = inttoptr i64 %2517 to i32*
  store i32 %2518, i32* %2522
  store %struct.Memory* %loadMem_4140ca, %struct.Memory** %MEMORY
  %loadMem_4140cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 1
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i70
  %2533 = sub i64 %2532, 52
  %2534 = load i64, i64* %PC.i68
  %2535 = add i64 %2534, 3
  store i64 %2535, i64* %PC.i68
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_4140cd, %struct.Memory** %MEMORY
  %loadMem_4140d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 1
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RAX.i67
  %2546 = load i64, i64* %PC.i66
  %2547 = add i64 %2546, 3
  store i64 %2547, i64* %PC.i66
  %2548 = trunc i64 %2545 to i32
  %2549 = add i32 1, %2548
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RAX.i67, align 8
  %2551 = icmp ult i32 %2549, %2548
  %2552 = icmp ult i32 %2549, 1
  %2553 = or i1 %2551, %2552
  %2554 = zext i1 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2554, i8* %2555, align 1
  %2556 = and i32 %2549, 255
  %2557 = call i32 @llvm.ctpop.i32(i32 %2556)
  %2558 = trunc i32 %2557 to i8
  %2559 = and i8 %2558, 1
  %2560 = xor i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2560, i8* %2561, align 1
  %2562 = xor i64 1, %2545
  %2563 = trunc i64 %2562 to i32
  %2564 = xor i32 %2563, %2549
  %2565 = lshr i32 %2564, 4
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2567, i8* %2568, align 1
  %2569 = icmp eq i32 %2549, 0
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2570, i8* %2571, align 1
  %2572 = lshr i32 %2549, 31
  %2573 = trunc i32 %2572 to i8
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2573, i8* %2574, align 1
  %2575 = lshr i32 %2548, 31
  %2576 = xor i32 %2572, %2575
  %2577 = add i32 %2576, %2572
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2579, i8* %2580, align 1
  store %struct.Memory* %loadMem_4140d0, %struct.Memory** %MEMORY
  %loadMem_4140d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 1
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %2586 to i32*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 15
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2589 to i64*
  %2590 = load i64, i64* %RBP.i65
  %2591 = sub i64 %2590, 52
  %2592 = load i32, i32* %EAX.i64
  %2593 = zext i32 %2592 to i64
  %2594 = load i64, i64* %PC.i63
  %2595 = add i64 %2594, 3
  store i64 %2595, i64* %PC.i63
  %2596 = inttoptr i64 %2591 to i32*
  store i32 %2592, i32* %2596
  store %struct.Memory* %loadMem_4140d3, %struct.Memory** %MEMORY
  %loadMem_4140d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %PC.i62
  %2601 = add i64 %2600, -80
  %2602 = load i64, i64* %PC.i62
  %2603 = add i64 %2602, 5
  store i64 %2603, i64* %PC.i62
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2601, i64* %2604, align 8
  store %struct.Memory* %loadMem_4140d6, %struct.Memory** %MEMORY
  br label %block_.L_414086

block_.L_4140db:                                  ; preds = %block_.L_414086
  %loadMem_4140db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i61
  %2615 = sub i64 %2614, 36
  %2616 = load i64, i64* %PC.i59
  %2617 = add i64 %2616, 3
  store i64 %2617, i64* %PC.i59
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_4140db, %struct.Memory** %MEMORY
  %loadMem_4140de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RAX.i58
  %2628 = load i64, i64* %PC.i57
  %2629 = add i64 %2628, 3
  store i64 %2629, i64* %PC.i57
  %2630 = trunc i64 %2627 to i32
  %2631 = add i32 1, %2630
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RAX.i58, align 8
  %2633 = icmp ult i32 %2631, %2630
  %2634 = icmp ult i32 %2631, 1
  %2635 = or i1 %2633, %2634
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2636, i8* %2637, align 1
  %2638 = and i32 %2631, 255
  %2639 = call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2642, i8* %2643, align 1
  %2644 = xor i64 1, %2627
  %2645 = trunc i64 %2644 to i32
  %2646 = xor i32 %2645, %2631
  %2647 = lshr i32 %2646, 4
  %2648 = trunc i32 %2647 to i8
  %2649 = and i8 %2648, 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2649, i8* %2650, align 1
  %2651 = icmp eq i32 %2631, 0
  %2652 = zext i1 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2652, i8* %2653, align 1
  %2654 = lshr i32 %2631, 31
  %2655 = trunc i32 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2655, i8* %2656, align 1
  %2657 = lshr i32 %2630, 31
  %2658 = xor i32 %2654, %2657
  %2659 = add i32 %2658, %2654
  %2660 = icmp eq i32 %2659, 2
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2661, i8* %2662, align 1
  store %struct.Memory* %loadMem_4140de, %struct.Memory** %MEMORY
  %loadMem_4140e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 1
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %EAX.i55 = bitcast %union.anon* %2668 to i32*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 15
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %RBP.i56
  %2673 = sub i64 %2672, 52
  %2674 = load i32, i32* %EAX.i55
  %2675 = zext i32 %2674 to i64
  %2676 = load i64, i64* %PC.i54
  %2677 = add i64 %2676, 3
  store i64 %2677, i64* %PC.i54
  %2678 = inttoptr i64 %2673 to i32*
  store i32 %2674, i32* %2678
  store %struct.Memory* %loadMem_4140e1, %struct.Memory** %MEMORY
  br label %block_.L_4140e4

block_.L_4140e4:                                  ; preds = %block_4140f0, %block_.L_4140db
  %loadMem_4140e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i53
  %2689 = sub i64 %2688, 52
  %2690 = load i64, i64* %PC.i51
  %2691 = add i64 %2690, 3
  store i64 %2691, i64* %PC.i51
  %2692 = inttoptr i64 %2689 to i32*
  %2693 = load i32, i32* %2692
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_4140e4, %struct.Memory** %MEMORY
  %loadMem_4140e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 1
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %2700 to i32*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %2703 to i64*
  %2704 = load i32, i32* %EAX.i49
  %2705 = zext i32 %2704 to i64
  %2706 = load i64, i64* %RBP.i50
  %2707 = sub i64 %2706, 40
  %2708 = load i64, i64* %PC.i48
  %2709 = add i64 %2708, 3
  store i64 %2709, i64* %PC.i48
  %2710 = inttoptr i64 %2707 to i32*
  %2711 = load i32, i32* %2710
  %2712 = sub i32 %2704, %2711
  %2713 = icmp ult i32 %2704, %2711
  %2714 = zext i1 %2713 to i8
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2714, i8* %2715, align 1
  %2716 = and i32 %2712, 255
  %2717 = call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2720, i8* %2721, align 1
  %2722 = xor i32 %2711, %2704
  %2723 = xor i32 %2722, %2712
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2726, i8* %2727, align 1
  %2728 = icmp eq i32 %2712, 0
  %2729 = zext i1 %2728 to i8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2729, i8* %2730, align 1
  %2731 = lshr i32 %2712, 31
  %2732 = trunc i32 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2732, i8* %2733, align 1
  %2734 = lshr i32 %2704, 31
  %2735 = lshr i32 %2711, 31
  %2736 = xor i32 %2735, %2734
  %2737 = xor i32 %2731, %2734
  %2738 = add i32 %2737, %2736
  %2739 = icmp eq i32 %2738, 2
  %2740 = zext i1 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2740, i8* %2741, align 1
  store %struct.Memory* %loadMem_4140e7, %struct.Memory** %MEMORY
  %loadMem_4140ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %PC.i47
  %2746 = add i64 %2745, 64
  %2747 = load i64, i64* %PC.i47
  %2748 = add i64 %2747, 6
  %2749 = load i64, i64* %PC.i47
  %2750 = add i64 %2749, 6
  store i64 %2750, i64* %PC.i47
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2752 = load i8, i8* %2751, align 1
  %2753 = icmp eq i8 %2752, 0
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2755 = load i8, i8* %2754, align 1
  %2756 = icmp ne i8 %2755, 0
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2758 = load i8, i8* %2757, align 1
  %2759 = icmp ne i8 %2758, 0
  %2760 = xor i1 %2756, %2759
  %2761 = xor i1 %2760, true
  %2762 = and i1 %2753, %2761
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %BRANCH_TAKEN, align 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2765 = select i1 %2762, i64 %2746, i64 %2748
  store i64 %2765, i64* %2764, align 8
  store %struct.Memory* %loadMem_4140ea, %struct.Memory** %MEMORY
  %loadBr_4140ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4140ea = icmp eq i8 %loadBr_4140ea, 1
  br i1 %cmpBr_4140ea, label %block_.L_41412a, label %block_4140f0

block_4140f0:                                     ; preds = %block_.L_4140e4
  %loadMem_4140f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 1
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 15
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %RBP.i46
  %2776 = sub i64 %2775, 8
  %2777 = load i64, i64* %PC.i44
  %2778 = add i64 %2777, 4
  store i64 %2778, i64* %PC.i44
  %2779 = inttoptr i64 %2776 to i64*
  %2780 = load i64, i64* %2779
  store i64 %2780, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_4140f0, %struct.Memory** %MEMORY
  %loadMem_4140f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 5
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RBP.i43
  %2791 = sub i64 %2790, 52
  %2792 = load i64, i64* %PC.i41
  %2793 = add i64 %2792, 3
  store i64 %2793, i64* %PC.i41
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794
  %2796 = zext i32 %2795 to i64
  store i64 %2796, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_4140f4, %struct.Memory** %MEMORY
  %loadMem_4140f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 5
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RCX.i40
  %2804 = load i64, i64* %PC.i39
  %2805 = add i64 %2804, 3
  store i64 %2805, i64* %PC.i39
  %2806 = trunc i64 %2803 to i32
  %2807 = sub i32 %2806, 1
  %2808 = zext i32 %2807 to i64
  store i64 %2808, i64* %RCX.i40, align 8
  %2809 = icmp ult i32 %2806, 1
  %2810 = zext i1 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2810, i8* %2811, align 1
  %2812 = and i32 %2807, 255
  %2813 = call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2816, i8* %2817, align 1
  %2818 = xor i64 1, %2803
  %2819 = trunc i64 %2818 to i32
  %2820 = xor i32 %2819, %2807
  %2821 = lshr i32 %2820, 4
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2823, i8* %2824, align 1
  %2825 = icmp eq i32 %2807, 0
  %2826 = zext i1 %2825 to i8
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2826, i8* %2827, align 1
  %2828 = lshr i32 %2807, 31
  %2829 = trunc i32 %2828 to i8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2829, i8* %2830, align 1
  %2831 = lshr i32 %2806, 31
  %2832 = xor i32 %2828, %2831
  %2833 = add i32 %2832, %2831
  %2834 = icmp eq i32 %2833, 2
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2835, i8* %2836, align 1
  store %struct.Memory* %loadMem_4140f7, %struct.Memory** %MEMORY
  %loadMem_4140fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 5
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %ECX.i37 = bitcast %union.anon* %2842 to i32*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 7
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %2845 to i64*
  %2846 = load i32, i32* %ECX.i37
  %2847 = zext i32 %2846 to i64
  %2848 = load i64, i64* %PC.i36
  %2849 = add i64 %2848, 3
  store i64 %2849, i64* %PC.i36
  %2850 = shl i64 %2847, 32
  %2851 = ashr exact i64 %2850, 32
  store i64 %2851, i64* %RDX.i38, align 8
  store %struct.Memory* %loadMem_4140fa, %struct.Memory** %MEMORY
  %loadMem_4140fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 1
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 7
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RDX.i35 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RAX.i33
  %2865 = load i64, i64* %RDX.i35
  %2866 = mul i64 %2865, 4
  %2867 = add i64 %2866, %2864
  %2868 = load i64, i64* %PC.i32
  %2869 = add i64 %2868, 3
  store i64 %2869, i64* %PC.i32
  %2870 = inttoptr i64 %2867 to i32*
  %2871 = load i32, i32* %2870
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_4140fd, %struct.Memory** %MEMORY
  %loadMem_414100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 5
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %RCX.i31
  %2880 = load i64, i64* %PC.i30
  %2881 = add i64 %2880, 3
  store i64 %2881, i64* %PC.i30
  %2882 = trunc i64 %2879 to i32
  %2883 = add i32 1, %2882
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RCX.i31, align 8
  %2885 = icmp ult i32 %2883, %2882
  %2886 = icmp ult i32 %2883, 1
  %2887 = or i1 %2885, %2886
  %2888 = zext i1 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2888, i8* %2889, align 1
  %2890 = and i32 %2883, 255
  %2891 = call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2894, i8* %2895, align 1
  %2896 = xor i64 1, %2879
  %2897 = trunc i64 %2896 to i32
  %2898 = xor i32 %2897, %2883
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2901, i8* %2902, align 1
  %2903 = icmp eq i32 %2883, 0
  %2904 = zext i1 %2903 to i8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2904, i8* %2905, align 1
  %2906 = lshr i32 %2883, 31
  %2907 = trunc i32 %2906 to i8
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2907, i8* %2908, align 1
  %2909 = lshr i32 %2882, 31
  %2910 = xor i32 %2906, %2909
  %2911 = add i32 %2910, %2906
  %2912 = icmp eq i32 %2911, 2
  %2913 = zext i1 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2913, i8* %2914, align 1
  store %struct.Memory* %loadMem_414100, %struct.Memory** %MEMORY
  %loadMem_414103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 5
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RCX.i29
  %2922 = load i64, i64* %PC.i28
  %2923 = add i64 %2922, 2
  store i64 %2923, i64* %PC.i28
  %2924 = trunc i64 %2921 to i32
  %2925 = shl i32 %2924, 1
  %2926 = icmp slt i32 %2924, 0
  %2927 = icmp slt i32 %2925, 0
  %2928 = xor i1 %2926, %2927
  %2929 = zext i32 %2925 to i64
  store i64 %2929, i64* %RCX.i29, align 8
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2931 = zext i1 %2926 to i8
  store i8 %2931, i8* %2930, align 1
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2933 = and i32 %2925, 254
  %2934 = call i32 @llvm.ctpop.i32(i32 %2933)
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = xor i8 %2936, 1
  store i8 %2937, i8* %2932, align 1
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2938, align 1
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2940 = icmp eq i32 %2925, 0
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %2939, align 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2943 = lshr i32 %2925, 31
  %2944 = trunc i32 %2943 to i8
  store i8 %2944, i8* %2942, align 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2946 = zext i1 %2928 to i8
  store i8 %2946, i8* %2945, align 1
  store %struct.Memory* %loadMem_414103, %struct.Memory** %MEMORY
  %loadMem_414106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 1
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 15
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %RBP.i27
  %2957 = sub i64 %2956, 16
  %2958 = load i64, i64* %PC.i25
  %2959 = add i64 %2958, 4
  store i64 %2959, i64* %PC.i25
  %2960 = inttoptr i64 %2957 to i64*
  %2961 = load i64, i64* %2960
  store i64 %2961, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_414106, %struct.Memory** %MEMORY
  %loadMem_41410a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 7
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RDX.i23 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i24
  %2972 = sub i64 %2971, 52
  %2973 = load i64, i64* %PC.i22
  %2974 = add i64 %2973, 4
  store i64 %2974, i64* %PC.i22
  %2975 = inttoptr i64 %2972 to i32*
  %2976 = load i32, i32* %2975
  %2977 = sext i32 %2976 to i64
  store i64 %2977, i64* %RDX.i23, align 8
  store %struct.Memory* %loadMem_41410a, %struct.Memory** %MEMORY
  %loadMem_41410e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 1
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 5
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 7
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RDX.i21 = bitcast %union.anon* %2989 to i64*
  %2990 = load i64, i64* %RCX.i
  %2991 = load i64, i64* %RAX.i20
  %2992 = load i64, i64* %RDX.i21
  %2993 = mul i64 %2992, 4
  %2994 = add i64 %2993, %2991
  %2995 = load i64, i64* %PC.i19
  %2996 = add i64 %2995, 3
  store i64 %2996, i64* %PC.i19
  %2997 = trunc i64 %2990 to i32
  %2998 = inttoptr i64 %2994 to i32*
  %2999 = load i32, i32* %2998
  %3000 = sub i32 %2997, %2999
  %3001 = zext i32 %3000 to i64
  store i64 %3001, i64* %RCX.i, align 8
  %3002 = icmp ult i32 %2997, %2999
  %3003 = zext i1 %3002 to i8
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3003, i8* %3004, align 1
  %3005 = and i32 %3000, 255
  %3006 = call i32 @llvm.ctpop.i32(i32 %3005)
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3009, i8* %3010, align 1
  %3011 = xor i32 %2999, %2997
  %3012 = xor i32 %3011, %3000
  %3013 = lshr i32 %3012, 4
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3015, i8* %3016, align 1
  %3017 = icmp eq i32 %3000, 0
  %3018 = zext i1 %3017 to i8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3018, i8* %3019, align 1
  %3020 = lshr i32 %3000, 31
  %3021 = trunc i32 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3021, i8* %3022, align 1
  %3023 = lshr i32 %2997, 31
  %3024 = lshr i32 %2999, 31
  %3025 = xor i32 %3024, %3023
  %3026 = xor i32 %3020, %3023
  %3027 = add i32 %3026, %3025
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3029, i8* %3030, align 1
  store %struct.Memory* %loadMem_41410e, %struct.Memory** %MEMORY
  %loadMem_414111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 1
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 15
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i18
  %3041 = sub i64 %3040, 16
  %3042 = load i64, i64* %PC.i16
  %3043 = add i64 %3042, 4
  store i64 %3043, i64* %PC.i16
  %3044 = inttoptr i64 %3041 to i64*
  %3045 = load i64, i64* %3044
  store i64 %3045, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_414111, %struct.Memory** %MEMORY
  %loadMem_414115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 7
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RDX.i14 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i15
  %3056 = sub i64 %3055, 52
  %3057 = load i64, i64* %PC.i13
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i13
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RDX.i14, align 8
  store %struct.Memory* %loadMem_414115, %struct.Memory** %MEMORY
  %loadMem_414119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3067 to i32*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 1
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 7
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %RAX.i12
  %3075 = load i64, i64* %RDX.i
  %3076 = mul i64 %3075, 4
  %3077 = add i64 %3076, %3074
  %3078 = load i32, i32* %ECX.i
  %3079 = zext i32 %3078 to i64
  %3080 = load i64, i64* %PC.i11
  %3081 = add i64 %3080, 3
  store i64 %3081, i64* %PC.i11
  %3082 = inttoptr i64 %3077 to i32*
  store i32 %3078, i32* %3082
  store %struct.Memory* %loadMem_414119, %struct.Memory** %MEMORY
  %loadMem_41411c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 1
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 15
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %RBP.i10
  %3093 = sub i64 %3092, 52
  %3094 = load i64, i64* %PC.i8
  %3095 = add i64 %3094, 3
  store i64 %3095, i64* %PC.i8
  %3096 = inttoptr i64 %3093 to i32*
  %3097 = load i32, i32* %3096
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_41411c, %struct.Memory** %MEMORY
  %loadMem_41411f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 1
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3104 to i64*
  %3105 = load i64, i64* %RAX.i
  %3106 = load i64, i64* %PC.i7
  %3107 = add i64 %3106, 3
  store i64 %3107, i64* %PC.i7
  %3108 = trunc i64 %3105 to i32
  %3109 = add i32 1, %3108
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RAX.i, align 8
  %3111 = icmp ult i32 %3109, %3108
  %3112 = icmp ult i32 %3109, 1
  %3113 = or i1 %3111, %3112
  %3114 = zext i1 %3113 to i8
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3114, i8* %3115, align 1
  %3116 = and i32 %3109, 255
  %3117 = call i32 @llvm.ctpop.i32(i32 %3116)
  %3118 = trunc i32 %3117 to i8
  %3119 = and i8 %3118, 1
  %3120 = xor i8 %3119, 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3120, i8* %3121, align 1
  %3122 = xor i64 1, %3105
  %3123 = trunc i64 %3122 to i32
  %3124 = xor i32 %3123, %3109
  %3125 = lshr i32 %3124, 4
  %3126 = trunc i32 %3125 to i8
  %3127 = and i8 %3126, 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3127, i8* %3128, align 1
  %3129 = icmp eq i32 %3109, 0
  %3130 = zext i1 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i32 %3109, 31
  %3133 = trunc i32 %3132 to i8
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3133, i8* %3134, align 1
  %3135 = lshr i32 %3108, 31
  %3136 = xor i32 %3132, %3135
  %3137 = add i32 %3136, %3132
  %3138 = icmp eq i32 %3137, 2
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3139, i8* %3140, align 1
  store %struct.Memory* %loadMem_41411f, %struct.Memory** %MEMORY
  %loadMem_414122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 1
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3146 to i32*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 15
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %RBP.i6
  %3151 = sub i64 %3150, 52
  %3152 = load i32, i32* %EAX.i
  %3153 = zext i32 %3152 to i64
  %3154 = load i64, i64* %PC.i5
  %3155 = add i64 %3154, 3
  store i64 %3155, i64* %PC.i5
  %3156 = inttoptr i64 %3151 to i32*
  store i32 %3152, i32* %3156
  store %struct.Memory* %loadMem_414122, %struct.Memory** %MEMORY
  %loadMem_414125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 33
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %PC.i4
  %3161 = add i64 %3160, -65
  %3162 = load i64, i64* %PC.i4
  %3163 = add i64 %3162, 5
  store i64 %3163, i64* %PC.i4
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3161, i64* %3164, align 8
  store %struct.Memory* %loadMem_414125, %struct.Memory** %MEMORY
  br label %block_.L_4140e4

block_.L_41412a:                                  ; preds = %block_.L_4140e4
  %loadMem_41412a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 15
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %PC.i2
  %3172 = add i64 %3171, 1
  store i64 %3172, i64* %PC.i2
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3174 = load i64, i64* %3173, align 8
  %3175 = add i64 %3174, 8
  %3176 = inttoptr i64 %3174 to i64*
  %3177 = load i64, i64* %3176
  store i64 %3177, i64* %RBP.i3, align 8
  store i64 %3175, i64* %3173, align 8
  store %struct.Memory* %loadMem_41412a, %struct.Memory** %MEMORY
  %loadMem_41412b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %PC.i1
  %3182 = add i64 %3181, 1
  store i64 %3182, i64* %PC.i1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3185 = load i64, i64* %3184, align 8
  %3186 = inttoptr i64 %3185 to i64*
  %3187 = load i64, i64* %3186
  store i64 %3187, i64* %3183, align 8
  %3188 = add i64 %3185, 8
  store i64 %3188, i64* %3184, align 8
  store %struct.Memory* %loadMem_41412b, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41412b
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

define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jg_.L_413fa0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_413f8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jne_.L_413f7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_413f7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_413f42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_413f92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_413f2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x17__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 23
  %16 = icmp ult i32 %14, 23
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
  %25 = xor i32 %14, 23
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

define %struct.Memory* @routine_jge_.L_413fce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413fa7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_41400e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl___rcx__rdx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_413fd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41404b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414015(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_414079(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_414052(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4140db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %22, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %22, %24
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %25, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %24, %22
  %37 = xor i32 %36, %25
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %25, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %25, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %22, 31
  %49 = lshr i32 %24, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414086(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_41412a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4140e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
