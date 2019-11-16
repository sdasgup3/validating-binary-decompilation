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
define %struct.Memory* @biari_encode_symbol_eq_prob(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_401de0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_401de0, %struct.Memory** %MEMORY
  %loadMem_401de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i552
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i552
  store i64 %26, i64* %RBP.i553, align 8
  store %struct.Memory* %loadMem_401de1, %struct.Memory** %MEMORY
  %loadMem_401de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %AX.i551 = bitcast %union.anon* %34 to i16*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %SI.i = bitcast %union.anon* %37 to i16*
  %38 = load i16, i16* %SI.i
  %39 = zext i16 %38 to i64
  %40 = load i64, i64* %PC.i550
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC.i550
  store i16 %38, i16* %AX.i551, align 2
  store %struct.Memory* %loadMem_401de4, %struct.Memory** %MEMORY
  %loadMem_401de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RDI.i548 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %RBP.i549
  %52 = sub i64 %51, 8
  %53 = load i64, i64* %RDI.i548
  %54 = load i64, i64* %PC.i547
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i547
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56
  store %struct.Memory* %loadMem_401de7, %struct.Memory** %MEMORY
  %loadMem_401deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %58 = getelementptr inbounds %struct.GPR, %struct.GPR* %57, i32 0, i32 33
  %59 = getelementptr inbounds %struct.Reg, %struct.Reg* %58, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %59 to i64*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %AX.i = bitcast %union.anon* %62 to i16*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 15
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %65 to i64*
  %66 = load i64, i64* %RBP.i546
  %67 = sub i64 %66, 10
  %68 = load i16, i16* %AX.i
  %69 = zext i16 %68 to i64
  %70 = load i64, i64* %PC.i545
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC.i545
  %72 = inttoptr i64 %67 to i16*
  store i16 %68, i16* %72
  store %struct.Memory* %loadMem_401deb, %struct.Memory** %MEMORY
  %loadMem_401def = load %struct.Memory*, %struct.Memory** %MEMORY
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 33
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %75 to i64*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 11
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %RDI.i543 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RBP.i544
  %83 = sub i64 %82, 8
  %84 = load i64, i64* %PC.i542
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC.i542
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RDI.i543, align 8
  store %struct.Memory* %loadMem_401def, %struct.Memory** %MEMORY
  %loadMem_401df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RSI.i540 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RDI.i541 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RDI.i541
  %98 = load i64, i64* %PC.i539
  %99 = add i64 %98, 2
  store i64 %99, i64* %PC.i539
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RSI.i540, align 8
  store %struct.Memory* %loadMem_401df3, %struct.Memory** %MEMORY
  %loadMem_401df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 33
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RSI.i538 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %RSI.i538
  %110 = load i64, i64* %PC.i537
  %111 = add i64 %110, 2
  store i64 %111, i64* %PC.i537
  %112 = trunc i64 %109 to i32
  %113 = shl i32 %112, 1
  %114 = icmp slt i32 %112, 0
  %115 = icmp slt i32 %113, 0
  %116 = xor i1 %114, %115
  %117 = zext i32 %113 to i64
  store i64 %117, i64* %RSI.i538, align 8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %119 = zext i1 %114 to i8
  store i8 %119, i8* %118, align 1
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %121 = and i32 %113, 254
  %122 = call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %120, align 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %126, align 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %128 = icmp eq i32 %113, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %127, align 1
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %131 = lshr i32 %113, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %130, align 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %134 = zext i1 %116 to i8
  store i8 %134, i8* %133, align 1
  store %struct.Memory* %loadMem_401df5, %struct.Memory** %MEMORY
  %loadMem_401df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %ESI.i535 = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i536
  %145 = sub i64 %144, 16
  %146 = load i32, i32* %ESI.i535
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* %PC.i534
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC.i534
  %150 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %150
  store %struct.Memory* %loadMem_401df8, %struct.Memory** %MEMORY
  %loadMem_401dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 9
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RSI.i532 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i533
  %161 = sub i64 %160, 10
  %162 = load i64, i64* %PC.i531
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i531
  %164 = inttoptr i64 %161 to i16*
  %165 = load i16, i16* %164
  %166 = sext i16 %165 to i64
  %167 = and i64 %166, 4294967295
  store i64 %167, i64* %RSI.i532, align 8
  store %struct.Memory* %loadMem_401dfb, %struct.Memory** %MEMORY
  %loadMem_401dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %173 to i32*
  %174 = load i32, i32* %ESI.i
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %PC.i530
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC.i530
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %178, align 1
  %179 = and i32 %174, 255
  %180 = call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %183, i8* %184, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %185, align 1
  %186 = icmp eq i32 %174, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1
  %189 = lshr i32 %174, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %174, 31
  %193 = xor i32 %189, %192
  %194 = add i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %197, align 1
  store %struct.Memory* %loadMem_401dff, %struct.Memory** %MEMORY
  %loadMem_401e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %200 to i64*
  %201 = load i64, i64* %PC.i529
  %202 = add i64 %201, 19
  %203 = load i64, i64* %PC.i529
  %204 = add i64 %203, 6
  %205 = load i64, i64* %PC.i529
  %206 = add i64 %205, 6
  store i64 %206, i64* %PC.i529
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %208 = load i8, i8* %207, align 1
  store i8 %208, i8* %BRANCH_TAKEN, align 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = icmp ne i8 %208, 0
  %211 = select i1 %210, i64 %202, i64 %204
  store i64 %211, i64* %209, align 8
  store %struct.Memory* %loadMem_401e02, %struct.Memory** %MEMORY
  %loadBr_401e02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e02 = icmp eq i8 %loadBr_401e02, 1
  br i1 %cmpBr_401e02, label %block_.L_401e15, label %block_401e08

block_401e08:                                     ; preds = %entry
  %loadMem_401e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i528
  %222 = sub i64 %221, 8
  %223 = load i64, i64* %PC.i526
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i526
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_401e08, %struct.Memory** %MEMORY
  %loadMem_401e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RAX.i524
  %237 = add i64 %236, 4
  %238 = load i64, i64* %PC.i523
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC.i523
  %240 = inttoptr i64 %237 to i32*
  %241 = load i32, i32* %240
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_401e0c, %struct.Memory** %MEMORY
  %loadMem_401e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RCX.i521
  %253 = load i64, i64* %RBP.i522
  %254 = sub i64 %253, 16
  %255 = load i64, i64* %PC.i520
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC.i520
  %257 = trunc i64 %252 to i32
  %258 = inttoptr i64 %254 to i32*
  %259 = load i32, i32* %258
  %260 = add i32 %259, %257
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RCX.i521, align 8
  %262 = icmp ult i32 %260, %257
  %263 = icmp ult i32 %260, %259
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %265, i8* %266, align 1
  %267 = and i32 %260, 255
  %268 = call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %271, i8* %272, align 1
  %273 = xor i32 %259, %257
  %274 = xor i32 %273, %260
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %277, i8* %278, align 1
  %279 = icmp eq i32 %260, 0
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %280, i8* %281, align 1
  %282 = lshr i32 %260, 31
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %283, i8* %284, align 1
  %285 = lshr i32 %257, 31
  %286 = lshr i32 %259, 31
  %287 = xor i32 %282, %285
  %288 = xor i32 %282, %286
  %289 = add i32 %287, %288
  %290 = icmp eq i32 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1
  store %struct.Memory* %loadMem_401e0f, %struct.Memory** %MEMORY
  %loadMem_401e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %ECX.i518 = bitcast %union.anon* %298 to i32*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 15
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %RBP.i519
  %303 = sub i64 %302, 16
  %304 = load i32, i32* %ECX.i518
  %305 = zext i32 %304 to i64
  %306 = load i64, i64* %PC.i517
  %307 = add i64 %306, 3
  store i64 %307, i64* %PC.i517
  %308 = inttoptr i64 %303 to i32*
  store i32 %304, i32* %308
  store %struct.Memory* %loadMem_401e12, %struct.Memory** %MEMORY
  br label %block_.L_401e15

block_.L_401e15:                                  ; preds = %block_401e08, %entry
  %loadMem_401e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 15
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %RBP.i516
  %316 = sub i64 %315, 16
  %317 = load i64, i64* %PC.i515
  %318 = add i64 %317, 7
  store i64 %318, i64* %PC.i515
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319
  %321 = sub i32 %320, 1024
  %322 = icmp ult i32 %320, 1024
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %323, i8* %324, align 1
  %325 = and i32 %321, 255
  %326 = call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %329, i8* %330, align 1
  %331 = xor i32 %320, 1024
  %332 = xor i32 %331, %321
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %335, i8* %336, align 1
  %337 = icmp eq i32 %321, 0
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %338, i8* %339, align 1
  %340 = lshr i32 %321, 31
  %341 = trunc i32 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %341, i8* %342, align 1
  %343 = lshr i32 %320, 31
  %344 = xor i32 %340, %343
  %345 = add i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %347, i8* %348, align 1
  store %struct.Memory* %loadMem_401e15, %struct.Memory** %MEMORY
  %loadMem_401e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %PC.i514
  %353 = add i64 %352, 354
  %354 = load i64, i64* %PC.i514
  %355 = add i64 %354, 6
  %356 = load i64, i64* %PC.i514
  %357 = add i64 %356, 6
  store i64 %357, i64* %PC.i514
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %359 = load i8, i8* %358, align 1
  store i8 %359, i8* %BRANCH_TAKEN, align 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %361 = icmp ne i8 %359, 0
  %362 = select i1 %361, i64 %353, i64 %355
  store i64 %362, i64* %360, align 8
  store %struct.Memory* %loadMem_401e1c, %struct.Memory** %MEMORY
  %loadBr_401e1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e1c = icmp eq i8 %loadBr_401e1c, 1
  br i1 %cmpBr_401e1c, label %block_.L_401f7e, label %block_401e22

block_401e22:                                     ; preds = %block_.L_401e15
  %loadMem_401e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 15
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %RBP.i513
  %373 = sub i64 %372, 8
  %374 = load i64, i64* %PC.i511
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC.i511
  %376 = inttoptr i64 %373 to i64*
  %377 = load i64, i64* %376
  store i64 %377, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_401e22, %struct.Memory** %MEMORY
  %loadMem_401e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RAX.i509
  %388 = add i64 %387, 8
  %389 = load i64, i64* %PC.i508
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC.i508
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_401e26, %struct.Memory** %MEMORY
  %loadMem_401e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RCX.i507
  %401 = load i64, i64* %PC.i506
  %402 = add i64 %401, 2
  store i64 %402, i64* %PC.i506
  %403 = trunc i64 %400 to i32
  %404 = shl i32 %403, 1
  %405 = icmp slt i32 %403, 0
  %406 = icmp slt i32 %404, 0
  %407 = xor i1 %405, %406
  %408 = zext i32 %404 to i64
  store i64 %408, i64* %RCX.i507, align 8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %410 = zext i1 %405 to i8
  store i8 %410, i8* %409, align 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %412 = and i32 %404, 254
  %413 = call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %411, align 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %417, align 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %419 = icmp eq i32 %404, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %418, align 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %422 = lshr i32 %404, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %421, align 1
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %425 = zext i1 %407 to i8
  store i8 %425, i8* %424, align 1
  store %struct.Memory* %loadMem_401e29, %struct.Memory** %MEMORY
  %loadMem_401e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 33
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 5
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %ECX.i504 = bitcast %union.anon* %431 to i32*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %RAX.i505
  %436 = add i64 %435, 8
  %437 = load i32, i32* %ECX.i504
  %438 = zext i32 %437 to i64
  %439 = load i64, i64* %PC.i503
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC.i503
  %441 = inttoptr i64 %436 to i32*
  store i32 %437, i32* %441
  store %struct.Memory* %loadMem_401e2c, %struct.Memory** %MEMORY
  %loadMem_401e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 15
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %450 to i64*
  %451 = load i64, i64* %RBP.i502
  %452 = sub i64 %451, 8
  %453 = load i64, i64* %PC.i500
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC.i500
  %455 = inttoptr i64 %452 to i64*
  %456 = load i64, i64* %455
  store i64 %456, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_401e2f, %struct.Memory** %MEMORY
  %loadMem_401e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 5
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %RAX.i498
  %467 = add i64 %466, 8
  %468 = load i64, i64* %PC.i497
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i497
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_401e33, %struct.Memory** %MEMORY
  %loadMem_401e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RCX.i496
  %480 = load i64, i64* %PC.i495
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC.i495
  %482 = or i64 1, %479
  %483 = trunc i64 %482 to i32
  %484 = and i64 %482, 4294967295
  store i64 %484, i64* %RCX.i496, align 8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %485, align 1
  %486 = and i32 %483, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %492, align 1
  %493 = lshr i32 %483, 31
  %494 = trunc i32 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %494, i8* %495, align 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %496, align 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %497, align 1
  store %struct.Memory* %loadMem_401e36, %struct.Memory** %MEMORY
  %loadMem_401e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %ECX.i493 = bitcast %union.anon* %503 to i32*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RAX.i494
  %508 = add i64 %507, 8
  %509 = load i32, i32* %ECX.i493
  %510 = zext i32 %509 to i64
  %511 = load i64, i64* %PC.i492
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC.i492
  %513 = inttoptr i64 %508 to i32*
  store i32 %509, i32* %513
  store %struct.Memory* %loadMem_401e39, %struct.Memory** %MEMORY
  %loadMem_401e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 15
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RBP.i491
  %524 = sub i64 %523, 8
  %525 = load i64, i64* %PC.i489
  %526 = add i64 %525, 4
  store i64 %526, i64* %PC.i489
  %527 = inttoptr i64 %524 to i64*
  %528 = load i64, i64* %527
  store i64 %528, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_401e3c, %struct.Memory** %MEMORY
  %loadMem_401e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 5
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RAX.i487
  %539 = add i64 %538, 12
  %540 = load i64, i64* %PC.i486
  %541 = add i64 %540, 3
  store i64 %541, i64* %PC.i486
  %542 = inttoptr i64 %539 to i32*
  %543 = load i32, i32* %542
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_401e40, %struct.Memory** %MEMORY
  %loadMem_401e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 5
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %RCX.i485
  %552 = load i64, i64* %PC.i484
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC.i484
  %554 = trunc i64 %551 to i32
  %555 = add i32 -1, %554
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RCX.i485, align 8
  %557 = icmp ult i32 %555, %554
  %558 = icmp ult i32 %555, -1
  %559 = or i1 %557, %558
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %560, i8* %561, align 1
  %562 = and i32 %555, 255
  %563 = call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %566, i8* %567, align 1
  %568 = xor i64 -1, %551
  %569 = trunc i64 %568 to i32
  %570 = xor i32 %569, %555
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %573, i8* %574, align 1
  %575 = icmp eq i32 %555, 0
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %576, i8* %577, align 1
  %578 = lshr i32 %555, 31
  %579 = trunc i32 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %579, i8* %580, align 1
  %581 = lshr i32 %554, 31
  %582 = xor i32 %578, %581
  %583 = xor i32 %578, 1
  %584 = add i32 %582, %583
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %586, i8* %587, align 1
  store %struct.Memory* %loadMem_401e43, %struct.Memory** %MEMORY
  %loadMem_401e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 5
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %ECX.i482 = bitcast %union.anon* %593 to i32*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RAX.i483
  %598 = add i64 %597, 12
  %599 = load i32, i32* %ECX.i482
  %600 = zext i32 %599 to i64
  %601 = load i64, i64* %PC.i481
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC.i481
  %603 = inttoptr i64 %598 to i32*
  store i32 %599, i32* %603
  store %struct.Memory* %loadMem_401e46, %struct.Memory** %MEMORY
  %loadMem_401e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 5
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %ECX.i480 = bitcast %union.anon* %609 to i32*
  %610 = load i32, i32* %ECX.i480
  %611 = zext i32 %610 to i64
  %612 = load i64, i64* %PC.i479
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC.i479
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %614, align 1
  %615 = and i32 %610, 255
  %616 = call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %619, i8* %620, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %621, align 1
  %622 = icmp eq i32 %610, 0
  %623 = zext i1 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %623, i8* %624, align 1
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %626, i8* %627, align 1
  %628 = lshr i32 %610, 31
  %629 = xor i32 %625, %628
  %630 = add i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %632, i8* %633, align 1
  store %struct.Memory* %loadMem_401e49, %struct.Memory** %MEMORY
  %loadMem_401e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %PC.i478
  %638 = add i64 %637, 107
  %639 = load i64, i64* %PC.i478
  %640 = add i64 %639, 6
  %641 = load i64, i64* %PC.i478
  %642 = add i64 %641, 6
  store i64 %642, i64* %PC.i478
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %644 = load i8, i8* %643, align 1
  %645 = icmp eq i8 %644, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %BRANCH_TAKEN, align 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %648 = select i1 %645, i64 %638, i64 %640
  store i64 %648, i64* %647, align 8
  store %struct.Memory* %loadMem_401e4c, %struct.Memory** %MEMORY
  %loadBr_401e4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e4c = icmp eq i8 %loadBr_401e4c, 1
  br i1 %cmpBr_401e4c, label %block_.L_401eb7, label %block_401e52

block_401e52:                                     ; preds = %block_401e22
  %loadMem_401e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %657 to i64*
  %658 = load i64, i64* %RBP.i477
  %659 = sub i64 %658, 8
  %660 = load i64, i64* %PC.i475
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC.i475
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662
  store i64 %663, i64* %RAX.i476, align 8
  store %struct.Memory* %loadMem_401e52, %struct.Memory** %MEMORY
  %loadMem_401e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 1
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %672 to i64*
  %673 = load i64, i64* %RAX.i473
  %674 = add i64 %673, 8
  %675 = load i64, i64* %PC.i472
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC.i472
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RCX.i474, align 8
  store %struct.Memory* %loadMem_401e56, %struct.Memory** %MEMORY
  %loadMem_401e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 5
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %686 = bitcast %union.anon* %685 to %struct.anon.2*
  %CL.i470 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %686, i32 0, i32 0
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 7
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %690 = bitcast %union.anon* %689 to %struct.anon.2*
  %DL.i471 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %690, i32 0, i32 0
  %691 = load i8, i8* %CL.i470
  %692 = zext i8 %691 to i64
  %693 = load i64, i64* %PC.i469
  %694 = add i64 %693, 2
  store i64 %694, i64* %PC.i469
  store i8 %691, i8* %DL.i471, align 1
  store %struct.Memory* %loadMem_401e59, %struct.Memory** %MEMORY
  %loadMem_401e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i468
  %705 = sub i64 %704, 8
  %706 = load i64, i64* %PC.i466
  %707 = add i64 %706, 4
  store i64 %707, i64* %PC.i466
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708
  store i64 %709, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_401e5b, %struct.Memory** %MEMORY
  %loadMem_401e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RAX.i465
  %717 = add i64 %716, 24
  %718 = load i64, i64* %PC.i464
  %719 = add i64 %718, 4
  store i64 %719, i64* %PC.i464
  %720 = inttoptr i64 %717 to i64*
  %721 = load i64, i64* %720
  store i64 %721, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_401e5f, %struct.Memory** %MEMORY
  %loadMem_401e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 9
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RSI.i462 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %RBP.i463
  %732 = sub i64 %731, 8
  %733 = load i64, i64* %PC.i461
  %734 = add i64 %733, 4
  store i64 %734, i64* %PC.i461
  %735 = inttoptr i64 %732 to i64*
  %736 = load i64, i64* %735
  store i64 %736, i64* %RSI.i462, align 8
  store %struct.Memory* %loadMem_401e63, %struct.Memory** %MEMORY
  %loadMem_401e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 9
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RSI.i460 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RSI.i460
  %744 = add i64 %743, 32
  %745 = load i64, i64* %PC.i459
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC.i459
  %747 = inttoptr i64 %744 to i64*
  %748 = load i64, i64* %747
  store i64 %748, i64* %RSI.i460, align 8
  store %struct.Memory* %loadMem_401e67, %struct.Memory** %MEMORY
  %loadMem_401e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 5
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 9
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RSI.i458 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %RSI.i458
  %759 = load i64, i64* %PC.i456
  %760 = add i64 %759, 2
  store i64 %760, i64* %PC.i456
  %761 = inttoptr i64 %758 to i32*
  %762 = load i32, i32* %761
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_401e6b, %struct.Memory** %MEMORY
  %loadMem_401e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 5
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %ECX.i454 = bitcast %union.anon* %769 to i32*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 11
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RDI.i455 = bitcast %union.anon* %772 to i64*
  %773 = load i32, i32* %ECX.i454
  %774 = zext i32 %773 to i64
  %775 = load i64, i64* %PC.i453
  %776 = add i64 %775, 2
  store i64 %776, i64* %PC.i453
  %777 = and i64 %774, 4294967295
  store i64 %777, i64* %RDI.i455, align 8
  store %struct.Memory* %loadMem_401e6d, %struct.Memory** %MEMORY
  %loadMem_401e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 11
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RDI.i452 = bitcast %union.anon* %783 to i64*
  %784 = load i64, i64* %RDI.i452
  %785 = load i64, i64* %PC.i451
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC.i451
  %787 = trunc i64 %784 to i32
  %788 = add i32 1, %787
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RDI.i452, align 8
  %790 = icmp ult i32 %788, %787
  %791 = icmp ult i32 %788, 1
  %792 = or i1 %790, %791
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %793, i8* %794, align 1
  %795 = and i32 %788, 255
  %796 = call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %799, i8* %800, align 1
  %801 = xor i64 1, %784
  %802 = trunc i64 %801 to i32
  %803 = xor i32 %802, %788
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %806, i8* %807, align 1
  %808 = icmp eq i32 %788, 0
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %809, i8* %810, align 1
  %811 = lshr i32 %788, 31
  %812 = trunc i32 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %812, i8* %813, align 1
  %814 = lshr i32 %787, 31
  %815 = xor i32 %811, %814
  %816 = add i32 %815, %811
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %818, i8* %819, align 1
  store %struct.Memory* %loadMem_401e6f, %struct.Memory** %MEMORY
  %loadMem_401e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 11
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %EDI.i449 = bitcast %union.anon* %825 to i32*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 9
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RSI.i450 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RSI.i450
  %830 = load i32, i32* %EDI.i449
  %831 = zext i32 %830 to i64
  %832 = load i64, i64* %PC.i448
  %833 = add i64 %832, 2
  store i64 %833, i64* %PC.i448
  %834 = inttoptr i64 %829 to i32*
  store i32 %830, i32* %834
  store %struct.Memory* %loadMem_401e72, %struct.Memory** %MEMORY
  %loadMem_401e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 5
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %ECX.i446 = bitcast %union.anon* %840 to i32*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 9
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RSI.i447 = bitcast %union.anon* %843 to i64*
  %844 = load i32, i32* %ECX.i446
  %845 = zext i32 %844 to i64
  %846 = load i64, i64* %PC.i445
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC.i445
  %848 = shl i64 %845, 32
  %849 = ashr exact i64 %848, 32
  store i64 %849, i64* %RSI.i447, align 8
  store %struct.Memory* %loadMem_401e74, %struct.Memory** %MEMORY
  %loadMem_401e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 7
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %856 = bitcast %union.anon* %855 to %struct.anon.2*
  %DL.i442 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %856, i32 0, i32 0
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 1
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 9
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RSI.i444 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %RAX.i443
  %864 = load i64, i64* %RSI.i444
  %865 = add i64 %864, %863
  %866 = load i8, i8* %DL.i442
  %867 = zext i8 %866 to i64
  %868 = load i64, i64* %PC.i441
  %869 = add i64 %868, 3
  store i64 %869, i64* %PC.i441
  %870 = inttoptr i64 %865 to i8*
  store i8 %866, i8* %870
  store %struct.Memory* %loadMem_401e77, %struct.Memory** %MEMORY
  %loadMem_401e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 15
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RBP.i440
  %881 = sub i64 %880, 8
  %882 = load i64, i64* %PC.i438
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC.i438
  %884 = inttoptr i64 %881 to i64*
  %885 = load i64, i64* %884
  store i64 %885, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_401e7a, %struct.Memory** %MEMORY
  %loadMem_401e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RAX.i437
  %893 = add i64 %892, 12
  %894 = load i64, i64* %PC.i436
  %895 = add i64 %894, 7
  store i64 %895, i64* %PC.i436
  %896 = inttoptr i64 %893 to i32*
  store i32 8, i32* %896
  store %struct.Memory* %loadMem_401e7e, %struct.Memory** %MEMORY
  br label %block_.L_401e85

block_.L_401e85:                                  ; preds = %block_401e93, %block_401e52
  %loadMem_401e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 1
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %RBP.i435
  %907 = sub i64 %906, 8
  %908 = load i64, i64* %PC.i433
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC.i433
  %910 = inttoptr i64 %907 to i64*
  %911 = load i64, i64* %910
  store i64 %911, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_401e85, %struct.Memory** %MEMORY
  %loadMem_401e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 1
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %RAX.i432
  %919 = add i64 %918, 80
  %920 = load i64, i64* %PC.i431
  %921 = add i64 %920, 4
  store i64 %921, i64* %PC.i431
  %922 = inttoptr i64 %919 to i32*
  %923 = load i32, i32* %922
  %924 = sub i32 %923, 7
  %925 = icmp ult i32 %923, 7
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %926, i8* %927, align 1
  %928 = and i32 %924, 255
  %929 = call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %932, i8* %933, align 1
  %934 = xor i32 %923, 7
  %935 = xor i32 %934, %924
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %938, i8* %939, align 1
  %940 = icmp eq i32 %924, 0
  %941 = zext i1 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %941, i8* %942, align 1
  %943 = lshr i32 %924, 31
  %944 = trunc i32 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %944, i8* %945, align 1
  %946 = lshr i32 %923, 31
  %947 = xor i32 %943, %946
  %948 = add i32 %947, %946
  %949 = icmp eq i32 %948, 2
  %950 = zext i1 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %950, i8* %951, align 1
  store %struct.Memory* %loadMem_401e89, %struct.Memory** %MEMORY
  %loadMem_401e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %PC.i430
  %956 = add i64 %955, 37
  %957 = load i64, i64* %PC.i430
  %958 = add i64 %957, 6
  %959 = load i64, i64* %PC.i430
  %960 = add i64 %959, 6
  store i64 %960, i64* %PC.i430
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %962 = load i8, i8* %961, align 1
  %963 = icmp ne i8 %962, 0
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %965 = load i8, i8* %964, align 1
  %966 = icmp ne i8 %965, 0
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %968 = load i8, i8* %967, align 1
  %969 = icmp ne i8 %968, 0
  %970 = xor i1 %966, %969
  %971 = or i1 %963, %970
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %BRANCH_TAKEN, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %974 = select i1 %971, i64 %956, i64 %958
  store i64 %974, i64* %973, align 8
  store %struct.Memory* %loadMem_401e8d, %struct.Memory** %MEMORY
  %loadBr_401e8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e8d = icmp eq i8 %loadBr_401e8d, 1
  br i1 %cmpBr_401e8d, label %block_.L_401eb2, label %block_401e93

block_401e93:                                     ; preds = %block_.L_401e85
  %loadMem_401e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i429
  %985 = sub i64 %984, 8
  %986 = load i64, i64* %PC.i427
  %987 = add i64 %986, 4
  store i64 %987, i64* %PC.i427
  %988 = inttoptr i64 %985 to i64*
  %989 = load i64, i64* %988
  store i64 %989, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_401e93, %struct.Memory** %MEMORY
  %loadMem_401e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 1
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %998 to i64*
  %999 = load i64, i64* %RAX.i425
  %1000 = add i64 %999, 80
  %1001 = load i64, i64* %PC.i424
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC.i424
  %1003 = inttoptr i64 %1000 to i32*
  %1004 = load i32, i32* %1003
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RCX.i426, align 8
  store %struct.Memory* %loadMem_401e97, %struct.Memory** %MEMORY
  %loadMem_401e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 5
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RCX.i423
  %1013 = load i64, i64* %PC.i422
  %1014 = add i64 %1013, 3
  store i64 %1014, i64* %PC.i422
  %1015 = trunc i64 %1012 to i32
  %1016 = sub i32 %1015, 8
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RCX.i423, align 8
  %1018 = icmp ult i32 %1015, 8
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1019, i8* %1020, align 1
  %1021 = and i32 %1016, 255
  %1022 = call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1025, i8* %1026, align 1
  %1027 = xor i64 8, %1012
  %1028 = trunc i64 %1027 to i32
  %1029 = xor i32 %1028, %1016
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1032, i8* %1033, align 1
  %1034 = icmp eq i32 %1016, 0
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i32 %1016, 31
  %1038 = trunc i32 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1038, i8* %1039, align 1
  %1040 = lshr i32 %1015, 31
  %1041 = xor i32 %1037, %1040
  %1042 = add i32 %1041, %1040
  %1043 = icmp eq i32 %1042, 2
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1044, i8* %1045, align 1
  store %struct.Memory* %loadMem_401e9a, %struct.Memory** %MEMORY
  %loadMem_401e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 5
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %ECX.i420 = bitcast %union.anon* %1051 to i32*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 1
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RAX.i421
  %1056 = add i64 %1055, 80
  %1057 = load i32, i32* %ECX.i420
  %1058 = zext i32 %1057 to i64
  %1059 = load i64, i64* %PC.i419
  %1060 = add i64 %1059, 3
  store i64 %1060, i64* %PC.i419
  %1061 = inttoptr i64 %1056 to i32*
  store i32 %1057, i32* %1061
  store %struct.Memory* %loadMem_401e9d, %struct.Memory** %MEMORY
  %loadMem_401ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 33
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 1
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 15
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1070 to i64*
  %1071 = load i64, i64* %RBP.i418
  %1072 = sub i64 %1071, 8
  %1073 = load i64, i64* %PC.i416
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %PC.i416
  %1075 = inttoptr i64 %1072 to i64*
  %1076 = load i64, i64* %1075
  store i64 %1076, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_401ea0, %struct.Memory** %MEMORY
  %loadMem_401ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 1
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 5
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %1085 to i64*
  %1086 = load i64, i64* %RAX.i414
  %1087 = add i64 %1086, 88
  %1088 = load i64, i64* %PC.i413
  %1089 = add i64 %1088, 3
  store i64 %1089, i64* %PC.i413
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_401ea4, %struct.Memory** %MEMORY
  %loadMem_401ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 5
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %RCX.i412
  %1100 = load i64, i64* %PC.i411
  %1101 = add i64 %1100, 3
  store i64 %1101, i64* %PC.i411
  %1102 = trunc i64 %1099 to i32
  %1103 = add i32 1, %1102
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RCX.i412, align 8
  %1105 = icmp ult i32 %1103, %1102
  %1106 = icmp ult i32 %1103, 1
  %1107 = or i1 %1105, %1106
  %1108 = zext i1 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1108, i8* %1109, align 1
  %1110 = and i32 %1103, 255
  %1111 = call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1114, i8* %1115, align 1
  %1116 = xor i64 1, %1099
  %1117 = trunc i64 %1116 to i32
  %1118 = xor i32 %1117, %1103
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1121, i8* %1122, align 1
  %1123 = icmp eq i32 %1103, 0
  %1124 = zext i1 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1124, i8* %1125, align 1
  %1126 = lshr i32 %1103, 31
  %1127 = trunc i32 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1127, i8* %1128, align 1
  %1129 = lshr i32 %1102, 31
  %1130 = xor i32 %1126, %1129
  %1131 = add i32 %1130, %1126
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1133, i8* %1134, align 1
  store %struct.Memory* %loadMem_401ea7, %struct.Memory** %MEMORY
  %loadMem_401eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 5
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %ECX.i409 = bitcast %union.anon* %1140 to i32*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 1
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RAX.i410
  %1145 = add i64 %1144, 88
  %1146 = load i32, i32* %ECX.i409
  %1147 = zext i32 %1146 to i64
  %1148 = load i64, i64* %PC.i408
  %1149 = add i64 %1148, 3
  store i64 %1149, i64* %PC.i408
  %1150 = inttoptr i64 %1145 to i32*
  store i32 %1146, i32* %1150
  store %struct.Memory* %loadMem_401eaa, %struct.Memory** %MEMORY
  %loadMem_401ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %PC.i407
  %1155 = add i64 %1154, -40
  %1156 = load i64, i64* %PC.i407
  %1157 = add i64 %1156, 5
  store i64 %1157, i64* %PC.i407
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1155, i64* %1158, align 8
  store %struct.Memory* %loadMem_401ead, %struct.Memory** %MEMORY
  br label %block_.L_401e85

block_.L_401eb2:                                  ; preds = %block_.L_401e85
  %loadMem_401eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %PC.i406
  %1163 = add i64 %1162, 5
  %1164 = load i64, i64* %PC.i406
  %1165 = add i64 %1164, 5
  store i64 %1165, i64* %PC.i406
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1163, i64* %1166, align 8
  store %struct.Memory* %loadMem_401eb2, %struct.Memory** %MEMORY
  br label %block_.L_401eb7

block_.L_401eb7:                                  ; preds = %block_.L_401eb2, %block_401e22
  %loadMem_401eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %PC.i405
  %1171 = add i64 %1170, 5
  %1172 = load i64, i64* %PC.i405
  %1173 = add i64 %1172, 5
  store i64 %1173, i64* %PC.i405
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1171, i64* %1174, align 8
  store %struct.Memory* %loadMem_401eb7, %struct.Memory** %MEMORY
  br label %block_.L_401ebc

block_.L_401ebc:                                  ; preds = %block_.L_401f69, %block_.L_401eb7
  %loadMem_401ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 15
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1183 to i64*
  %1184 = load i64, i64* %RBP.i404
  %1185 = sub i64 %1184, 8
  %1186 = load i64, i64* %PC.i402
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC.i402
  %1188 = inttoptr i64 %1185 to i64*
  %1189 = load i64, i64* %1188
  store i64 %1189, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_401ebc, %struct.Memory** %MEMORY
  %loadMem_401ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 1
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RAX.i401
  %1197 = add i64 %1196, 16
  %1198 = load i64, i64* %PC.i400
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %PC.i400
  %1200 = inttoptr i64 %1197 to i32*
  %1201 = load i32, i32* %1200
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1202, align 1
  %1203 = and i32 %1201, 255
  %1204 = call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1207, i8* %1208, align 1
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1209, align 1
  %1210 = icmp eq i32 %1201, 0
  %1211 = zext i1 %1210 to i8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1211, i8* %1212, align 1
  %1213 = lshr i32 %1201, 31
  %1214 = trunc i32 %1213 to i8
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1214, i8* %1215, align 1
  %1216 = lshr i32 %1201, 31
  %1217 = xor i32 %1213, %1216
  %1218 = add i32 %1217, %1216
  %1219 = icmp eq i32 %1218, 2
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1220, i8* %1221, align 1
  store %struct.Memory* %loadMem_401ec0, %struct.Memory** %MEMORY
  %loadMem_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1224 to i64*
  %1225 = load i64, i64* %PC.i399
  %1226 = add i64 %1225, 170
  %1227 = load i64, i64* %PC.i399
  %1228 = add i64 %1227, 6
  %1229 = load i64, i64* %PC.i399
  %1230 = add i64 %1229, 6
  store i64 %1230, i64* %PC.i399
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1232 = load i8, i8* %1231, align 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1234 = load i8, i8* %1233, align 1
  %1235 = or i8 %1234, %1232
  %1236 = icmp ne i8 %1235, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %BRANCH_TAKEN, align 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1239 = select i1 %1236, i64 %1226, i64 %1228
  store i64 %1239, i64* %1238, align 8
  store %struct.Memory* %loadMem_401ec4, %struct.Memory** %MEMORY
  %loadBr_401ec4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ec4 = icmp eq i8 %loadBr_401ec4, 1
  br i1 %cmpBr_401ec4, label %block_.L_401f6e, label %block_401eca

block_401eca:                                     ; preds = %block_.L_401ebc
  %loadMem_401eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 1
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 15
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1248 to i64*
  %1249 = load i64, i64* %RBP.i398
  %1250 = sub i64 %1249, 8
  %1251 = load i64, i64* %PC.i396
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %PC.i396
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253
  store i64 %1254, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_401eca, %struct.Memory** %MEMORY
  %loadMem_401ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 5
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RAX.i394
  %1265 = add i64 %1264, 16
  %1266 = load i64, i64* %PC.i393
  %1267 = add i64 %1266, 3
  store i64 %1267, i64* %PC.i393
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_401ece, %struct.Memory** %MEMORY
  %loadMem_401ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 5
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RCX.i392
  %1278 = load i64, i64* %PC.i391
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC.i391
  %1280 = trunc i64 %1277 to i32
  %1281 = add i32 -1, %1280
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RCX.i392, align 8
  %1283 = icmp ult i32 %1281, %1280
  %1284 = icmp ult i32 %1281, -1
  %1285 = or i1 %1283, %1284
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1286, i8* %1287, align 1
  %1288 = and i32 %1281, 255
  %1289 = call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1292, i8* %1293, align 1
  %1294 = xor i64 -1, %1277
  %1295 = trunc i64 %1294 to i32
  %1296 = xor i32 %1295, %1281
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1299, i8* %1300, align 1
  %1301 = icmp eq i32 %1281, 0
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i32 %1281, 31
  %1305 = trunc i32 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1305, i8* %1306, align 1
  %1307 = lshr i32 %1280, 31
  %1308 = xor i32 %1304, %1307
  %1309 = xor i32 %1304, 1
  %1310 = add i32 %1308, %1309
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1312, i8* %1313, align 1
  store %struct.Memory* %loadMem_401ed1, %struct.Memory** %MEMORY
  %loadMem_401ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 5
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %ECX.i389 = bitcast %union.anon* %1319 to i32*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 1
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RAX.i390
  %1324 = add i64 %1323, 16
  %1325 = load i32, i32* %ECX.i389
  %1326 = zext i32 %1325 to i64
  %1327 = load i64, i64* %PC.i388
  %1328 = add i64 %1327, 3
  store i64 %1328, i64* %PC.i388
  %1329 = inttoptr i64 %1324 to i32*
  store i32 %1325, i32* %1329
  store %struct.Memory* %loadMem_401ed4, %struct.Memory** %MEMORY
  %loadMem_401ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 15
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RBP.i387
  %1340 = sub i64 %1339, 8
  %1341 = load i64, i64* %PC.i385
  %1342 = add i64 %1341, 4
  store i64 %1342, i64* %PC.i385
  %1343 = inttoptr i64 %1340 to i64*
  %1344 = load i64, i64* %1343
  store i64 %1344, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_401ed7, %struct.Memory** %MEMORY
  %loadMem_401edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 5
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RAX.i383
  %1355 = add i64 %1354, 8
  %1356 = load i64, i64* %PC.i382
  %1357 = add i64 %1356, 3
  store i64 %1357, i64* %PC.i382
  %1358 = inttoptr i64 %1355 to i32*
  %1359 = load i32, i32* %1358
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_401edb, %struct.Memory** %MEMORY
  %loadMem_401ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 5
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RCX.i381
  %1368 = load i64, i64* %PC.i380
  %1369 = add i64 %1368, 2
  store i64 %1369, i64* %PC.i380
  %1370 = trunc i64 %1367 to i32
  %1371 = shl i32 %1370, 1
  %1372 = icmp slt i32 %1370, 0
  %1373 = icmp slt i32 %1371, 0
  %1374 = xor i1 %1372, %1373
  %1375 = zext i32 %1371 to i64
  store i64 %1375, i64* %RCX.i381, align 8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1377 = zext i1 %1372 to i8
  store i8 %1377, i8* %1376, align 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1379 = and i32 %1371, 254
  %1380 = call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %1378, align 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1384, align 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1386 = icmp eq i32 %1371, 0
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %1385, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1389 = lshr i32 %1371, 31
  %1390 = trunc i32 %1389 to i8
  store i8 %1390, i8* %1388, align 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1392 = zext i1 %1374 to i8
  store i8 %1392, i8* %1391, align 1
  store %struct.Memory* %loadMem_401ede, %struct.Memory** %MEMORY
  %loadMem_401ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 5
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %ECX.i378 = bitcast %union.anon* %1398 to i32*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 1
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %RAX.i379
  %1403 = add i64 %1402, 8
  %1404 = load i32, i32* %ECX.i378
  %1405 = zext i32 %1404 to i64
  %1406 = load i64, i64* %PC.i377
  %1407 = add i64 %1406, 3
  store i64 %1407, i64* %PC.i377
  %1408 = inttoptr i64 %1403 to i32*
  store i32 %1404, i32* %1408
  store %struct.Memory* %loadMem_401ee1, %struct.Memory** %MEMORY
  %loadMem_401ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 1
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 15
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RBP.i376
  %1419 = sub i64 %1418, 8
  %1420 = load i64, i64* %PC.i374
  %1421 = add i64 %1420, 4
  store i64 %1421, i64* %PC.i374
  %1422 = inttoptr i64 %1419 to i64*
  %1423 = load i64, i64* %1422
  store i64 %1423, i64* %RAX.i375, align 8
  store %struct.Memory* %loadMem_401ee4, %struct.Memory** %MEMORY
  %loadMem_401ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 5
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RAX.i372
  %1434 = add i64 %1433, 8
  %1435 = load i64, i64* %PC.i371
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %PC.i371
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RCX.i373, align 8
  store %struct.Memory* %loadMem_401ee8, %struct.Memory** %MEMORY
  %loadMem_401eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 5
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %ECX.i369 = bitcast %union.anon* %1445 to i32*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 1
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %RAX.i370
  %1450 = add i64 %1449, 8
  %1451 = load i32, i32* %ECX.i369
  %1452 = zext i32 %1451 to i64
  %1453 = load i64, i64* %PC.i368
  %1454 = add i64 %1453, 3
  store i64 %1454, i64* %PC.i368
  %1455 = inttoptr i64 %1450 to i32*
  store i32 %1451, i32* %1455
  store %struct.Memory* %loadMem_401eeb, %struct.Memory** %MEMORY
  %loadMem_401eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 15
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RBP.i367
  %1466 = sub i64 %1465, 8
  %1467 = load i64, i64* %PC.i365
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %PC.i365
  %1469 = inttoptr i64 %1466 to i64*
  %1470 = load i64, i64* %1469
  store i64 %1470, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_401eee, %struct.Memory** %MEMORY
  %loadMem_401ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 5
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RAX.i363
  %1481 = add i64 %1480, 12
  %1482 = load i64, i64* %PC.i362
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC.i362
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RCX.i364, align 8
  store %struct.Memory* %loadMem_401ef2, %struct.Memory** %MEMORY
  %loadMem_401ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 5
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %RCX.i361
  %1494 = load i64, i64* %PC.i360
  %1495 = add i64 %1494, 3
  store i64 %1495, i64* %PC.i360
  %1496 = trunc i64 %1493 to i32
  %1497 = add i32 -1, %1496
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RCX.i361, align 8
  %1499 = icmp ult i32 %1497, %1496
  %1500 = icmp ult i32 %1497, -1
  %1501 = or i1 %1499, %1500
  %1502 = zext i1 %1501 to i8
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1502, i8* %1503, align 1
  %1504 = and i32 %1497, 255
  %1505 = call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1508, i8* %1509, align 1
  %1510 = xor i64 -1, %1493
  %1511 = trunc i64 %1510 to i32
  %1512 = xor i32 %1511, %1497
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1515, i8* %1516, align 1
  %1517 = icmp eq i32 %1497, 0
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1518, i8* %1519, align 1
  %1520 = lshr i32 %1497, 31
  %1521 = trunc i32 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1521, i8* %1522, align 1
  %1523 = lshr i32 %1496, 31
  %1524 = xor i32 %1520, %1523
  %1525 = xor i32 %1520, 1
  %1526 = add i32 %1524, %1525
  %1527 = icmp eq i32 %1526, 2
  %1528 = zext i1 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1528, i8* %1529, align 1
  store %struct.Memory* %loadMem_401ef5, %struct.Memory** %MEMORY
  %loadMem_401ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 5
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %ECX.i358 = bitcast %union.anon* %1535 to i32*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 1
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %1538 to i64*
  %1539 = load i64, i64* %RAX.i359
  %1540 = add i64 %1539, 12
  %1541 = load i32, i32* %ECX.i358
  %1542 = zext i32 %1541 to i64
  %1543 = load i64, i64* %PC.i357
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC.i357
  %1545 = inttoptr i64 %1540 to i32*
  store i32 %1541, i32* %1545
  store %struct.Memory* %loadMem_401ef8, %struct.Memory** %MEMORY
  %loadMem_401efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 5
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %1551 to i32*
  %1552 = load i32, i32* %ECX.i356
  %1553 = zext i32 %1552 to i64
  %1554 = load i64, i64* %PC.i355
  %1555 = add i64 %1554, 3
  store i64 %1555, i64* %PC.i355
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1556, align 1
  %1557 = and i32 %1552, 255
  %1558 = call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1561, i8* %1562, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1563, align 1
  %1564 = icmp eq i32 %1552, 0
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1565, i8* %1566, align 1
  %1567 = lshr i32 %1552, 31
  %1568 = trunc i32 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1568, i8* %1569, align 1
  %1570 = lshr i32 %1552, 31
  %1571 = xor i32 %1567, %1570
  %1572 = add i32 %1571, %1570
  %1573 = icmp eq i32 %1572, 2
  %1574 = zext i1 %1573 to i8
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1574, i8* %1575, align 1
  store %struct.Memory* %loadMem_401efb, %struct.Memory** %MEMORY
  %loadMem_401efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %PC.i354
  %1580 = add i64 %1579, 107
  %1581 = load i64, i64* %PC.i354
  %1582 = add i64 %1581, 6
  %1583 = load i64, i64* %PC.i354
  %1584 = add i64 %1583, 6
  store i64 %1584, i64* %PC.i354
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1586 = load i8, i8* %1585, align 1
  %1587 = icmp eq i8 %1586, 0
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %BRANCH_TAKEN, align 1
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1590 = select i1 %1587, i64 %1580, i64 %1582
  store i64 %1590, i64* %1589, align 8
  store %struct.Memory* %loadMem_401efe, %struct.Memory** %MEMORY
  %loadBr_401efe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401efe = icmp eq i8 %loadBr_401efe, 1
  br i1 %cmpBr_401efe, label %block_.L_401f69, label %block_401f04

block_401f04:                                     ; preds = %block_401eca
  %loadMem_401f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 1
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 15
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %RBP.i353
  %1601 = sub i64 %1600, 8
  %1602 = load i64, i64* %PC.i351
  %1603 = add i64 %1602, 4
  store i64 %1603, i64* %PC.i351
  %1604 = inttoptr i64 %1601 to i64*
  %1605 = load i64, i64* %1604
  store i64 %1605, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_401f04, %struct.Memory** %MEMORY
  %loadMem_401f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 1
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 5
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %RAX.i349
  %1616 = add i64 %1615, 8
  %1617 = load i64, i64* %PC.i348
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %PC.i348
  %1619 = inttoptr i64 %1616 to i32*
  %1620 = load i32, i32* %1619
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_401f08, %struct.Memory** %MEMORY
  %loadMem_401f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 5
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %1628 = bitcast %union.anon* %1627 to %struct.anon.2*
  %CL.i346 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1628, i32 0, i32 0
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 7
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %1632 = bitcast %union.anon* %1631 to %struct.anon.2*
  %DL.i347 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1632, i32 0, i32 0
  %1633 = load i8, i8* %CL.i346
  %1634 = zext i8 %1633 to i64
  %1635 = load i64, i64* %PC.i345
  %1636 = add i64 %1635, 2
  store i64 %1636, i64* %PC.i345
  store i8 %1633, i8* %DL.i347, align 1
  store %struct.Memory* %loadMem_401f0b, %struct.Memory** %MEMORY
  %loadMem_401f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 1
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 15
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RBP.i344
  %1647 = sub i64 %1646, 8
  %1648 = load i64, i64* %PC.i342
  %1649 = add i64 %1648, 4
  store i64 %1649, i64* %PC.i342
  %1650 = inttoptr i64 %1647 to i64*
  %1651 = load i64, i64* %1650
  store i64 %1651, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_401f0d, %struct.Memory** %MEMORY
  %loadMem_401f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 1
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RAX.i341
  %1659 = add i64 %1658, 24
  %1660 = load i64, i64* %PC.i340
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %PC.i340
  %1662 = inttoptr i64 %1659 to i64*
  %1663 = load i64, i64* %1662
  store i64 %1663, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_401f11, %struct.Memory** %MEMORY
  %loadMem_401f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 9
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RSI.i338 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 15
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RBP.i339
  %1674 = sub i64 %1673, 8
  %1675 = load i64, i64* %PC.i337
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %PC.i337
  %1677 = inttoptr i64 %1674 to i64*
  %1678 = load i64, i64* %1677
  store i64 %1678, i64* %RSI.i338, align 8
  store %struct.Memory* %loadMem_401f15, %struct.Memory** %MEMORY
  %loadMem_401f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 9
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RSI.i336 = bitcast %union.anon* %1684 to i64*
  %1685 = load i64, i64* %RSI.i336
  %1686 = add i64 %1685, 32
  %1687 = load i64, i64* %PC.i335
  %1688 = add i64 %1687, 4
  store i64 %1688, i64* %PC.i335
  %1689 = inttoptr i64 %1686 to i64*
  %1690 = load i64, i64* %1689
  store i64 %1690, i64* %RSI.i336, align 8
  store %struct.Memory* %loadMem_401f19, %struct.Memory** %MEMORY
  %loadMem_401f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 5
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 9
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RSI.i334 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RSI.i334
  %1701 = load i64, i64* %PC.i332
  %1702 = add i64 %1701, 2
  store i64 %1702, i64* %PC.i332
  %1703 = inttoptr i64 %1700 to i32*
  %1704 = load i32, i32* %1703
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_401f1d, %struct.Memory** %MEMORY
  %loadMem_401f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 5
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %ECX.i330 = bitcast %union.anon* %1711 to i32*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 11
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RDI.i331 = bitcast %union.anon* %1714 to i64*
  %1715 = load i32, i32* %ECX.i330
  %1716 = zext i32 %1715 to i64
  %1717 = load i64, i64* %PC.i329
  %1718 = add i64 %1717, 2
  store i64 %1718, i64* %PC.i329
  %1719 = and i64 %1716, 4294967295
  store i64 %1719, i64* %RDI.i331, align 8
  store %struct.Memory* %loadMem_401f1f, %struct.Memory** %MEMORY
  %loadMem_401f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 11
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RDI.i328 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %RDI.i328
  %1727 = load i64, i64* %PC.i327
  %1728 = add i64 %1727, 3
  store i64 %1728, i64* %PC.i327
  %1729 = trunc i64 %1726 to i32
  %1730 = add i32 1, %1729
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RDI.i328, align 8
  %1732 = icmp ult i32 %1730, %1729
  %1733 = icmp ult i32 %1730, 1
  %1734 = or i1 %1732, %1733
  %1735 = zext i1 %1734 to i8
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1735, i8* %1736, align 1
  %1737 = and i32 %1730, 255
  %1738 = call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1741, i8* %1742, align 1
  %1743 = xor i64 1, %1726
  %1744 = trunc i64 %1743 to i32
  %1745 = xor i32 %1744, %1730
  %1746 = lshr i32 %1745, 4
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1748, i8* %1749, align 1
  %1750 = icmp eq i32 %1730, 0
  %1751 = zext i1 %1750 to i8
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1751, i8* %1752, align 1
  %1753 = lshr i32 %1730, 31
  %1754 = trunc i32 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1754, i8* %1755, align 1
  %1756 = lshr i32 %1729, 31
  %1757 = xor i32 %1753, %1756
  %1758 = add i32 %1757, %1753
  %1759 = icmp eq i32 %1758, 2
  %1760 = zext i1 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1760, i8* %1761, align 1
  store %struct.Memory* %loadMem_401f21, %struct.Memory** %MEMORY
  %loadMem_401f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 11
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %EDI.i325 = bitcast %union.anon* %1767 to i32*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 9
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RSI.i326 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RSI.i326
  %1772 = load i32, i32* %EDI.i325
  %1773 = zext i32 %1772 to i64
  %1774 = load i64, i64* %PC.i324
  %1775 = add i64 %1774, 2
  store i64 %1775, i64* %PC.i324
  %1776 = inttoptr i64 %1771 to i32*
  store i32 %1772, i32* %1776
  store %struct.Memory* %loadMem_401f24, %struct.Memory** %MEMORY
  %loadMem_401f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 5
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %ECX.i322 = bitcast %union.anon* %1782 to i32*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 9
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RSI.i323 = bitcast %union.anon* %1785 to i64*
  %1786 = load i32, i32* %ECX.i322
  %1787 = zext i32 %1786 to i64
  %1788 = load i64, i64* %PC.i321
  %1789 = add i64 %1788, 3
  store i64 %1789, i64* %PC.i321
  %1790 = shl i64 %1787, 32
  %1791 = ashr exact i64 %1790, 32
  store i64 %1791, i64* %RSI.i323, align 8
  store %struct.Memory* %loadMem_401f26, %struct.Memory** %MEMORY
  %loadMem_401f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 7
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %1798 = bitcast %union.anon* %1797 to %struct.anon.2*
  %DL.i318 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1798, i32 0, i32 0
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 1
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 9
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RSI.i320 = bitcast %union.anon* %1804 to i64*
  %1805 = load i64, i64* %RAX.i319
  %1806 = load i64, i64* %RSI.i320
  %1807 = add i64 %1806, %1805
  %1808 = load i8, i8* %DL.i318
  %1809 = zext i8 %1808 to i64
  %1810 = load i64, i64* %PC.i317
  %1811 = add i64 %1810, 3
  store i64 %1811, i64* %PC.i317
  %1812 = inttoptr i64 %1807 to i8*
  store i8 %1808, i8* %1812
  store %struct.Memory* %loadMem_401f29, %struct.Memory** %MEMORY
  %loadMem_401f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 1
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 15
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %1821 to i64*
  %1822 = load i64, i64* %RBP.i316
  %1823 = sub i64 %1822, 8
  %1824 = load i64, i64* %PC.i314
  %1825 = add i64 %1824, 4
  store i64 %1825, i64* %PC.i314
  %1826 = inttoptr i64 %1823 to i64*
  %1827 = load i64, i64* %1826
  store i64 %1827, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_401f2c, %struct.Memory** %MEMORY
  %loadMem_401f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 1
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %RAX.i313
  %1835 = add i64 %1834, 12
  %1836 = load i64, i64* %PC.i312
  %1837 = add i64 %1836, 7
  store i64 %1837, i64* %PC.i312
  %1838 = inttoptr i64 %1835 to i32*
  store i32 8, i32* %1838
  store %struct.Memory* %loadMem_401f30, %struct.Memory** %MEMORY
  br label %block_.L_401f37

block_.L_401f37:                                  ; preds = %block_401f45, %block_401f04
  %loadMem_401f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 1
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 15
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1847 to i64*
  %1848 = load i64, i64* %RBP.i311
  %1849 = sub i64 %1848, 8
  %1850 = load i64, i64* %PC.i309
  %1851 = add i64 %1850, 4
  store i64 %1851, i64* %PC.i309
  %1852 = inttoptr i64 %1849 to i64*
  %1853 = load i64, i64* %1852
  store i64 %1853, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_401f37, %struct.Memory** %MEMORY
  %loadMem_401f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 1
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RAX.i308
  %1861 = add i64 %1860, 80
  %1862 = load i64, i64* %PC.i307
  %1863 = add i64 %1862, 4
  store i64 %1863, i64* %PC.i307
  %1864 = inttoptr i64 %1861 to i32*
  %1865 = load i32, i32* %1864
  %1866 = sub i32 %1865, 7
  %1867 = icmp ult i32 %1865, 7
  %1868 = zext i1 %1867 to i8
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1868, i8* %1869, align 1
  %1870 = and i32 %1866, 255
  %1871 = call i32 @llvm.ctpop.i32(i32 %1870)
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1874, i8* %1875, align 1
  %1876 = xor i32 %1865, 7
  %1877 = xor i32 %1876, %1866
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1880, i8* %1881, align 1
  %1882 = icmp eq i32 %1866, 0
  %1883 = zext i1 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1883, i8* %1884, align 1
  %1885 = lshr i32 %1866, 31
  %1886 = trunc i32 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1886, i8* %1887, align 1
  %1888 = lshr i32 %1865, 31
  %1889 = xor i32 %1885, %1888
  %1890 = add i32 %1889, %1888
  %1891 = icmp eq i32 %1890, 2
  %1892 = zext i1 %1891 to i8
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1892, i8* %1893, align 1
  store %struct.Memory* %loadMem_401f3b, %struct.Memory** %MEMORY
  %loadMem_401f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 33
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1896 to i64*
  %1897 = load i64, i64* %PC.i306
  %1898 = add i64 %1897, 37
  %1899 = load i64, i64* %PC.i306
  %1900 = add i64 %1899, 6
  %1901 = load i64, i64* %PC.i306
  %1902 = add i64 %1901, 6
  store i64 %1902, i64* %PC.i306
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1904 = load i8, i8* %1903, align 1
  %1905 = icmp ne i8 %1904, 0
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1907 = load i8, i8* %1906, align 1
  %1908 = icmp ne i8 %1907, 0
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1910 = load i8, i8* %1909, align 1
  %1911 = icmp ne i8 %1910, 0
  %1912 = xor i1 %1908, %1911
  %1913 = or i1 %1905, %1912
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %BRANCH_TAKEN, align 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1916 = select i1 %1913, i64 %1898, i64 %1900
  store i64 %1916, i64* %1915, align 8
  store %struct.Memory* %loadMem_401f3f, %struct.Memory** %MEMORY
  %loadBr_401f3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401f3f = icmp eq i8 %loadBr_401f3f, 1
  br i1 %cmpBr_401f3f, label %block_.L_401f64, label %block_401f45

block_401f45:                                     ; preds = %block_.L_401f37
  %loadMem_401f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 1
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i305
  %1927 = sub i64 %1926, 8
  %1928 = load i64, i64* %PC.i303
  %1929 = add i64 %1928, 4
  store i64 %1929, i64* %PC.i303
  %1930 = inttoptr i64 %1927 to i64*
  %1931 = load i64, i64* %1930
  store i64 %1931, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_401f45, %struct.Memory** %MEMORY
  %loadMem_401f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 1
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 5
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RAX.i301
  %1942 = add i64 %1941, 80
  %1943 = load i64, i64* %PC.i300
  %1944 = add i64 %1943, 3
  store i64 %1944, i64* %PC.i300
  %1945 = inttoptr i64 %1942 to i32*
  %1946 = load i32, i32* %1945
  %1947 = zext i32 %1946 to i64
  store i64 %1947, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_401f49, %struct.Memory** %MEMORY
  %loadMem_401f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 5
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RCX.i299
  %1955 = load i64, i64* %PC.i298
  %1956 = add i64 %1955, 3
  store i64 %1956, i64* %PC.i298
  %1957 = trunc i64 %1954 to i32
  %1958 = sub i32 %1957, 8
  %1959 = zext i32 %1958 to i64
  store i64 %1959, i64* %RCX.i299, align 8
  %1960 = icmp ult i32 %1957, 8
  %1961 = zext i1 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1961, i8* %1962, align 1
  %1963 = and i32 %1958, 255
  %1964 = call i32 @llvm.ctpop.i32(i32 %1963)
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1967, i8* %1968, align 1
  %1969 = xor i64 8, %1954
  %1970 = trunc i64 %1969 to i32
  %1971 = xor i32 %1970, %1958
  %1972 = lshr i32 %1971, 4
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1974, i8* %1975, align 1
  %1976 = icmp eq i32 %1958, 0
  %1977 = zext i1 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1977, i8* %1978, align 1
  %1979 = lshr i32 %1958, 31
  %1980 = trunc i32 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1980, i8* %1981, align 1
  %1982 = lshr i32 %1957, 31
  %1983 = xor i32 %1979, %1982
  %1984 = add i32 %1983, %1982
  %1985 = icmp eq i32 %1984, 2
  %1986 = zext i1 %1985 to i8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1986, i8* %1987, align 1
  store %struct.Memory* %loadMem_401f4c, %struct.Memory** %MEMORY
  %loadMem_401f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 5
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %ECX.i296 = bitcast %union.anon* %1993 to i32*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1996 to i64*
  %1997 = load i64, i64* %RAX.i297
  %1998 = add i64 %1997, 80
  %1999 = load i32, i32* %ECX.i296
  %2000 = zext i32 %1999 to i64
  %2001 = load i64, i64* %PC.i295
  %2002 = add i64 %2001, 3
  store i64 %2002, i64* %PC.i295
  %2003 = inttoptr i64 %1998 to i32*
  store i32 %1999, i32* %2003
  store %struct.Memory* %loadMem_401f4f, %struct.Memory** %MEMORY
  %loadMem_401f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 1
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 15
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %RBP.i294
  %2014 = sub i64 %2013, 8
  %2015 = load i64, i64* %PC.i292
  %2016 = add i64 %2015, 4
  store i64 %2016, i64* %PC.i292
  %2017 = inttoptr i64 %2014 to i64*
  %2018 = load i64, i64* %2017
  store i64 %2018, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_401f52, %struct.Memory** %MEMORY
  %loadMem_401f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 1
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 5
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RAX.i290
  %2029 = add i64 %2028, 88
  %2030 = load i64, i64* %PC.i289
  %2031 = add i64 %2030, 3
  store i64 %2031, i64* %PC.i289
  %2032 = inttoptr i64 %2029 to i32*
  %2033 = load i32, i32* %2032
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_401f56, %struct.Memory** %MEMORY
  %loadMem_401f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 5
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RCX.i288
  %2042 = load i64, i64* %PC.i287
  %2043 = add i64 %2042, 3
  store i64 %2043, i64* %PC.i287
  %2044 = trunc i64 %2041 to i32
  %2045 = add i32 1, %2044
  %2046 = zext i32 %2045 to i64
  store i64 %2046, i64* %RCX.i288, align 8
  %2047 = icmp ult i32 %2045, %2044
  %2048 = icmp ult i32 %2045, 1
  %2049 = or i1 %2047, %2048
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2050, i8* %2051, align 1
  %2052 = and i32 %2045, 255
  %2053 = call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2056, i8* %2057, align 1
  %2058 = xor i64 1, %2041
  %2059 = trunc i64 %2058 to i32
  %2060 = xor i32 %2059, %2045
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2063, i8* %2064, align 1
  %2065 = icmp eq i32 %2045, 0
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2066, i8* %2067, align 1
  %2068 = lshr i32 %2045, 31
  %2069 = trunc i32 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2044, 31
  %2072 = xor i32 %2068, %2071
  %2073 = add i32 %2072, %2068
  %2074 = icmp eq i32 %2073, 2
  %2075 = zext i1 %2074 to i8
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2075, i8* %2076, align 1
  store %struct.Memory* %loadMem_401f59, %struct.Memory** %MEMORY
  %loadMem_401f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 5
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %ECX.i285 = bitcast %union.anon* %2082 to i32*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 1
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %RAX.i286
  %2087 = add i64 %2086, 88
  %2088 = load i32, i32* %ECX.i285
  %2089 = zext i32 %2088 to i64
  %2090 = load i64, i64* %PC.i284
  %2091 = add i64 %2090, 3
  store i64 %2091, i64* %PC.i284
  %2092 = inttoptr i64 %2087 to i32*
  store i32 %2088, i32* %2092
  store %struct.Memory* %loadMem_401f5c, %struct.Memory** %MEMORY
  %loadMem_401f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %PC.i283
  %2097 = add i64 %2096, -40
  %2098 = load i64, i64* %PC.i283
  %2099 = add i64 %2098, 5
  store i64 %2099, i64* %PC.i283
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2097, i64* %2100, align 8
  store %struct.Memory* %loadMem_401f5f, %struct.Memory** %MEMORY
  br label %block_.L_401f37

block_.L_401f64:                                  ; preds = %block_.L_401f37
  %loadMem_401f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %PC.i282
  %2105 = add i64 %2104, 5
  %2106 = load i64, i64* %PC.i282
  %2107 = add i64 %2106, 5
  store i64 %2107, i64* %PC.i282
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2105, i64* %2108, align 8
  store %struct.Memory* %loadMem_401f64, %struct.Memory** %MEMORY
  br label %block_.L_401f69

block_.L_401f69:                                  ; preds = %block_.L_401f64, %block_401eca
  %loadMem_401f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %PC.i281
  %2113 = add i64 %2112, -173
  %2114 = load i64, i64* %PC.i281
  %2115 = add i64 %2114, 5
  store i64 %2115, i64* %PC.i281
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2113, i64* %2116, align 8
  store %struct.Memory* %loadMem_401f69, %struct.Memory** %MEMORY
  br label %block_.L_401ebc

block_.L_401f6e:                                  ; preds = %block_.L_401ebc
  %loadMem_401f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 1
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 15
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2125 to i64*
  %2126 = load i64, i64* %RBP.i280
  %2127 = sub i64 %2126, 16
  %2128 = load i64, i64* %PC.i278
  %2129 = add i64 %2128, 3
  store i64 %2129, i64* %PC.i278
  %2130 = inttoptr i64 %2127 to i32*
  %2131 = load i32, i32* %2130
  %2132 = zext i32 %2131 to i64
  store i64 %2132, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_401f6e, %struct.Memory** %MEMORY
  %loadMem_401f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 1
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %RAX.i277
  %2140 = load i64, i64* %PC.i276
  %2141 = add i64 %2140, 5
  store i64 %2141, i64* %PC.i276
  %2142 = trunc i64 %2139 to i32
  %2143 = sub i32 %2142, 1024
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RAX.i277, align 8
  %2145 = icmp ult i32 %2142, 1024
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2146, i8* %2147, align 1
  %2148 = and i32 %2143, 255
  %2149 = call i32 @llvm.ctpop.i32(i32 %2148)
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2152, i8* %2153, align 1
  %2154 = xor i64 1024, %2139
  %2155 = trunc i64 %2154 to i32
  %2156 = xor i32 %2155, %2143
  %2157 = lshr i32 %2156, 4
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2159, i8* %2160, align 1
  %2161 = icmp eq i32 %2143, 0
  %2162 = zext i1 %2161 to i8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2162, i8* %2163, align 1
  %2164 = lshr i32 %2143, 31
  %2165 = trunc i32 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2165, i8* %2166, align 1
  %2167 = lshr i32 %2142, 31
  %2168 = xor i32 %2164, %2167
  %2169 = add i32 %2168, %2167
  %2170 = icmp eq i32 %2169, 2
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2171, i8* %2172, align 1
  store %struct.Memory* %loadMem_401f71, %struct.Memory** %MEMORY
  %loadMem_401f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 1
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %2178 to i32*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 15
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RBP.i275
  %2183 = sub i64 %2182, 16
  %2184 = load i32, i32* %EAX.i274
  %2185 = zext i32 %2184 to i64
  %2186 = load i64, i64* %PC.i273
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i273
  %2188 = inttoptr i64 %2183 to i32*
  store i32 %2184, i32* %2188
  store %struct.Memory* %loadMem_401f76, %struct.Memory** %MEMORY
  %loadMem_401f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %PC.i272
  %2193 = add i64 %2192, 385
  %2194 = load i64, i64* %PC.i272
  %2195 = add i64 %2194, 5
  store i64 %2195, i64* %PC.i272
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2193, i64* %2196, align 8
  store %struct.Memory* %loadMem_401f79, %struct.Memory** %MEMORY
  br label %block_.L_4020fa

block_.L_401f7e:                                  ; preds = %block_.L_401e15
  %loadMem_401f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 15
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %RBP.i271
  %2204 = sub i64 %2203, 16
  %2205 = load i64, i64* %PC.i270
  %2206 = add i64 %2205, 7
  store i64 %2206, i64* %PC.i270
  %2207 = inttoptr i64 %2204 to i32*
  %2208 = load i32, i32* %2207
  %2209 = sub i32 %2208, 512
  %2210 = icmp ult i32 %2208, 512
  %2211 = zext i1 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2211, i8* %2212, align 1
  %2213 = and i32 %2209, 255
  %2214 = call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2217, i8* %2218, align 1
  %2219 = xor i32 %2208, 512
  %2220 = xor i32 %2219, %2209
  %2221 = lshr i32 %2220, 4
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2223, i8* %2224, align 1
  %2225 = icmp eq i32 %2209, 0
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2226, i8* %2227, align 1
  %2228 = lshr i32 %2209, 31
  %2229 = trunc i32 %2228 to i8
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2229, i8* %2230, align 1
  %2231 = lshr i32 %2208, 31
  %2232 = xor i32 %2228, %2231
  %2233 = add i32 %2232, %2231
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2235, i8* %2236, align 1
  store %struct.Memory* %loadMem_401f7e, %struct.Memory** %MEMORY
  %loadMem_401f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2239 to i64*
  %2240 = load i64, i64* %PC.i269
  %2241 = add i64 %2240, 343
  %2242 = load i64, i64* %PC.i269
  %2243 = add i64 %2242, 6
  %2244 = load i64, i64* %PC.i269
  %2245 = add i64 %2244, 6
  store i64 %2245, i64* %PC.i269
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2247 = load i8, i8* %2246, align 1
  %2248 = icmp eq i8 %2247, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %BRANCH_TAKEN, align 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2251 = select i1 %2248, i64 %2241, i64 %2243
  store i64 %2251, i64* %2250, align 8
  store %struct.Memory* %loadMem_401f85, %struct.Memory** %MEMORY
  %loadBr_401f85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401f85 = icmp eq i8 %loadBr_401f85, 1
  br i1 %cmpBr_401f85, label %block_.L_4020dc, label %block_401f8b

block_401f8b:                                     ; preds = %block_.L_401f7e
  %loadMem_401f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i268
  %2262 = sub i64 %2261, 8
  %2263 = load i64, i64* %PC.i266
  %2264 = add i64 %2263, 4
  store i64 %2264, i64* %PC.i266
  %2265 = inttoptr i64 %2262 to i64*
  %2266 = load i64, i64* %2265
  store i64 %2266, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_401f8b, %struct.Memory** %MEMORY
  %loadMem_401f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 5
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RAX.i264
  %2277 = add i64 %2276, 8
  %2278 = load i64, i64* %PC.i263
  %2279 = add i64 %2278, 3
  store i64 %2279, i64* %PC.i263
  %2280 = inttoptr i64 %2277 to i32*
  %2281 = load i32, i32* %2280
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_401f8f, %struct.Memory** %MEMORY
  %loadMem_401f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 5
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RCX.i262
  %2290 = load i64, i64* %PC.i261
  %2291 = add i64 %2290, 2
  store i64 %2291, i64* %PC.i261
  %2292 = trunc i64 %2289 to i32
  %2293 = shl i32 %2292, 1
  %2294 = icmp slt i32 %2292, 0
  %2295 = icmp slt i32 %2293, 0
  %2296 = xor i1 %2294, %2295
  %2297 = zext i32 %2293 to i64
  store i64 %2297, i64* %RCX.i262, align 8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2299 = zext i1 %2294 to i8
  store i8 %2299, i8* %2298, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2301 = and i32 %2293, 254
  %2302 = call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  store i8 %2305, i8* %2300, align 1
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2306, align 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2308 = icmp eq i32 %2293, 0
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %2307, align 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2311 = lshr i32 %2293, 31
  %2312 = trunc i32 %2311 to i8
  store i8 %2312, i8* %2310, align 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2314 = zext i1 %2296 to i8
  store i8 %2314, i8* %2313, align 1
  store %struct.Memory* %loadMem_401f92, %struct.Memory** %MEMORY
  %loadMem_401f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 5
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %ECX.i259 = bitcast %union.anon* %2320 to i32*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 1
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %RAX.i260
  %2325 = add i64 %2324, 8
  %2326 = load i32, i32* %ECX.i259
  %2327 = zext i32 %2326 to i64
  %2328 = load i64, i64* %PC.i258
  %2329 = add i64 %2328, 3
  store i64 %2329, i64* %PC.i258
  %2330 = inttoptr i64 %2325 to i32*
  store i32 %2326, i32* %2330
  store %struct.Memory* %loadMem_401f95, %struct.Memory** %MEMORY
  %loadMem_401f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 1
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 15
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %RBP.i257
  %2341 = sub i64 %2340, 8
  %2342 = load i64, i64* %PC.i255
  %2343 = add i64 %2342, 4
  store i64 %2343, i64* %PC.i255
  %2344 = inttoptr i64 %2341 to i64*
  %2345 = load i64, i64* %2344
  store i64 %2345, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_401f98, %struct.Memory** %MEMORY
  %loadMem_401f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 1
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 5
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %RAX.i253
  %2356 = add i64 %2355, 8
  %2357 = load i64, i64* %PC.i252
  %2358 = add i64 %2357, 3
  store i64 %2358, i64* %PC.i252
  %2359 = inttoptr i64 %2356 to i32*
  %2360 = load i32, i32* %2359
  %2361 = zext i32 %2360 to i64
  store i64 %2361, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_401f9c, %struct.Memory** %MEMORY
  %loadMem_401f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 5
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %ECX.i250 = bitcast %union.anon* %2367 to i32*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RAX.i251
  %2372 = add i64 %2371, 8
  %2373 = load i32, i32* %ECX.i250
  %2374 = zext i32 %2373 to i64
  %2375 = load i64, i64* %PC.i249
  %2376 = add i64 %2375, 3
  store i64 %2376, i64* %PC.i249
  %2377 = inttoptr i64 %2372 to i32*
  store i32 %2373, i32* %2377
  store %struct.Memory* %loadMem_401f9f, %struct.Memory** %MEMORY
  %loadMem_401fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 1
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RBP.i248
  %2388 = sub i64 %2387, 8
  %2389 = load i64, i64* %PC.i246
  %2390 = add i64 %2389, 4
  store i64 %2390, i64* %PC.i246
  %2391 = inttoptr i64 %2388 to i64*
  %2392 = load i64, i64* %2391
  store i64 %2392, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_401fa2, %struct.Memory** %MEMORY
  %loadMem_401fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 1
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 5
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %2401 to i64*
  %2402 = load i64, i64* %RAX.i244
  %2403 = add i64 %2402, 12
  %2404 = load i64, i64* %PC.i243
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i243
  %2406 = inttoptr i64 %2403 to i32*
  %2407 = load i32, i32* %2406
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_401fa6, %struct.Memory** %MEMORY
  %loadMem_401fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 5
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %2414 to i64*
  %2415 = load i64, i64* %RCX.i242
  %2416 = load i64, i64* %PC.i241
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %PC.i241
  %2418 = trunc i64 %2415 to i32
  %2419 = add i32 -1, %2418
  %2420 = zext i32 %2419 to i64
  store i64 %2420, i64* %RCX.i242, align 8
  %2421 = icmp ult i32 %2419, %2418
  %2422 = icmp ult i32 %2419, -1
  %2423 = or i1 %2421, %2422
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2424, i8* %2425, align 1
  %2426 = and i32 %2419, 255
  %2427 = call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2430, i8* %2431, align 1
  %2432 = xor i64 -1, %2415
  %2433 = trunc i64 %2432 to i32
  %2434 = xor i32 %2433, %2419
  %2435 = lshr i32 %2434, 4
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2437, i8* %2438, align 1
  %2439 = icmp eq i32 %2419, 0
  %2440 = zext i1 %2439 to i8
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2440, i8* %2441, align 1
  %2442 = lshr i32 %2419, 31
  %2443 = trunc i32 %2442 to i8
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2443, i8* %2444, align 1
  %2445 = lshr i32 %2418, 31
  %2446 = xor i32 %2442, %2445
  %2447 = xor i32 %2442, 1
  %2448 = add i32 %2446, %2447
  %2449 = icmp eq i32 %2448, 2
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2450, i8* %2451, align 1
  store %struct.Memory* %loadMem_401fa9, %struct.Memory** %MEMORY
  %loadMem_401fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 33
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2454 to i64*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 5
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %ECX.i239 = bitcast %union.anon* %2457 to i32*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 1
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %2460 to i64*
  %2461 = load i64, i64* %RAX.i240
  %2462 = add i64 %2461, 12
  %2463 = load i32, i32* %ECX.i239
  %2464 = zext i32 %2463 to i64
  %2465 = load i64, i64* %PC.i238
  %2466 = add i64 %2465, 3
  store i64 %2466, i64* %PC.i238
  %2467 = inttoptr i64 %2462 to i32*
  store i32 %2463, i32* %2467
  store %struct.Memory* %loadMem_401fac, %struct.Memory** %MEMORY
  %loadMem_401faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 5
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %ECX.i237 = bitcast %union.anon* %2473 to i32*
  %2474 = load i32, i32* %ECX.i237
  %2475 = zext i32 %2474 to i64
  %2476 = load i64, i64* %PC.i236
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i236
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2478, align 1
  %2479 = and i32 %2474, 255
  %2480 = call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2483, i8* %2484, align 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2485, align 1
  %2486 = icmp eq i32 %2474, 0
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2487, i8* %2488, align 1
  %2489 = lshr i32 %2474, 31
  %2490 = trunc i32 %2489 to i8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2490, i8* %2491, align 1
  %2492 = lshr i32 %2474, 31
  %2493 = xor i32 %2489, %2492
  %2494 = add i32 %2493, %2492
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2496, i8* %2497, align 1
  store %struct.Memory* %loadMem_401faf, %struct.Memory** %MEMORY
  %loadMem_401fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i235
  %2502 = add i64 %2501, 107
  %2503 = load i64, i64* %PC.i235
  %2504 = add i64 %2503, 6
  %2505 = load i64, i64* %PC.i235
  %2506 = add i64 %2505, 6
  store i64 %2506, i64* %PC.i235
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2508 = load i8, i8* %2507, align 1
  %2509 = icmp eq i8 %2508, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %BRANCH_TAKEN, align 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2512 = select i1 %2509, i64 %2502, i64 %2504
  store i64 %2512, i64* %2511, align 8
  store %struct.Memory* %loadMem_401fb2, %struct.Memory** %MEMORY
  %loadBr_401fb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401fb2 = icmp eq i8 %loadBr_401fb2, 1
  br i1 %cmpBr_401fb2, label %block_.L_40201d, label %block_401fb8

block_401fb8:                                     ; preds = %block_401f8b
  %loadMem_401fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 1
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 15
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RBP.i234
  %2523 = sub i64 %2522, 8
  %2524 = load i64, i64* %PC.i232
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %PC.i232
  %2526 = inttoptr i64 %2523 to i64*
  %2527 = load i64, i64* %2526
  store i64 %2527, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_401fb8, %struct.Memory** %MEMORY
  %loadMem_401fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 1
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 5
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RAX.i230
  %2538 = add i64 %2537, 8
  %2539 = load i64, i64* %PC.i229
  %2540 = add i64 %2539, 3
  store i64 %2540, i64* %PC.i229
  %2541 = inttoptr i64 %2538 to i32*
  %2542 = load i32, i32* %2541
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_401fbc, %struct.Memory** %MEMORY
  %loadMem_401fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 5
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %2550 = bitcast %union.anon* %2549 to %struct.anon.2*
  %CL.i227 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2550, i32 0, i32 0
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 7
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %2554 = bitcast %union.anon* %2553 to %struct.anon.2*
  %DL.i228 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2554, i32 0, i32 0
  %2555 = load i8, i8* %CL.i227
  %2556 = zext i8 %2555 to i64
  %2557 = load i64, i64* %PC.i226
  %2558 = add i64 %2557, 2
  store i64 %2558, i64* %PC.i226
  store i8 %2555, i8* %DL.i228, align 1
  store %struct.Memory* %loadMem_401fbf, %struct.Memory** %MEMORY
  %loadMem_401fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 1
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RBP.i225
  %2569 = sub i64 %2568, 8
  %2570 = load i64, i64* %PC.i223
  %2571 = add i64 %2570, 4
  store i64 %2571, i64* %PC.i223
  %2572 = inttoptr i64 %2569 to i64*
  %2573 = load i64, i64* %2572
  store i64 %2573, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_401fc1, %struct.Memory** %MEMORY
  %loadMem_401fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RAX.i222
  %2581 = add i64 %2580, 24
  %2582 = load i64, i64* %PC.i221
  %2583 = add i64 %2582, 4
  store i64 %2583, i64* %PC.i221
  %2584 = inttoptr i64 %2581 to i64*
  %2585 = load i64, i64* %2584
  store i64 %2585, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_401fc5, %struct.Memory** %MEMORY
  %loadMem_401fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 9
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RSI.i219 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 15
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %RBP.i220
  %2596 = sub i64 %2595, 8
  %2597 = load i64, i64* %PC.i218
  %2598 = add i64 %2597, 4
  store i64 %2598, i64* %PC.i218
  %2599 = inttoptr i64 %2596 to i64*
  %2600 = load i64, i64* %2599
  store i64 %2600, i64* %RSI.i219, align 8
  store %struct.Memory* %loadMem_401fc9, %struct.Memory** %MEMORY
  %loadMem_401fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 9
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %RSI.i217
  %2608 = add i64 %2607, 32
  %2609 = load i64, i64* %PC.i216
  %2610 = add i64 %2609, 4
  store i64 %2610, i64* %PC.i216
  %2611 = inttoptr i64 %2608 to i64*
  %2612 = load i64, i64* %2611
  store i64 %2612, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_401fcd, %struct.Memory** %MEMORY
  %loadMem_401fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 5
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 9
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %2621 to i64*
  %2622 = load i64, i64* %RSI.i215
  %2623 = load i64, i64* %PC.i213
  %2624 = add i64 %2623, 2
  store i64 %2624, i64* %PC.i213
  %2625 = inttoptr i64 %2622 to i32*
  %2626 = load i32, i32* %2625
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_401fd1, %struct.Memory** %MEMORY
  %loadMem_401fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %ECX.i211 = bitcast %union.anon* %2633 to i32*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 11
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %2636 to i64*
  %2637 = load i32, i32* %ECX.i211
  %2638 = zext i32 %2637 to i64
  %2639 = load i64, i64* %PC.i210
  %2640 = add i64 %2639, 2
  store i64 %2640, i64* %PC.i210
  %2641 = and i64 %2638, 4294967295
  store i64 %2641, i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_401fd3, %struct.Memory** %MEMORY
  %loadMem_401fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 33
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 11
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RDI.i209 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RDI.i209
  %2649 = load i64, i64* %PC.i208
  %2650 = add i64 %2649, 3
  store i64 %2650, i64* %PC.i208
  %2651 = trunc i64 %2648 to i32
  %2652 = add i32 1, %2651
  %2653 = zext i32 %2652 to i64
  store i64 %2653, i64* %RDI.i209, align 8
  %2654 = icmp ult i32 %2652, %2651
  %2655 = icmp ult i32 %2652, 1
  %2656 = or i1 %2654, %2655
  %2657 = zext i1 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2657, i8* %2658, align 1
  %2659 = and i32 %2652, 255
  %2660 = call i32 @llvm.ctpop.i32(i32 %2659)
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = xor i8 %2662, 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2663, i8* %2664, align 1
  %2665 = xor i64 1, %2648
  %2666 = trunc i64 %2665 to i32
  %2667 = xor i32 %2666, %2652
  %2668 = lshr i32 %2667, 4
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2670, i8* %2671, align 1
  %2672 = icmp eq i32 %2652, 0
  %2673 = zext i1 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2673, i8* %2674, align 1
  %2675 = lshr i32 %2652, 31
  %2676 = trunc i32 %2675 to i8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2676, i8* %2677, align 1
  %2678 = lshr i32 %2651, 31
  %2679 = xor i32 %2675, %2678
  %2680 = add i32 %2679, %2675
  %2681 = icmp eq i32 %2680, 2
  %2682 = zext i1 %2681 to i8
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2682, i8* %2683, align 1
  store %struct.Memory* %loadMem_401fd5, %struct.Memory** %MEMORY
  %loadMem_401fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 11
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %EDI.i206 = bitcast %union.anon* %2689 to i32*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 9
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RSI.i207 = bitcast %union.anon* %2692 to i64*
  %2693 = load i64, i64* %RSI.i207
  %2694 = load i32, i32* %EDI.i206
  %2695 = zext i32 %2694 to i64
  %2696 = load i64, i64* %PC.i205
  %2697 = add i64 %2696, 2
  store i64 %2697, i64* %PC.i205
  %2698 = inttoptr i64 %2693 to i32*
  store i32 %2694, i32* %2698
  store %struct.Memory* %loadMem_401fd8, %struct.Memory** %MEMORY
  %loadMem_401fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 5
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %ECX.i203 = bitcast %union.anon* %2704 to i32*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 9
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RSI.i204 = bitcast %union.anon* %2707 to i64*
  %2708 = load i32, i32* %ECX.i203
  %2709 = zext i32 %2708 to i64
  %2710 = load i64, i64* %PC.i202
  %2711 = add i64 %2710, 3
  store i64 %2711, i64* %PC.i202
  %2712 = shl i64 %2709, 32
  %2713 = ashr exact i64 %2712, 32
  store i64 %2713, i64* %RSI.i204, align 8
  store %struct.Memory* %loadMem_401fda, %struct.Memory** %MEMORY
  %loadMem_401fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 7
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %2720 = bitcast %union.anon* %2719 to %struct.anon.2*
  %DL.i199 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2720, i32 0, i32 0
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 1
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 9
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RSI.i201 = bitcast %union.anon* %2726 to i64*
  %2727 = load i64, i64* %RAX.i200
  %2728 = load i64, i64* %RSI.i201
  %2729 = add i64 %2728, %2727
  %2730 = load i8, i8* %DL.i199
  %2731 = zext i8 %2730 to i64
  %2732 = load i64, i64* %PC.i198
  %2733 = add i64 %2732, 3
  store i64 %2733, i64* %PC.i198
  %2734 = inttoptr i64 %2729 to i8*
  store i8 %2730, i8* %2734
  store %struct.Memory* %loadMem_401fdd, %struct.Memory** %MEMORY
  %loadMem_401fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 15
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RBP.i197
  %2745 = sub i64 %2744, 8
  %2746 = load i64, i64* %PC.i195
  %2747 = add i64 %2746, 4
  store i64 %2747, i64* %PC.i195
  %2748 = inttoptr i64 %2745 to i64*
  %2749 = load i64, i64* %2748
  store i64 %2749, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_401fe0, %struct.Memory** %MEMORY
  %loadMem_401fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 1
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %RAX.i194
  %2757 = add i64 %2756, 12
  %2758 = load i64, i64* %PC.i193
  %2759 = add i64 %2758, 7
  store i64 %2759, i64* %PC.i193
  %2760 = inttoptr i64 %2757 to i32*
  store i32 8, i32* %2760
  store %struct.Memory* %loadMem_401fe4, %struct.Memory** %MEMORY
  br label %block_.L_401feb

block_.L_401feb:                                  ; preds = %block_401ff9, %block_401fb8
  %loadMem_401feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i192
  %2771 = sub i64 %2770, 8
  %2772 = load i64, i64* %PC.i190
  %2773 = add i64 %2772, 4
  store i64 %2773, i64* %PC.i190
  %2774 = inttoptr i64 %2771 to i64*
  %2775 = load i64, i64* %2774
  store i64 %2775, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_401feb, %struct.Memory** %MEMORY
  %loadMem_401fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 1
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %2781 to i64*
  %2782 = load i64, i64* %RAX.i189
  %2783 = add i64 %2782, 80
  %2784 = load i64, i64* %PC.i188
  %2785 = add i64 %2784, 4
  store i64 %2785, i64* %PC.i188
  %2786 = inttoptr i64 %2783 to i32*
  %2787 = load i32, i32* %2786
  %2788 = sub i32 %2787, 7
  %2789 = icmp ult i32 %2787, 7
  %2790 = zext i1 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2790, i8* %2791, align 1
  %2792 = and i32 %2788, 255
  %2793 = call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2796, i8* %2797, align 1
  %2798 = xor i32 %2787, 7
  %2799 = xor i32 %2798, %2788
  %2800 = lshr i32 %2799, 4
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2802, i8* %2803, align 1
  %2804 = icmp eq i32 %2788, 0
  %2805 = zext i1 %2804 to i8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2805, i8* %2806, align 1
  %2807 = lshr i32 %2788, 31
  %2808 = trunc i32 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2808, i8* %2809, align 1
  %2810 = lshr i32 %2787, 31
  %2811 = xor i32 %2807, %2810
  %2812 = add i32 %2811, %2810
  %2813 = icmp eq i32 %2812, 2
  %2814 = zext i1 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2814, i8* %2815, align 1
  store %struct.Memory* %loadMem_401fef, %struct.Memory** %MEMORY
  %loadMem_401ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %PC.i187
  %2820 = add i64 %2819, 37
  %2821 = load i64, i64* %PC.i187
  %2822 = add i64 %2821, 6
  %2823 = load i64, i64* %PC.i187
  %2824 = add i64 %2823, 6
  store i64 %2824, i64* %PC.i187
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2826 = load i8, i8* %2825, align 1
  %2827 = icmp ne i8 %2826, 0
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2829 = load i8, i8* %2828, align 1
  %2830 = icmp ne i8 %2829, 0
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2832 = load i8, i8* %2831, align 1
  %2833 = icmp ne i8 %2832, 0
  %2834 = xor i1 %2830, %2833
  %2835 = or i1 %2827, %2834
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %BRANCH_TAKEN, align 1
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2838 = select i1 %2835, i64 %2820, i64 %2822
  store i64 %2838, i64* %2837, align 8
  store %struct.Memory* %loadMem_401ff3, %struct.Memory** %MEMORY
  %loadBr_401ff3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ff3 = icmp eq i8 %loadBr_401ff3, 1
  br i1 %cmpBr_401ff3, label %block_.L_402018, label %block_401ff9

block_401ff9:                                     ; preds = %block_.L_401feb
  %loadMem_401ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 1
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 15
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RBP.i186
  %2849 = sub i64 %2848, 8
  %2850 = load i64, i64* %PC.i184
  %2851 = add i64 %2850, 4
  store i64 %2851, i64* %PC.i184
  %2852 = inttoptr i64 %2849 to i64*
  %2853 = load i64, i64* %2852
  store i64 %2853, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_401ff9, %struct.Memory** %MEMORY
  %loadMem_401ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 5
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %RAX.i182
  %2864 = add i64 %2863, 80
  %2865 = load i64, i64* %PC.i181
  %2866 = add i64 %2865, 3
  store i64 %2866, i64* %PC.i181
  %2867 = inttoptr i64 %2864 to i32*
  %2868 = load i32, i32* %2867
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_401ffd, %struct.Memory** %MEMORY
  %loadMem_402000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 5
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %RCX.i180
  %2877 = load i64, i64* %PC.i179
  %2878 = add i64 %2877, 3
  store i64 %2878, i64* %PC.i179
  %2879 = trunc i64 %2876 to i32
  %2880 = sub i32 %2879, 8
  %2881 = zext i32 %2880 to i64
  store i64 %2881, i64* %RCX.i180, align 8
  %2882 = icmp ult i32 %2879, 8
  %2883 = zext i1 %2882 to i8
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2883, i8* %2884, align 1
  %2885 = and i32 %2880, 255
  %2886 = call i32 @llvm.ctpop.i32(i32 %2885)
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2889, i8* %2890, align 1
  %2891 = xor i64 8, %2876
  %2892 = trunc i64 %2891 to i32
  %2893 = xor i32 %2892, %2880
  %2894 = lshr i32 %2893, 4
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2896, i8* %2897, align 1
  %2898 = icmp eq i32 %2880, 0
  %2899 = zext i1 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2899, i8* %2900, align 1
  %2901 = lshr i32 %2880, 31
  %2902 = trunc i32 %2901 to i8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2902, i8* %2903, align 1
  %2904 = lshr i32 %2879, 31
  %2905 = xor i32 %2901, %2904
  %2906 = add i32 %2905, %2904
  %2907 = icmp eq i32 %2906, 2
  %2908 = zext i1 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2908, i8* %2909, align 1
  store %struct.Memory* %loadMem_402000, %struct.Memory** %MEMORY
  %loadMem_402003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 5
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %ECX.i177 = bitcast %union.anon* %2915 to i32*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %RAX.i178
  %2920 = add i64 %2919, 80
  %2921 = load i32, i32* %ECX.i177
  %2922 = zext i32 %2921 to i64
  %2923 = load i64, i64* %PC.i176
  %2924 = add i64 %2923, 3
  store i64 %2924, i64* %PC.i176
  %2925 = inttoptr i64 %2920 to i32*
  store i32 %2921, i32* %2925
  store %struct.Memory* %loadMem_402003, %struct.Memory** %MEMORY
  %loadMem_402006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 1
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 15
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2934 to i64*
  %2935 = load i64, i64* %RBP.i175
  %2936 = sub i64 %2935, 8
  %2937 = load i64, i64* %PC.i173
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %PC.i173
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939
  store i64 %2940, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_402006, %struct.Memory** %MEMORY
  %loadMem_40200a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 1
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 5
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RAX.i171
  %2951 = add i64 %2950, 88
  %2952 = load i64, i64* %PC.i170
  %2953 = add i64 %2952, 3
  store i64 %2953, i64* %PC.i170
  %2954 = inttoptr i64 %2951 to i32*
  %2955 = load i32, i32* %2954
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_40200a, %struct.Memory** %MEMORY
  %loadMem_40200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 5
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %RCX.i169
  %2964 = load i64, i64* %PC.i168
  %2965 = add i64 %2964, 3
  store i64 %2965, i64* %PC.i168
  %2966 = trunc i64 %2963 to i32
  %2967 = add i32 1, %2966
  %2968 = zext i32 %2967 to i64
  store i64 %2968, i64* %RCX.i169, align 8
  %2969 = icmp ult i32 %2967, %2966
  %2970 = icmp ult i32 %2967, 1
  %2971 = or i1 %2969, %2970
  %2972 = zext i1 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2972, i8* %2973, align 1
  %2974 = and i32 %2967, 255
  %2975 = call i32 @llvm.ctpop.i32(i32 %2974)
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  %2978 = xor i8 %2977, 1
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2978, i8* %2979, align 1
  %2980 = xor i64 1, %2963
  %2981 = trunc i64 %2980 to i32
  %2982 = xor i32 %2981, %2967
  %2983 = lshr i32 %2982, 4
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2985, i8* %2986, align 1
  %2987 = icmp eq i32 %2967, 0
  %2988 = zext i1 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2988, i8* %2989, align 1
  %2990 = lshr i32 %2967, 31
  %2991 = trunc i32 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2991, i8* %2992, align 1
  %2993 = lshr i32 %2966, 31
  %2994 = xor i32 %2990, %2993
  %2995 = add i32 %2994, %2990
  %2996 = icmp eq i32 %2995, 2
  %2997 = zext i1 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2997, i8* %2998, align 1
  store %struct.Memory* %loadMem_40200d, %struct.Memory** %MEMORY
  %loadMem_402010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 5
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %ECX.i166 = bitcast %union.anon* %3004 to i32*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RAX.i167
  %3009 = add i64 %3008, 88
  %3010 = load i32, i32* %ECX.i166
  %3011 = zext i32 %3010 to i64
  %3012 = load i64, i64* %PC.i165
  %3013 = add i64 %3012, 3
  store i64 %3013, i64* %PC.i165
  %3014 = inttoptr i64 %3009 to i32*
  store i32 %3010, i32* %3014
  store %struct.Memory* %loadMem_402010, %struct.Memory** %MEMORY
  %loadMem_402013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 33
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %PC.i164
  %3019 = add i64 %3018, -40
  %3020 = load i64, i64* %PC.i164
  %3021 = add i64 %3020, 5
  store i64 %3021, i64* %PC.i164
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3019, i64* %3022, align 8
  store %struct.Memory* %loadMem_402013, %struct.Memory** %MEMORY
  br label %block_.L_401feb

block_.L_402018:                                  ; preds = %block_.L_401feb
  %loadMem_402018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %PC.i163
  %3027 = add i64 %3026, 5
  %3028 = load i64, i64* %PC.i163
  %3029 = add i64 %3028, 5
  store i64 %3029, i64* %PC.i163
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3027, i64* %3030, align 8
  store %struct.Memory* %loadMem_402018, %struct.Memory** %MEMORY
  br label %block_.L_40201d

block_.L_40201d:                                  ; preds = %block_.L_402018, %block_401f8b
  %loadMem_40201d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %PC.i162
  %3035 = add i64 %3034, 5
  %3036 = load i64, i64* %PC.i162
  %3037 = add i64 %3036, 5
  store i64 %3037, i64* %PC.i162
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3035, i64* %3038, align 8
  store %struct.Memory* %loadMem_40201d, %struct.Memory** %MEMORY
  br label %block_.L_402022

block_.L_402022:                                  ; preds = %block_.L_4020d2, %block_.L_40201d
  %loadMem_402022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 1
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 15
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3047 to i64*
  %3048 = load i64, i64* %RBP.i161
  %3049 = sub i64 %3048, 8
  %3050 = load i64, i64* %PC.i159
  %3051 = add i64 %3050, 4
  store i64 %3051, i64* %PC.i159
  %3052 = inttoptr i64 %3049 to i64*
  %3053 = load i64, i64* %3052
  store i64 %3053, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_402022, %struct.Memory** %MEMORY
  %loadMem_402026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 1
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %3059 to i64*
  %3060 = load i64, i64* %RAX.i158
  %3061 = add i64 %3060, 16
  %3062 = load i64, i64* %PC.i157
  %3063 = add i64 %3062, 4
  store i64 %3063, i64* %PC.i157
  %3064 = inttoptr i64 %3061 to i32*
  %3065 = load i32, i32* %3064
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3066, align 1
  %3067 = and i32 %3065, 255
  %3068 = call i32 @llvm.ctpop.i32(i32 %3067)
  %3069 = trunc i32 %3068 to i8
  %3070 = and i8 %3069, 1
  %3071 = xor i8 %3070, 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3071, i8* %3072, align 1
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3073, align 1
  %3074 = icmp eq i32 %3065, 0
  %3075 = zext i1 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3075, i8* %3076, align 1
  %3077 = lshr i32 %3065, 31
  %3078 = trunc i32 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3078, i8* %3079, align 1
  %3080 = lshr i32 %3065, 31
  %3081 = xor i32 %3077, %3080
  %3082 = add i32 %3081, %3080
  %3083 = icmp eq i32 %3082, 2
  %3084 = zext i1 %3083 to i8
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3084, i8* %3085, align 1
  store %struct.Memory* %loadMem_402026, %struct.Memory** %MEMORY
  %loadMem_40202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3088 to i64*
  %3089 = load i64, i64* %PC.i156
  %3090 = add i64 %3089, 173
  %3091 = load i64, i64* %PC.i156
  %3092 = add i64 %3091, 6
  %3093 = load i64, i64* %PC.i156
  %3094 = add i64 %3093, 6
  store i64 %3094, i64* %PC.i156
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3096 = load i8, i8* %3095, align 1
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3098 = load i8, i8* %3097, align 1
  %3099 = or i8 %3098, %3096
  %3100 = icmp ne i8 %3099, 0
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %BRANCH_TAKEN, align 1
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3103 = select i1 %3100, i64 %3090, i64 %3092
  store i64 %3103, i64* %3102, align 8
  store %struct.Memory* %loadMem_40202a, %struct.Memory** %MEMORY
  %loadBr_40202a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40202a = icmp eq i8 %loadBr_40202a, 1
  br i1 %cmpBr_40202a, label %block_.L_4020d7, label %block_402030

block_402030:                                     ; preds = %block_.L_402022
  %loadMem_402030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 1
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 15
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %RBP.i155
  %3114 = sub i64 %3113, 8
  %3115 = load i64, i64* %PC.i153
  %3116 = add i64 %3115, 4
  store i64 %3116, i64* %PC.i153
  %3117 = inttoptr i64 %3114 to i64*
  %3118 = load i64, i64* %3117
  store i64 %3118, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_402030, %struct.Memory** %MEMORY
  %loadMem_402034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 1
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 5
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %RAX.i151
  %3129 = add i64 %3128, 16
  %3130 = load i64, i64* %PC.i150
  %3131 = add i64 %3130, 3
  store i64 %3131, i64* %PC.i150
  %3132 = inttoptr i64 %3129 to i32*
  %3133 = load i32, i32* %3132
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_402034, %struct.Memory** %MEMORY
  %loadMem_402037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 5
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %3140 to i64*
  %3141 = load i64, i64* %RCX.i149
  %3142 = load i64, i64* %PC.i148
  %3143 = add i64 %3142, 3
  store i64 %3143, i64* %PC.i148
  %3144 = trunc i64 %3141 to i32
  %3145 = add i32 -1, %3144
  %3146 = zext i32 %3145 to i64
  store i64 %3146, i64* %RCX.i149, align 8
  %3147 = icmp ult i32 %3145, %3144
  %3148 = icmp ult i32 %3145, -1
  %3149 = or i1 %3147, %3148
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3150, i8* %3151, align 1
  %3152 = and i32 %3145, 255
  %3153 = call i32 @llvm.ctpop.i32(i32 %3152)
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  %3156 = xor i8 %3155, 1
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3156, i8* %3157, align 1
  %3158 = xor i64 -1, %3141
  %3159 = trunc i64 %3158 to i32
  %3160 = xor i32 %3159, %3145
  %3161 = lshr i32 %3160, 4
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3163, i8* %3164, align 1
  %3165 = icmp eq i32 %3145, 0
  %3166 = zext i1 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3166, i8* %3167, align 1
  %3168 = lshr i32 %3145, 31
  %3169 = trunc i32 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3169, i8* %3170, align 1
  %3171 = lshr i32 %3144, 31
  %3172 = xor i32 %3168, %3171
  %3173 = xor i32 %3168, 1
  %3174 = add i32 %3172, %3173
  %3175 = icmp eq i32 %3174, 2
  %3176 = zext i1 %3175 to i8
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3176, i8* %3177, align 1
  store %struct.Memory* %loadMem_402037, %struct.Memory** %MEMORY
  %loadMem_40203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 5
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %ECX.i146 = bitcast %union.anon* %3183 to i32*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 1
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RAX.i147
  %3188 = add i64 %3187, 16
  %3189 = load i32, i32* %ECX.i146
  %3190 = zext i32 %3189 to i64
  %3191 = load i64, i64* %PC.i145
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %PC.i145
  %3193 = inttoptr i64 %3188 to i32*
  store i32 %3189, i32* %3193
  store %struct.Memory* %loadMem_40203a, %struct.Memory** %MEMORY
  %loadMem_40203d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 1
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 15
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RBP.i144
  %3204 = sub i64 %3203, 8
  %3205 = load i64, i64* %PC.i142
  %3206 = add i64 %3205, 4
  store i64 %3206, i64* %PC.i142
  %3207 = inttoptr i64 %3204 to i64*
  %3208 = load i64, i64* %3207
  store i64 %3208, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_40203d, %struct.Memory** %MEMORY
  %loadMem_402041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 1
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 5
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %RAX.i140
  %3219 = add i64 %3218, 8
  %3220 = load i64, i64* %PC.i139
  %3221 = add i64 %3220, 3
  store i64 %3221, i64* %PC.i139
  %3222 = inttoptr i64 %3219 to i32*
  %3223 = load i32, i32* %3222
  %3224 = zext i32 %3223 to i64
  store i64 %3224, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_402041, %struct.Memory** %MEMORY
  %loadMem_402044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 5
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RCX.i138
  %3232 = load i64, i64* %PC.i137
  %3233 = add i64 %3232, 2
  store i64 %3233, i64* %PC.i137
  %3234 = trunc i64 %3231 to i32
  %3235 = shl i32 %3234, 1
  %3236 = icmp slt i32 %3234, 0
  %3237 = icmp slt i32 %3235, 0
  %3238 = xor i1 %3236, %3237
  %3239 = zext i32 %3235 to i64
  store i64 %3239, i64* %RCX.i138, align 8
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3241 = zext i1 %3236 to i8
  store i8 %3241, i8* %3240, align 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3243 = and i32 %3235, 254
  %3244 = call i32 @llvm.ctpop.i32(i32 %3243)
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  %3247 = xor i8 %3246, 1
  store i8 %3247, i8* %3242, align 1
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3248, align 1
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3250 = icmp eq i32 %3235, 0
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %3249, align 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3253 = lshr i32 %3235, 31
  %3254 = trunc i32 %3253 to i8
  store i8 %3254, i8* %3252, align 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3256 = zext i1 %3238 to i8
  store i8 %3256, i8* %3255, align 1
  store %struct.Memory* %loadMem_402044, %struct.Memory** %MEMORY
  %loadMem_402047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 5
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %ECX.i135 = bitcast %union.anon* %3262 to i32*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 1
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RAX.i136
  %3267 = add i64 %3266, 8
  %3268 = load i32, i32* %ECX.i135
  %3269 = zext i32 %3268 to i64
  %3270 = load i64, i64* %PC.i134
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i134
  %3272 = inttoptr i64 %3267 to i32*
  store i32 %3268, i32* %3272
  store %struct.Memory* %loadMem_402047, %struct.Memory** %MEMORY
  %loadMem_40204a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 1
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 15
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RBP.i133
  %3283 = sub i64 %3282, 8
  %3284 = load i64, i64* %PC.i131
  %3285 = add i64 %3284, 4
  store i64 %3285, i64* %PC.i131
  %3286 = inttoptr i64 %3283 to i64*
  %3287 = load i64, i64* %3286
  store i64 %3287, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_40204a, %struct.Memory** %MEMORY
  %loadMem_40204e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 5
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RAX.i129
  %3298 = add i64 %3297, 8
  %3299 = load i64, i64* %PC.i128
  %3300 = add i64 %3299, 3
  store i64 %3300, i64* %PC.i128
  %3301 = inttoptr i64 %3298 to i32*
  %3302 = load i32, i32* %3301
  %3303 = zext i32 %3302 to i64
  store i64 %3303, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_40204e, %struct.Memory** %MEMORY
  %loadMem_402051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 5
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RCX.i127
  %3311 = load i64, i64* %PC.i126
  %3312 = add i64 %3311, 3
  store i64 %3312, i64* %PC.i126
  %3313 = or i64 1, %3310
  %3314 = trunc i64 %3313 to i32
  %3315 = and i64 %3313, 4294967295
  store i64 %3315, i64* %RCX.i127, align 8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3316, align 1
  %3317 = and i32 %3314, 255
  %3318 = call i32 @llvm.ctpop.i32(i32 %3317)
  %3319 = trunc i32 %3318 to i8
  %3320 = and i8 %3319, 1
  %3321 = xor i8 %3320, 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3321, i8* %3322, align 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3323, align 1
  %3324 = lshr i32 %3314, 31
  %3325 = trunc i32 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3325, i8* %3326, align 1
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3327, align 1
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3328, align 1
  store %struct.Memory* %loadMem_402051, %struct.Memory** %MEMORY
  %loadMem_402054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 5
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %ECX.i124 = bitcast %union.anon* %3334 to i32*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 1
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %3337 to i64*
  %3338 = load i64, i64* %RAX.i125
  %3339 = add i64 %3338, 8
  %3340 = load i32, i32* %ECX.i124
  %3341 = zext i32 %3340 to i64
  %3342 = load i64, i64* %PC.i123
  %3343 = add i64 %3342, 3
  store i64 %3343, i64* %PC.i123
  %3344 = inttoptr i64 %3339 to i32*
  store i32 %3340, i32* %3344
  store %struct.Memory* %loadMem_402054, %struct.Memory** %MEMORY
  %loadMem_402057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 1
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 15
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %RBP.i122
  %3355 = sub i64 %3354, 8
  %3356 = load i64, i64* %PC.i120
  %3357 = add i64 %3356, 4
  store i64 %3357, i64* %PC.i120
  %3358 = inttoptr i64 %3355 to i64*
  %3359 = load i64, i64* %3358
  store i64 %3359, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_402057, %struct.Memory** %MEMORY
  %loadMem_40205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 33
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 1
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 5
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %3368 to i64*
  %3369 = load i64, i64* %RAX.i118
  %3370 = add i64 %3369, 12
  %3371 = load i64, i64* %PC.i117
  %3372 = add i64 %3371, 3
  store i64 %3372, i64* %PC.i117
  %3373 = inttoptr i64 %3370 to i32*
  %3374 = load i32, i32* %3373
  %3375 = zext i32 %3374 to i64
  store i64 %3375, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_40205b, %struct.Memory** %MEMORY
  %loadMem_40205e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 5
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RCX.i116
  %3383 = load i64, i64* %PC.i115
  %3384 = add i64 %3383, 3
  store i64 %3384, i64* %PC.i115
  %3385 = trunc i64 %3382 to i32
  %3386 = add i32 -1, %3385
  %3387 = zext i32 %3386 to i64
  store i64 %3387, i64* %RCX.i116, align 8
  %3388 = icmp ult i32 %3386, %3385
  %3389 = icmp ult i32 %3386, -1
  %3390 = or i1 %3388, %3389
  %3391 = zext i1 %3390 to i8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3391, i8* %3392, align 1
  %3393 = and i32 %3386, 255
  %3394 = call i32 @llvm.ctpop.i32(i32 %3393)
  %3395 = trunc i32 %3394 to i8
  %3396 = and i8 %3395, 1
  %3397 = xor i8 %3396, 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3397, i8* %3398, align 1
  %3399 = xor i64 -1, %3382
  %3400 = trunc i64 %3399 to i32
  %3401 = xor i32 %3400, %3386
  %3402 = lshr i32 %3401, 4
  %3403 = trunc i32 %3402 to i8
  %3404 = and i8 %3403, 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3404, i8* %3405, align 1
  %3406 = icmp eq i32 %3386, 0
  %3407 = zext i1 %3406 to i8
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3407, i8* %3408, align 1
  %3409 = lshr i32 %3386, 31
  %3410 = trunc i32 %3409 to i8
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3410, i8* %3411, align 1
  %3412 = lshr i32 %3385, 31
  %3413 = xor i32 %3409, %3412
  %3414 = xor i32 %3409, 1
  %3415 = add i32 %3413, %3414
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3417, i8* %3418, align 1
  store %struct.Memory* %loadMem_40205e, %struct.Memory** %MEMORY
  %loadMem_402061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 5
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %ECX.i113 = bitcast %union.anon* %3424 to i32*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 1
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %RAX.i114
  %3429 = add i64 %3428, 12
  %3430 = load i32, i32* %ECX.i113
  %3431 = zext i32 %3430 to i64
  %3432 = load i64, i64* %PC.i112
  %3433 = add i64 %3432, 3
  store i64 %3433, i64* %PC.i112
  %3434 = inttoptr i64 %3429 to i32*
  store i32 %3430, i32* %3434
  store %struct.Memory* %loadMem_402061, %struct.Memory** %MEMORY
  %loadMem_402064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 5
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %ECX.i111 = bitcast %union.anon* %3440 to i32*
  %3441 = load i32, i32* %ECX.i111
  %3442 = zext i32 %3441 to i64
  %3443 = load i64, i64* %PC.i110
  %3444 = add i64 %3443, 3
  store i64 %3444, i64* %PC.i110
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3445, align 1
  %3446 = and i32 %3441, 255
  %3447 = call i32 @llvm.ctpop.i32(i32 %3446)
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = xor i8 %3449, 1
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3450, i8* %3451, align 1
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3452, align 1
  %3453 = icmp eq i32 %3441, 0
  %3454 = zext i1 %3453 to i8
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3454, i8* %3455, align 1
  %3456 = lshr i32 %3441, 31
  %3457 = trunc i32 %3456 to i8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3457, i8* %3458, align 1
  %3459 = lshr i32 %3441, 31
  %3460 = xor i32 %3456, %3459
  %3461 = add i32 %3460, %3459
  %3462 = icmp eq i32 %3461, 2
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3463, i8* %3464, align 1
  store %struct.Memory* %loadMem_402064, %struct.Memory** %MEMORY
  %loadMem_402067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3467 to i64*
  %3468 = load i64, i64* %PC.i109
  %3469 = add i64 %3468, 107
  %3470 = load i64, i64* %PC.i109
  %3471 = add i64 %3470, 6
  %3472 = load i64, i64* %PC.i109
  %3473 = add i64 %3472, 6
  store i64 %3473, i64* %PC.i109
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3475 = load i8, i8* %3474, align 1
  %3476 = icmp eq i8 %3475, 0
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %BRANCH_TAKEN, align 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3479 = select i1 %3476, i64 %3469, i64 %3471
  store i64 %3479, i64* %3478, align 8
  store %struct.Memory* %loadMem_402067, %struct.Memory** %MEMORY
  %loadBr_402067 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402067 = icmp eq i8 %loadBr_402067, 1
  br i1 %cmpBr_402067, label %block_.L_4020d2, label %block_40206d

block_40206d:                                     ; preds = %block_402030
  %loadMem_40206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 33
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3482 to i64*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 1
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 15
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %3488 to i64*
  %3489 = load i64, i64* %RBP.i108
  %3490 = sub i64 %3489, 8
  %3491 = load i64, i64* %PC.i106
  %3492 = add i64 %3491, 4
  store i64 %3492, i64* %PC.i106
  %3493 = inttoptr i64 %3490 to i64*
  %3494 = load i64, i64* %3493
  store i64 %3494, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_40206d, %struct.Memory** %MEMORY
  %loadMem_402071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 33
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 1
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 5
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %RAX.i104
  %3505 = add i64 %3504, 8
  %3506 = load i64, i64* %PC.i103
  %3507 = add i64 %3506, 3
  store i64 %3507, i64* %PC.i103
  %3508 = inttoptr i64 %3505 to i32*
  %3509 = load i32, i32* %3508
  %3510 = zext i32 %3509 to i64
  store i64 %3510, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_402071, %struct.Memory** %MEMORY
  %loadMem_402074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 5
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %3517 = bitcast %union.anon* %3516 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3517, i32 0, i32 0
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 7
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %3521 = bitcast %union.anon* %3520 to %struct.anon.2*
  %DL.i102 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3521, i32 0, i32 0
  %3522 = load i8, i8* %CL.i
  %3523 = zext i8 %3522 to i64
  %3524 = load i64, i64* %PC.i101
  %3525 = add i64 %3524, 2
  store i64 %3525, i64* %PC.i101
  store i8 %3522, i8* %DL.i102, align 1
  store %struct.Memory* %loadMem_402074, %struct.Memory** %MEMORY
  %loadMem_402076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 1
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 15
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RBP.i100
  %3536 = sub i64 %3535, 8
  %3537 = load i64, i64* %PC.i98
  %3538 = add i64 %3537, 4
  store i64 %3538, i64* %PC.i98
  %3539 = inttoptr i64 %3536 to i64*
  %3540 = load i64, i64* %3539
  store i64 %3540, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_402076, %struct.Memory** %MEMORY
  %loadMem_40207a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 1
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %3546 to i64*
  %3547 = load i64, i64* %RAX.i97
  %3548 = add i64 %3547, 24
  %3549 = load i64, i64* %PC.i96
  %3550 = add i64 %3549, 4
  store i64 %3550, i64* %PC.i96
  %3551 = inttoptr i64 %3548 to i64*
  %3552 = load i64, i64* %3551
  store i64 %3552, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_40207a, %struct.Memory** %MEMORY
  %loadMem_40207e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 9
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RSI.i94 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 15
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %RBP.i95
  %3563 = sub i64 %3562, 8
  %3564 = load i64, i64* %PC.i93
  %3565 = add i64 %3564, 4
  store i64 %3565, i64* %PC.i93
  %3566 = inttoptr i64 %3563 to i64*
  %3567 = load i64, i64* %3566
  store i64 %3567, i64* %RSI.i94, align 8
  store %struct.Memory* %loadMem_40207e, %struct.Memory** %MEMORY
  %loadMem_402082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 9
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RSI.i92 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RSI.i92
  %3575 = add i64 %3574, 32
  %3576 = load i64, i64* %PC.i91
  %3577 = add i64 %3576, 4
  store i64 %3577, i64* %PC.i91
  %3578 = inttoptr i64 %3575 to i64*
  %3579 = load i64, i64* %3578
  store i64 %3579, i64* %RSI.i92, align 8
  store %struct.Memory* %loadMem_402082, %struct.Memory** %MEMORY
  %loadMem_402086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 5
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 9
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RSI.i90 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RSI.i90
  %3590 = load i64, i64* %PC.i88
  %3591 = add i64 %3590, 2
  store i64 %3591, i64* %PC.i88
  %3592 = inttoptr i64 %3589 to i32*
  %3593 = load i32, i32* %3592
  %3594 = zext i32 %3593 to i64
  store i64 %3594, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_402086, %struct.Memory** %MEMORY
  %loadMem_402088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 5
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %ECX.i86 = bitcast %union.anon* %3600 to i32*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 11
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %3603 to i64*
  %3604 = load i32, i32* %ECX.i86
  %3605 = zext i32 %3604 to i64
  %3606 = load i64, i64* %PC.i85
  %3607 = add i64 %3606, 2
  store i64 %3607, i64* %PC.i85
  %3608 = and i64 %3605, 4294967295
  store i64 %3608, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_402088, %struct.Memory** %MEMORY
  %loadMem_40208a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 11
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %RDI.i
  %3616 = load i64, i64* %PC.i84
  %3617 = add i64 %3616, 3
  store i64 %3617, i64* %PC.i84
  %3618 = trunc i64 %3615 to i32
  %3619 = add i32 1, %3618
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RDI.i, align 8
  %3621 = icmp ult i32 %3619, %3618
  %3622 = icmp ult i32 %3619, 1
  %3623 = or i1 %3621, %3622
  %3624 = zext i1 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3624, i8* %3625, align 1
  %3626 = and i32 %3619, 255
  %3627 = call i32 @llvm.ctpop.i32(i32 %3626)
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3630, i8* %3631, align 1
  %3632 = xor i64 1, %3615
  %3633 = trunc i64 %3632 to i32
  %3634 = xor i32 %3633, %3619
  %3635 = lshr i32 %3634, 4
  %3636 = trunc i32 %3635 to i8
  %3637 = and i8 %3636, 1
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3637, i8* %3638, align 1
  %3639 = icmp eq i32 %3619, 0
  %3640 = zext i1 %3639 to i8
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3640, i8* %3641, align 1
  %3642 = lshr i32 %3619, 31
  %3643 = trunc i32 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3643, i8* %3644, align 1
  %3645 = lshr i32 %3618, 31
  %3646 = xor i32 %3642, %3645
  %3647 = add i32 %3646, %3642
  %3648 = icmp eq i32 %3647, 2
  %3649 = zext i1 %3648 to i8
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3649, i8* %3650, align 1
  store %struct.Memory* %loadMem_40208a, %struct.Memory** %MEMORY
  %loadMem_40208d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 11
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3656 to i32*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 9
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %RSI.i83
  %3661 = load i32, i32* %EDI.i
  %3662 = zext i32 %3661 to i64
  %3663 = load i64, i64* %PC.i82
  %3664 = add i64 %3663, 2
  store i64 %3664, i64* %PC.i82
  %3665 = inttoptr i64 %3660 to i32*
  store i32 %3661, i32* %3665
  store %struct.Memory* %loadMem_40208d, %struct.Memory** %MEMORY
  %loadMem_40208f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 5
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %ECX.i80 = bitcast %union.anon* %3671 to i32*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 9
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %RSI.i81 = bitcast %union.anon* %3674 to i64*
  %3675 = load i32, i32* %ECX.i80
  %3676 = zext i32 %3675 to i64
  %3677 = load i64, i64* %PC.i79
  %3678 = add i64 %3677, 3
  store i64 %3678, i64* %PC.i79
  %3679 = shl i64 %3676, 32
  %3680 = ashr exact i64 %3679, 32
  store i64 %3680, i64* %RSI.i81, align 8
  store %struct.Memory* %loadMem_40208f, %struct.Memory** %MEMORY
  %loadMem_402092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 33
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 7
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %3687 = bitcast %union.anon* %3686 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3687, i32 0, i32 0
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 9
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RAX.i78
  %3695 = load i64, i64* %RSI.i
  %3696 = add i64 %3695, %3694
  %3697 = load i8, i8* %DL.i
  %3698 = zext i8 %3697 to i64
  %3699 = load i64, i64* %PC.i77
  %3700 = add i64 %3699, 3
  store i64 %3700, i64* %PC.i77
  %3701 = inttoptr i64 %3696 to i8*
  store i8 %3697, i8* %3701
  store %struct.Memory* %loadMem_402092, %struct.Memory** %MEMORY
  %loadMem_402095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 1
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 15
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %3710 to i64*
  %3711 = load i64, i64* %RBP.i76
  %3712 = sub i64 %3711, 8
  %3713 = load i64, i64* %PC.i74
  %3714 = add i64 %3713, 4
  store i64 %3714, i64* %PC.i74
  %3715 = inttoptr i64 %3712 to i64*
  %3716 = load i64, i64* %3715
  store i64 %3716, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_402095, %struct.Memory** %MEMORY
  %loadMem_402099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 33
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3719 to i64*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 1
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %3722 to i64*
  %3723 = load i64, i64* %RAX.i73
  %3724 = add i64 %3723, 12
  %3725 = load i64, i64* %PC.i72
  %3726 = add i64 %3725, 7
  store i64 %3726, i64* %PC.i72
  %3727 = inttoptr i64 %3724 to i32*
  store i32 8, i32* %3727
  store %struct.Memory* %loadMem_402099, %struct.Memory** %MEMORY
  br label %block_.L_4020a0

block_.L_4020a0:                                  ; preds = %block_4020ae, %block_40206d
  %loadMem_4020a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 1
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 15
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %RBP.i71
  %3738 = sub i64 %3737, 8
  %3739 = load i64, i64* %PC.i69
  %3740 = add i64 %3739, 4
  store i64 %3740, i64* %PC.i69
  %3741 = inttoptr i64 %3738 to i64*
  %3742 = load i64, i64* %3741
  store i64 %3742, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_4020a0, %struct.Memory** %MEMORY
  %loadMem_4020a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %RAX.i68
  %3750 = add i64 %3749, 80
  %3751 = load i64, i64* %PC.i67
  %3752 = add i64 %3751, 4
  store i64 %3752, i64* %PC.i67
  %3753 = inttoptr i64 %3750 to i32*
  %3754 = load i32, i32* %3753
  %3755 = sub i32 %3754, 7
  %3756 = icmp ult i32 %3754, 7
  %3757 = zext i1 %3756 to i8
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3757, i8* %3758, align 1
  %3759 = and i32 %3755, 255
  %3760 = call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3763, i8* %3764, align 1
  %3765 = xor i32 %3754, 7
  %3766 = xor i32 %3765, %3755
  %3767 = lshr i32 %3766, 4
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3769, i8* %3770, align 1
  %3771 = icmp eq i32 %3755, 0
  %3772 = zext i1 %3771 to i8
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3772, i8* %3773, align 1
  %3774 = lshr i32 %3755, 31
  %3775 = trunc i32 %3774 to i8
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3775, i8* %3776, align 1
  %3777 = lshr i32 %3754, 31
  %3778 = xor i32 %3774, %3777
  %3779 = add i32 %3778, %3777
  %3780 = icmp eq i32 %3779, 2
  %3781 = zext i1 %3780 to i8
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3781, i8* %3782, align 1
  store %struct.Memory* %loadMem_4020a4, %struct.Memory** %MEMORY
  %loadMem_4020a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %PC.i66
  %3787 = add i64 %3786, 37
  %3788 = load i64, i64* %PC.i66
  %3789 = add i64 %3788, 6
  %3790 = load i64, i64* %PC.i66
  %3791 = add i64 %3790, 6
  store i64 %3791, i64* %PC.i66
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3793 = load i8, i8* %3792, align 1
  %3794 = icmp ne i8 %3793, 0
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3796 = load i8, i8* %3795, align 1
  %3797 = icmp ne i8 %3796, 0
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3799 = load i8, i8* %3798, align 1
  %3800 = icmp ne i8 %3799, 0
  %3801 = xor i1 %3797, %3800
  %3802 = or i1 %3794, %3801
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %BRANCH_TAKEN, align 1
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3805 = select i1 %3802, i64 %3787, i64 %3789
  store i64 %3805, i64* %3804, align 8
  store %struct.Memory* %loadMem_4020a8, %struct.Memory** %MEMORY
  %loadBr_4020a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4020a8 = icmp eq i8 %loadBr_4020a8, 1
  br i1 %cmpBr_4020a8, label %block_.L_4020cd, label %block_4020ae

block_4020ae:                                     ; preds = %block_.L_4020a0
  %loadMem_4020ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 1
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 15
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %RBP.i65
  %3816 = sub i64 %3815, 8
  %3817 = load i64, i64* %PC.i63
  %3818 = add i64 %3817, 4
  store i64 %3818, i64* %PC.i63
  %3819 = inttoptr i64 %3816 to i64*
  %3820 = load i64, i64* %3819
  store i64 %3820, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_4020ae, %struct.Memory** %MEMORY
  %loadMem_4020b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 33
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3823 to i64*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 1
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 5
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %3829 to i64*
  %3830 = load i64, i64* %RAX.i61
  %3831 = add i64 %3830, 80
  %3832 = load i64, i64* %PC.i60
  %3833 = add i64 %3832, 3
  store i64 %3833, i64* %PC.i60
  %3834 = inttoptr i64 %3831 to i32*
  %3835 = load i32, i32* %3834
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_4020b2, %struct.Memory** %MEMORY
  %loadMem_4020b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 33
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 5
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3842 to i64*
  %3843 = load i64, i64* %RCX.i59
  %3844 = load i64, i64* %PC.i58
  %3845 = add i64 %3844, 3
  store i64 %3845, i64* %PC.i58
  %3846 = trunc i64 %3843 to i32
  %3847 = sub i32 %3846, 8
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RCX.i59, align 8
  %3849 = icmp ult i32 %3846, 8
  %3850 = zext i1 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3850, i8* %3851, align 1
  %3852 = and i32 %3847, 255
  %3853 = call i32 @llvm.ctpop.i32(i32 %3852)
  %3854 = trunc i32 %3853 to i8
  %3855 = and i8 %3854, 1
  %3856 = xor i8 %3855, 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3856, i8* %3857, align 1
  %3858 = xor i64 8, %3843
  %3859 = trunc i64 %3858 to i32
  %3860 = xor i32 %3859, %3847
  %3861 = lshr i32 %3860, 4
  %3862 = trunc i32 %3861 to i8
  %3863 = and i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3863, i8* %3864, align 1
  %3865 = icmp eq i32 %3847, 0
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3866, i8* %3867, align 1
  %3868 = lshr i32 %3847, 31
  %3869 = trunc i32 %3868 to i8
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3869, i8* %3870, align 1
  %3871 = lshr i32 %3846, 31
  %3872 = xor i32 %3868, %3871
  %3873 = add i32 %3872, %3871
  %3874 = icmp eq i32 %3873, 2
  %3875 = zext i1 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3875, i8* %3876, align 1
  store %struct.Memory* %loadMem_4020b5, %struct.Memory** %MEMORY
  %loadMem_4020b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 5
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %ECX.i56 = bitcast %union.anon* %3882 to i32*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 1
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RAX.i57
  %3887 = add i64 %3886, 80
  %3888 = load i32, i32* %ECX.i56
  %3889 = zext i32 %3888 to i64
  %3890 = load i64, i64* %PC.i55
  %3891 = add i64 %3890, 3
  store i64 %3891, i64* %PC.i55
  %3892 = inttoptr i64 %3887 to i32*
  store i32 %3888, i32* %3892
  store %struct.Memory* %loadMem_4020b8, %struct.Memory** %MEMORY
  %loadMem_4020bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i54
  %3903 = sub i64 %3902, 8
  %3904 = load i64, i64* %PC.i52
  %3905 = add i64 %3904, 4
  store i64 %3905, i64* %PC.i52
  %3906 = inttoptr i64 %3903 to i64*
  %3907 = load i64, i64* %3906
  store i64 %3907, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_4020bb, %struct.Memory** %MEMORY
  %loadMem_4020bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 1
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 5
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RAX.i50
  %3918 = add i64 %3917, 88
  %3919 = load i64, i64* %PC.i49
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i49
  %3921 = inttoptr i64 %3918 to i32*
  %3922 = load i32, i32* %3921
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_4020bf, %struct.Memory** %MEMORY
  %loadMem_4020c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 5
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %3929 to i64*
  %3930 = load i64, i64* %RCX.i48
  %3931 = load i64, i64* %PC.i47
  %3932 = add i64 %3931, 3
  store i64 %3932, i64* %PC.i47
  %3933 = trunc i64 %3930 to i32
  %3934 = add i32 1, %3933
  %3935 = zext i32 %3934 to i64
  store i64 %3935, i64* %RCX.i48, align 8
  %3936 = icmp ult i32 %3934, %3933
  %3937 = icmp ult i32 %3934, 1
  %3938 = or i1 %3936, %3937
  %3939 = zext i1 %3938 to i8
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3939, i8* %3940, align 1
  %3941 = and i32 %3934, 255
  %3942 = call i32 @llvm.ctpop.i32(i32 %3941)
  %3943 = trunc i32 %3942 to i8
  %3944 = and i8 %3943, 1
  %3945 = xor i8 %3944, 1
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3945, i8* %3946, align 1
  %3947 = xor i64 1, %3930
  %3948 = trunc i64 %3947 to i32
  %3949 = xor i32 %3948, %3934
  %3950 = lshr i32 %3949, 4
  %3951 = trunc i32 %3950 to i8
  %3952 = and i8 %3951, 1
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3952, i8* %3953, align 1
  %3954 = icmp eq i32 %3934, 0
  %3955 = zext i1 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3955, i8* %3956, align 1
  %3957 = lshr i32 %3934, 31
  %3958 = trunc i32 %3957 to i8
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3958, i8* %3959, align 1
  %3960 = lshr i32 %3933, 31
  %3961 = xor i32 %3957, %3960
  %3962 = add i32 %3961, %3957
  %3963 = icmp eq i32 %3962, 2
  %3964 = zext i1 %3963 to i8
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3964, i8* %3965, align 1
  store %struct.Memory* %loadMem_4020c2, %struct.Memory** %MEMORY
  %loadMem_4020c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 5
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %ECX.i45 = bitcast %union.anon* %3971 to i32*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 1
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RAX.i46
  %3976 = add i64 %3975, 88
  %3977 = load i32, i32* %ECX.i45
  %3978 = zext i32 %3977 to i64
  %3979 = load i64, i64* %PC.i44
  %3980 = add i64 %3979, 3
  store i64 %3980, i64* %PC.i44
  %3981 = inttoptr i64 %3976 to i32*
  store i32 %3977, i32* %3981
  store %struct.Memory* %loadMem_4020c5, %struct.Memory** %MEMORY
  %loadMem_4020c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %PC.i43
  %3986 = add i64 %3985, -40
  %3987 = load i64, i64* %PC.i43
  %3988 = add i64 %3987, 5
  store i64 %3988, i64* %PC.i43
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3986, i64* %3989, align 8
  store %struct.Memory* %loadMem_4020c8, %struct.Memory** %MEMORY
  br label %block_.L_4020a0

block_.L_4020cd:                                  ; preds = %block_.L_4020a0
  %loadMem_4020cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3992 to i64*
  %3993 = load i64, i64* %PC.i42
  %3994 = add i64 %3993, 5
  %3995 = load i64, i64* %PC.i42
  %3996 = add i64 %3995, 5
  store i64 %3996, i64* %PC.i42
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3994, i64* %3997, align 8
  store %struct.Memory* %loadMem_4020cd, %struct.Memory** %MEMORY
  br label %block_.L_4020d2

block_.L_4020d2:                                  ; preds = %block_.L_4020cd, %block_402030
  %loadMem_4020d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4000 to i64*
  %4001 = load i64, i64* %PC.i41
  %4002 = add i64 %4001, -176
  %4003 = load i64, i64* %PC.i41
  %4004 = add i64 %4003, 5
  store i64 %4004, i64* %PC.i41
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4002, i64* %4005, align 8
  store %struct.Memory* %loadMem_4020d2, %struct.Memory** %MEMORY
  br label %block_.L_402022

block_.L_4020d7:                                  ; preds = %block_.L_402022
  %loadMem_4020d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4008 to i64*
  %4009 = load i64, i64* %PC.i40
  %4010 = add i64 %4009, 30
  %4011 = load i64, i64* %PC.i40
  %4012 = add i64 %4011, 5
  store i64 %4012, i64* %PC.i40
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4010, i64* %4013, align 8
  store %struct.Memory* %loadMem_4020d7, %struct.Memory** %MEMORY
  br label %block_.L_4020f5

block_.L_4020dc:                                  ; preds = %block_.L_401f7e
  %loadMem_4020dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 1
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 15
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RBP.i39
  %4024 = sub i64 %4023, 8
  %4025 = load i64, i64* %PC.i37
  %4026 = add i64 %4025, 4
  store i64 %4026, i64* %PC.i37
  %4027 = inttoptr i64 %4024 to i64*
  %4028 = load i64, i64* %4027
  store i64 %4028, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_4020dc, %struct.Memory** %MEMORY
  %loadMem_4020e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 1
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4034 to i64*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 5
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %4037 to i64*
  %4038 = load i64, i64* %RAX.i35
  %4039 = add i64 %4038, 16
  %4040 = load i64, i64* %PC.i34
  %4041 = add i64 %4040, 3
  store i64 %4041, i64* %PC.i34
  %4042 = inttoptr i64 %4039 to i32*
  %4043 = load i32, i32* %4042
  %4044 = zext i32 %4043 to i64
  store i64 %4044, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_4020e0, %struct.Memory** %MEMORY
  %loadMem_4020e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 5
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RCX.i33
  %4052 = load i64, i64* %PC.i32
  %4053 = add i64 %4052, 3
  store i64 %4053, i64* %PC.i32
  %4054 = trunc i64 %4051 to i32
  %4055 = add i32 1, %4054
  %4056 = zext i32 %4055 to i64
  store i64 %4056, i64* %RCX.i33, align 8
  %4057 = icmp ult i32 %4055, %4054
  %4058 = icmp ult i32 %4055, 1
  %4059 = or i1 %4057, %4058
  %4060 = zext i1 %4059 to i8
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4060, i8* %4061, align 1
  %4062 = and i32 %4055, 255
  %4063 = call i32 @llvm.ctpop.i32(i32 %4062)
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  %4066 = xor i8 %4065, 1
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4066, i8* %4067, align 1
  %4068 = xor i64 1, %4051
  %4069 = trunc i64 %4068 to i32
  %4070 = xor i32 %4069, %4055
  %4071 = lshr i32 %4070, 4
  %4072 = trunc i32 %4071 to i8
  %4073 = and i8 %4072, 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4073, i8* %4074, align 1
  %4075 = icmp eq i32 %4055, 0
  %4076 = zext i1 %4075 to i8
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4076, i8* %4077, align 1
  %4078 = lshr i32 %4055, 31
  %4079 = trunc i32 %4078 to i8
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4079, i8* %4080, align 1
  %4081 = lshr i32 %4054, 31
  %4082 = xor i32 %4078, %4081
  %4083 = add i32 %4082, %4078
  %4084 = icmp eq i32 %4083, 2
  %4085 = zext i1 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4085, i8* %4086, align 1
  store %struct.Memory* %loadMem_4020e3, %struct.Memory** %MEMORY
  %loadMem_4020e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 5
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %ECX.i30 = bitcast %union.anon* %4092 to i32*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 1
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RAX.i31
  %4097 = add i64 %4096, 16
  %4098 = load i32, i32* %ECX.i30
  %4099 = zext i32 %4098 to i64
  %4100 = load i64, i64* %PC.i29
  %4101 = add i64 %4100, 3
  store i64 %4101, i64* %PC.i29
  %4102 = inttoptr i64 %4097 to i32*
  store i32 %4098, i32* %4102
  store %struct.Memory* %loadMem_4020e6, %struct.Memory** %MEMORY
  %loadMem_4020e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 5
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 15
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RBP.i28
  %4113 = sub i64 %4112, 16
  %4114 = load i64, i64* %PC.i26
  %4115 = add i64 %4114, 3
  store i64 %4115, i64* %PC.i26
  %4116 = inttoptr i64 %4113 to i32*
  %4117 = load i32, i32* %4116
  %4118 = zext i32 %4117 to i64
  store i64 %4118, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_4020e9, %struct.Memory** %MEMORY
  %loadMem_4020ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 5
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %RCX.i25
  %4126 = load i64, i64* %PC.i24
  %4127 = add i64 %4126, 6
  store i64 %4127, i64* %PC.i24
  %4128 = trunc i64 %4125 to i32
  %4129 = sub i32 %4128, 512
  %4130 = zext i32 %4129 to i64
  store i64 %4130, i64* %RCX.i25, align 8
  %4131 = icmp ult i32 %4128, 512
  %4132 = zext i1 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4132, i8* %4133, align 1
  %4134 = and i32 %4129, 255
  %4135 = call i32 @llvm.ctpop.i32(i32 %4134)
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = xor i8 %4137, 1
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4138, i8* %4139, align 1
  %4140 = xor i64 512, %4125
  %4141 = trunc i64 %4140 to i32
  %4142 = xor i32 %4141, %4129
  %4143 = lshr i32 %4142, 4
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4145, i8* %4146, align 1
  %4147 = icmp eq i32 %4129, 0
  %4148 = zext i1 %4147 to i8
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4148, i8* %4149, align 1
  %4150 = lshr i32 %4129, 31
  %4151 = trunc i32 %4150 to i8
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4151, i8* %4152, align 1
  %4153 = lshr i32 %4128, 31
  %4154 = xor i32 %4150, %4153
  %4155 = add i32 %4154, %4153
  %4156 = icmp eq i32 %4155, 2
  %4157 = zext i1 %4156 to i8
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4157, i8* %4158, align 1
  store %struct.Memory* %loadMem_4020ec, %struct.Memory** %MEMORY
  %loadMem_4020f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 5
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4164 to i32*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 15
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RBP.i23
  %4169 = sub i64 %4168, 16
  %4170 = load i32, i32* %ECX.i
  %4171 = zext i32 %4170 to i64
  %4172 = load i64, i64* %PC.i22
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i22
  %4174 = inttoptr i64 %4169 to i32*
  store i32 %4170, i32* %4174
  store %struct.Memory* %loadMem_4020f2, %struct.Memory** %MEMORY
  br label %block_.L_4020f5

block_.L_4020f5:                                  ; preds = %block_.L_4020dc, %block_.L_4020d7
  %loadMem_4020f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4177 to i64*
  %4178 = load i64, i64* %PC.i21
  %4179 = add i64 %4178, 5
  %4180 = load i64, i64* %PC.i21
  %4181 = add i64 %4180, 5
  store i64 %4181, i64* %PC.i21
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4179, i64* %4182, align 8
  store %struct.Memory* %loadMem_4020f5, %struct.Memory** %MEMORY
  br label %block_.L_4020fa

block_.L_4020fa:                                  ; preds = %block_.L_4020f5, %block_.L_401f6e
  %loadMem_4020fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 33
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 1
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 15
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4191 to i64*
  %4192 = load i64, i64* %RBP.i20
  %4193 = sub i64 %4192, 16
  %4194 = load i64, i64* %PC.i18
  %4195 = add i64 %4194, 3
  store i64 %4195, i64* %PC.i18
  %4196 = inttoptr i64 %4193 to i32*
  %4197 = load i32, i32* %4196
  %4198 = zext i32 %4197 to i64
  store i64 %4198, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_4020fa, %struct.Memory** %MEMORY
  %loadMem_4020fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 5
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 15
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %4207 to i64*
  %4208 = load i64, i64* %RBP.i17
  %4209 = sub i64 %4208, 8
  %4210 = load i64, i64* %PC.i15
  %4211 = add i64 %4210, 4
  store i64 %4211, i64* %PC.i15
  %4212 = inttoptr i64 %4209 to i64*
  %4213 = load i64, i64* %4212
  store i64 %4213, i64* %RCX.i16, align 8
  store %struct.Memory* %loadMem_4020fd, %struct.Memory** %MEMORY
  %loadMem_402101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 1
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %4219 to i32*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 5
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %RCX.i14
  %4224 = load i32, i32* %EAX.i13
  %4225 = zext i32 %4224 to i64
  %4226 = load i64, i64* %PC.i12
  %4227 = add i64 %4226, 2
  store i64 %4227, i64* %PC.i12
  %4228 = inttoptr i64 %4223 to i32*
  store i32 %4224, i32* %4228
  store %struct.Memory* %loadMem_402101, %struct.Memory** %MEMORY
  %loadMem_402103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 33
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4231 to i64*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 5
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 15
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4237 to i64*
  %4238 = load i64, i64* %RBP.i11
  %4239 = sub i64 %4238, 8
  %4240 = load i64, i64* %PC.i9
  %4241 = add i64 %4240, 4
  store i64 %4241, i64* %PC.i9
  %4242 = inttoptr i64 %4239 to i64*
  %4243 = load i64, i64* %4242
  store i64 %4243, i64* %RCX.i10, align 8
  store %struct.Memory* %loadMem_402103, %struct.Memory** %MEMORY
  %loadMem_402107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 5
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %RCX.i8 = bitcast %union.anon* %4252 to i64*
  %4253 = load i64, i64* %RCX.i8
  %4254 = add i64 %4253, 80
  %4255 = load i64, i64* %PC.i6
  %4256 = add i64 %4255, 3
  store i64 %4256, i64* %PC.i6
  %4257 = inttoptr i64 %4254 to i32*
  %4258 = load i32, i32* %4257
  %4259 = zext i32 %4258 to i64
  store i64 %4259, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_402107, %struct.Memory** %MEMORY
  %loadMem_40210a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 1
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4265 to i64*
  %4266 = load i64, i64* %RAX.i
  %4267 = load i64, i64* %PC.i5
  %4268 = add i64 %4267, 3
  store i64 %4268, i64* %PC.i5
  %4269 = trunc i64 %4266 to i32
  %4270 = add i32 1, %4269
  %4271 = zext i32 %4270 to i64
  store i64 %4271, i64* %RAX.i, align 8
  %4272 = icmp ult i32 %4270, %4269
  %4273 = icmp ult i32 %4270, 1
  %4274 = or i1 %4272, %4273
  %4275 = zext i1 %4274 to i8
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4275, i8* %4276, align 1
  %4277 = and i32 %4270, 255
  %4278 = call i32 @llvm.ctpop.i32(i32 %4277)
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = xor i8 %4280, 1
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4281, i8* %4282, align 1
  %4283 = xor i64 1, %4266
  %4284 = trunc i64 %4283 to i32
  %4285 = xor i32 %4284, %4270
  %4286 = lshr i32 %4285, 4
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4288, i8* %4289, align 1
  %4290 = icmp eq i32 %4270, 0
  %4291 = zext i1 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4291, i8* %4292, align 1
  %4293 = lshr i32 %4270, 31
  %4294 = trunc i32 %4293 to i8
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4294, i8* %4295, align 1
  %4296 = lshr i32 %4269, 31
  %4297 = xor i32 %4293, %4296
  %4298 = add i32 %4297, %4293
  %4299 = icmp eq i32 %4298, 2
  %4300 = zext i1 %4299 to i8
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4300, i8* %4301, align 1
  store %struct.Memory* %loadMem_40210a, %struct.Memory** %MEMORY
  %loadMem_40210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4304 to i64*
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 1
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4307 to i32*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 5
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %RCX.i
  %4312 = add i64 %4311, 80
  %4313 = load i32, i32* %EAX.i
  %4314 = zext i32 %4313 to i64
  %4315 = load i64, i64* %PC.i4
  %4316 = add i64 %4315, 3
  store i64 %4316, i64* %PC.i4
  %4317 = inttoptr i64 %4312 to i32*
  store i32 %4313, i32* %4317
  store %struct.Memory* %loadMem_40210d, %struct.Memory** %MEMORY
  %loadMem_402110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 33
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4320 to i64*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 15
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4323 to i64*
  %4324 = load i64, i64* %PC.i2
  %4325 = add i64 %4324, 1
  store i64 %4325, i64* %PC.i2
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4327 = load i64, i64* %4326, align 8
  %4328 = add i64 %4327, 8
  %4329 = inttoptr i64 %4327 to i64*
  %4330 = load i64, i64* %4329
  store i64 %4330, i64* %RBP.i3, align 8
  store i64 %4328, i64* %4326, align 8
  store %struct.Memory* %loadMem_402110, %struct.Memory** %MEMORY
  %loadMem_402111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %PC.i1
  %4335 = add i64 %4334, 1
  store i64 %4335, i64* %PC.i1
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4338 = load i64, i64* %4337, align 8
  %4339 = inttoptr i64 %4338 to i64*
  %4340 = load i64, i64* %4339
  store i64 %4340, i64* %4336, align 8
  %4341 = add i64 %4338, 8
  store i64 %4341, i64* %4337, align 8
  store %struct.Memory* %loadMem_402111, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_402111
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

define %struct.Memory* @routine_movw__si___ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %SI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %SI
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  store i16 %12, i16* %AX, align 2
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

define %struct.Memory* @routine_movw__ax__MINUS0xa__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 10
  %14 = load i16, i16* %AX
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i16*
  store i16 %14, i16* %18
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

define %struct.Memory* @routine_movl___rdi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_MINUS0xa__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 10
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = sext i16 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_401e15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x400__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1024
  %16 = icmp ult i32 %14, 1024
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
  %25 = xor i32 %14, 1024
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

define %struct.Memory* @routine_jb_.L_401f7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
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

define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 1, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_401eb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl____rax__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__0x8__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 8, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x7__0x50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 80
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

define %struct.Memory* @routine_jle_.L_401eb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 8
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 8
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
  %24 = xor i64 8, %9
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

define %struct.Memory* @routine_movl__ecx__0x50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401e85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401eb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401ebc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jbe_.L_401f6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401f69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_401f64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401f37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401f69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x400___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1024
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 1024
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
  %24 = xor i64 1024, %9
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

define %struct.Memory* @routine_jmpq_.L_4020fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x200__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 512
  %16 = icmp ult i32 %14, 512
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
  %25 = xor i32 %14, 512
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

define %struct.Memory* @routine_jae_.L_4020dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40201d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_402018(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401feb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40201d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402022(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_4020d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4020d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4020cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4020a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4020d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4020f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x200___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 512
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 512
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
  %24 = xor i64 512, %9
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x50__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
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

define %struct.Memory* @routine_movl__eax__0x50__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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
