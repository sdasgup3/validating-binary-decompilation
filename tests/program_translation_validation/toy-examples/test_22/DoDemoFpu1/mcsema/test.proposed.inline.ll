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

declare %struct.Memory* @sub_4005c0.timespi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @DoDemoFpu1(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400520 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400520, %struct.Memory** %MEMORY
  %loadMem_400521 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400521, %struct.Memory** %MEMORY
  %loadMem_400524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i20 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i20
  %36 = load i64, i64* %PC.i19
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i19
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i20, align 8
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
  store %struct.Memory* %loadMem_400524, %struct.Memory** %MEMORY
  %loadMem_400528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %74 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %73, i32 0, i32 0
  %75 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %74, i64 0, i64 0
  %ST0.i23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %75, i32 0, i32 1
  %76 = load i64, i64* %RBP.i22
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i21
  %79 = load i64, i64* %PC.i21
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC.i21
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
  store %struct.Memory* %loadMem_400528, %struct.Memory** %MEMORY
  %loadMem_40052b = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %148 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %147, i32 0, i32 0
  %149 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %148, i64 0, i64 0
  %ST0.i26 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %149, i32 0, i32 1
  %150 = load i64, i64* %RBP.i25
  %151 = sub i64 %150, 16
  %152 = load double, double* %ST0.i26
  %153 = load i64, i64* %PC.i24
  %154 = load i64, i64* %PC.i24
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC.i24
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %157 = bitcast i32* %156 to i64*
  store i64 %151, i64* %157, align 16
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %158, align 2
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %160 = bitcast i32* %159 to i64*
  store i64 %153, i64* %160, align 8
  %161 = fcmp ueq double %152, 0.000000e+00
  br i1 %161, label %routine_fstpt_MINUS0x10__rbp_.exit, label %162

; <label>:162:                                    ; preds = %routine_fldt_0x10__rbp_.exit
  %163 = call double @llvm.fabs.f64(double %152)
  %164 = fcmp oeq double %163, 0x7FF0000000000000
  br i1 %164, label %routine_fstpt_MINUS0x10__rbp_.exit, label %165

; <label>:165:                                    ; preds = %162
  %166 = fcmp olt double %163, 0x10000000000000
  br label %routine_fstpt_MINUS0x10__rbp_.exit

routine_fstpt_MINUS0x10__rbp_.exit:               ; preds = %routine_fldt_0x10__rbp_.exit, %162, %165
  %167 = phi i1 [ false, %routine_fldt_0x10__rbp_.exit ], [ false, %162 ], [ %166, %165 ]
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %168, i8* %169, align 1
  %170 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %171 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %170)
  %172 = lshr i32 %171, 5
  %173 = and i32 %172, 1
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, %173
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  %179 = lshr i32 %171, 3
  %180 = and i32 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %183, %180
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %181, align 1
  %186 = lshr i32 %171, 4
  %187 = and i32 %186, 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = or i32 %190, %187
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %188, align 1
  %193 = and i32 %171, 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = or i32 %196, %193
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %194, align 1
  %199 = lshr i32 %171, 2
  %200 = and i32 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = or i32 %203, %200
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %201, align 1
  %206 = inttoptr i64 %151 to x86_fp80*
  %207 = fpext double %152 to x86_fp80
  store x86_fp80 %207, x86_fp80* %206
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %209 = bitcast double* %208 to i64*
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %212 = bitcast double* %211 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %209, align 8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %215 = bitcast double* %214 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %212, align 8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %218 = bitcast double* %217 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %215, align 8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %221 = bitcast double* %220 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %218, align 8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %224 = bitcast double* %223 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %221, align 8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %227 = bitcast double* %226 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %224, align 8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %230 = bitcast double* %229 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %227, align 8
  store i64 %210, i64* %230, align 8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %233 = load i16, i16* %232, align 2
  %234 = add i16 %233, 2048
  %235 = and i16 %234, 14336
  %236 = and i16 %233, -14337
  %237 = or i16 %235, %236
  store i16 %237, i16* %232, align 2
  store %struct.Memory* %loadMem_40052b, %struct.Memory** %MEMORY
  %loadMem_40052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %245 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %244, i32 0, i32 0
  %246 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %245, i64 0, i64 0
  %ST0.i29 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %246, i32 0, i32 1
  %247 = load i64, i64* %RBP.i28
  %248 = sub i64 %247, 16
  %249 = load i64, i64* %PC.i27
  %250 = load i64, i64* %PC.i27
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC.i27
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %253 = bitcast i32* %252 to i64*
  store i64 %248, i64* %253, align 16
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 877, i16* %254, align 2
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %256 = bitcast i32* %255 to i64*
  store i64 %249, i64* %256, align 8
  %257 = inttoptr i64 %248 to x86_fp80*
  %258 = load x86_fp80, x86_fp80* %257
  %259 = fptrunc x86_fp80 %258 to double
  %260 = bitcast double %259 to i64
  %261 = and i64 %260, 9221120237041090560
  %262 = icmp eq i64 %261, 9218868437227405312
  %263 = and i64 %260, 2251799813685247
  %264 = icmp ne i64 %263, 0
  %265 = and i1 %262, %264
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %268 = load i8, i8* %267, align 1
  %269 = or i8 %266, %268
  store i8 %269, i8* %267, align 1
  %270 = fcmp ueq double %259, 0.000000e+00
  br i1 %270, label %routine_fldt_MINUS0x10__rbp_.exit, label %271

; <label>:271:                                    ; preds = %routine_fstpt_MINUS0x10__rbp_.exit
  %272 = call double @llvm.fabs.f64(double %259)
  %273 = fcmp oeq double %272, 0x7FF0000000000000
  br i1 %273, label %routine_fldt_MINUS0x10__rbp_.exit, label %274

; <label>:274:                                    ; preds = %271
  %275 = fcmp olt double %272, 0x10000000000000
  br label %routine_fldt_MINUS0x10__rbp_.exit

routine_fldt_MINUS0x10__rbp_.exit:                ; preds = %routine_fstpt_MINUS0x10__rbp_.exit, %271, %274
  %276 = phi i1 [ false, %routine_fstpt_MINUS0x10__rbp_.exit ], [ false, %271 ], [ %275, %274 ]
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %277, i8* %278, align 1
  %279 = icmp eq i8 %269, 0
  %280 = or i64 %260, 2251799813685248
  %281 = bitcast i64 %280 to double
  %282 = select i1 %279, double %259, double %281
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %284 = bitcast double* %283 to i64*
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %287 = bitcast double* %286 to i64*
  store i64 %285, i64* %287, align 8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %289 = bitcast double* %288 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %284, align 8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %292 = bitcast double* %291 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %289, align 8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %295 = bitcast double* %294 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %292, align 8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %298 = bitcast double* %297 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %295, align 8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %301 = bitcast double* %300 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %298, align 8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %304 = bitcast double* %303 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %301, align 8
  store double %282, double* %303, align 8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %307 = load i16, i16* %306, align 2
  %308 = add i16 %307, 14336
  %309 = and i16 %308, 14336
  %310 = and i16 %307, -14337
  %311 = or i16 %309, %310
  store i16 %311, i16* %306, align 2
  store %struct.Memory* %loadMem_40052e, %struct.Memory** %MEMORY
  %loadMem_400531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 13
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RSP.i32 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RSP.i32
  %322 = load i64, i64* %PC.i30
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC.i30
  store i64 %321, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_400531, %struct.Memory** %MEMORY
  %loadMem_400534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %331 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %330, i32 0, i32 0
  %332 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %331, i64 0, i64 0
  %ST0.i15 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %332, i32 0, i32 1
  %333 = load i64, i64* %RAX.i
  %334 = load double, double* %ST0.i15
  %335 = load i64, i64* %PC.i14
  %336 = load i64, i64* %PC.i14
  %337 = add i64 %336, 2
  store i64 %337, i64* %PC.i14
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %339 = bitcast i32* %338 to i64*
  store i64 %333, i64* %339, align 16
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 824, i16* %340, align 2
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %342 = bitcast i32* %341 to i64*
  store i64 %335, i64* %342, align 8
  %343 = fcmp ueq double %334, 0.000000e+00
  br i1 %343, label %routine_fstpt___rax_.exit, label %344

; <label>:344:                                    ; preds = %routine_fldt_MINUS0x10__rbp_.exit
  %345 = call double @llvm.fabs.f64(double %334)
  %346 = fcmp oeq double %345, 0x7FF0000000000000
  br i1 %346, label %routine_fstpt___rax_.exit, label %347

; <label>:347:                                    ; preds = %344
  %348 = fcmp olt double %345, 0x10000000000000
  br label %routine_fstpt___rax_.exit

routine_fstpt___rax_.exit:                        ; preds = %routine_fldt_MINUS0x10__rbp_.exit, %344, %347
  %349 = phi i1 [ false, %routine_fldt_MINUS0x10__rbp_.exit ], [ false, %344 ], [ %348, %347 ]
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %350, i8* %351, align 1
  %352 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %353 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %352)
  %354 = lshr i32 %353, 5
  %355 = and i32 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = or i32 %358, %355
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %356, align 1
  %361 = lshr i32 %353, 3
  %362 = and i32 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = or i32 %365, %362
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %363, align 1
  %368 = lshr i32 %353, 4
  %369 = and i32 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = or i32 %372, %369
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %370, align 1
  %375 = and i32 %353, 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = or i32 %378, %375
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %376, align 1
  %381 = lshr i32 %353, 2
  %382 = and i32 %381, 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = or i32 %385, %382
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %383, align 1
  %388 = inttoptr i64 %333 to x86_fp80*
  %389 = fpext double %334 to x86_fp80
  store x86_fp80 %389, x86_fp80* %388
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %391 = bitcast double* %390 to i64*
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %394 = bitcast double* %393 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %391, align 8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %397 = bitcast double* %396 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %394, align 8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %400 = bitcast double* %399 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %397, align 8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %403 = bitcast double* %402 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %400, align 8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %406 = bitcast double* %405 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %403, align 8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %409 = bitcast double* %408 to i64*
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %406, align 8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %412 = bitcast double* %411 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %409, align 8
  store i64 %392, i64* %412, align 8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %415 = load i16, i16* %414, align 2
  %416 = add i16 %415, 2048
  %417 = and i16 %416, 14336
  %418 = and i16 %415, -14337
  %419 = or i16 %417, %418
  store i16 %419, i16* %414, align 2
  store %struct.Memory* %loadMem_400534, %struct.Memory** %MEMORY
  %loadMem_400536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %425 to i32*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 5
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RCX.i
  %430 = load i32, i32* %ECX.i
  %431 = zext i32 %430 to i64
  %432 = load i64, i64* %PC.i13
  %433 = add i64 %432, 2
  store i64 %433, i64* %PC.i13
  %434 = xor i64 %431, %429
  %435 = trunc i64 %434 to i32
  %436 = and i64 %434, 4294967295
  store i64 %436, i64* %RCX.i, align 8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %437, align 1
  %438 = and i32 %435, 255
  %439 = call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %442, i8* %443, align 1
  %444 = icmp eq i32 %435, 0
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %445, i8* %446, align 1
  %447 = lshr i32 %435, 31
  %448 = trunc i32 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %448, i8* %449, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %450, align 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %451, align 1
  store %struct.Memory* %loadMem_400536, %struct.Memory** %MEMORY
  %loadMem_400538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %458 = bitcast %union.anon* %457 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %458, i32 0, i32 0
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 7
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %462 = bitcast %union.anon* %461 to %struct.anon.2*
  %DL.i12 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %462, i32 0, i32 0
  %463 = load i8, i8* %CL.i
  %464 = zext i8 %463 to i64
  %465 = load i64, i64* %PC.i11
  %466 = add i64 %465, 2
  store i64 %466, i64* %PC.i11
  store i8 %463, i8* %DL.i12, align 1
  store %struct.Memory* %loadMem_400538, %struct.Memory** %MEMORY
  %loadMem_40053a = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %473 = bitcast %union.anon* %472 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %473, i32 0, i32 0
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 7
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %477 = bitcast %union.anon* %476 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %477, i32 0, i32 0
  %478 = load i8, i8* %DL.i
  %479 = zext i8 %478 to i64
  %480 = load i64, i64* %PC.i10
  %481 = add i64 %480, 2
  store i64 %481, i64* %PC.i10
  store i8 %478, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40053a, %struct.Memory** %MEMORY
  %loadMem1_40053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %484 to i64*
  %485 = load i64, i64* %PC.i9
  %486 = add i64 %485, 132
  %487 = load i64, i64* %PC.i9
  %488 = add i64 %487, 5
  %489 = load i64, i64* %PC.i9
  %490 = add i64 %489, 5
  store i64 %490, i64* %PC.i9
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %488, i64* %494
  store i64 %493, i64* %491, align 8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %486, i64* %495, align 8
  store %struct.Memory* %loadMem1_40053c, %struct.Memory** %MEMORY
  %loadMem2_40053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40053c = load i64, i64* %3
  %call2_40053c = call %struct.Memory* @sub_4005c0.timespi(%struct.State* %0, i64 %loadPC_40053c, %struct.Memory* %loadMem2_40053c)
  store %struct.Memory* %call2_40053c, %struct.Memory** %MEMORY
  %loadMem_400541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %501 to i32*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 15
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %RBP.i8
  %506 = sub i64 %505, 20
  %507 = load i32, i32* %EAX.i
  %508 = zext i32 %507 to i64
  %509 = load i64, i64* %PC.i7
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC.i7
  %511 = inttoptr i64 %506 to i32*
  store i32 %507, i32* %511
  store %struct.Memory* %loadMem_400541, %struct.Memory** %MEMORY
  %loadMem_400544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %519 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %518, i32 0, i32 0
  %520 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %519, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %520, i32 0, i32 1
  %521 = load i64, i64* %RBP.i6
  %522 = sub i64 %521, 20
  %523 = load i64, i64* %PC.i5
  %524 = load i64, i64* %PC.i5
  %525 = add i64 %524, 3
  store i64 %525, i64* %PC.i5
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 837, i16* %526, align 2
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %528 = bitcast i32* %527 to i64*
  store i64 %523, i64* %528, align 8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %530 = bitcast i32* %529 to i64*
  store i64 %522, i64* %530, align 16
  %531 = inttoptr i64 %522 to i32*
  %532 = load i32, i32* %531
  %533 = sitofp i32 %532 to double
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %535 = bitcast double* %534 to i64*
  %536 = load i64, i64* %535, align 8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %538 = bitcast double* %537 to i64*
  store i64 %536, i64* %538, align 8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %540 = bitcast double* %539 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %535, align 8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %543 = bitcast double* %542 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %540, align 8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %546 = bitcast double* %545 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %543, align 8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %549 = bitcast double* %548 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %546, align 8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %552 = bitcast double* %551 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %549, align 8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %555 = bitcast double* %554 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %552, align 8
  store double %533, double* %554, align 8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %558 = load i16, i16* %557, align 2
  %559 = add i16 %558, 14336
  %560 = and i16 %559, 14336
  %561 = and i16 %558, -14337
  %562 = or i16 %560, %561
  store i16 %562, i16* %557, align 2
  store %struct.Memory* %loadMem_400544, %struct.Memory** %MEMORY
  %loadMem_400547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 13
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RSP.i
  %570 = load i64, i64* %PC.i4
  %571 = add i64 %570, 4
  store i64 %571, i64* %PC.i4
  %572 = add i64 48, %569
  store i64 %572, i64* %RSP.i, align 8
  %573 = icmp ult i64 %572, %569
  %574 = icmp ult i64 %572, 48
  %575 = or i1 %573, %574
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %576, i8* %577, align 1
  %578 = trunc i64 %572 to i32
  %579 = and i32 %578, 255
  %580 = call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %583, i8* %584, align 1
  %585 = xor i64 48, %569
  %586 = xor i64 %585, %572
  %587 = lshr i64 %586, 4
  %588 = trunc i64 %587 to i8
  %589 = and i8 %588, 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %589, i8* %590, align 1
  %591 = icmp eq i64 %572, 0
  %592 = zext i1 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %592, i8* %593, align 1
  %594 = lshr i64 %572, 63
  %595 = trunc i64 %594 to i8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %595, i8* %596, align 1
  %597 = lshr i64 %569, 63
  %598 = xor i64 %594, %597
  %599 = add i64 %598, %594
  %600 = icmp eq i64 %599, 2
  %601 = zext i1 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %601, i8* %602, align 1
  store %struct.Memory* %loadMem_400547, %struct.Memory** %MEMORY
  %loadMem_40054b = load %struct.Memory*, %struct.Memory** %MEMORY
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 33
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %PC.i2
  %610 = add i64 %609, 1
  store i64 %610, i64* %PC.i2
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = add i64 %612, 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614
  store i64 %615, i64* %RBP.i3, align 8
  store i64 %613, i64* %611, align 8
  store %struct.Memory* %loadMem_40054b, %struct.Memory** %MEMORY
  %loadMem_40054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %PC.i1
  %620 = add i64 %619, 1
  store i64 %620, i64* %PC.i1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = inttoptr i64 %623 to i64*
  %625 = load i64, i64* %624
  store i64 %625, i64* %621, align 8
  %626 = add i64 %623, 8
  store i64 %626, i64* %622, align 8
  store %struct.Memory* %loadMem_40054c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40054c
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fldt_0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %19 = bitcast i32* %18 to i64*
  store i64 %13, i64* %19, align 16
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 893, i16* %20, align 2
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %22 = bitcast i32* %21 to i64*
  store i64 %15, i64* %22, align 8
  %23 = fcmp ueq double %14, 0.000000e+00
  br i1 %23, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = call double @llvm.fabs.f64(double %14)
  %26 = fcmp oeq double %25, 0x7FF0000000000000
  br i1 %26, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %27

; <label>:27:                                     ; preds = %24
  %28 = fcmp olt double %25, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %24, %27
  %29 = phi i1 [ false, %block_400488 ], [ false, %24 ], [ %28, %27 ]
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %30, i8* %31, align 1
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %33 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %32)
  %34 = lshr i32 %33, 5
  %35 = and i32 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %35
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = lshr i32 %33, 3
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %42
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  %48 = lshr i32 %33, 4
  %49 = and i32 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = and i32 %33, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %55
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = lshr i32 %33, 2
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  %68 = inttoptr i64 %13 to x86_fp80*
  %69 = fpext double %14 to x86_fp80
  store x86_fp80 %69, x86_fp80* %68
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %71, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %74, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %77, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %80, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %86 = bitcast double* %85 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %83, align 8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %89 = bitcast double* %88 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %86, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %89, align 8
  store i64 %72, i64* %92, align 8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %95 = load i16, i16* %94, align 2
  %96 = add i16 %95, 2048
  %97 = and i16 %96, 14336
  %98 = and i16 %95, -14337
  %99 = or i16 %97, %98
  store i16 %99, i16* %94, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fldt_MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movq__rsp___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fstpt___rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 8
  %18 = bitcast i32* %17 to i64*
  store i64 %12, i64* %18, align 16
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 4
  store i16 824, i16* %19, align 2
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 5
  %21 = bitcast i32* %20 to i64*
  store i64 %14, i64* %21, align 8
  %22 = fcmp ueq double %13, 0.000000e+00
  br i1 %22, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %23

; <label>:23:                                     ; preds = %block_400488
  %24 = call double @llvm.fabs.f64(double %13)
  %25 = fcmp oeq double %24, 0x7FF0000000000000
  br i1 %25, label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit, label %26

; <label>:26:                                     ; preds = %23
  %27 = fcmp olt double %24, 0x10000000000000
  br label %_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit

_ZN12_GLOBAL__N_1L7FSTPmemI3MnWI9float80_tEEEP6MemoryS5_R5StateT_2RnIdE2InImESB_ItE.exit: ; preds = %block_400488, %23, %26
  %28 = phi i1 [ false, %block_400488 ], [ false, %23 ], [ %27, %26 ]
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 17
  store i8 %29, i8* %30, align 1
  %31 = call i32 @__remill_fpu_exception_test_and_clear(i32 0, i32 61)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"()
  %32 = call i32 @__remill_fpu_exception_test_and_clear(i32 61, i32 %31)
  %33 = lshr i32 %32, 5
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 9
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %34
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = lshr i32 %32, 3
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 13
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %41
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = lshr i32 %32, 4
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 11
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %48
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  %54 = and i32 %32, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 19
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %54
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = lshr i32 %32, 2
  %61 = and i32 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 9, i32 15
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %61
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %62, align 1
  %67 = inttoptr i64 %12 to x86_fp80*
  %68 = fpext double %13 to x86_fp80
  store x86_fp80 %68, x86_fp80* %67
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %70 = bitcast double* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %73 = bitcast double* %72 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %70, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %76 = bitcast double* %75 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %73, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 3, i32 1
  %79 = bitcast double* %78 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %76, align 8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 4, i32 1
  %82 = bitcast double* %81 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %79, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 5, i32 1
  %85 = bitcast double* %84 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %82, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 6, i32 1
  %88 = bitcast double* %87 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %85, align 8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 7, i32 0, i64 7, i32 1
  %91 = bitcast double* %90 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %88, align 8
  store i64 %71, i64* %91, align 8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0
  %94 = load i16, i16* %93, align 2
  %95 = add i16 %94, 2048
  %96 = and i16 %95, 14336
  %97 = and i16 %94, -14337
  %98 = or i16 %96, %97
  store i16 %98, i16* %93, align 2
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movb__dl___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_callq_.timespi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_fildl_MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #2 {
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
