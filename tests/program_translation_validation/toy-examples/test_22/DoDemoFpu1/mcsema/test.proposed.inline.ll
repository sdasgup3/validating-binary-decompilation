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

declare %struct.Memory* @sub_400590.timespi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @DoDemoFpu1(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4004f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4004f0, %struct.Memory** %MEMORY
  %loadMem_4004f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i17 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i17
  %27 = load i64, i64* %PC.i16
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i16
  store i64 %26, i64* %RBP.i18, align 8
  store %struct.Memory* %loadMem_4004f1, %struct.Memory** %MEMORY
  %loadMem_4004f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i29 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i29
  %36 = load i64, i64* %PC.i28
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i28
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i29, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_4004f4, %struct.Memory** %MEMORY
  %loadMem_4004f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %74 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %73, i32 0, i32 0
  %75 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %74, i64 0, i64 0
  %ST0.i32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %75, i32 0, i32 1
  %76 = load i64, i64* %RBP.i31
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i30
  %79 = load i64, i64* %PC.i30
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC.i30
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %82 = bitcast i32* %81 to i64*
  store i64 %77, i64* %82, align 16
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %83, align 2
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %85 = bitcast i32* %84 to i64*
  store i64 %78, i64* %85, align 8
  %86 = inttoptr i64 %77 to x86_fp80*
  %87 = load x86_fp80, x86_fp80* %86
  %88 = fptrunc x86_fp80 %87 to double
  %89 = bitcast double %88 to i64
  %90 = and i64 %89, 9221120237041090560
  %91 = icmp eq i64 %90, 9218868437227405312
  %92 = and i64 %89, 2251799813685247
  %93 = icmp ne i64 %92, 0
  %94 = and i1 %91, %93
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %97 = load i8, i8* %96, align 1
  %98 = or i8 %95, %97
  store i8 %98, i8* %96, align 1
  %99 = fcmp ueq double %88, 0.000000e+00
  br i1 %99, label %routine_fldt_0x10__rbp_.exit, label %100

; <label>:100:                                    ; preds = %entry
  %101 = call double @llvm.fabs.f64(double %88)
  %102 = fcmp oeq double %101, 0x7FF0000000000000
  br i1 %102, label %routine_fldt_0x10__rbp_.exit, label %103

; <label>:103:                                    ; preds = %100
  %104 = fcmp olt double %101, 0x10000000000000
  br label %routine_fldt_0x10__rbp_.exit

routine_fldt_0x10__rbp_.exit:                     ; preds = %entry, %100, %103
  %105 = phi i1 [ false, %entry ], [ false, %100 ], [ %104, %103 ]
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %106, i8* %107, align 1
  %108 = icmp eq i8 %98, 0
  %109 = or i64 %89, 2251799813685248
  %110 = bitcast i64 %109 to double
  %111 = select i1 %108, double %88, double %110
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %113 = bitcast double* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %116 = bitcast double* %115 to i64*
  store i64 %114, i64* %116, align 8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %118 = bitcast double* %117 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %113, align 8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %121 = bitcast double* %120 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %118, align 8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %124 = bitcast double* %123 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %121, align 8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %127 = bitcast double* %126 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %124, align 8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %130 = bitcast double* %129 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %127, align 8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %133 = bitcast double* %132 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %130, align 8
  store double %111, double* %132, align 8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %136 = load i16, i16* %135, align 2
  %137 = add i16 %136, 14336
  %138 = and i16 %137, 14336
  %139 = and i16 %136, -14337
  %140 = or i16 %138, %139
  store i16 %140, i16* %135, align 2
  store %struct.Memory* %loadMem_4004f8, %struct.Memory** %MEMORY
  %loadMem_4004fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %148 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %147, i32 0, i32 0
  %149 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %148, i64 0, i64 0
  %ST0.i27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %149, i32 0, i32 1
  %150 = load i64, i64* %RBP.i26
  %151 = sub i64 %150, 16
  %152 = load double, double* %ST0.i27
  %153 = load i64, i64* %PC.i25
  %154 = load i64, i64* %PC.i25
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC.i25
  %156 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_4004fb, %struct.State* %0, i64 %151, double %152, i64 %153, i64 893)
  store %struct.Memory* %156, %struct.Memory** %MEMORY
  %loadMem_4004fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %164 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %163, i32 0, i32 0
  %165 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %164, i64 0, i64 0
  %ST0.i24 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %165, i32 0, i32 1
  %166 = load i64, i64* %RBP.i23
  %167 = sub i64 %166, 16
  %168 = load i64, i64* %PC.i22
  %169 = load i64, i64* %PC.i22
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i22
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %172 = bitcast i32* %171 to i64*
  store i64 %167, i64* %172, align 16
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %173, align 2
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %175 = bitcast i32* %174 to i64*
  store i64 %168, i64* %175, align 8
  %176 = inttoptr i64 %167 to x86_fp80*
  %177 = load x86_fp80, x86_fp80* %176
  %178 = fptrunc x86_fp80 %177 to double
  %179 = bitcast double %178 to i64
  %180 = and i64 %179, 9221120237041090560
  %181 = icmp eq i64 %180, 9218868437227405312
  %182 = and i64 %179, 2251799813685247
  %183 = icmp ne i64 %182, 0
  %184 = and i1 %181, %183
  %185 = zext i1 %184 to i8
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %187 = load i8, i8* %186, align 1
  %188 = or i8 %185, %187
  store i8 %188, i8* %186, align 1
  %189 = fcmp ueq double %178, 0.000000e+00
  br i1 %189, label %routine_fldt_MINUS0x10__rbp_.exit, label %190

; <label>:190:                                    ; preds = %routine_fldt_0x10__rbp_.exit
  %191 = call double @llvm.fabs.f64(double %178)
  %192 = fcmp oeq double %191, 0x7FF0000000000000
  br i1 %192, label %routine_fldt_MINUS0x10__rbp_.exit, label %193

; <label>:193:                                    ; preds = %190
  %194 = fcmp olt double %191, 0x10000000000000
  br label %routine_fldt_MINUS0x10__rbp_.exit

routine_fldt_MINUS0x10__rbp_.exit:                ; preds = %routine_fldt_0x10__rbp_.exit, %190, %193
  %195 = phi i1 [ false, %routine_fldt_0x10__rbp_.exit ], [ false, %190 ], [ %194, %193 ]
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %196, i8* %197, align 1
  %198 = icmp eq i8 %188, 0
  %199 = or i64 %179, 2251799813685248
  %200 = bitcast i64 %199 to double
  %201 = select i1 %198, double %178, double %200
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %203 = bitcast double* %202 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %206 = bitcast double* %205 to i64*
  store i64 %204, i64* %206, align 8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %208 = bitcast double* %207 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %203, align 8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %211 = bitcast double* %210 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %208, align 8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %214 = bitcast double* %213 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %211, align 8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %217 = bitcast double* %216 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %214, align 8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %220 = bitcast double* %219 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %217, align 8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %223 = bitcast double* %222 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %220, align 8
  store double %201, double* %222, align 8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %226 = load i16, i16* %225, align 2
  %227 = add i16 %226, 14336
  %228 = and i16 %227, 14336
  %229 = and i16 %226, -14337
  %230 = or i16 %228, %229
  store i16 %230, i16* %225, align 2
  store %struct.Memory* %loadMem_4004fe, %struct.Memory** %MEMORY
  %loadMem_400501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 13
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RSP.i21 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RSP.i21
  %241 = load i64, i64* %PC.i19
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC.i19
  store i64 %240, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_400501, %struct.Memory** %MEMORY
  %loadMem_400504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %250 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %249, i32 0, i32 0
  %251 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %250, i64 0, i64 0
  %ST0.i15 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %251, i32 0, i32 1
  %252 = load i64, i64* %RAX.i
  %253 = load double, double* %ST0.i15
  %254 = load i64, i64* %PC.i14
  %255 = load i64, i64* %PC.i14
  %256 = add i64 %255, 2
  store i64 %256, i64* %PC.i14
  %257 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %loadMem_400504, %struct.State* %0, i64 %252, double %253, i64 %254, i64 824)
  store %struct.Memory* %257, %struct.Memory** %MEMORY
  %loadMem_400506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %263 to i32*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RCX.i
  %268 = load i32, i32* %ECX.i
  %269 = zext i32 %268 to i64
  %270 = load i64, i64* %PC.i13
  %271 = add i64 %270, 2
  store i64 %271, i64* %PC.i13
  %272 = xor i64 %269, %267
  %273 = trunc i64 %272 to i32
  %274 = and i64 %272, 4294967295
  store i64 %274, i64* %RCX.i, align 8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %275, align 1
  %276 = and i32 %273, 255
  %277 = call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %280, i8* %281, align 1
  %282 = icmp eq i32 %273, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1
  %285 = lshr i32 %273, 31
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %286, i8* %287, align 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %288, align 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %289, align 1
  store %struct.Memory* %loadMem_400506, %struct.Memory** %MEMORY
  %loadMem_400508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %296 = bitcast %union.anon* %295 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %296, i32 0, i32 0
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %300 = bitcast %union.anon* %299 to %struct.anon.2*
  %DL.i12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %300, i32 0, i32 0
  %301 = load i8, i8* %CL.i
  %302 = zext i8 %301 to i64
  %303 = load i64, i64* %PC.i11
  %304 = add i64 %303, 2
  store i64 %304, i64* %PC.i11
  store i8 %301, i8* %DL.i12, align 1
  store %struct.Memory* %loadMem_400508, %struct.Memory** %MEMORY
  %loadMem_40050a = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %311 = bitcast %union.anon* %310 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %311, i32 0, i32 0
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 7
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %315 = bitcast %union.anon* %314 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %315, i32 0, i32 0
  %316 = load i8, i8* %DL.i
  %317 = zext i8 %316 to i64
  %318 = load i64, i64* %PC.i10
  %319 = add i64 %318, 2
  store i64 %319, i64* %PC.i10
  store i8 %316, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40050a, %struct.Memory** %MEMORY
  %loadMem1_40050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i9
  %324 = add i64 %323, 132
  %325 = load i64, i64* %PC.i9
  %326 = add i64 %325, 5
  %327 = load i64, i64* %PC.i9
  %328 = add i64 %327, 5
  store i64 %328, i64* %PC.i9
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %330, -8
  %332 = inttoptr i64 %331 to i64*
  store i64 %326, i64* %332
  store i64 %331, i64* %329, align 8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %324, i64* %333, align 8
  store %struct.Memory* %loadMem1_40050c, %struct.Memory** %MEMORY
  %loadMem2_40050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40050c = load i64, i64* %3
  %call2_40050c = call %struct.Memory* @sub_400590.timespi(%struct.State* %0, i64 %loadPC_40050c, %struct.Memory* %loadMem2_40050c)
  store %struct.Memory* %call2_40050c, %struct.Memory** %MEMORY
  %loadMem_400511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %339 to i32*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 15
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %RBP.i8
  %344 = sub i64 %343, 20
  %345 = load i32, i32* %EAX.i
  %346 = zext i32 %345 to i64
  %347 = load i64, i64* %PC.i7
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC.i7
  %349 = inttoptr i64 %344 to i32*
  store i32 %345, i32* %349
  store %struct.Memory* %loadMem_400511, %struct.Memory** %MEMORY
  %loadMem_400514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 15
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %357 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %356, i32 0, i32 0
  %358 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %357, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %358, i32 0, i32 1
  %359 = load i64, i64* %RBP.i6
  %360 = sub i64 %359, 20
  %361 = load i64, i64* %PC.i5
  %362 = load i64, i64* %PC.i5
  %363 = add i64 %362, 3
  store i64 %363, i64* %PC.i5
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 837, i16* %364, align 2
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %366 = bitcast i32* %365 to i64*
  store i64 %361, i64* %366, align 8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %368 = bitcast i32* %367 to i64*
  store i64 %360, i64* %368, align 16
  %369 = inttoptr i64 %360 to i32*
  %370 = load i32, i32* %369
  %371 = sitofp i32 %370 to double
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %373 = bitcast double* %372 to i64*
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %376 = bitcast double* %375 to i64*
  store i64 %374, i64* %376, align 8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %378 = bitcast double* %377 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %373, align 8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %381 = bitcast double* %380 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %378, align 8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %384 = bitcast double* %383 to i64*
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %381, align 8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %387 = bitcast double* %386 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %384, align 8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %390 = bitcast double* %389 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %387, align 8
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %393 = bitcast double* %392 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %390, align 8
  store double %371, double* %392, align 8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %396 = load i16, i16* %395, align 2
  %397 = add i16 %396, 14336
  %398 = and i16 %397, 14336
  %399 = and i16 %396, -14337
  %400 = or i16 %398, %399
  store i16 %400, i16* %395, align 2
  store %struct.Memory* %loadMem_400514, %struct.Memory** %MEMORY
  %loadMem_400517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 13
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %406 to i64*
  %407 = load i64, i64* %RSP.i
  %408 = load i64, i64* %PC.i4
  %409 = add i64 %408, 4
  store i64 %409, i64* %PC.i4
  %410 = add i64 48, %407
  store i64 %410, i64* %RSP.i, align 8
  %411 = icmp ult i64 %410, %407
  %412 = icmp ult i64 %410, 48
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %414, i8* %415, align 1
  %416 = trunc i64 %410 to i32
  %417 = and i32 %416, 255
  %418 = call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %421, i8* %422, align 1
  %423 = xor i64 48, %407
  %424 = xor i64 %423, %410
  %425 = lshr i64 %424, 4
  %426 = trunc i64 %425 to i8
  %427 = and i8 %426, 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %427, i8* %428, align 1
  %429 = icmp eq i64 %410, 0
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %430, i8* %431, align 1
  %432 = lshr i64 %410, 63
  %433 = trunc i64 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %433, i8* %434, align 1
  %435 = lshr i64 %407, 63
  %436 = xor i64 %432, %435
  %437 = add i64 %436, %432
  %438 = icmp eq i64 %437, 2
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %439, i8* %440, align 1
  store %struct.Memory* %loadMem_400517, %struct.Memory** %MEMORY
  %loadMem_40051b = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 15
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %PC.i2
  %448 = add i64 %447, 1
  store i64 %448, i64* %PC.i2
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add i64 %450, 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452
  store i64 %453, i64* %RBP.i3, align 8
  store i64 %451, i64* %449, align 8
  store %struct.Memory* %loadMem_40051b, %struct.Memory** %MEMORY
  %loadMem_40051c = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %PC.i1
  %458 = add i64 %457, 1
  store i64 %458, i64* %PC.i1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = inttoptr i64 %461 to i64*
  %463 = load i64, i64* %462
  store i64 %463, i64* %459, align 8
  %464 = add i64 %461, 8
  store i64 %464, i64* %460, align 8
  store %struct.Memory* %loadMem_40051c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40051c
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_fldt_0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %13, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = inttoptr i64 %13 to x86_fp80*
  %23 = load x86_fp80, x86_fp80* %22
  %24 = fptrunc x86_fp80 %23 to double
  %25 = bitcast double %24 to i64
  %26 = and i64 %25, 9221120237041090560
  %27 = icmp eq i64 %26, 9218868437227405312
  %28 = and i64 %25, 2251799813685247
  %29 = icmp ne i64 %28, 0
  %30 = and i1 %27, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %33 = load i8, i8* %32, align 1
  %34 = or i8 %31, %33
  store i8 %34, i8* %32, align 1
  %35 = fcmp ueq double %24, 0.000000e+00
  br i1 %35, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %36

; <label>:36:                                     ; preds = %block_400488
  %37 = call double @llvm.fabs.f64(double %24)
  %38 = fcmp oeq double %37, 0x7FF0000000000000
  br i1 %38, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %39

; <label>:39:                                     ; preds = %36
  %40 = fcmp olt double %37, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %block_400488, %36, %39
  %41 = phi i1 [ false, %block_400488 ], [ false, %36 ], [ %40, %39 ]
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i8 %34, 0
  %45 = or i64 %25, 2251799813685248
  %46 = bitcast i64 %45 to double
  %47 = select i1 %44, double %24, double %46
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %49, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  store double %47, double* %68, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 14336
  %74 = and i16 %73, 14336
  %75 = and i16 %72, -14337
  %76 = or i16 %74, %75
  store i16 %76, i16* %71, align 2
  ret %struct.Memory* %2
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, double, i64, i64) {
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 8
  %8 = bitcast i32* %7 to i64*
  store i64 %2, i64* %8, align 16
  %9 = trunc i64 %5 to i16
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 %9, i16* %10, align 2
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 5
  %12 = bitcast i32* %11 to i64*
  store i64 %4, i64* %12, align 8
  %13 = fcmp ueq double %3, 0.000000e+00
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %6
  %15 = tail call double @llvm.fabs.f64(double %3)
  %16 = fcmp oeq double %15, 0x7FF0000000000000
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %14
  %18 = fcmp olt double %15, 0x10000000000000
  br label %19

; <label>:19:                                     ; preds = %17, %14, %6
  %20 = phi i1 [ false, %6 ], [ false, %14 ], [ %18, %17 ]
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 17
  store i8 %21, i8* %22, align 1
  %23 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %24 = tail call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %23)
  %25 = lshr i32 %24, 5
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 9
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = lshr i32 %24, 3
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 13
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %33
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = lshr i32 %24, 4
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 11
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %40
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = and i32 %24, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 19
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = lshr i32 %24, 2
  %53 = and i32 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 9, i32 15
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %53
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = inttoptr i64 %2 to x86_fp80*
  %60 = fpext double %3 to x86_fp80
  store x86_fp80 %60, x86_fp80* %59
  %61 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 0, i32 1
  %62 = bitcast double* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 1, i32 1
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %62, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 2, i32 1
  %68 = bitcast double* %67 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %65, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 3, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %68, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 4, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 5, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 6, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 7, i32 0, i64 7, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  store i64 %63, i64* %83, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %86 = load i16, i16* %85, align 2
  %87 = add i16 %86, 2048
  %88 = and i16 %87, 14336
  %89 = and i16 %86, -14337
  %90 = or i16 %88, %89
  store i16 %90, i16* %85, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_fstpt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load double, double* %ST0
  %15 = load i64, i64* %PC
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %13, double %14, i64 %15, i64 893)
  ret %struct.Memory* %18
}

define %struct.Memory* @routine_fldt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %13, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = inttoptr i64 %13 to x86_fp80*
  %23 = load x86_fp80, x86_fp80* %22
  %24 = fptrunc x86_fp80 %23 to double
  %25 = bitcast double %24 to i64
  %26 = and i64 %25, 9221120237041090560
  %27 = icmp eq i64 %26, 9218868437227405312
  %28 = and i64 %25, 2251799813685247
  %29 = icmp ne i64 %28, 0
  %30 = and i1 %27, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %33 = load i8, i8* %32, align 1
  %34 = or i8 %31, %33
  store i8 %34, i8* %32, align 1
  %35 = fcmp ueq double %24, 0.000000e+00
  br i1 %35, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %36

; <label>:36:                                     ; preds = %block_400488
  %37 = call double @llvm.fabs.f64(double %24)
  %38 = fcmp oeq double %37, 0x7FF0000000000000
  br i1 %38, label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit, label %39

; <label>:39:                                     ; preds = %36
  %40 = fcmp olt double %37, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L6FLDmemI2MnI9float80_tEEEP6MemoryS5_R5State3RnWIdET_2InImESB_ItE.exit: ; preds = %block_400488, %36, %39
  %41 = phi i1 [ false, %block_400488 ], [ false, %36 ], [ %40, %39 ]
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i8 %34, 0
  %45 = or i64 %25, 2251799813685248
  %46 = bitcast i64 %45 to double
  %47 = select i1 %44, double %24, double %46
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %49 = bitcast double* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %52 = bitcast double* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %54 = bitcast double* %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %49, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %54, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %57, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %60, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %63, align 8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %69 = bitcast double* %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %66, align 8
  store double %47, double* %68, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 14336
  %74 = and i16 %73, 14336
  %75 = and i16 %72, -14337
  %76 = or i16 %74, %75
  store i16 %76, i16* %71, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_fstpt___rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RAX
  %13 = load double, double* %ST0
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE(%struct.Memory* %2, %struct.State* %0, i64 %12, double %13, i64 %14, i64 824)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_movb__dl___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.timespi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_fildl_MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %9, i32 0, i32 0
  %11 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %10, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 1
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 837, i16* %17, align 2
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %19 = bitcast i32* %18 to i64*
  store i64 %14, i64* %19, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %21 = bitcast i32* %20 to i64*
  store i64 %13, i64* %21, align 16
  %22 = inttoptr i64 %13 to i32*
  %23 = load i32, i32* %22
  %24 = sitofp i32 %23 to double
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %26 = bitcast double* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %29 = bitcast double* %28 to i64*
  store i64 %27, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %31 = bitcast double* %30 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %26, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %34 = bitcast double* %33 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %31, align 8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %37 = bitcast double* %36 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %34, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %40 = bitcast double* %39 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %37, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %43 = bitcast double* %42 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %40, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %46 = bitcast double* %45 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %43, align 8
  store double %24, double* %45, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %49 = load i16, i16* %48, align 2
  %50 = add i16 %49, 14336
  %51 = and i16 %50, 14336
  %52 = and i16 %49, -14337
  %53 = or i16 %51, %52
  store i16 %53, i16* %48, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
