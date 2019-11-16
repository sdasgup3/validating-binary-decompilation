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

declare %struct.Memory* @sub_401440.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4013c0.remove_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @SSIFreeIndex(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_447e80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_447e80, %struct.Memory** %MEMORY
  %loadMem_447e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i6 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i6
  %27 = load i64, i64* %PC.i5
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i5
  store i64 %26, i64* %RBP.i7, align 8
  store %struct.Memory* %loadMem_447e81, %struct.Memory** %MEMORY
  %loadMem_447e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i14 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i14
  %36 = load i64, i64* %PC.i13
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i13
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i14, align 8
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
  store %struct.Memory* %loadMem_447e84, %struct.Memory** %MEMORY
  %loadMem_447e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i31 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i32
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i31
  %79 = load i64, i64* %PC.i30
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i30
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_447e88, %struct.Memory** %MEMORY
  %loadMem_447e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i49
  %89 = sub i64 %88, 8
  %90 = load i64, i64* %PC.i48
  %91 = add i64 %90, 5
  store i64 %91, i64* %PC.i48
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %94, align 1
  %95 = trunc i64 %93 to i32
  %96 = and i32 %95, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %100, i8* %101, align 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %102, align 1
  %103 = icmp eq i64 %93, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1
  %106 = lshr i64 %93, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1
  %109 = lshr i64 %93, 63
  %110 = xor i64 %106, %109
  %111 = add i64 %110, %109
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %113, i8* %114, align 1
  store %struct.Memory* %loadMem_447e8c, %struct.Memory** %MEMORY
  %loadMem_447e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %PC.i65
  %119 = add i64 %118, 571
  %120 = load i64, i64* %PC.i65
  %121 = add i64 %120, 6
  %122 = load i64, i64* %PC.i65
  %123 = add i64 %122, 6
  store i64 %123, i64* %PC.i65
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %BRANCH_TAKEN, align 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %127 = icmp ne i8 %125, 0
  %128 = select i1 %127, i64 %119, i64 %121
  store i64 %128, i64* %126, align 8
  store %struct.Memory* %loadMem_447e91, %struct.Memory** %MEMORY
  %loadBr_447e91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447e91 = icmp eq i8 %loadBr_447e91, 1
  br i1 %cmpBr_447e91, label %block_.L_4480cc, label %block_447e97

block_447e97:                                     ; preds = %entry
  %loadMem_447e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i91
  %139 = sub i64 %138, 8
  %140 = load i64, i64* %PC.i89
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i89
  %142 = inttoptr i64 %139 to i64*
  %143 = load i64, i64* %142
  store i64 %143, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_447e97, %struct.Memory** %MEMORY
  %loadMem_447e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RAX.i170
  %151 = add i64 %150, 8
  %152 = load i64, i64* %PC.i169
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC.i169
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %156, align 1
  %157 = and i32 %155, 255
  %158 = call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %161, i8* %162, align 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %163, align 1
  %164 = icmp eq i32 %155, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1
  %167 = lshr i32 %155, 31
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1
  %170 = lshr i32 %155, 31
  %171 = xor i32 %167, %170
  %172 = add i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1
  store %struct.Memory* %loadMem_447e9b, %struct.Memory** %MEMORY
  %loadMem_447e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 33
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %PC.i186
  %180 = add i64 %179, 266
  %181 = load i64, i64* %PC.i186
  %182 = add i64 %181, 6
  %183 = load i64, i64* %PC.i186
  %184 = add i64 %183, 6
  store i64 %184, i64* %PC.i186
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %186 = load i8, i8* %185, align 1
  %187 = icmp eq i8 %186, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %BRANCH_TAKEN, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %190 = select i1 %187, i64 %180, i64 %182
  store i64 %190, i64* %189, align 8
  store %struct.Memory* %loadMem_447e9f, %struct.Memory** %MEMORY
  %loadBr_447e9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447e9f = icmp eq i8 %loadBr_447e9f, 1
  br i1 %cmpBr_447e9f, label %block_.L_447fa9, label %block_447ea5

block_447ea5:                                     ; preds = %block_447e97
  %loadMem_447ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 15
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %RBP.i212
  %198 = sub i64 %197, 12
  %199 = load i64, i64* %PC.i211
  %200 = add i64 %199, 7
  store i64 %200, i64* %PC.i211
  %201 = inttoptr i64 %198 to i32*
  store i32 0, i32* %201
  store %struct.Memory* %loadMem_447ea5, %struct.Memory** %MEMORY
  br label %block_.L_447eac

block_.L_447eac:                                  ; preds = %block_447ebc, %block_447ea5
  %loadMem_447eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 15
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %RBP.i253
  %212 = sub i64 %211, 12
  %213 = load i64, i64* %PC.i251
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i251
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_447eac, %struct.Memory** %MEMORY
  %loadMem_447eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i294
  %228 = sub i64 %227, 8
  %229 = load i64, i64* %PC.i292
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i292
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_447eaf, %struct.Memory** %MEMORY
  %loadMem_447eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %EAX.i314 = bitcast %union.anon* %238 to i32*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %241 to i64*
  %242 = load i32, i32* %EAX.i314
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %RCX.i315
  %245 = add i64 %244, 68
  %246 = load i64, i64* %PC.i313
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC.i313
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = sub i32 %242, %249
  %251 = icmp ult i32 %242, %249
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %252, i8* %253, align 1
  %254 = and i32 %250, 255
  %255 = call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %258, i8* %259, align 1
  %260 = xor i32 %249, %242
  %261 = xor i32 %260, %250
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %264, i8* %265, align 1
  %266 = icmp eq i32 %250, 0
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %267, i8* %268, align 1
  %269 = lshr i32 %250, 31
  %270 = trunc i32 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %270, i8* %271, align 1
  %272 = lshr i32 %242, 31
  %273 = lshr i32 %249, 31
  %274 = xor i32 %273, %272
  %275 = xor i32 %269, %272
  %276 = add i32 %275, %274
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1
  store %struct.Memory* %loadMem_447eb3, %struct.Memory** %MEMORY
  %loadMem_447eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %PC.i312
  %284 = add i64 %283, 47
  %285 = load i64, i64* %PC.i312
  %286 = add i64 %285, 6
  %287 = load i64, i64* %PC.i312
  %288 = add i64 %287, 6
  store i64 %288, i64* %PC.i312
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %290 = load i8, i8* %289, align 1
  %291 = icmp eq i8 %290, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %BRANCH_TAKEN, align 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %294 = select i1 %291, i64 %284, i64 %286
  store i64 %294, i64* %293, align 8
  store %struct.Memory* %loadMem_447eb6, %struct.Memory** %MEMORY
  %loadBr_447eb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447eb6 = icmp eq i8 %loadBr_447eb6, 1
  br i1 %cmpBr_447eb6, label %block_.L_447ee5, label %block_447ebc

block_447ebc:                                     ; preds = %block_.L_447eac
  %loadMem_447ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i311
  %305 = sub i64 %304, 8
  %306 = load i64, i64* %PC.i309
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC.i309
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_447ebc, %struct.Memory** %MEMORY
  %loadMem_447ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RAX.i308
  %317 = add i64 %316, 56
  %318 = load i64, i64* %PC.i307
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC.i307
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_447ec0, %struct.Memory** %MEMORY
  %loadMem_447ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 5
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 15
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RBP.i306
  %332 = sub i64 %331, 12
  %333 = load i64, i64* %PC.i304
  %334 = add i64 %333, 4
  store i64 %334, i64* %PC.i304
  %335 = inttoptr i64 %332 to i32*
  %336 = load i32, i32* %335
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_447ec4, %struct.Memory** %MEMORY
  %loadMem_447ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RCX.i303
  %345 = load i64, i64* %PC.i302
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC.i302
  %347 = sext i64 %344 to i128
  %348 = and i128 %347, -18446744073709551616
  %349 = zext i64 %344 to i128
  %350 = or i128 %348, %349
  %351 = mul i128 56, %350
  %352 = trunc i128 %351 to i64
  store i64 %352, i64* %RCX.i303, align 8
  %353 = sext i64 %352 to i128
  %354 = icmp ne i128 %353, %351
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %355, i8* %356, align 1
  %357 = trunc i128 %351 to i32
  %358 = and i32 %357, 255
  %359 = call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %362, i8* %363, align 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %364, align 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %365, align 1
  %366 = lshr i64 %352, 63
  %367 = trunc i64 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %367, i8* %368, align 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %355, i8* %369, align 1
  store %struct.Memory* %loadMem_447ec8, %struct.Memory** %MEMORY
  %loadMem_447ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RAX.i300
  %380 = load i64, i64* %RCX.i301
  %381 = load i64, i64* %PC.i299
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i299
  %383 = add i64 %380, %379
  store i64 %383, i64* %RAX.i300, align 8
  %384 = icmp ult i64 %383, %379
  %385 = icmp ult i64 %383, %380
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %387, i8* %388, align 1
  %389 = trunc i64 %383 to i32
  %390 = and i32 %389, 255
  %391 = call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %394, i8* %395, align 1
  %396 = xor i64 %380, %379
  %397 = xor i64 %396, %383
  %398 = lshr i64 %397, 4
  %399 = trunc i64 %398 to i8
  %400 = and i8 %399, 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %400, i8* %401, align 1
  %402 = icmp eq i64 %383, 0
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %403, i8* %404, align 1
  %405 = lshr i64 %383, 63
  %406 = trunc i64 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %406, i8* %407, align 1
  %408 = lshr i64 %379, 63
  %409 = lshr i64 %380, 63
  %410 = xor i64 %405, %408
  %411 = xor i64 %405, %409
  %412 = add i64 %410, %411
  %413 = icmp eq i64 %412, 2
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %414, i8* %415, align 1
  store %struct.Memory* %loadMem_447ecc, %struct.Memory** %MEMORY
  %loadMem_447ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 11
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %424 to i64*
  %425 = load i64, i64* %RAX.i297
  %426 = load i64, i64* %PC.i296
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC.i296
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428
  store i64 %429, i64* %RDI.i298, align 8
  store %struct.Memory* %loadMem_447ecf, %struct.Memory** %MEMORY
  %loadMem1_447ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %PC.i295
  %434 = add i64 %433, -289618
  %435 = load i64, i64* %PC.i295
  %436 = add i64 %435, 5
  %437 = load i64, i64* %PC.i295
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC.i295
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %436, i64* %442
  store i64 %441, i64* %439, align 8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %434, i64* %443, align 8
  store %struct.Memory* %loadMem1_447ed2, %struct.Memory** %MEMORY
  %loadMem2_447ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447ed2 = load i64, i64* %3
  %444 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_447ed2)
  store %struct.Memory* %444, %struct.Memory** %MEMORY
  %loadMem_447ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i291
  %455 = sub i64 %454, 12
  %456 = load i64, i64* %PC.i289
  %457 = add i64 %456, 3
  store i64 %457, i64* %PC.i289
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_447ed7, %struct.Memory** %MEMORY
  %loadMem_447eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %RAX.i288
  %468 = load i64, i64* %PC.i287
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i287
  %470 = trunc i64 %467 to i32
  %471 = add i32 1, %470
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i288, align 8
  %473 = icmp ult i32 %471, %470
  %474 = icmp ult i32 %471, 1
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %476, i8* %477, align 1
  %478 = and i32 %471, 255
  %479 = call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %482, i8* %483, align 1
  %484 = xor i64 1, %467
  %485 = trunc i64 %484 to i32
  %486 = xor i32 %485, %471
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %489, i8* %490, align 1
  %491 = icmp eq i32 %471, 0
  %492 = zext i1 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %492, i8* %493, align 1
  %494 = lshr i32 %471, 31
  %495 = trunc i32 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %495, i8* %496, align 1
  %497 = lshr i32 %470, 31
  %498 = xor i32 %494, %497
  %499 = add i32 %498, %494
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %501, i8* %502, align 1
  store %struct.Memory* %loadMem_447eda, %struct.Memory** %MEMORY
  %loadMem_447edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %508 to i32*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 15
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RBP.i286
  %513 = sub i64 %512, 12
  %514 = load i32, i32* %EAX.i285
  %515 = zext i32 %514 to i64
  %516 = load i64, i64* %PC.i284
  %517 = add i64 %516, 3
  store i64 %517, i64* %PC.i284
  %518 = inttoptr i64 %513 to i32*
  store i32 %514, i32* %518
  store %struct.Memory* %loadMem_447edd, %struct.Memory** %MEMORY
  %loadMem_447ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %PC.i283
  %523 = add i64 %522, -52
  %524 = load i64, i64* %PC.i283
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC.i283
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %523, i64* %526, align 8
  store %struct.Memory* %loadMem_447ee0, %struct.Memory** %MEMORY
  br label %block_.L_447eac

block_.L_447ee5:                                  ; preds = %block_.L_447eac
  %loadMem_447ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i282
  %534 = sub i64 %533, 12
  %535 = load i64, i64* %PC.i281
  %536 = add i64 %535, 7
  store i64 %536, i64* %PC.i281
  %537 = inttoptr i64 %534 to i32*
  store i32 0, i32* %537
  store %struct.Memory* %loadMem_447ee5, %struct.Memory** %MEMORY
  br label %block_.L_447eec

block_.L_447eec:                                  ; preds = %block_447efc, %block_.L_447ee5
  %loadMem_447eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 15
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %546 to i64*
  %547 = load i64, i64* %RBP.i280
  %548 = sub i64 %547, 12
  %549 = load i64, i64* %PC.i278
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC.i278
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551
  %553 = zext i32 %552 to i64
  store i64 %553, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_447eec, %struct.Memory** %MEMORY
  %loadMem_447eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 5
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 15
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RBP.i277
  %564 = sub i64 %563, 8
  %565 = load i64, i64* %PC.i275
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC.i275
  %567 = inttoptr i64 %564 to i64*
  %568 = load i64, i64* %567
  store i64 %568, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_447eef, %struct.Memory** %MEMORY
  %loadMem_447ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %EAX.i273 = bitcast %union.anon* %574 to i32*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %577 to i64*
  %578 = load i32, i32* %EAX.i273
  %579 = zext i32 %578 to i64
  %580 = load i64, i64* %RCX.i274
  %581 = add i64 %580, 100
  %582 = load i64, i64* %PC.i272
  %583 = add i64 %582, 3
  store i64 %583, i64* %PC.i272
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = sub i32 %578, %585
  %587 = icmp ult i32 %578, %585
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %588, i8* %589, align 1
  %590 = and i32 %586, 255
  %591 = call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %594, i8* %595, align 1
  %596 = xor i32 %585, %578
  %597 = xor i32 %596, %586
  %598 = lshr i32 %597, 4
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %600, i8* %601, align 1
  %602 = icmp eq i32 %586, 0
  %603 = zext i1 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %603, i8* %604, align 1
  %605 = lshr i32 %586, 31
  %606 = trunc i32 %605 to i8
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %606, i8* %607, align 1
  %608 = lshr i32 %578, 31
  %609 = lshr i32 %585, 31
  %610 = xor i32 %609, %608
  %611 = xor i32 %605, %608
  %612 = add i32 %611, %610
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %614, i8* %615, align 1
  store %struct.Memory* %loadMem_447ef3, %struct.Memory** %MEMORY
  %loadMem_447ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %PC.i271
  %620 = add i64 %619, 47
  %621 = load i64, i64* %PC.i271
  %622 = add i64 %621, 6
  %623 = load i64, i64* %PC.i271
  %624 = add i64 %623, 6
  store i64 %624, i64* %PC.i271
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %626 = load i8, i8* %625, align 1
  %627 = icmp eq i8 %626, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %BRANCH_TAKEN, align 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %630 = select i1 %627, i64 %620, i64 %622
  store i64 %630, i64* %629, align 8
  store %struct.Memory* %loadMem_447ef6, %struct.Memory** %MEMORY
  %loadBr_447ef6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447ef6 = icmp eq i8 %loadBr_447ef6, 1
  br i1 %cmpBr_447ef6, label %block_.L_447f25, label %block_447efc

block_447efc:                                     ; preds = %block_.L_447eec
  %loadMem_447efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 15
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %RBP.i270
  %641 = sub i64 %640, 8
  %642 = load i64, i64* %PC.i268
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC.i268
  %644 = inttoptr i64 %641 to i64*
  %645 = load i64, i64* %644
  store i64 %645, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_447efc, %struct.Memory** %MEMORY
  %loadMem_447f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RAX.i267
  %653 = add i64 %652, 88
  %654 = load i64, i64* %PC.i266
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC.i266
  %656 = inttoptr i64 %653 to i64*
  %657 = load i64, i64* %656
  store i64 %657, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_447f00, %struct.Memory** %MEMORY
  %loadMem_447f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 15
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %RBP.i265
  %668 = sub i64 %667, 12
  %669 = load i64, i64* %PC.i263
  %670 = add i64 %669, 4
  store i64 %670, i64* %PC.i263
  %671 = inttoptr i64 %668 to i32*
  %672 = load i32, i32* %671
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_447f04, %struct.Memory** %MEMORY
  %loadMem_447f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 5
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RCX.i262
  %681 = load i64, i64* %PC.i261
  %682 = add i64 %681, 4
  store i64 %682, i64* %PC.i261
  %683 = shl i64 %680, 3
  %684 = icmp slt i64 %683, 0
  %685 = shl i64 %683, 1
  store i64 %685, i64* %RCX.i262, align 8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %687 = zext i1 %684 to i8
  store i8 %687, i8* %686, align 1
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %689 = trunc i64 %685 to i32
  %690 = and i32 %689, 254
  %691 = call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %688, align 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %695, align 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %697 = icmp eq i64 %685, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %696, align 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %700 = lshr i64 %685, 63
  %701 = trunc i64 %700 to i8
  store i8 %701, i8* %699, align 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %702, align 1
  store %struct.Memory* %loadMem_447f08, %struct.Memory** %MEMORY
  %loadMem_447f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 5
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %RAX.i259
  %713 = load i64, i64* %RCX.i260
  %714 = load i64, i64* %PC.i258
  %715 = add i64 %714, 3
  store i64 %715, i64* %PC.i258
  %716 = add i64 %713, %712
  store i64 %716, i64* %RAX.i259, align 8
  %717 = icmp ult i64 %716, %712
  %718 = icmp ult i64 %716, %713
  %719 = or i1 %717, %718
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %720, i8* %721, align 1
  %722 = trunc i64 %716 to i32
  %723 = and i32 %722, 255
  %724 = call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %727, i8* %728, align 1
  %729 = xor i64 %713, %712
  %730 = xor i64 %729, %716
  %731 = lshr i64 %730, 4
  %732 = trunc i64 %731 to i8
  %733 = and i8 %732, 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %733, i8* %734, align 1
  %735 = icmp eq i64 %716, 0
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %736, i8* %737, align 1
  %738 = lshr i64 %716, 63
  %739 = trunc i64 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %739, i8* %740, align 1
  %741 = lshr i64 %712, 63
  %742 = lshr i64 %713, 63
  %743 = xor i64 %738, %741
  %744 = xor i64 %738, %742
  %745 = add i64 %743, %744
  %746 = icmp eq i64 %745, 2
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %747, i8* %748, align 1
  store %struct.Memory* %loadMem_447f0c, %struct.Memory** %MEMORY
  %loadMem_447f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 11
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RDI.i257 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %RAX.i256
  %759 = load i64, i64* %PC.i255
  %760 = add i64 %759, 3
  store i64 %760, i64* %PC.i255
  %761 = inttoptr i64 %758 to i64*
  %762 = load i64, i64* %761
  store i64 %762, i64* %RDI.i257, align 8
  store %struct.Memory* %loadMem_447f0f, %struct.Memory** %MEMORY
  %loadMem1_447f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i254
  %767 = add i64 %766, -289682
  %768 = load i64, i64* %PC.i254
  %769 = add i64 %768, 5
  %770 = load i64, i64* %PC.i254
  %771 = add i64 %770, 5
  store i64 %771, i64* %PC.i254
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = add i64 %773, -8
  %775 = inttoptr i64 %774 to i64*
  store i64 %769, i64* %775
  store i64 %774, i64* %772, align 8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %767, i64* %776, align 8
  store %struct.Memory* %loadMem1_447f12, %struct.Memory** %MEMORY
  %loadMem2_447f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447f12 = load i64, i64* %3
  %777 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_447f12)
  store %struct.Memory* %777, %struct.Memory** %MEMORY
  %loadMem_447f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 15
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RBP.i250
  %788 = sub i64 %787, 12
  %789 = load i64, i64* %PC.i248
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC.i248
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_447f17, %struct.Memory** %MEMORY
  %loadMem_447f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %RAX.i247
  %801 = load i64, i64* %PC.i246
  %802 = add i64 %801, 3
  store i64 %802, i64* %PC.i246
  %803 = trunc i64 %800 to i32
  %804 = add i32 1, %803
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RAX.i247, align 8
  %806 = icmp ult i32 %804, %803
  %807 = icmp ult i32 %804, 1
  %808 = or i1 %806, %807
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %809, i8* %810, align 1
  %811 = and i32 %804, 255
  %812 = call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %815, i8* %816, align 1
  %817 = xor i64 1, %800
  %818 = trunc i64 %817 to i32
  %819 = xor i32 %818, %804
  %820 = lshr i32 %819, 4
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %822, i8* %823, align 1
  %824 = icmp eq i32 %804, 0
  %825 = zext i1 %824 to i8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %825, i8* %826, align 1
  %827 = lshr i32 %804, 31
  %828 = trunc i32 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %828, i8* %829, align 1
  %830 = lshr i32 %803, 31
  %831 = xor i32 %827, %830
  %832 = add i32 %831, %827
  %833 = icmp eq i32 %832, 2
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %834, i8* %835, align 1
  store %struct.Memory* %loadMem_447f1a, %struct.Memory** %MEMORY
  %loadMem_447f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %841 to i32*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i245
  %846 = sub i64 %845, 12
  %847 = load i32, i32* %EAX.i244
  %848 = zext i32 %847 to i64
  %849 = load i64, i64* %PC.i243
  %850 = add i64 %849, 3
  store i64 %850, i64* %PC.i243
  %851 = inttoptr i64 %846 to i32*
  store i32 %847, i32* %851
  store %struct.Memory* %loadMem_447f1d, %struct.Memory** %MEMORY
  %loadMem_447f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %PC.i242
  %856 = add i64 %855, -52
  %857 = load i64, i64* %PC.i242
  %858 = add i64 %857, 5
  store i64 %858, i64* %PC.i242
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %856, i64* %859, align 8
  store %struct.Memory* %loadMem_447f20, %struct.Memory** %MEMORY
  br label %block_.L_447eec

block_.L_447f25:                                  ; preds = %block_.L_447eec
  %loadMem_447f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RBP.i241
  %867 = sub i64 %866, 12
  %868 = load i64, i64* %PC.i240
  %869 = add i64 %868, 7
  store i64 %869, i64* %PC.i240
  %870 = inttoptr i64 %867 to i32*
  store i32 0, i32* %870
  store %struct.Memory* %loadMem_447f25, %struct.Memory** %MEMORY
  br label %block_.L_447f2c

block_.L_447f2c:                                  ; preds = %block_447f3c, %block_.L_447f25
  %loadMem_447f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 15
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RBP.i239
  %881 = sub i64 %880, 12
  %882 = load i64, i64* %PC.i237
  %883 = add i64 %882, 3
  store i64 %883, i64* %PC.i237
  %884 = inttoptr i64 %881 to i32*
  %885 = load i32, i32* %884
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_447f2c, %struct.Memory** %MEMORY
  %loadMem_447f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 33
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 5
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 15
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %895 to i64*
  %896 = load i64, i64* %RBP.i236
  %897 = sub i64 %896, 8
  %898 = load i64, i64* %PC.i234
  %899 = add i64 %898, 4
  store i64 %899, i64* %PC.i234
  %900 = inttoptr i64 %897 to i64*
  %901 = load i64, i64* %900
  store i64 %901, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_447f2f, %struct.Memory** %MEMORY
  %loadMem_447f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 1
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %907 to i32*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 5
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %910 to i64*
  %911 = load i32, i32* %EAX.i232
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %RCX.i233
  %914 = add i64 %913, 100
  %915 = load i64, i64* %PC.i231
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i231
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917
  %919 = sub i32 %911, %918
  %920 = icmp ult i32 %911, %918
  %921 = zext i1 %920 to i8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %921, i8* %922, align 1
  %923 = and i32 %919, 255
  %924 = call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %927, i8* %928, align 1
  %929 = xor i32 %918, %911
  %930 = xor i32 %929, %919
  %931 = lshr i32 %930, 4
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %933, i8* %934, align 1
  %935 = icmp eq i32 %919, 0
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %936, i8* %937, align 1
  %938 = lshr i32 %919, 31
  %939 = trunc i32 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %939, i8* %940, align 1
  %941 = lshr i32 %911, 31
  %942 = lshr i32 %918, 31
  %943 = xor i32 %942, %941
  %944 = xor i32 %938, %941
  %945 = add i32 %944, %943
  %946 = icmp eq i32 %945, 2
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %947, i8* %948, align 1
  store %struct.Memory* %loadMem_447f33, %struct.Memory** %MEMORY
  %loadMem_447f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %PC.i230
  %953 = add i64 %952, 48
  %954 = load i64, i64* %PC.i230
  %955 = add i64 %954, 6
  %956 = load i64, i64* %PC.i230
  %957 = add i64 %956, 6
  store i64 %957, i64* %PC.i230
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %959 = load i8, i8* %958, align 1
  %960 = icmp eq i8 %959, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %BRANCH_TAKEN, align 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %963 = select i1 %960, i64 %953, i64 %955
  store i64 %963, i64* %962, align 8
  store %struct.Memory* %loadMem_447f36, %struct.Memory** %MEMORY
  %loadBr_447f36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447f36 = icmp eq i8 %loadBr_447f36, 1
  br i1 %cmpBr_447f36, label %block_.L_447f66, label %block_447f3c

block_447f3c:                                     ; preds = %block_.L_447f2c
  %loadMem_447f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 1
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 15
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %972 to i64*
  %973 = load i64, i64* %RBP.i229
  %974 = sub i64 %973, 8
  %975 = load i64, i64* %PC.i227
  %976 = add i64 %975, 4
  store i64 %976, i64* %PC.i227
  %977 = inttoptr i64 %974 to i64*
  %978 = load i64, i64* %977
  store i64 %978, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_447f3c, %struct.Memory** %MEMORY
  %loadMem_447f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RAX.i226
  %986 = add i64 %985, 88
  %987 = load i64, i64* %PC.i225
  %988 = add i64 %987, 4
  store i64 %988, i64* %PC.i225
  %989 = inttoptr i64 %986 to i64*
  %990 = load i64, i64* %989
  store i64 %990, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_447f40, %struct.Memory** %MEMORY
  %loadMem_447f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RBP.i224
  %1001 = sub i64 %1000, 12
  %1002 = load i64, i64* %PC.i222
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC.i222
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX.i223, align 8
  store %struct.Memory* %loadMem_447f44, %struct.Memory** %MEMORY
  %loadMem_447f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 33
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 5
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RCX.i221
  %1014 = load i64, i64* %PC.i220
  %1015 = add i64 %1014, 4
  store i64 %1015, i64* %PC.i220
  %1016 = shl i64 %1013, 3
  %1017 = icmp slt i64 %1016, 0
  %1018 = shl i64 %1016, 1
  store i64 %1018, i64* %RCX.i221, align 8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1020 = zext i1 %1017 to i8
  store i8 %1020, i8* %1019, align 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1022 = trunc i64 %1018 to i32
  %1023 = and i32 %1022, 254
  %1024 = call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %1021, align 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1028, align 1
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1030 = icmp eq i64 %1018, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %1029, align 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1033 = lshr i64 %1018, 63
  %1034 = trunc i64 %1033 to i8
  store i8 %1034, i8* %1032, align 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1035, align 1
  store %struct.Memory* %loadMem_447f48, %struct.Memory** %MEMORY
  %loadMem_447f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 1
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 5
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %1044 to i64*
  %1045 = load i64, i64* %RAX.i218
  %1046 = load i64, i64* %RCX.i219
  %1047 = load i64, i64* %PC.i217
  %1048 = add i64 %1047, 3
  store i64 %1048, i64* %PC.i217
  %1049 = add i64 %1046, %1045
  store i64 %1049, i64* %RAX.i218, align 8
  %1050 = icmp ult i64 %1049, %1045
  %1051 = icmp ult i64 %1049, %1046
  %1052 = or i1 %1050, %1051
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1053, i8* %1054, align 1
  %1055 = trunc i64 %1049 to i32
  %1056 = and i32 %1055, 255
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1060, i8* %1061, align 1
  %1062 = xor i64 %1046, %1045
  %1063 = xor i64 %1062, %1049
  %1064 = lshr i64 %1063, 4
  %1065 = trunc i64 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1066, i8* %1067, align 1
  %1068 = icmp eq i64 %1049, 0
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1069, i8* %1070, align 1
  %1071 = lshr i64 %1049, 63
  %1072 = trunc i64 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1072, i8* %1073, align 1
  %1074 = lshr i64 %1045, 63
  %1075 = lshr i64 %1046, 63
  %1076 = xor i64 %1071, %1074
  %1077 = xor i64 %1071, %1075
  %1078 = add i64 %1076, %1077
  %1079 = icmp eq i64 %1078, 2
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1080, i8* %1081, align 1
  store %struct.Memory* %loadMem_447f4c, %struct.Memory** %MEMORY
  %loadMem_447f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 11
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %1090 to i64*
  %1091 = load i64, i64* %RAX.i215
  %1092 = add i64 %1091, 8
  %1093 = load i64, i64* %PC.i214
  %1094 = add i64 %1093, 4
  store i64 %1094, i64* %PC.i214
  %1095 = inttoptr i64 %1092 to i64*
  %1096 = load i64, i64* %1095
  store i64 %1096, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_447f4f, %struct.Memory** %MEMORY
  %loadMem1_447f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %PC.i213
  %1101 = add i64 %1100, -289747
  %1102 = load i64, i64* %PC.i213
  %1103 = add i64 %1102, 5
  %1104 = load i64, i64* %PC.i213
  %1105 = add i64 %1104, 5
  store i64 %1105, i64* %PC.i213
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1107 = load i64, i64* %1106, align 8
  %1108 = add i64 %1107, -8
  %1109 = inttoptr i64 %1108 to i64*
  store i64 %1103, i64* %1109
  store i64 %1108, i64* %1106, align 8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1101, i64* %1110, align 8
  store %struct.Memory* %loadMem1_447f53, %struct.Memory** %MEMORY
  %loadMem2_447f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447f53 = load i64, i64* %3
  %1111 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_447f53)
  store %struct.Memory* %1111, %struct.Memory** %MEMORY
  %loadMem_447f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 1
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 15
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %1120 to i64*
  %1121 = load i64, i64* %RBP.i210
  %1122 = sub i64 %1121, 12
  %1123 = load i64, i64* %PC.i208
  %1124 = add i64 %1123, 3
  store i64 %1124, i64* %PC.i208
  %1125 = inttoptr i64 %1122 to i32*
  %1126 = load i32, i32* %1125
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_447f58, %struct.Memory** %MEMORY
  %loadMem_447f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 1
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RAX.i207
  %1135 = load i64, i64* %PC.i206
  %1136 = add i64 %1135, 3
  store i64 %1136, i64* %PC.i206
  %1137 = trunc i64 %1134 to i32
  %1138 = add i32 1, %1137
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i207, align 8
  %1140 = icmp ult i32 %1138, %1137
  %1141 = icmp ult i32 %1138, 1
  %1142 = or i1 %1140, %1141
  %1143 = zext i1 %1142 to i8
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1143, i8* %1144, align 1
  %1145 = and i32 %1138, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1149, i8* %1150, align 1
  %1151 = xor i64 1, %1134
  %1152 = trunc i64 %1151 to i32
  %1153 = xor i32 %1152, %1138
  %1154 = lshr i32 %1153, 4
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1156, i8* %1157, align 1
  %1158 = icmp eq i32 %1138, 0
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1159, i8* %1160, align 1
  %1161 = lshr i32 %1138, 31
  %1162 = trunc i32 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1162, i8* %1163, align 1
  %1164 = lshr i32 %1137, 31
  %1165 = xor i32 %1161, %1164
  %1166 = add i32 %1165, %1161
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1168, i8* %1169, align 1
  store %struct.Memory* %loadMem_447f5b, %struct.Memory** %MEMORY
  %loadMem_447f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 1
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %1175 to i32*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 15
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RBP.i205
  %1180 = sub i64 %1179, 12
  %1181 = load i32, i32* %EAX.i204
  %1182 = zext i32 %1181 to i64
  %1183 = load i64, i64* %PC.i203
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %PC.i203
  %1185 = inttoptr i64 %1180 to i32*
  store i32 %1181, i32* %1185
  store %struct.Memory* %loadMem_447f5e, %struct.Memory** %MEMORY
  %loadMem_447f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1188 to i64*
  %1189 = load i64, i64* %PC.i202
  %1190 = add i64 %1189, -53
  %1191 = load i64, i64* %PC.i202
  %1192 = add i64 %1191, 5
  store i64 %1192, i64* %PC.i202
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1190, i64* %1193, align 8
  store %struct.Memory* %loadMem_447f61, %struct.Memory** %MEMORY
  br label %block_.L_447f2c

block_.L_447f66:                                  ; preds = %block_.L_447f2c
  %loadMem_447f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 1
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RBP.i201
  %1204 = sub i64 %1203, 8
  %1205 = load i64, i64* %PC.i199
  %1206 = add i64 %1205, 4
  store i64 %1206, i64* %PC.i199
  %1207 = inttoptr i64 %1204 to i64*
  %1208 = load i64, i64* %1207
  store i64 %1208, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_447f66, %struct.Memory** %MEMORY
  %loadMem_447f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RAX.i198
  %1216 = add i64 %1215, 56
  %1217 = load i64, i64* %PC.i197
  %1218 = add i64 %1217, 5
  store i64 %1218, i64* %PC.i197
  %1219 = inttoptr i64 %1216 to i64*
  %1220 = load i64, i64* %1219
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1221, align 1
  %1222 = trunc i64 %1220 to i32
  %1223 = and i32 %1222, 255
  %1224 = call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1227, i8* %1228, align 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1229, align 1
  %1230 = icmp eq i64 %1220, 0
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1231, i8* %1232, align 1
  %1233 = lshr i64 %1220, 63
  %1234 = trunc i64 %1233 to i8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1234, i8* %1235, align 1
  %1236 = lshr i64 %1220, 63
  %1237 = xor i64 %1233, %1236
  %1238 = add i64 %1237, %1236
  %1239 = icmp eq i64 %1238, 2
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1240, i8* %1241, align 1
  store %struct.Memory* %loadMem_447f6a, %struct.Memory** %MEMORY
  %loadMem_447f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1244 to i64*
  %1245 = load i64, i64* %PC.i196
  %1246 = add i64 %1245, 22
  %1247 = load i64, i64* %PC.i196
  %1248 = add i64 %1247, 6
  %1249 = load i64, i64* %PC.i196
  %1250 = add i64 %1249, 6
  store i64 %1250, i64* %PC.i196
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1252 = load i8, i8* %1251, align 1
  store i8 %1252, i8* %BRANCH_TAKEN, align 1
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1254 = icmp ne i8 %1252, 0
  %1255 = select i1 %1254, i64 %1246, i64 %1248
  store i64 %1255, i64* %1253, align 8
  store %struct.Memory* %loadMem_447f6f, %struct.Memory** %MEMORY
  %loadBr_447f6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447f6f = icmp eq i8 %loadBr_447f6f, 1
  br i1 %cmpBr_447f6f, label %block_.L_447f85, label %block_447f75

block_447f75:                                     ; preds = %block_.L_447f66
  %loadMem_447f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 1
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 15
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RBP.i195
  %1266 = sub i64 %1265, 8
  %1267 = load i64, i64* %PC.i193
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %PC.i193
  %1269 = inttoptr i64 %1266 to i64*
  %1270 = load i64, i64* %1269
  store i64 %1270, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_447f75, %struct.Memory** %MEMORY
  %loadMem_447f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RAX.i192
  %1278 = add i64 %1277, 56
  %1279 = load i64, i64* %PC.i191
  %1280 = add i64 %1279, 4
  store i64 %1280, i64* %PC.i191
  %1281 = inttoptr i64 %1278 to i64*
  %1282 = load i64, i64* %1281
  store i64 %1282, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_447f79, %struct.Memory** %MEMORY
  %loadMem_447f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 1
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 11
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RDI.i190 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RAX.i189
  %1293 = load i64, i64* %PC.i188
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %PC.i188
  store i64 %1292, i64* %RDI.i190, align 8
  store %struct.Memory* %loadMem_447f7d, %struct.Memory** %MEMORY
  %loadMem1_447f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 33
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1297 to i64*
  %1298 = load i64, i64* %PC.i187
  %1299 = add i64 %1298, -289792
  %1300 = load i64, i64* %PC.i187
  %1301 = add i64 %1300, 5
  %1302 = load i64, i64* %PC.i187
  %1303 = add i64 %1302, 5
  store i64 %1303, i64* %PC.i187
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1305 = load i64, i64* %1304, align 8
  %1306 = add i64 %1305, -8
  %1307 = inttoptr i64 %1306 to i64*
  store i64 %1301, i64* %1307
  store i64 %1306, i64* %1304, align 8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1299, i64* %1308, align 8
  store %struct.Memory* %loadMem1_447f80, %struct.Memory** %MEMORY
  %loadMem2_447f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447f80 = load i64, i64* %3
  %1309 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_447f80)
  store %struct.Memory* %1309, %struct.Memory** %MEMORY
  br label %block_.L_447f85

block_.L_447f85:                                  ; preds = %block_447f75, %block_.L_447f66
  %loadMem_447f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 1
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 15
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %RBP.i185
  %1320 = sub i64 %1319, 8
  %1321 = load i64, i64* %PC.i183
  %1322 = add i64 %1321, 4
  store i64 %1322, i64* %PC.i183
  %1323 = inttoptr i64 %1320 to i64*
  %1324 = load i64, i64* %1323
  store i64 %1324, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_447f85, %struct.Memory** %MEMORY
  %loadMem_447f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 1
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RAX.i182
  %1332 = add i64 %1331, 88
  %1333 = load i64, i64* %PC.i181
  %1334 = add i64 %1333, 5
  store i64 %1334, i64* %PC.i181
  %1335 = inttoptr i64 %1332 to i64*
  %1336 = load i64, i64* %1335
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1337, align 1
  %1338 = trunc i64 %1336 to i32
  %1339 = and i32 %1338, 255
  %1340 = call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1343, i8* %1344, align 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1345, align 1
  %1346 = icmp eq i64 %1336, 0
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1347, i8* %1348, align 1
  %1349 = lshr i64 %1336, 63
  %1350 = trunc i64 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1350, i8* %1351, align 1
  %1352 = lshr i64 %1336, 63
  %1353 = xor i64 %1349, %1352
  %1354 = add i64 %1353, %1352
  %1355 = icmp eq i64 %1354, 2
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1356, i8* %1357, align 1
  store %struct.Memory* %loadMem_447f89, %struct.Memory** %MEMORY
  %loadMem_447f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %PC.i180
  %1362 = add i64 %1361, 22
  %1363 = load i64, i64* %PC.i180
  %1364 = add i64 %1363, 6
  %1365 = load i64, i64* %PC.i180
  %1366 = add i64 %1365, 6
  store i64 %1366, i64* %PC.i180
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1368 = load i8, i8* %1367, align 1
  store i8 %1368, i8* %BRANCH_TAKEN, align 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1370 = icmp ne i8 %1368, 0
  %1371 = select i1 %1370, i64 %1362, i64 %1364
  store i64 %1371, i64* %1369, align 8
  store %struct.Memory* %loadMem_447f8e, %struct.Memory** %MEMORY
  %loadBr_447f8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447f8e = icmp eq i8 %loadBr_447f8e, 1
  br i1 %cmpBr_447f8e, label %block_.L_447fa4, label %block_447f94

block_447f94:                                     ; preds = %block_.L_447f85
  %loadMem_447f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 1
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i179
  %1382 = sub i64 %1381, 8
  %1383 = load i64, i64* %PC.i177
  %1384 = add i64 %1383, 4
  store i64 %1384, i64* %PC.i177
  %1385 = inttoptr i64 %1382 to i64*
  %1386 = load i64, i64* %1385
  store i64 %1386, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_447f94, %struct.Memory** %MEMORY
  %loadMem_447f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 1
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %1392 to i64*
  %1393 = load i64, i64* %RAX.i176
  %1394 = add i64 %1393, 88
  %1395 = load i64, i64* %PC.i175
  %1396 = add i64 %1395, 4
  store i64 %1396, i64* %PC.i175
  %1397 = inttoptr i64 %1394 to i64*
  %1398 = load i64, i64* %1397
  store i64 %1398, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_447f98, %struct.Memory** %MEMORY
  %loadMem_447f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 1
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 11
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %RAX.i173
  %1409 = load i64, i64* %PC.i172
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %PC.i172
  store i64 %1408, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_447f9c, %struct.Memory** %MEMORY
  %loadMem1_447f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %PC.i171
  %1415 = add i64 %1414, -289823
  %1416 = load i64, i64* %PC.i171
  %1417 = add i64 %1416, 5
  %1418 = load i64, i64* %PC.i171
  %1419 = add i64 %1418, 5
  store i64 %1419, i64* %PC.i171
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1421 = load i64, i64* %1420, align 8
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1417, i64* %1423
  store i64 %1422, i64* %1420, align 8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1415, i64* %1424, align 8
  store %struct.Memory* %loadMem1_447f9f, %struct.Memory** %MEMORY
  %loadMem2_447f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447f9f = load i64, i64* %3
  %1425 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_447f9f)
  store %struct.Memory* %1425, %struct.Memory** %MEMORY
  br label %block_.L_447fa4

block_.L_447fa4:                                  ; preds = %block_447f94, %block_.L_447f85
  %loadMem_447fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %PC.i168
  %1430 = add i64 %1429, 99
  %1431 = load i64, i64* %PC.i168
  %1432 = add i64 %1431, 5
  store i64 %1432, i64* %PC.i168
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1430, i64* %1433, align 8
  store %struct.Memory* %loadMem_447fa4, %struct.Memory** %MEMORY
  br label %block_.L_448007

block_.L_447fa9:                                  ; preds = %block_447e97
  %loadMem_447fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 1
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 15
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %RBP.i167
  %1444 = sub i64 %1443, 8
  %1445 = load i64, i64* %PC.i165
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %PC.i165
  %1447 = inttoptr i64 %1444 to i64*
  %1448 = load i64, i64* %1447
  store i64 %1448, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_447fa9, %struct.Memory** %MEMORY
  %loadMem_447fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RAX.i164
  %1456 = add i64 %1455, 80
  %1457 = load i64, i64* %PC.i163
  %1458 = add i64 %1457, 5
  store i64 %1458, i64* %PC.i163
  %1459 = inttoptr i64 %1456 to i64*
  %1460 = load i64, i64* %1459
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1461, align 1
  %1462 = trunc i64 %1460 to i32
  %1463 = and i32 %1462, 255
  %1464 = call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1467, i8* %1468, align 1
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1469, align 1
  %1470 = icmp eq i64 %1460, 0
  %1471 = zext i1 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1471, i8* %1472, align 1
  %1473 = lshr i64 %1460, 63
  %1474 = trunc i64 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1474, i8* %1475, align 1
  %1476 = lshr i64 %1460, 63
  %1477 = xor i64 %1473, %1476
  %1478 = add i64 %1477, %1476
  %1479 = icmp eq i64 %1478, 2
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1480, i8* %1481, align 1
  store %struct.Memory* %loadMem_447fad, %struct.Memory** %MEMORY
  %loadMem_447fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %PC.i162
  %1486 = add i64 %1485, 22
  %1487 = load i64, i64* %PC.i162
  %1488 = add i64 %1487, 6
  %1489 = load i64, i64* %PC.i162
  %1490 = add i64 %1489, 6
  store i64 %1490, i64* %PC.i162
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1492 = load i8, i8* %1491, align 1
  store i8 %1492, i8* %BRANCH_TAKEN, align 1
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1494 = icmp ne i8 %1492, 0
  %1495 = select i1 %1494, i64 %1486, i64 %1488
  store i64 %1495, i64* %1493, align 8
  store %struct.Memory* %loadMem_447fb2, %struct.Memory** %MEMORY
  %loadBr_447fb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447fb2 = icmp eq i8 %loadBr_447fb2, 1
  br i1 %cmpBr_447fb2, label %block_.L_447fc8, label %block_447fb8

block_447fb8:                                     ; preds = %block_.L_447fa9
  %loadMem_447fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RBP.i161
  %1506 = sub i64 %1505, 8
  %1507 = load i64, i64* %PC.i159
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC.i159
  %1509 = inttoptr i64 %1506 to i64*
  %1510 = load i64, i64* %1509
  store i64 %1510, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_447fb8, %struct.Memory** %MEMORY
  %loadMem_447fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 11
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RDI.i158 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i157
  %1521 = add i64 %1520, 80
  %1522 = load i64, i64* %PC.i156
  %1523 = add i64 %1522, 4
  store i64 %1523, i64* %PC.i156
  %1524 = inttoptr i64 %1521 to i64*
  %1525 = load i64, i64* %1524
  store i64 %1525, i64* %RDI.i158, align 8
  store %struct.Memory* %loadMem_447fbc, %struct.Memory** %MEMORY
  %loadMem1_447fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1528 to i64*
  %1529 = load i64, i64* %PC.i155
  %1530 = add i64 %1529, -289664
  %1531 = load i64, i64* %PC.i155
  %1532 = add i64 %1531, 5
  %1533 = load i64, i64* %PC.i155
  %1534 = add i64 %1533, 5
  store i64 %1534, i64* %PC.i155
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1536 = load i64, i64* %1535, align 8
  %1537 = add i64 %1536, -8
  %1538 = inttoptr i64 %1537 to i64*
  store i64 %1532, i64* %1538
  store i64 %1537, i64* %1535, align 8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1530, i64* %1539, align 8
  store %struct.Memory* %loadMem1_447fc0, %struct.Memory** %MEMORY
  %loadMem2_447fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447fc0 = load i64, i64* %3
  %call2_447fc0 = call %struct.Memory* @sub_401440.fclose_plt(%struct.State* %0, i64 %loadPC_447fc0, %struct.Memory* %loadMem2_447fc0)
  store %struct.Memory* %call2_447fc0, %struct.Memory** %MEMORY
  %loadMem_447fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 1
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %1545 to i32*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i154
  %1550 = sub i64 %1549, 16
  %1551 = load i32, i32* %EAX.i153
  %1552 = zext i32 %1551 to i64
  %1553 = load i64, i64* %PC.i152
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i152
  %1555 = inttoptr i64 %1550 to i32*
  store i32 %1551, i32* %1555
  store %struct.Memory* %loadMem_447fc5, %struct.Memory** %MEMORY
  br label %block_.L_447fc8

block_.L_447fc8:                                  ; preds = %block_447fb8, %block_.L_447fa9
  %loadMem_447fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i151
  %1566 = sub i64 %1565, 8
  %1567 = load i64, i64* %PC.i149
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC.i149
  %1569 = inttoptr i64 %1566 to i64*
  %1570 = load i64, i64* %1569
  store i64 %1570, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_447fc8, %struct.Memory** %MEMORY
  %loadMem_447fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %1576 to i64*
  %1577 = load i64, i64* %RAX.i148
  %1578 = add i64 %1577, 112
  %1579 = load i64, i64* %PC.i147
  %1580 = add i64 %1579, 5
  store i64 %1580, i64* %PC.i147
  %1581 = inttoptr i64 %1578 to i64*
  %1582 = load i64, i64* %1581
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1583, align 1
  %1584 = trunc i64 %1582 to i32
  %1585 = and i32 %1584, 255
  %1586 = call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1589, i8* %1590, align 1
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1591, align 1
  %1592 = icmp eq i64 %1582, 0
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1593, i8* %1594, align 1
  %1595 = lshr i64 %1582, 63
  %1596 = trunc i64 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1596, i8* %1597, align 1
  %1598 = lshr i64 %1582, 63
  %1599 = xor i64 %1595, %1598
  %1600 = add i64 %1599, %1598
  %1601 = icmp eq i64 %1600, 2
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1602, i8* %1603, align 1
  store %struct.Memory* %loadMem_447fcc, %struct.Memory** %MEMORY
  %loadMem_447fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1606 to i64*
  %1607 = load i64, i64* %PC.i146
  %1608 = add i64 %1607, 22
  %1609 = load i64, i64* %PC.i146
  %1610 = add i64 %1609, 6
  %1611 = load i64, i64* %PC.i146
  %1612 = add i64 %1611, 6
  store i64 %1612, i64* %PC.i146
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1614 = load i8, i8* %1613, align 1
  store i8 %1614, i8* %BRANCH_TAKEN, align 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1616 = icmp ne i8 %1614, 0
  %1617 = select i1 %1616, i64 %1608, i64 %1610
  store i64 %1617, i64* %1615, align 8
  store %struct.Memory* %loadMem_447fd1, %struct.Memory** %MEMORY
  %loadBr_447fd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_447fd1 = icmp eq i8 %loadBr_447fd1, 1
  br i1 %cmpBr_447fd1, label %block_.L_447fe7, label %block_447fd7

block_447fd7:                                     ; preds = %block_.L_447fc8
  %loadMem_447fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 1
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 15
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RBP.i145
  %1628 = sub i64 %1627, 8
  %1629 = load i64, i64* %PC.i143
  %1630 = add i64 %1629, 4
  store i64 %1630, i64* %PC.i143
  %1631 = inttoptr i64 %1628 to i64*
  %1632 = load i64, i64* %1631
  store i64 %1632, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_447fd7, %struct.Memory** %MEMORY
  %loadMem_447fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 1
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 11
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RDI.i142 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %RAX.i141
  %1643 = add i64 %1642, 112
  %1644 = load i64, i64* %PC.i140
  %1645 = add i64 %1644, 4
  store i64 %1645, i64* %PC.i140
  %1646 = inttoptr i64 %1643 to i64*
  %1647 = load i64, i64* %1646
  store i64 %1647, i64* %RDI.i142, align 8
  store %struct.Memory* %loadMem_447fdb, %struct.Memory** %MEMORY
  %loadMem1_447fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %PC.i139
  %1652 = add i64 %1651, -289695
  %1653 = load i64, i64* %PC.i139
  %1654 = add i64 %1653, 5
  %1655 = load i64, i64* %PC.i139
  %1656 = add i64 %1655, 5
  store i64 %1656, i64* %PC.i139
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1658 = load i64, i64* %1657, align 8
  %1659 = add i64 %1658, -8
  %1660 = inttoptr i64 %1659 to i64*
  store i64 %1654, i64* %1660
  store i64 %1659, i64* %1657, align 8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1652, i64* %1661, align 8
  store %struct.Memory* %loadMem1_447fdf, %struct.Memory** %MEMORY
  %loadMem2_447fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447fdf = load i64, i64* %3
  %call2_447fdf = call %struct.Memory* @sub_401440.fclose_plt(%struct.State* %0, i64 %loadPC_447fdf, %struct.Memory* %loadMem2_447fdf)
  store %struct.Memory* %call2_447fdf, %struct.Memory** %MEMORY
  %loadMem_447fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 1
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %1667 to i32*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 15
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %RBP.i138
  %1672 = sub i64 %1671, 20
  %1673 = load i32, i32* %EAX.i137
  %1674 = zext i32 %1673 to i64
  %1675 = load i64, i64* %PC.i136
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %PC.i136
  %1677 = inttoptr i64 %1672 to i32*
  store i32 %1673, i32* %1677
  store %struct.Memory* %loadMem_447fe4, %struct.Memory** %MEMORY
  br label %block_.L_447fe7

block_.L_447fe7:                                  ; preds = %block_447fd7, %block_.L_447fc8
  %loadMem_447fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 1
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 15
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %1686 to i64*
  %1687 = load i64, i64* %RBP.i135
  %1688 = sub i64 %1687, 8
  %1689 = load i64, i64* %PC.i133
  %1690 = add i64 %1689, 4
  store i64 %1690, i64* %PC.i133
  %1691 = inttoptr i64 %1688 to i64*
  %1692 = load i64, i64* %1691
  store i64 %1692, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_447fe7, %struct.Memory** %MEMORY
  %loadMem_447feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 1
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 11
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %RAX.i131
  %1703 = add i64 %1702, 72
  %1704 = load i64, i64* %PC.i130
  %1705 = add i64 %1704, 4
  store i64 %1705, i64* %PC.i130
  %1706 = inttoptr i64 %1703 to i64*
  %1707 = load i64, i64* %1706
  store i64 %1707, i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_447feb, %struct.Memory** %MEMORY
  %loadMem1_447fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 33
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %PC.i129
  %1712 = add i64 %1711, -289839
  %1713 = load i64, i64* %PC.i129
  %1714 = add i64 %1713, 5
  %1715 = load i64, i64* %PC.i129
  %1716 = add i64 %1715, 5
  store i64 %1716, i64* %PC.i129
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1718 = load i64, i64* %1717, align 8
  %1719 = add i64 %1718, -8
  %1720 = inttoptr i64 %1719 to i64*
  store i64 %1714, i64* %1720
  store i64 %1719, i64* %1717, align 8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1712, i64* %1721, align 8
  store %struct.Memory* %loadMem1_447fef, %struct.Memory** %MEMORY
  %loadMem2_447fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447fef = load i64, i64* %3
  %call2_447fef = call %struct.Memory* @sub_4013c0.remove_plt(%struct.State* %0, i64 %loadPC_447fef, %struct.Memory* %loadMem2_447fef)
  store %struct.Memory* %call2_447fef, %struct.Memory** %MEMORY
  %loadMem_447ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 11
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %RBP.i128
  %1732 = sub i64 %1731, 8
  %1733 = load i64, i64* %PC.i126
  %1734 = add i64 %1733, 4
  store i64 %1734, i64* %PC.i126
  %1735 = inttoptr i64 %1732 to i64*
  %1736 = load i64, i64* %1735
  store i64 %1736, i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_447ff4, %struct.Memory** %MEMORY
  %loadMem_447ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 11
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RDI.i125 = bitcast %union.anon* %1742 to i64*
  %1743 = load i64, i64* %RDI.i125
  %1744 = add i64 %1743, 104
  %1745 = load i64, i64* %PC.i124
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %PC.i124
  %1747 = inttoptr i64 %1744 to i64*
  %1748 = load i64, i64* %1747
  store i64 %1748, i64* %RDI.i125, align 8
  store %struct.Memory* %loadMem_447ff8, %struct.Memory** %MEMORY
  %loadMem_447ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 1
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %EAX.i122 = bitcast %union.anon* %1754 to i32*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 15
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RBP.i123
  %1759 = sub i64 %1758, 24
  %1760 = load i32, i32* %EAX.i122
  %1761 = zext i32 %1760 to i64
  %1762 = load i64, i64* %PC.i121
  %1763 = add i64 %1762, 3
  store i64 %1763, i64* %PC.i121
  %1764 = inttoptr i64 %1759 to i32*
  store i32 %1760, i32* %1764
  store %struct.Memory* %loadMem_447ffc, %struct.Memory** %MEMORY
  %loadMem1_447fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %PC.i120
  %1769 = add i64 %1768, -289855
  %1770 = load i64, i64* %PC.i120
  %1771 = add i64 %1770, 5
  %1772 = load i64, i64* %PC.i120
  %1773 = add i64 %1772, 5
  store i64 %1773, i64* %PC.i120
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1775 = load i64, i64* %1774, align 8
  %1776 = add i64 %1775, -8
  %1777 = inttoptr i64 %1776 to i64*
  store i64 %1771, i64* %1777
  store i64 %1776, i64* %1774, align 8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1769, i64* %1778, align 8
  store %struct.Memory* %loadMem1_447fff, %struct.Memory** %MEMORY
  %loadMem2_447fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_447fff = load i64, i64* %3
  %call2_447fff = call %struct.Memory* @sub_4013c0.remove_plt(%struct.State* %0, i64 %loadPC_447fff, %struct.Memory* %loadMem2_447fff)
  store %struct.Memory* %call2_447fff, %struct.Memory** %MEMORY
  %loadMem_448004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %1784 to i32*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 15
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %1787 to i64*
  %1788 = load i64, i64* %RBP.i119
  %1789 = sub i64 %1788, 28
  %1790 = load i32, i32* %EAX.i118
  %1791 = zext i32 %1790 to i64
  %1792 = load i64, i64* %PC.i117
  %1793 = add i64 %1792, 3
  store i64 %1793, i64* %PC.i117
  %1794 = inttoptr i64 %1789 to i32*
  store i32 %1790, i32* %1794
  store %struct.Memory* %loadMem_448004, %struct.Memory** %MEMORY
  br label %block_.L_448007

block_.L_448007:                                  ; preds = %block_.L_447fe7, %block_.L_447fa4
  %loadMem_448007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 15
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RBP.i116
  %1802 = sub i64 %1801, 12
  %1803 = load i64, i64* %PC.i115
  %1804 = add i64 %1803, 7
  store i64 %1804, i64* %PC.i115
  %1805 = inttoptr i64 %1802 to i32*
  store i32 0, i32* %1805
  store %struct.Memory* %loadMem_448007, %struct.Memory** %MEMORY
  br label %block_.L_44800e

block_.L_44800e:                                  ; preds = %block_448021, %block_.L_448007
  %loadMem_44800e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 1
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 15
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %RBP.i114
  %1816 = sub i64 %1815, 12
  %1817 = load i64, i64* %PC.i112
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC.i112
  %1819 = inttoptr i64 %1816 to i32*
  %1820 = load i32, i32* %1819
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_44800e, %struct.Memory** %MEMORY
  %loadMem_448011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 5
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 15
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RBP.i111
  %1832 = sub i64 %1831, 8
  %1833 = load i64, i64* %PC.i109
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i109
  %1835 = inttoptr i64 %1832 to i64*
  %1836 = load i64, i64* %1835
  store i64 %1836, i64* %RCX.i110, align 8
  store %struct.Memory* %loadMem_448011, %struct.Memory** %MEMORY
  %loadMem_448015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 5
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 7
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RCX.i108
  %1847 = add i64 %1846, 52
  %1848 = load i64, i64* %PC.i107
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i107
  %1850 = inttoptr i64 %1847 to i16*
  %1851 = load i16, i16* %1850
  %1852 = zext i16 %1851 to i64
  store i64 %1852, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_448015, %struct.Memory** %MEMORY
  %loadMem_448019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 1
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %1858 to i32*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 7
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1861 to i32*
  %1862 = load i32, i32* %EAX.i106
  %1863 = zext i32 %1862 to i64
  %1864 = load i32, i32* %EDX.i
  %1865 = zext i32 %1864 to i64
  %1866 = load i64, i64* %PC.i105
  %1867 = add i64 %1866, 2
  store i64 %1867, i64* %PC.i105
  %1868 = sub i32 %1862, %1864
  %1869 = icmp ult i32 %1862, %1864
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1870, i8* %1871, align 1
  %1872 = and i32 %1868, 255
  %1873 = call i32 @llvm.ctpop.i32(i32 %1872)
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1876, i8* %1877, align 1
  %1878 = xor i64 %1865, %1863
  %1879 = trunc i64 %1878 to i32
  %1880 = xor i32 %1879, %1868
  %1881 = lshr i32 %1880, 4
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1883, i8* %1884, align 1
  %1885 = icmp eq i32 %1868, 0
  %1886 = zext i1 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1886, i8* %1887, align 1
  %1888 = lshr i32 %1868, 31
  %1889 = trunc i32 %1888 to i8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1889, i8* %1890, align 1
  %1891 = lshr i32 %1862, 31
  %1892 = lshr i32 %1864, 31
  %1893 = xor i32 %1892, %1891
  %1894 = xor i32 %1888, %1891
  %1895 = add i32 %1894, %1893
  %1896 = icmp eq i32 %1895, 2
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1897, i8* %1898, align 1
  store %struct.Memory* %loadMem_448019, %struct.Memory** %MEMORY
  %loadMem_44801b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %PC.i104
  %1903 = add i64 %1902, 41
  %1904 = load i64, i64* %PC.i104
  %1905 = add i64 %1904, 6
  %1906 = load i64, i64* %PC.i104
  %1907 = add i64 %1906, 6
  store i64 %1907, i64* %PC.i104
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1909 = load i8, i8* %1908, align 1
  %1910 = icmp ne i8 %1909, 0
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1912 = load i8, i8* %1911, align 1
  %1913 = icmp ne i8 %1912, 0
  %1914 = xor i1 %1910, %1913
  %1915 = xor i1 %1914, true
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %BRANCH_TAKEN, align 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1918 = select i1 %1914, i64 %1905, i64 %1903
  store i64 %1918, i64* %1917, align 8
  store %struct.Memory* %loadMem_44801b, %struct.Memory** %MEMORY
  %loadBr_44801b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44801b = icmp eq i8 %loadBr_44801b, 1
  br i1 %cmpBr_44801b, label %block_.L_448044, label %block_448021

block_448021:                                     ; preds = %block_.L_44800e
  %loadMem_448021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 1
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 15
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %RBP.i103
  %1929 = sub i64 %1928, 8
  %1930 = load i64, i64* %PC.i101
  %1931 = add i64 %1930, 4
  store i64 %1931, i64* %PC.i101
  %1932 = inttoptr i64 %1929 to i64*
  %1933 = load i64, i64* %1932
  store i64 %1933, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_448021, %struct.Memory** %MEMORY
  %loadMem_448025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RAX.i100
  %1941 = add i64 %1940, 16
  %1942 = load i64, i64* %PC.i99
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %PC.i99
  %1944 = inttoptr i64 %1941 to i64*
  %1945 = load i64, i64* %1944
  store i64 %1945, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_448025, %struct.Memory** %MEMORY
  %loadMem_448029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 5
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 15
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %RBP.i98
  %1956 = sub i64 %1955, 12
  %1957 = load i64, i64* %PC.i96
  %1958 = add i64 %1957, 4
  store i64 %1958, i64* %PC.i96
  %1959 = inttoptr i64 %1956 to i32*
  %1960 = load i32, i32* %1959
  %1961 = sext i32 %1960 to i64
  store i64 %1961, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_448029, %struct.Memory** %MEMORY
  %loadMem_44802d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 1
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 5
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 11
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RDI.i95 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %RAX.i94
  %1975 = load i64, i64* %RCX.i
  %1976 = mul i64 %1975, 8
  %1977 = add i64 %1976, %1974
  %1978 = load i64, i64* %PC.i93
  %1979 = add i64 %1978, 4
  store i64 %1979, i64* %PC.i93
  %1980 = inttoptr i64 %1977 to i64*
  %1981 = load i64, i64* %1980
  store i64 %1981, i64* %RDI.i95, align 8
  store %struct.Memory* %loadMem_44802d, %struct.Memory** %MEMORY
  %loadMem1_448031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %PC.i92
  %1986 = add i64 %1985, -289969
  %1987 = load i64, i64* %PC.i92
  %1988 = add i64 %1987, 5
  %1989 = load i64, i64* %PC.i92
  %1990 = add i64 %1989, 5
  store i64 %1990, i64* %PC.i92
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1992 = load i64, i64* %1991, align 8
  %1993 = add i64 %1992, -8
  %1994 = inttoptr i64 %1993 to i64*
  store i64 %1988, i64* %1994
  store i64 %1993, i64* %1991, align 8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1986, i64* %1995, align 8
  store %struct.Memory* %loadMem1_448031, %struct.Memory** %MEMORY
  %loadMem2_448031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448031 = load i64, i64* %3
  %1996 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_448031)
  store %struct.Memory* %1996, %struct.Memory** %MEMORY
  %loadMem_448036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 1
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 15
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2005 to i64*
  %2006 = load i64, i64* %RBP.i88
  %2007 = sub i64 %2006, 12
  %2008 = load i64, i64* %PC.i86
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i86
  %2010 = inttoptr i64 %2007 to i32*
  %2011 = load i32, i32* %2010
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_448036, %struct.Memory** %MEMORY
  %loadMem_448039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 33
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 1
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %RAX.i85
  %2020 = load i64, i64* %PC.i84
  %2021 = add i64 %2020, 3
  store i64 %2021, i64* %PC.i84
  %2022 = trunc i64 %2019 to i32
  %2023 = add i32 1, %2022
  %2024 = zext i32 %2023 to i64
  store i64 %2024, i64* %RAX.i85, align 8
  %2025 = icmp ult i32 %2023, %2022
  %2026 = icmp ult i32 %2023, 1
  %2027 = or i1 %2025, %2026
  %2028 = zext i1 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2028, i8* %2029, align 1
  %2030 = and i32 %2023, 255
  %2031 = call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2034, i8* %2035, align 1
  %2036 = xor i64 1, %2019
  %2037 = trunc i64 %2036 to i32
  %2038 = xor i32 %2037, %2023
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2041, i8* %2042, align 1
  %2043 = icmp eq i32 %2023, 0
  %2044 = zext i1 %2043 to i8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2044, i8* %2045, align 1
  %2046 = lshr i32 %2023, 31
  %2047 = trunc i32 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2047, i8* %2048, align 1
  %2049 = lshr i32 %2022, 31
  %2050 = xor i32 %2046, %2049
  %2051 = add i32 %2050, %2046
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2053, i8* %2054, align 1
  store %struct.Memory* %loadMem_448039, %struct.Memory** %MEMORY
  %loadMem_44803c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2060 to i32*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 15
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RBP.i83
  %2065 = sub i64 %2064, 12
  %2066 = load i32, i32* %EAX.i
  %2067 = zext i32 %2066 to i64
  %2068 = load i64, i64* %PC.i82
  %2069 = add i64 %2068, 3
  store i64 %2069, i64* %PC.i82
  %2070 = inttoptr i64 %2065 to i32*
  store i32 %2066, i32* %2070
  store %struct.Memory* %loadMem_44803c, %struct.Memory** %MEMORY
  %loadMem_44803f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %PC.i81
  %2075 = add i64 %2074, -49
  %2076 = load i64, i64* %PC.i81
  %2077 = add i64 %2076, 5
  store i64 %2077, i64* %PC.i81
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2075, i64* %2078, align 8
  store %struct.Memory* %loadMem_44803f, %struct.Memory** %MEMORY
  br label %block_.L_44800e

block_.L_448044:                                  ; preds = %block_.L_44800e
  %loadMem_448044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 1
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 15
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %RBP.i80
  %2089 = sub i64 %2088, 8
  %2090 = load i64, i64* %PC.i78
  %2091 = add i64 %2090, 4
  store i64 %2091, i64* %PC.i78
  %2092 = inttoptr i64 %2089 to i64*
  %2093 = load i64, i64* %2092
  store i64 %2093, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_448044, %struct.Memory** %MEMORY
  %loadMem_448048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RAX.i77
  %2101 = add i64 %2100, 16
  %2102 = load i64, i64* %PC.i76
  %2103 = add i64 %2102, 5
  store i64 %2103, i64* %PC.i76
  %2104 = inttoptr i64 %2101 to i64*
  %2105 = load i64, i64* %2104
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2106, align 1
  %2107 = trunc i64 %2105 to i32
  %2108 = and i32 %2107, 255
  %2109 = call i32 @llvm.ctpop.i32(i32 %2108)
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2112, i8* %2113, align 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2114, align 1
  %2115 = icmp eq i64 %2105, 0
  %2116 = zext i1 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2116, i8* %2117, align 1
  %2118 = lshr i64 %2105, 63
  %2119 = trunc i64 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2119, i8* %2120, align 1
  %2121 = lshr i64 %2105, 63
  %2122 = xor i64 %2118, %2121
  %2123 = add i64 %2122, %2121
  %2124 = icmp eq i64 %2123, 2
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2125, i8* %2126, align 1
  store %struct.Memory* %loadMem_448048, %struct.Memory** %MEMORY
  %loadMem_44804d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %PC.i75
  %2131 = add i64 %2130, 22
  %2132 = load i64, i64* %PC.i75
  %2133 = add i64 %2132, 6
  %2134 = load i64, i64* %PC.i75
  %2135 = add i64 %2134, 6
  store i64 %2135, i64* %PC.i75
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2137 = load i8, i8* %2136, align 1
  store i8 %2137, i8* %BRANCH_TAKEN, align 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2139 = icmp ne i8 %2137, 0
  %2140 = select i1 %2139, i64 %2131, i64 %2133
  store i64 %2140, i64* %2138, align 8
  store %struct.Memory* %loadMem_44804d, %struct.Memory** %MEMORY
  %loadBr_44804d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44804d = icmp eq i8 %loadBr_44804d, 1
  br i1 %cmpBr_44804d, label %block_.L_448063, label %block_448053

block_448053:                                     ; preds = %block_.L_448044
  %loadMem_448053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 15
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RBP.i74
  %2151 = sub i64 %2150, 8
  %2152 = load i64, i64* %PC.i72
  %2153 = add i64 %2152, 4
  store i64 %2153, i64* %PC.i72
  %2154 = inttoptr i64 %2151 to i64*
  %2155 = load i64, i64* %2154
  store i64 %2155, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_448053, %struct.Memory** %MEMORY
  %loadMem_448057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 1
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %RAX.i71
  %2163 = add i64 %2162, 16
  %2164 = load i64, i64* %PC.i70
  %2165 = add i64 %2164, 4
  store i64 %2165, i64* %PC.i70
  %2166 = inttoptr i64 %2163 to i64*
  %2167 = load i64, i64* %2166
  store i64 %2167, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_448057, %struct.Memory** %MEMORY
  %loadMem_44805b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 1
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 11
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RDI.i69 = bitcast %union.anon* %2176 to i64*
  %2177 = load i64, i64* %RAX.i68
  %2178 = load i64, i64* %PC.i67
  %2179 = add i64 %2178, 3
  store i64 %2179, i64* %PC.i67
  store i64 %2177, i64* %RDI.i69, align 8
  store %struct.Memory* %loadMem_44805b, %struct.Memory** %MEMORY
  %loadMem1_44805e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %PC.i66
  %2184 = add i64 %2183, -290014
  %2185 = load i64, i64* %PC.i66
  %2186 = add i64 %2185, 5
  %2187 = load i64, i64* %PC.i66
  %2188 = add i64 %2187, 5
  store i64 %2188, i64* %PC.i66
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2190 = load i64, i64* %2189, align 8
  %2191 = add i64 %2190, -8
  %2192 = inttoptr i64 %2191 to i64*
  store i64 %2186, i64* %2192
  store i64 %2191, i64* %2189, align 8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2184, i64* %2193, align 8
  store %struct.Memory* %loadMem1_44805e, %struct.Memory** %MEMORY
  %loadMem2_44805e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44805e = load i64, i64* %3
  %2194 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_44805e)
  store %struct.Memory* %2194, %struct.Memory** %MEMORY
  br label %block_.L_448063

block_.L_448063:                                  ; preds = %block_448053, %block_.L_448044
  %loadMem_448063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 1
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 15
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %2203 to i64*
  %2204 = load i64, i64* %RBP.i64
  %2205 = sub i64 %2204, 8
  %2206 = load i64, i64* %PC.i62
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %PC.i62
  %2208 = inttoptr i64 %2205 to i64*
  %2209 = load i64, i64* %2208
  store i64 %2209, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_448063, %struct.Memory** %MEMORY
  %loadMem_448067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 1
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RAX.i61
  %2217 = add i64 %2216, 24
  %2218 = load i64, i64* %PC.i60
  %2219 = add i64 %2218, 5
  store i64 %2219, i64* %PC.i60
  %2220 = inttoptr i64 %2217 to i64*
  %2221 = load i64, i64* %2220
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2222, align 1
  %2223 = trunc i64 %2221 to i32
  %2224 = and i32 %2223, 255
  %2225 = call i32 @llvm.ctpop.i32(i32 %2224)
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2228, i8* %2229, align 1
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2230, align 1
  %2231 = icmp eq i64 %2221, 0
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2232, i8* %2233, align 1
  %2234 = lshr i64 %2221, 63
  %2235 = trunc i64 %2234 to i8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2235, i8* %2236, align 1
  %2237 = lshr i64 %2221, 63
  %2238 = xor i64 %2234, %2237
  %2239 = add i64 %2238, %2237
  %2240 = icmp eq i64 %2239, 2
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2241, i8* %2242, align 1
  store %struct.Memory* %loadMem_448067, %struct.Memory** %MEMORY
  %loadMem_44806c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %PC.i59
  %2247 = add i64 %2246, 22
  %2248 = load i64, i64* %PC.i59
  %2249 = add i64 %2248, 6
  %2250 = load i64, i64* %PC.i59
  %2251 = add i64 %2250, 6
  store i64 %2251, i64* %PC.i59
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2253 = load i8, i8* %2252, align 1
  store i8 %2253, i8* %BRANCH_TAKEN, align 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2255 = icmp ne i8 %2253, 0
  %2256 = select i1 %2255, i64 %2247, i64 %2249
  store i64 %2256, i64* %2254, align 8
  store %struct.Memory* %loadMem_44806c, %struct.Memory** %MEMORY
  %loadBr_44806c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44806c = icmp eq i8 %loadBr_44806c, 1
  br i1 %cmpBr_44806c, label %block_.L_448082, label %block_448072

block_448072:                                     ; preds = %block_.L_448063
  %loadMem_448072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 15
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RBP.i58
  %2267 = sub i64 %2266, 8
  %2268 = load i64, i64* %PC.i56
  %2269 = add i64 %2268, 4
  store i64 %2269, i64* %PC.i56
  %2270 = inttoptr i64 %2267 to i64*
  %2271 = load i64, i64* %2270
  store i64 %2271, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_448072, %struct.Memory** %MEMORY
  %loadMem_448076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 1
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %RAX.i55
  %2279 = add i64 %2278, 24
  %2280 = load i64, i64* %PC.i54
  %2281 = add i64 %2280, 4
  store i64 %2281, i64* %PC.i54
  %2282 = inttoptr i64 %2279 to i64*
  %2283 = load i64, i64* %2282
  store i64 %2283, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_448076, %struct.Memory** %MEMORY
  %loadMem_44807a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 1
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 11
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RDI.i53 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RAX.i52
  %2294 = load i64, i64* %PC.i51
  %2295 = add i64 %2294, 3
  store i64 %2295, i64* %PC.i51
  store i64 %2293, i64* %RDI.i53, align 8
  store %struct.Memory* %loadMem_44807a, %struct.Memory** %MEMORY
  %loadMem1_44807d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2298 to i64*
  %2299 = load i64, i64* %PC.i50
  %2300 = add i64 %2299, -290045
  %2301 = load i64, i64* %PC.i50
  %2302 = add i64 %2301, 5
  %2303 = load i64, i64* %PC.i50
  %2304 = add i64 %2303, 5
  store i64 %2304, i64* %PC.i50
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2306 = load i64, i64* %2305, align 8
  %2307 = add i64 %2306, -8
  %2308 = inttoptr i64 %2307 to i64*
  store i64 %2302, i64* %2308
  store i64 %2307, i64* %2305, align 8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2300, i64* %2309, align 8
  store %struct.Memory* %loadMem1_44807d, %struct.Memory** %MEMORY
  %loadMem2_44807d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44807d = load i64, i64* %3
  %2310 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_44807d)
  store %struct.Memory* %2310, %struct.Memory** %MEMORY
  br label %block_.L_448082

block_.L_448082:                                  ; preds = %block_448072, %block_.L_448063
  %loadMem_448082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 1
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 15
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RBP.i47
  %2321 = sub i64 %2320, 8
  %2322 = load i64, i64* %PC.i45
  %2323 = add i64 %2322, 4
  store i64 %2323, i64* %PC.i45
  %2324 = inttoptr i64 %2321 to i64*
  %2325 = load i64, i64* %2324
  store i64 %2325, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_448082, %struct.Memory** %MEMORY
  %loadMem_448086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 1
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %2331 to i64*
  %2332 = load i64, i64* %RAX.i44
  %2333 = add i64 %2332, 32
  %2334 = load i64, i64* %PC.i43
  %2335 = add i64 %2334, 5
  store i64 %2335, i64* %PC.i43
  %2336 = inttoptr i64 %2333 to i64*
  %2337 = load i64, i64* %2336
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2338, align 1
  %2339 = trunc i64 %2337 to i32
  %2340 = and i32 %2339, 255
  %2341 = call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2344, i8* %2345, align 1
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2346, align 1
  %2347 = icmp eq i64 %2337, 0
  %2348 = zext i1 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2348, i8* %2349, align 1
  %2350 = lshr i64 %2337, 63
  %2351 = trunc i64 %2350 to i8
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2351, i8* %2352, align 1
  %2353 = lshr i64 %2337, 63
  %2354 = xor i64 %2350, %2353
  %2355 = add i64 %2354, %2353
  %2356 = icmp eq i64 %2355, 2
  %2357 = zext i1 %2356 to i8
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2357, i8* %2358, align 1
  store %struct.Memory* %loadMem_448086, %struct.Memory** %MEMORY
  %loadMem_44808b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %PC.i42
  %2363 = add i64 %2362, 22
  %2364 = load i64, i64* %PC.i42
  %2365 = add i64 %2364, 6
  %2366 = load i64, i64* %PC.i42
  %2367 = add i64 %2366, 6
  store i64 %2367, i64* %PC.i42
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2369 = load i8, i8* %2368, align 1
  store i8 %2369, i8* %BRANCH_TAKEN, align 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2371 = icmp ne i8 %2369, 0
  %2372 = select i1 %2371, i64 %2363, i64 %2365
  store i64 %2372, i64* %2370, align 8
  store %struct.Memory* %loadMem_44808b, %struct.Memory** %MEMORY
  %loadBr_44808b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44808b = icmp eq i8 %loadBr_44808b, 1
  br i1 %cmpBr_44808b, label %block_.L_4480a1, label %block_448091

block_448091:                                     ; preds = %block_.L_448082
  %loadMem_448091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 1
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 15
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %RBP.i41
  %2383 = sub i64 %2382, 8
  %2384 = load i64, i64* %PC.i39
  %2385 = add i64 %2384, 4
  store i64 %2385, i64* %PC.i39
  %2386 = inttoptr i64 %2383 to i64*
  %2387 = load i64, i64* %2386
  store i64 %2387, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_448091, %struct.Memory** %MEMORY
  %loadMem_448095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 1
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RAX.i38
  %2395 = add i64 %2394, 32
  %2396 = load i64, i64* %PC.i37
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %PC.i37
  %2398 = inttoptr i64 %2395 to i64*
  %2399 = load i64, i64* %2398
  store i64 %2399, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_448095, %struct.Memory** %MEMORY
  %loadMem_448099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 1
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 11
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %RAX.i35
  %2410 = load i64, i64* %PC.i34
  %2411 = add i64 %2410, 3
  store i64 %2411, i64* %PC.i34
  store i64 %2409, i64* %RDI.i36, align 8
  store %struct.Memory* %loadMem_448099, %struct.Memory** %MEMORY
  %loadMem1_44809c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2414 to i64*
  %2415 = load i64, i64* %PC.i33
  %2416 = add i64 %2415, -290076
  %2417 = load i64, i64* %PC.i33
  %2418 = add i64 %2417, 5
  %2419 = load i64, i64* %PC.i33
  %2420 = add i64 %2419, 5
  store i64 %2420, i64* %PC.i33
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2422 = load i64, i64* %2421, align 8
  %2423 = add i64 %2422, -8
  %2424 = inttoptr i64 %2423 to i64*
  store i64 %2418, i64* %2424
  store i64 %2423, i64* %2421, align 8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2416, i64* %2425, align 8
  store %struct.Memory* %loadMem1_44809c, %struct.Memory** %MEMORY
  %loadMem2_44809c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44809c = load i64, i64* %3
  %2426 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_44809c)
  store %struct.Memory* %2426, %struct.Memory** %MEMORY
  br label %block_.L_4480a1

block_.L_4480a1:                                  ; preds = %block_448091, %block_.L_448082
  %loadMem_4480a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 1
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 15
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %2435 to i64*
  %2436 = load i64, i64* %RBP.i29
  %2437 = sub i64 %2436, 8
  %2438 = load i64, i64* %PC.i27
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %PC.i27
  %2440 = inttoptr i64 %2437 to i64*
  %2441 = load i64, i64* %2440
  store i64 %2441, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_4480a1, %struct.Memory** %MEMORY
  %loadMem_4480a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 1
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %2447 to i64*
  %2448 = load i64, i64* %RAX.i26
  %2449 = add i64 %2448, 40
  %2450 = load i64, i64* %PC.i25
  %2451 = add i64 %2450, 5
  store i64 %2451, i64* %PC.i25
  %2452 = inttoptr i64 %2449 to i64*
  %2453 = load i64, i64* %2452
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2454, align 1
  %2455 = trunc i64 %2453 to i32
  %2456 = and i32 %2455, 255
  %2457 = call i32 @llvm.ctpop.i32(i32 %2456)
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2460, i8* %2461, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2462, align 1
  %2463 = icmp eq i64 %2453, 0
  %2464 = zext i1 %2463 to i8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2464, i8* %2465, align 1
  %2466 = lshr i64 %2453, 63
  %2467 = trunc i64 %2466 to i8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2467, i8* %2468, align 1
  %2469 = lshr i64 %2453, 63
  %2470 = xor i64 %2466, %2469
  %2471 = add i64 %2470, %2469
  %2472 = icmp eq i64 %2471, 2
  %2473 = zext i1 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2473, i8* %2474, align 1
  store %struct.Memory* %loadMem_4480a5, %struct.Memory** %MEMORY
  %loadMem_4480aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %PC.i24
  %2479 = add i64 %2478, 22
  %2480 = load i64, i64* %PC.i24
  %2481 = add i64 %2480, 6
  %2482 = load i64, i64* %PC.i24
  %2483 = add i64 %2482, 6
  store i64 %2483, i64* %PC.i24
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2485 = load i8, i8* %2484, align 1
  store i8 %2485, i8* %BRANCH_TAKEN, align 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2487 = icmp ne i8 %2485, 0
  %2488 = select i1 %2487, i64 %2479, i64 %2481
  store i64 %2488, i64* %2486, align 8
  store %struct.Memory* %loadMem_4480aa, %struct.Memory** %MEMORY
  %loadBr_4480aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4480aa = icmp eq i8 %loadBr_4480aa, 1
  br i1 %cmpBr_4480aa, label %block_.L_4480c0, label %block_4480b0

block_4480b0:                                     ; preds = %block_.L_4480a1
  %loadMem_4480b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2491 to i64*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 1
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 15
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %2497 to i64*
  %2498 = load i64, i64* %RBP.i23
  %2499 = sub i64 %2498, 8
  %2500 = load i64, i64* %PC.i21
  %2501 = add i64 %2500, 4
  store i64 %2501, i64* %PC.i21
  %2502 = inttoptr i64 %2499 to i64*
  %2503 = load i64, i64* %2502
  store i64 %2503, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_4480b0, %struct.Memory** %MEMORY
  %loadMem_4480b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %RAX.i20
  %2511 = add i64 %2510, 40
  %2512 = load i64, i64* %PC.i19
  %2513 = add i64 %2512, 4
  store i64 %2513, i64* %PC.i19
  %2514 = inttoptr i64 %2511 to i64*
  %2515 = load i64, i64* %2514
  store i64 %2515, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_4480b4, %struct.Memory** %MEMORY
  %loadMem_4480b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 1
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 11
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RDI.i18 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %RAX.i17
  %2526 = load i64, i64* %PC.i16
  %2527 = add i64 %2526, 3
  store i64 %2527, i64* %PC.i16
  store i64 %2525, i64* %RDI.i18, align 8
  store %struct.Memory* %loadMem_4480b8, %struct.Memory** %MEMORY
  %loadMem1_4480bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2530 to i64*
  %2531 = load i64, i64* %PC.i15
  %2532 = add i64 %2531, -290107
  %2533 = load i64, i64* %PC.i15
  %2534 = add i64 %2533, 5
  %2535 = load i64, i64* %PC.i15
  %2536 = add i64 %2535, 5
  store i64 %2536, i64* %PC.i15
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2538 = load i64, i64* %2537, align 8
  %2539 = add i64 %2538, -8
  %2540 = inttoptr i64 %2539 to i64*
  store i64 %2534, i64* %2540
  store i64 %2539, i64* %2537, align 8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2532, i64* %2541, align 8
  store %struct.Memory* %loadMem1_4480bb, %struct.Memory** %MEMORY
  %loadMem2_4480bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4480bb = load i64, i64* %3
  %2542 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4480bb)
  store %struct.Memory* %2542, %struct.Memory** %MEMORY
  br label %block_.L_4480c0

block_.L_4480c0:                                  ; preds = %block_4480b0, %block_.L_4480a1
  %loadMem_4480c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 1
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 15
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %RBP.i12
  %2553 = sub i64 %2552, 8
  %2554 = load i64, i64* %PC.i10
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %PC.i10
  %2556 = inttoptr i64 %2553 to i64*
  %2557 = load i64, i64* %2556
  store i64 %2557, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_4480c0, %struct.Memory** %MEMORY
  %loadMem_4480c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 1
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 11
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2566 to i64*
  %2567 = load i64, i64* %RAX.i
  %2568 = load i64, i64* %PC.i9
  %2569 = add i64 %2568, 3
  store i64 %2569, i64* %PC.i9
  store i64 %2567, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4480c4, %struct.Memory** %MEMORY
  %loadMem1_4480c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 33
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %PC.i8
  %2574 = add i64 %2573, -290119
  %2575 = load i64, i64* %PC.i8
  %2576 = add i64 %2575, 5
  %2577 = load i64, i64* %PC.i8
  %2578 = add i64 %2577, 5
  store i64 %2578, i64* %PC.i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2580 = load i64, i64* %2579, align 8
  %2581 = add i64 %2580, -8
  %2582 = inttoptr i64 %2581 to i64*
  store i64 %2576, i64* %2582
  store i64 %2581, i64* %2579, align 8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2574, i64* %2583, align 8
  store %struct.Memory* %loadMem1_4480c7, %struct.Memory** %MEMORY
  %loadMem2_4480c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4480c7 = load i64, i64* %3
  %2584 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4480c7)
  store %struct.Memory* %2584, %struct.Memory** %MEMORY
  br label %block_.L_4480cc

block_.L_4480cc:                                  ; preds = %block_.L_4480c0, %entry
  %loadMem_4480cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 13
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %RSP.i
  %2592 = load i64, i64* %PC.i4
  %2593 = add i64 %2592, 4
  store i64 %2593, i64* %PC.i4
  %2594 = add i64 32, %2591
  store i64 %2594, i64* %RSP.i, align 8
  %2595 = icmp ult i64 %2594, %2591
  %2596 = icmp ult i64 %2594, 32
  %2597 = or i1 %2595, %2596
  %2598 = zext i1 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2598, i8* %2599, align 1
  %2600 = trunc i64 %2594 to i32
  %2601 = and i32 %2600, 255
  %2602 = call i32 @llvm.ctpop.i32(i32 %2601)
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = xor i8 %2604, 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2605, i8* %2606, align 1
  %2607 = xor i64 32, %2591
  %2608 = xor i64 %2607, %2594
  %2609 = lshr i64 %2608, 4
  %2610 = trunc i64 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2611, i8* %2612, align 1
  %2613 = icmp eq i64 %2594, 0
  %2614 = zext i1 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2614, i8* %2615, align 1
  %2616 = lshr i64 %2594, 63
  %2617 = trunc i64 %2616 to i8
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2617, i8* %2618, align 1
  %2619 = lshr i64 %2591, 63
  %2620 = xor i64 %2616, %2619
  %2621 = add i64 %2620, %2616
  %2622 = icmp eq i64 %2621, 2
  %2623 = zext i1 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2623, i8* %2624, align 1
  store %struct.Memory* %loadMem_4480cc, %struct.Memory** %MEMORY
  %loadMem_4480d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 15
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %PC.i2
  %2632 = add i64 %2631, 1
  store i64 %2632, i64* %PC.i2
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2634 = load i64, i64* %2633, align 8
  %2635 = add i64 %2634, 8
  %2636 = inttoptr i64 %2634 to i64*
  %2637 = load i64, i64* %2636
  store i64 %2637, i64* %RBP.i3, align 8
  store i64 %2635, i64* %2633, align 8
  store %struct.Memory* %loadMem_4480d0, %struct.Memory** %MEMORY
  %loadMem_4480d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2640 to i64*
  %2641 = load i64, i64* %PC.i1
  %2642 = add i64 %2641, 1
  store i64 %2642, i64* %PC.i1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2645 = load i64, i64* %2644, align 8
  %2646 = inttoptr i64 %2645 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %2643, align 8
  %2648 = add i64 %2645, 8
  store i64 %2648, i64* %2644, align 8
  store %struct.Memory* %loadMem_4480d1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4480d1
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4480cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_447fa9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 68
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

define %struct.Memory* @routine_jae_.L_447ee5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 56, %15
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

define %struct.Memory* @routine_movq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_447eac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 100
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

define %struct.Memory* @routine_jae_.L_447f25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_447eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_447f66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_447f2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
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

define %struct.Memory* @routine_je_.L_447f85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
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

define %struct.Memory* @routine_je_.L_447fa4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_448007(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_447fc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fclose_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
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

define %struct.Memory* @routine_je_.L_447fe7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.remove_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x68__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movzwl_0x34__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jge_.L_448044(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44800e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_448063(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_448082(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4480a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
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

define %struct.Memory* @routine_je_.L_4480c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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
